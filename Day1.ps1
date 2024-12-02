$csv = Import-Csv -Path C:\files\AOC2024\Day1.txt -Delimiter ',' -Header 'Set1','Set2'
$set1 = $csv.set1 | sort 
$set2 = $csv.set2 | sort 
$count = $set1.count
$total = 0
for ($i = 0; $i -lt $count; $i++){
    if($set1[$i] -ge $set2[$i]){
    $total += ($set1[$i] - $set2[$i])
    }else{
    $total += ($set2[$i] - $set1[$i])
    }
    }
Write-Output $total