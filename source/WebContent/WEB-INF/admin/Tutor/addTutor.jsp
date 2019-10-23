<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../includes/_header.jsp"></jsp:include>
<style type="text/css">
.required {
	color: red;
}
</style>
<div class="row">
	<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">

		<form name="name_info" method="post" action="AddTutor" enctype="multipart/form-data">

			<h3>THÊM MỚI GIA SU</h3>

			<div class="form-group">
				<label>Họ tên gia sư: </label> <input type="text" name="name"
					class="form-control" placeholder="enter your name">
			</div>

			<div class="form-group">
				<label>Email: </label> <input type="email" name="email"
					class="form-control" placeholder="enter your email">
			</div>

			<div class="form-group">
				<label>Giới tính:</label> <label class="radio-inline"> <input
					type="radio" name="optradio" checked value="Male">Nam
				</label> <label class="radio-inline"> <input type="radio"
					name="optradio" value="Female">Nữ
				</label> </label>
			</div>
			<div class="form-group">
				<label>Ảnh</label> <input type="file"
					class="form-control-file border" name="photo">
			</div>



			<div class="form-group">
				<label>Số điện thoại: </label> <input type="text" name="phonenumber"
					class="form-control" placeholder="enter your phone number">
			</div>
			<div class="form-group">
				<label>Địa chỉ </label>
				<textarea id="noidung" name="address" class="form-control" value="0"> </textarea>
			</div>

			<div class="form-group">
				<label>Nghe nghiep </label> <select class="form-control"
					name="nghenghiep">
					<option selected>Open this select menu</option>
					<option value="Student">Sinh viên</option>
					<option value="Worker">Đã đi làm</option>
				</select>
			</div>
			<input type="submit" name="submit" class="btn btn-primary"
				value="THÊM MỚI">

		</form>
	</div>
</div>
<script type="text/javascript" src="media/admin/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="media/admin/ckfinder/ckfinder.js"></script>
<script type="text/javascript">
	CKEDITOR.replace('noidung');
</script>
<jsp:include page="../includes/_footer.jsp"></jsp:include>
<!-- <script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			type: 'POST',
			url: 'inc/getProject.php',
			data: {
				'cateid': 0
			},
			success: function (data) {
				var data_obj = JSON.parse(data);
			            //$('#menuid').empty();
			            for (var i = 0; i < data_obj.length; i++) {
			            	$('#cateid').append('<option value=' + data_obj[i].id + '>' + data_obj[i].name + '</option>');
			            }
			        }
			    });
	});
</script>
 -->