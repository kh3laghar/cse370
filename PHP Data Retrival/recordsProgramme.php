<?php

//make connection
mysql_connect('localhost','root','');
//select db
mysql_select_db('final project');
$sql ="SELECT * FROM programme";

$recordsProgramme=mysql_query($sql);

?>




<html>
<head>
<title>Customer Data</title>
</head>
<body>
<table width="700" border="1" cellpadding="2" cellspacing="1">
<tr>
<th>cost</th>
<th>date</th>
<th>type</th>
<th>type_id</th>
<th>instructor_id</th>

<tr>

<?php

while($programme=mysql_fetch_assoc($recordsProgramme)){


echo"<tr>";

echo "<td>".$programme['cost']."</td>";

echo "<td>".$programme['date']."</td>";

echo "<td>".$programme['type']."</td>";
echo "</tr>";
echo "<td>".$programme['type_id']."</td>";
echo "<td>".$programme['instructor_id']."</td>";

}
?>
</table>



</body>
</html>