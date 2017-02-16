$Global:tab = "`t"
$Global:newline = "`n"
$Global:updateFileLocation = (get-item $PSScriptRoot).Parent.Parent.FullName
$items = Get-ChildItem $PSScriptRoot\CSOM-core -Filter *.ps1  -File -force 
foreach($item in $items){
    . $item.FullName
}
function showMenu{
    cls
    $choice = read-host "Update or new installation?$newline[1] Update SP2010 installation$newLine[2] New SP2010 installation$newLine[3] Exit$newLine"
    if($choice -le 3){
        switch ($choice) 
        { 
            1{. "$PSScriptRoot\CSOM-update\thewall.csom.update.ps1"}
            2{. "$PSScriptRoot\CSOM-update\thewall.new.update.ps1"}
            5{Exit}
        }
    }
    else{
        showMenu
    }
}
showMenu