<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
$sql = 'SELECT membership_id, membership_level,membership_date FROM membership';
mysql_select_db('cse370');
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
}
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
    echo "Membership ID :{$row['membership_id']}  <br> ".
         "Membership Level : {$row['membership_level']} <br> ".
          
          "Membership Date Joined :{$row['membership_date']}  <br> ".
          
         
         "--------------------------------<br>";
} 
echo "Fetched data successfully\n";
mysql_close($conn);
?>