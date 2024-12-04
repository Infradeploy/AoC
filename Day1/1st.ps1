$smpl = Get-Content $PSScriptRoot\smpl.txt
$length = $smpl.length
$left = foreach ($line in $smpl){
    [int]$line.split("   ")[0]
}
$right = foreach ($line in $smpl){
    [int]$line.split("   ")[1]
}
$left = $left|sort-object
$right = $right |sort-object

$total=0
0..$length |foreach-object {
    $r=[math]::Abs($left[$_] - $right[$_])
    $total += $r
}
$total