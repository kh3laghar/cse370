<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
$sql = 'SELECT cost, date_joined, program_time,type_id,instructor_id FROM programme';
mysql_select_db('cse370');
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
}
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
    echo   "Cost  : {$row['cost']} <br> ".
           "Date Joined : {$row['date_joined']} <br> ".
           "Program Time  : {$row['program_time']} <br> ".
           "Type_id : {$row['type_id']} <br> ".
           "Instructor_id : {$row['instructor_id']} <br> ".

           
           
          
          
         
         "--------------------------------<br>";
} 
echo "Fetched data successfully\n";
mysql_close($conn);
?>