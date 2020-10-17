
<?php
$email=$_POST['email'];
$password=$_POST['password'];
if(empty($email))	
{
	header("location:login.php");
}
else
{
$con=mysql_connect("localhost","root","");

	if($con)
	{
		echo "connection successfully <br>";
	}
	else
	{
		die(mysql_error());
	}

	mysql_select_db("ssip");

	$qry="select password from patientreg where email='".$email."'";
	$result=mysql_query($qry,$con);
	$row=mysql_fetch_array($result);

	session_start();
	if  ($password==$row['password'])
	{
		$_SESSION['student_id']=$email;
		header ("location:doctor_portal.php");
	
	}

	else
	{
		$msg="incorrect email_id or password";
		header ("location:login.php?error=".$msg);
	}
}
?>
