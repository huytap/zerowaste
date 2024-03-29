$(document).ready(function(){
  var didScroll;
  var lastScrollTop = 0;
  var delta = 2;
  var navbarHeight = $('a.pull-right').outerHeight();

  $(window).scroll(function(event){
      didScroll = true;
  });

  setInterval(function() {
      if (didScroll) {
          hasScrolled();
          didScroll = false;
      }
  }, 250);
  function hasScrolled() {
      var st = $(this).scrollTop();

      if(Math.abs(lastScrollTop - st) <= delta)
          return;

      if (st > lastScrollTop && st > navbarHeight){
          // Scroll Down
          $('.header-top').removeClass('nav-down').addClass('nav-up');
          if(jQuery(window).width() >= 768)
            $('.category-nav.cate').removeClass('nav-down').addClass('nav-up');
          else{
            if (jQuery(window).scrollTop() >= 1)
              $('.category-nav.cate').removeClass('nav-down').addClass('nav-up');
            else
              $('.category-nav.cate').removeClass('nav-up');
          }
      } else {
          // Scroll Up
          if(st + $(window).height() < $(document).height()) {
              $('.header-top').removeClass('nav-up').addClass('nav-down');
              if(jQuery(window).width() >= 768)
                $('.category-nav.cate').removeClass('nav-up').addClass('nav-down');

              if (jQuery(window).scrollTop() >= 1)
                $('.category-nav.cate').removeClass('nav-up').addClass('nav-down');
              else
                $('.category-nav.cate').removeClass('nav-down');
          }
      }

      lastScrollTop = st;
  }

  /*products*/
  if($('.product-content').length){
    $('.item').each(function(i, j){
      $(j).click(function(){
        let bg = $(j).attr('style').split(':');
        var marginTop = $(j).position().top + $(j).height()+30;
        var marginLeft = $(j).position().left + $(j).width()/2;
        $('.product-detail').css({top:marginTop+"px"});
        $('.arrow-up').css({left:marginLeft+"px"});
        $('.product-detail').show();
        $('.product-detail').css('background', bg[1]);
        $('.arrow-up').css('border-bottom', '18px solid ' + bg[1])
        if($(j).hasClass('active')){
          $(j).removeClass('active')
          $('.product-detail').hide();
        }else{
          $('.item').removeClass('active');
          $(j).addClass('active')
          $('.product-detail').show();
        }
      })
    })
  }
  /*filter box*/
  if($('.box-category').length){
    $('.box-category').find('.box-title').click(function(){
      $('.box-category').parent().find('ul').hide();
      if($(this).parent().find('ul').css('display') == 'block'){
        $(this).parent().find('ul').hide();
      }else{
        $(this).parent().find('ul').show();
      }
    });

    $('.box-category').find('ul').find('li').each(function(i,j){
      $(j).click(function(){
        $(this).parent().parent().find('span').text($(this).text());
        $(this).parent().hide();
      })
    })

    $('#btn-search').click(function(){
      var group1 = $('.box-category:first-child').find('span').text();
      var group2 = $('.box-category:nth-child(2)').find('span').text();
      var group3 = $('.box-category:last-child').find('span').text();
      $('#store-items').find('.item').each(function(i,j){
        $(j).hide();
        var g1 = $(j).attr('group1');
        var g2 = $(j).attr('group2');
        var g3 = $(j).attr('group3');
        if(g1 == group1 && g2 == group2 && g3 == group3){
          $(j).show();
        }
      })
    })
  }
  /*filter products*/
  $('#btnsearch').click(function(){
    var param = $('.box').find('span').text();
    $('#photos').find('.item').each(function(i,j){
      $(j).hide();
      var p = $(j).attr('data-filter');
      if(p == param){
        $(j).show();
      }
    })
  });

  /*close store detail*/
  if($('#btn-closeStoreDetail').length){
    $('#btn-back').click(function(){
      $('#store-detail').hide();
      $('.modal-backdrop').remove();
    });
    $('#btn-closeStoreDetail').click(function(){
      $('#store').find('.close').trigger('click');
      $('.product-detail').hide();
    });
    $('#store').find('.close').click(function(){
      $('.product-detail').hide();
    })
  }

  /*slide event*/
  $(".slider").slick({
    dots: false,
    infinite: true,
    speed: 500,
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: false,
    autoplaySpeed: 2000,
    arrows: true,
    prevArrow: "",
    nextArrow: ""
  });
  $(".slick-left").click(function(){
    $(".slider").slick("slickPrev");
  })

  $(".slick-right").click(function(){
    $(".slider").slick("slickNext");
  });

  //map2
  $('.map-right').find("g").hover(function() {
	  var offset = $(this).offset();
	var top = offset.top + $(this).height()-180;
    var left = offset.left + $(this).width()/2;
    $('#map2').css({'top':top+'px','left':left+'px'})
    $('#map2').show();
  })
  /*
  $('.map-right').find("g").mouseout(function(){
    $('#map2').hide();
  */
});
