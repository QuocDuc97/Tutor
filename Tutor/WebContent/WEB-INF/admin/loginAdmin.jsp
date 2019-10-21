<?php
	ob_start(); 
	include('inc/myconnect.php');
	include('inc/function.php');
	session_start();
	if(isset($_SESSION['uid']))
	{
		header('Location: index.php');
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>bData - Administrator Website</title>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" type="image/png" sizes="16x16" href="images/b-logo.png">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<style type="text/css">
		/*.container{
			background-color: #025b00;
			height: 647px;
		}*/
		.wrap{
			padding: 20px;
			background-color: #ffffff;
			text-transform: uppercase;
			border-radius: 5px;
		}
		.wrap .btn{
			text-transform: uppercase;
		}
		.wrap input{
			margin-top: 20px;
			margin-bottom: 20px;
			border-radius:0px;
			border-left: none;
			border-top: none;
			border-right: none;
		}
		.btn {
			border-color: #ff3c00;
			background-color: #ffffff;
			color: #ff3c00;
		}
		h3 {
			color: #ff0000;
			font-size: 30px;
		}
	</style>
</head>
<body>
	<?php
	if($_SERVER['REQUEST_METHOD']=='POST')
	{
		$errors=array();
		if(empty($_POST['username'])) {
			$errors[]='username';
		} else {
			$username=$_POST['username'];
		}

		if(empty($_POST['password'])){
			$errors[]='password';
		} else {
			$password=$_POST['password'];
		}

		if(empty($errors)) {
			$query="SELECT admin_id, username, password FROM admin WHERE username='{$username}' AND password='{$password}'";
			$result=mysqli_query($dbc,$query);
			kt_query($result,$query);
			if(mysqli_num_rows($result)!=0)
			{
				list($admin_id,$username,$password,$role)=mysqli_fetch_array($result,MYSQLI_NUM);
				$_SESSION['uid']=$admin_id;
				$_SESSION['username']=$username;
				header('Location: index.php');
			}
			else
			{
				$message="Username and password incorrect.Please try again.";
			}
		}
	}
	?>
	<div class="container-fluid">
		<div class="row" style="min-height: 600px;">
			<div class="col-md-4 mx-auto">
				<div class="wrap">
					<div class="text-center">
						<img src="../images/C-IT.jpg" class="img-responsive" width="400" height="150">

					</div>
					<h3 class="text-center"></h3>
					<form name="frmlogin" method="POST" action="">
						<td>
							<input type="text" name="username" class="form-control" placeholder="Username" required>
						</td>
						<td>
							<input type="password" name="password" class="form-control" placeholder="Password" required>
						</td>
						<div class="text-right">
							<button class="btn" type="submit">SIGN IN</button>
						</div><br>
						<div class="text-center">
							<?php 
								if(isset($message))
								{
									echo "<h6 class='text-danger'>"."<i class='fa fa-exclamation-triangle' aria-hidden='true'></i>".$message."</h6>";
								}
							?>
						</div>
					</form>
				</div>
			</div>
		</div>
		<footer>
			<h6><p style="color: #464a4c;" class="text-center">Copyright © 2018 <a style="color:#464a4c; text-decoration: none;" href="http://bdata.com.vn" target="_blank">viectheogiocit.com</a></p></h6>
		</footer>
	</div>
</body>
</html>
<?php
	ob_flush();#2196f3
?>