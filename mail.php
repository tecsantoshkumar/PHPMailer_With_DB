<?php
include 'db_con.php';
include('smtp/smtp/mail_func.php');

if (isset($_POST['subject']) && isset($_POST['email']) && isset($_POST['query'])) {
    $subject = mysqli_real_escape_string($con, $_POST['subject']);
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $query = mysqli_real_escape_string($con, $_POST['query']);

    $sql = "INSERT INTO `user_mail` (`subject`, `email`, `query`) VALUES ('$subject', '$email', '$query')";
    $res = mysqli_query($con, $sql);

    $send_msg = "Message has been sent!";
    $error_msg = "Error occur!";
    $error_save = "Error occur while saving data!";

    $html = "<table><tr><td>Subject</td><td>$subject</td></tr><tr><td>Email</td><td>$email</td></tr><tr><td>Query</td><td>$query</td></tr></table>";
   
    include('smtp/PHPMailerAutoload.php');
    $mail = new PHPMailer(true);
    $mail->isSMTP();
    $mail->Host = "smtp.dreamhost.com";
    $mail->Port = 465;
    $mail->SMTPSecure = "ssl";
    $mail->SMTPAuth = true;
    $mail->Username = "admin@mvitr.com";
    $mail->Password = "mvitr@dream";
    $mail->SetFrom("admin@mvitr.com");
    $mail->addAddress("sk4809656@gmail.com");
    $mail->IsHTML(true);
    $mail->Subject = $subject;
    $mail->Body = $html;
    $mail->SMTPOptions = array('ssl' => array(
        'verify_peer' => false,
        'verify_peer_name' => false,
        'allow_self_signed' => false
    ));
    if ($mail->send()) {
        echo $msg;
        if ($res) {
            header("Location:thanks.php");
        } else {
            echo $error_save;
        }
    } else {
        echo $error_msg;
    }
}
