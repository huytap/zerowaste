<?php
class MyUrlManager extends CUrlManager{

   protected function processRules(){
      $this->rules = array(
         'admin' => 'admin/site/login',
         '<page:store.html>' => 'site/store',
         '<page:products.html>' => 'site/product',
         '<page:events.html>' => 'event/index',
         '<page:about.html>' => 'site/about',
         '<controller:\w+>/<id:\d+>'=>'<controller>/view',
         '<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
         '<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
      );
      parent::processRules();
 }
}
