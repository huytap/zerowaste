<?php
ob_start();
class Mailer {
	public $mailer;
    public function init()
    {
		require_once dirname(__FILE__).'/phpmailer/class.phpmailer.php';
		$this->mailer = new PHPMailer(); 
		$this->initialize_mailer_smtp($this->mailer, Yii::app()->params['mailer_config']['server'], Yii::app()->params['mailer_config']['user'], Yii::app()->params['mailer_config']['password'], Yii::app()->params['mailer_config']['email_from_name']);
    }

	function initialize_mailer_smtp(&$mail, $smtp_server, $smtp_email, $smtp_pass, $from_name) {
		
		$mail->IsSMTP();
		$mail->SMTPAuth   = TRUE;
		$mail->SMTPSecure = "ssl";
		$mail->Port       = 465;
		$mail->Host       = $smtp_server;
		$mail->Username   = $smtp_email;  
		$mail->Password   = $smtp_pass;  
		$mail->From       = $smtp_email;
		$mail->FromName   = $from_name;
		$mail->CharSet = "UTF-8";
	}

	public function template2content($template_file, $arr_content) {
		/*if (!file_exists($template_file)) {
			return FALSE;
		}*/
		//$content = file_get_contents($template_file);
		$content = $template_file;

		if ($arr_content) {
			foreach ($arr_content as $key => $val) {
				$content = str_replace("~~$key~~", $val, $content);
			}
		}

		return $content;
	}

	public function template2content2($template_file, $arr_content) {
		if (!file_exists($template_file)) {
			return FALSE;
		}
		$content = file_get_contents($template_file);

		if ($arr_content) {
			foreach ($arr_content as $key => $val) {
				$content = str_replace("~~$key~~", $val, $content);
			}
		}
		return $content;
	}

	function send_email($subject, $template_file, $full_name, $data, $arr_to, $arr_cc, &$output, $flag=false) {
		$this->mailer->ClearAllRecipients();
		if (!$this->mailer->Host || !$this->mailer->Username || !$this->mailer->Password) {
			var_dump($this);
			/* echo "NO SEND"; */
			return FALSE;
		}
		if (!$arr_to || count($arr_to)<=0) {
			return FALSE;
		} else {
			/*print_r($arr_to);*/
		}
		/* for testing at Kha's computer */
		/*$arr_to = array('nghuytap@gmail.com' => 'nghuytapptit@gmail.com');
		$arr_cc = array('huytapptit@yahoo.com' => 'huytapptit@yahoo.com');*/
		
		/* ************** */
		$output = array();
		if($flag){
			$email_content = $this->template2content2($template_file, $data);
		}else{
			$email_content = $this->template2content($template_file, $data);
		}
		
		
		//var_dump($email_content);
		//$email_content = $template_file;
		$this->mailer->FromName   = $full_name;
		$this->mailer->Subject = $subject;
		$this->mailer->MsgHTML($email_content);
		$this->mailer->SMTPDebug  = false;            // enables SMTP debug information (for testing)
		
		//$this->mailer->AddReplyTo(Yii::app()->params['email_sent'], 'No Reply');

		foreach ($arr_to as $email => $name) {
			if ($email) {
				$this->mailer->AddAddress($email, $name);
			}
		}	
		if ($arr_cc) {
			foreach ($arr_cc as $email => $name) {
				if ($email) {
					$this->mailer->AddCC($email, $name);
				}
			}
		}
		$this->mailer->AddBCC('nghuytap@gmail.com', 'nghuytap@gmail.com');
		$bRet = TRUE;
		ob_start();
		$bRet = $this->mailer->Send();  
		ob_end_clean();  
		if (!$bRet) {
			$output['error'] = $this->mailer->ErrorInfo;
			return FALSE;
		} else {
			$output['email_content'] = $email_content;
			return TRUE;
		}
	} 
}
ob_flush();
?>