//select db
mysql_select_db('cse370');

$sql ="SELECT * FROM customer";

$recordsCustomer=mysql_query($sql);

?>




<html>
<head>
<title>Customer Data</title>
</head>
<body>
<table width="700" border="1" cellpadding="2" cellspacing="1">
<tr>
<th>customer_id</th>
<th>name</th>
<th>age</th>
<th>date_joined</th>
<th>membership_id</th>
<th>email</th>
<th>phone</th>

<tr>

<?php

while($customer=mysql_fetch_assoc($recordsCustomer)){


echo"<tr>";

printf( "<td>".$customer['customer_id']."</td>");

echo "<td>".$customer['name']."</td>";

echo "<td>".$customer['age']."</td>";

echo "<td>".$customer['date_joined']."</td>";
echo "<td>".$customer['membership_id']."</td>";
echo "<td>".$customer['email']."</td>";
echo "<td>".$customer['phone']."</td>";
echo "</tr>";
}
?>
</table>



</body>
</html>