powershell -command "$cert = New-SelfSignedCertificate -DnsName $env:computername -FriendlyName $env:computername -CertStoreLocation 'cert:\CurrentUser\My'; $pwd = ConvertTo-SecureString -String 'password1234' -Force -AsPlainText; $path = 'cert:\CurrentUser\my\' + $cert.thumbprint; $filepath = (Get-Item -Path '.\').FullName; Export-PfxCertificate -cert $path -FilePath ($filepath + '\powershellcert.pfx') -Password $pwd"

PAUSE