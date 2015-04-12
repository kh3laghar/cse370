<?php

//make connection
mysql_connect('localhost','root','');
//select db
mysql_select_db('final project');
$sql ="SELECT * FROM staff";

$recordsStaff=mysql_query($sql);

?>




<html>
<head>
<title>Customer Data</title>
</head>
<body>
<table width="700" border="1" cellpadding="2" cellspacing="1">
<tr>
<th>name</th>
<th>staff_id</th>
<th>manager_id</th>
<th>instructor_id</th>

<tr>

<?php

while($staff=mysql_fetch_assoc($recordsStaff)){


echo"<tr>";
echo "<td>".$staff['name']."</td>";
echo "<td>".$staff['staff_id']."</td>";
echo "<td>".$staff['manager_id']."</td>";
echo "<td>".$staff['instructor_id']."</td>";
echo "</tr>";
}
?>
</table>



</body>
</html>