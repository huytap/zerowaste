<?php
class UserIdentity extends CUserIdentity{
	private $_id;
	public $displayname = '';
	const ERROR_ACCOUNT_NOT_ACTIVE = 3;
	public function authenticate(){
		$uname = strtolower($this->username);
		$mUser=new Users;
		$criteria=new CDbCriteria;
		$criteria->condition = "(username ='".$uname."' OR email='".$uname."') AND is_admin=0 AND status='A'";
		$criteria->limit = 1;
		$arrUsers = $mUser->findAll($criteria);
		if(is_array($arrUsers) && count($arrUsers)>0) {
			$bOK = FALSE;
			if($arrUsers[0]['password']!==sha1(md5($this->password))) {
				if (!$bOK) {
					$this->errorCode=self::ERROR_PASSWORD_INVALID;
				}
			} else if ($arrUsers[0]['status'] !== 'A') {
				$this->errorCode=self::ERROR_ACCOUNT_NOT_ACTIVE;
			} else {
				$bOK = TRUE;
			}
			if ($bOK) {
				$this->_id = $arrUsers[0]['id'];
				Yii::app()->user->id = $this->_id;
				Yii::app()->user->setState('displayname', $arrUsers[0]['fullname']);
				$this->errorCode=self::ERROR_NONE;
				$arrUsers[0]['ip_address']=$_SERVER['REMOTE_ADDR'];
				$arrUsers[0]['last_login_date']=date('Y-m-d H:m:i');
				$arrUsers[0]->update();
			}
		} else {
			$this->errorCode=self::ERROR_USERNAME_INVALID;
		}

		return !$this->errorCode;
	}
	public function getId(){
        return $this->_id;
    }
	public function getType(){
        return $this->getState('type');
    }
}
