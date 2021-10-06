


<?php


include("config.php");

header('Content-Type: application/json; charset=UTF-8');

$db = new mysqli($cd_host, $cd_user, $cd_password, $cd_dbname, $cd_port, $cd_socket);

 

if(isset($_POST["submit_file"]))
{
 $file = $_FILES["file"]["tmp_name"];
 $file_open = fopen($file,"r");
 while(($csv = fgetcsv($file_open, 1000, ",")) !== false)
 {
  $name = $csv[0];
  $age = $csv[1];
  mysql_query("INSERT INTO sections VALUES ('$name','$age')");
 }
}
?>