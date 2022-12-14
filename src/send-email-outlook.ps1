$ol = New-Object -comObject Outlook.Application
$mail = $ol.CreateItem(0)
$mail.Subject = "User credentials"
$mail.Body = @"
Hello,

Your credentials are as follows.

Username:


Password:


"@ -replace "`n", "`t`n"
$mail.save()

$inspector = $mail.GetInspector
$inspector.Display()
