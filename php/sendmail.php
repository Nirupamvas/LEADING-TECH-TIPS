<?php
include 'config.php';
require_once '../mailer/class.phpmailer.php';


$to = $_POST['email'];
  $mail = new PHPMailer(true); 
   	$name = $_POST['name'];
	$email = "contact.leadingtechtips@gmail.com";
	$subject = $_POST['subject'];
	$message = $_POST['message'];
	$text_message    = "Hello";  
 try
   {
    $mail->IsSMTP(); 
    $mail->isHTML(true);
    $mail->SMTPDebug  = 0;                     
    $mail->SMTPAuth   = true;                  
    $mail->SMTPSecure = "ssl";                 
    $mail->Host       = "smtp.gmail.com";      
    $mail->Port        = '465';             
    $mail->AddAddress($email);
    $mail->Username   ="nirupam.test@gmail.com";  
    $mail->Password   ="9676647014";            
    $mail->SetFrom($to,$name);
    $mail->AddReplyTo("nirupam.test@gmail.com","Nirupamvas";
    $mail->Subject    = $subject;
    $mail->Body    = $message;
    $mail->AltBody    = $message;
     
    if($mail->Send())
    {
     echo 1;
     
    }
   }
   catch(phpmailerException $ex)
   {
    echo "0";
   }
?>