$SmtpServer = 'smtp.live.com'
$SmtpUser = 'user@outlook.com'
$smtpPassword = 'P@ssw0rd'
$MailtTo = 'mike@viamonstra.com'
$MailFrom = 'user@outlook.com'
$MailSubject = "Test using $SmtpServer" $Credentials = New-Object System.Management.Automation.PSCredential -ArgumentList $SmtpUser, $($smtpPassword | ConvertTo-SecureString -AsPlainText -Force) 
Send-MailMessage -To "$MailtTo" -from "$MailFrom" -Subject $MailSubject -SmtpServer $SmtpServer -UseSsl -Credential $Credentials