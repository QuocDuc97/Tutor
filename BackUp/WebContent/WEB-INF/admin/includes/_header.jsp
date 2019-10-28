	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="icon" type="image/jpg" sizes="32x32"
	href="media/admin/images/C-IT.jpg"> -->
<meta name="description" content="">
<meta name="author" content="">
<!-- /ViecTheoGio/WebContent/media/css/bootstrap-datepicker.css.map --><!--  -->
<title>TUTOR - Administrator Website</title>
<!-- dataTable -->
<!-- <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" /> -->
<link rel="stylesheet" type="text/css"
	href="media/admin/css/jquery.dataTables.min.css">
<!-- Bootstrap Core CSS -->
<link href="media/admin/css/bootstrap.min.css" rel="stylesheet">
<!-- <link href="css/dataTables.bootstrap.min.css" rel="stylesheet"> -->
<!-- Custom CSS -->
<link href="media/admin/css/sb-admin.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<!-- <link href="css/plugins/morris.css" rel="stylesheet"> -->

<!-- Custom Fonts -->
<link href="media/admin/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<link rel="stylesheet" type="text/css" href="media/admin/css/style.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script src="media/admin/js/jquery.js"></script>
</head>

<body>
		
	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.php">TUTOR</a>
			</div>
			<!-- Top Menu Items -->
			<ul class="nav navbar-right top-nav">


				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-user-circle"
						aria-hidden="true"></i> Hello:&nbsp;
						
						<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<!--<li>
                            <a href="edit_user.php?id=<?php //echo $_SESSION['uid'];?>"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>-->
						<li><a href="doimatkhau.php"><i class="fa fa-fw fa-gear"></i>Change
								Password</a></li>
						<li class="divider"></li>
						<li><a href="logout.php"><i class="fa fa-fw fa-power-off"></i>Log
								out</a></li>
					</ul></li>
			</ul>
			<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
			<jsp:include page="_sidebar.jsp"></jsp:include>
			<!-- /.navbar-collapse -->
		</nav>
		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->