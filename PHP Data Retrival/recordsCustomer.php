<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
$sql = 'SELECT customer_id,name,age, date_joined, email, phone, membership_id FROM customer';
mysql_select_db('cse370');
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
}
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
    echo "EMP ID :{$row['customer_id']}  <br> ".
         "EMP NAME : {$row['name']} <br> ".
          "EMP AGE :{$row['age']}  <br> ".
          "EMP Date Joined :{$row['date_joined']}  <br> ".
          "EMP Email :{$row['email']}  <br> ".
          "EMP Phone :{$row['phone']}  <br> ".
          "Membership Id  :{$row['membership_id']}  <br> ".
         
         "--------------------------------<br>";
} 
echo "Fetched data successfully\n";
mysql_close($conn);
?>