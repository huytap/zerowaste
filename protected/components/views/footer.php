<div id="loading">
  <img src="<?php echo Yii::app()->baseUrl?>/themes/admin/img/progress.gif">
</div>
<?php
if(Yii::app()->controller->action->id !== 'productdetail'){?>
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<?php
}?>
<script src="<?php echo Yii::app()->baseUrl?>/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->baseUrl?>/js/slick.min.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->baseUrl?>/js/script.js?v=004" type="text/javascript"></script>
<?php
Yii::app()->clientScript->registerScript('wishlist', "
  var is_login = '".(Yii::app()->user->id>0 ? '1': '0')."'
  wishlist()
  function wishlist(){
    if($('.wishlist').length){
        $('.wishlist').click(function(e){
          e.preventDefault();
          if(is_login == 0){
            $('#loginPopup').modal('show');
          }
          let store_id = $(this).attr('data');
          if(store_id>0){
            $.ajax({
              url: '".Yii::app()->baseUrl."/ajax/wishlist',
              data:{store_id:store_id},
              type: 'post',
              dataType: 'json',
              success: function(data){
                //data = JSON.parse(data)
                if(data.status == '1'){
                  $('.wishlist[data=\"'+store_id+'\"]').addClass('selected')
                  //alert('Bạn đã lưu địa điểm '+ data.store + ' vào danh sách ưa thích');
                }else if(data.status == '2'){
                  $('.wishlist[data=\"'+store_id+'\"]').removeClass('selected')
                  //alert('Bạn đã xóa địa điểm '+ data.store + ' khỏi danh sách ưa thích');
                }
              }
            });
          }
          return false;
        })
      }
    }
", CClientScript::POS_END);
 ?>
<script type="text/javascript">
var x, i, j, l, ll, selElmnt, a, b, c;
x = document.getElementsByClassName("custom-select");
l = x.length;
for (i = 0; i < l; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  ll = selElmnt.length;
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < ll; j++) {
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        var y, i, k, s, h, sl, yl;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        sl = s.length;
        h = this.parentNode.previousSibling;
        for (i = 0; i < sl; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            yl = y.length;
            for (k = 0; k < yl; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
	   if($(window).width()>768 && $('#where').length){
	   	s.onchange = changeData()
   	   }
	   if($('.products').length){
		   s.onchange = searchByCate()
	   }
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  var x, y, i, xl, yl, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  xl = x.length;
  yl = y.length;
  for (i = 0; i < yl; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < xl; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
document.addEventListener("click", closeAllSelect);
</script>
</body>
</html>
