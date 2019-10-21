<style type="text/css">
	.required {
		color: red;
	}
</style>
<?php 
	include('includes/header.php');
	include('inc/myconnect.php');
	include('inc/function.php');
?>
<div class="row">
	<?php
		
		if($_SERVER['REQUEST_METHOD']=='POST')
		{
			$matkhaucu=$_POST['matkhaucu'];
			$matkhaumoi=trim($_POST['matkhaumoi']);
			$query="SELECT admin_id,password FROM admin WHERE password='{$matkhaucu}' AND admin_id={$_SESSION['uid']}";
			$result=mysqli_query($dbc,$query);
			kt_query($result,$query);
			if(mysqli_num_rows($result)!=0)
			{
				if(trim($_POST['matkhaumoi'])!==trim($_POST['matkhaumoire']))
				{
					$message="<p class='required'>Mật Khẩu Mới Không Giống Nhau</p>";
				}
				else
				{
					$query_up="UPDATE admin
							   SET password='{$matkhaumoi}'
							   WHERE admin_id={$_SESSION['uid']}";
					$result_up=mysqli_query($dbc,$query_up);
					kt_query($result_up,$query_up);
					if(mysqli_affected_rows($dbc)!=0)
					{
						$message="<p style='color:green;'>Đổi Mật Khẩu Thành Công</p>";
					}
					else
					{	
						$message="<p class='required'>Đổi Mật Khẩu Không Thành Công</p>";
					}
				}
			}
			else
			{
				$message="<p class='required'>Mật Khẩu Cũ Không Đúng</p>";
			}
		}
	?>
	<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
		<?php
			if(isset($message))
			{
				echo $message;
			}
		?>
		<form name="frmdoimatkhau" method="POST">
			<h3>ĐỔI MẬT KHẨU</h3>
			<div class="form-group">
				<label>Tài Khoản</label>
				<input type="text" name="taikhoan" value="<?php echo $_SESSION['username'];?>" class="form-control" disabled="true">
			</div>
			<div class="form-group">
				<label>Mật Khẩu Cũ</label>
				<input type="password" name="matkhaucu" value="" class="form-control">
			</div>
			<div class="form-group">
				<label>Mật Khẩu Mới</label>
				<input type="password" name="matkhaumoi" value="" class="form-control">
			</div>
			<div class="form-group">
				<label>Xác Nhận Mật Khẩu Mới</label>
				<input type="password" name="matkhaumoire" value="" class="form-control">
			</div>
			<input type="submit" name="submit" value="Đổi Mật Khẩu" class="btn btn-primary">
		</form>
	</div>
</div>
<?php include('includes/footer.php');?>