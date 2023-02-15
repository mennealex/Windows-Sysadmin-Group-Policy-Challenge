$directory = Get-ChildItem
foreach ($item in $directory) {
    $acl = Get-Acl $item.FullName
    $acl
}
