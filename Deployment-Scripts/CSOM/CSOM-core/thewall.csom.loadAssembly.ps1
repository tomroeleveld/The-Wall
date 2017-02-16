try{
    Add-Type -Path "c:\Program Files\Common Files\microsoft shared\Web Server Extensions\15\ISAPI\Microsoft.SharePoint.Client.dll" -ErrorVariable errorDLL -ErrorAction SilentlyContinue
    write-host $tab "Microsoft.SharePoint.Client.dll loaded" -ForegroundColor Green
    Add-Type -Path "c:\Program Files\Common Files\microsoft shared\Web Server Extensions\15\ISAPI\Microsoft.SharePoint.Client.Runtime.dll" -ErrorVariable +errorDLL -ErrorAction SilentlyContinue 
    write-host $tab "Microsoft.SharePoint.Client.Runtime.dll loaded" -ForegroundColor Green
    Add-Type -Path "c:\Program Files\Common Files\microsoft shared\Web Server Extensions\15\ISAPI\Microsoft.SharePoint.Client.Publishing.dll" -ErrorVariable +errorDLL  -ErrorAction SilentlyContinue
    write-host $tab "Microsoft.SharePoint.Client.Publishing.dll loaded" -ForegroundColor Green
}
catch{
    write-host "SharePoint Client Components not found. Go to https://www.microsoft.com/en-us/download/details.aspx?id=35585 to download."
}
