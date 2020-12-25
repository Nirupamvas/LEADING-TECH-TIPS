<?php
session_start();
include 'config.php';

    $post_title = urldecode($_POST['name']);

    $sql = 'select * from post where post_title="'.$post_title.'" ';
	   $result = $con->query($sql);
    if($row = $result->fetch_assoc())
  	{
    	echo $row['post_id'];
  	}
    else{
      echo 14;
    }
?>