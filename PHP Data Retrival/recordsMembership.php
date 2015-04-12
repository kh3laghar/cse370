<?php

//make connection
mysql_connect('localhost','root','');
//select db
mysql_select_db('final project');
$sql ="SELECT * FROM membership";

$recordsMembership=mysql_query($sql);

?>




<html>
<head>
<title>Customer Data</title>
</head>
<body>
<table width="700" border="1" cellpadding="2" cellspacing="1">
<tr>
<th>membership date</th>
<th>membership level</th>
<th>membership_id</th>


<tr>

<?php

while($membership=mysql_fetch_assoc($recordsMembership)){


echo"<tr>";

echo "<td>".$membership['membership date']."</td>";

echo "<td>".$membership['membership level']."</td>";

echo "<td>".$membership['membership_id']."</td>";
echo "</tr>";

}
?>
</table>



</body>
</html>