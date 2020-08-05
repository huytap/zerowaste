<?php
class MyUrlManager extends CUrlManager{

   protected function processRules(){
      $this->rules = array(
         'admin' => 'admin/site/login',
         '<controller:\w+>/<id:\d+>'=>'<controller>/view',
         '<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
         '<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
      );
      parent::processRules();
 }
}
