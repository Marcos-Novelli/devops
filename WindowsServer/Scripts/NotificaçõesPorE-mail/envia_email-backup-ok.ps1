# Script de envio de e-mail

$emailSmtpServer = "smtp.provedor.com ou br" # Servidor SMTP.
$emailSmtpServerPort = numero # Porta do Servidor SMTP.
$emailSmtpUser = "e-mail" # Usuário do e-mail.
$emailSmtpPass = "senha"  # Senha do e-mail.
 
$emailMessage = New-Object System.Net.Mail.MailMessage
$emailMessage.From = "Mensagem <seu e-mail>" # E-mail remetente.
$emailMessage.To.Add( "e-mail que vai receber a mensagem" ) # E-mail destinatário.
$emailMessage.Subject = "Assunto do e-mail" # Assunto do e-mail.
$emailMessage.IsBodyHtml = $true # Habilita o e-mail HTML.
$emailMessage.Body = "Mensagem do corpo do e-mail" # Mensagem do e-mail.
 
$SMTPClient = New-Object System.Net.Mail.SmtpClient( $emailSmtpServer , $emailSmtpServerPort )
$SMTPClient.EnableSsl = $true # Habilita a criptografía SSL no email.
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential( $emailSmtpUser , $emailSmtpPass );
$SMTPClient.Send( $emailMessage )