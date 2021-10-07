

<?php
//Get Heroku ClearDB connection information
$cleardb_url = parse_url(getenv("CLEARDB_DATABASE_URL"));
$cleardb_server = $cleardb_url["host"];
$cleardb_username = $cleardb_url["user"];
$cleardb_password = $cleardb_url["pass"];
$cleardb_db = substr($cleardb_url["path"],1);
$active_group = 'default';
$query_builder = TRUE;

$cd_host = $cleardb_server;
$cd_port = 3306;
$cd_socket = "";
$cd_user = $cleardb_username; // user name
$cd_password = $cleardb_password;	// "sElling@348"; // password
$cd_dbname = $cleardb_db;
// Connect to DB
$link = new mysqli($cleardb_server, $cleardb_username, $cleardb_password, $cleardb_db);
?>