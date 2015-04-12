<?php

//make connection
mysql_connect('localhost','root','');
//select db
mysql_select_db('final project');
$sql ="SELECT * FROM manager";

$recordsManager=mysql_query($sql);

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
<th>manager_id</th>
<th>staff_id</th>

<tr>

<?php

while($manager=mysql_fetch_assoc($recordsManager)){


echo"<tr>";


echo "<td>".$manager['manager_id']."</td>";
echo "<td>".$manager['staff_id']."</td>";
echo "</tr>";
}
?>
</table>



</body>
</html>