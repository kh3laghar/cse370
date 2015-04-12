<?php

//make connection
mysql_connect('localhost','root','');
//select db
mysql_select_db('final project');
$sql ="SELECT * FROM Sign up";

$recordsSignup=mysql_query($sql);

?>




<html>
<head>
<title>Customer Data</title>
</head>
<body>
<table width="700" border="1" cellpadding="2" cellspacing="1">
<tr>
<th>name</th>
<th>email</th>


<tr>

<?php

while($Sign up=mysql_fetch_assoc($recordsSignup)){


echo"<tr>";

echo "<td>".$sign up['name']."</td>";

echo "<td>".$sign up['email']."</td>";

echo "</tr>";

}
?>
</table>



</body>
</html>