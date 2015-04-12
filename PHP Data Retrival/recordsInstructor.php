<?php

//make connection
mysql_connect('localhost','root','');
//select db
mysql_select_db('final project');
$sql ="SELECT * FROM instructor";

$recordsInstructor=mysql_query($sql);

?>




<html>
<head>
<title>Customer Data</title>
</head>
<body>
<table width="700" border="1" cellpadding="2" cellspacing="1">
<tr>

<th>staff_id</th>
<th>instructor_id</th>

<tr>

<?php

while($instructor=mysql_fetch_assoc($recordsInstructor)){


echo"<tr>";



echo "<td>".$instructor['staff_id']."</td>";
echo "<td>".$instructor['instructor_id']."</td>";
echo "</tr>";
}
?>
</table>



</body>
</html>