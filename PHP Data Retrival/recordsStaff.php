<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
$sql = 'SELECT name, Staff_id, instructor_id,manager_id FROM staff';
mysql_select_db('cse370');
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
}
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
    echo   "Name : {$row['name']} <br> ".
           "Staff_id : {$row['Staff_id']} <br> ".
           "instructor ID :{$row['instructor_id']}  <br> ".
           "Manager Id  : {$row['manager_id']} <br> ".
          
          
          
         
         "--------------------------------<br>";
} 
echo "Fetched data successfully\n";
mysql_close($conn);
?>