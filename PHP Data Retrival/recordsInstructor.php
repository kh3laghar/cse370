<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
$sql = 'SELECT instructor_id, Staff_id FROM instructor';
mysql_select_db('cse370');
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
}
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
    echo "instructor ID :{$row['instructor_id']}  <br> ".
         "Staff_id : {$row['Staff_id']} <br> ".
          
          
          
         
         "--------------------------------<br>";
} 
echo "Fetched data successfully\n";
mysql_close($conn);
?>