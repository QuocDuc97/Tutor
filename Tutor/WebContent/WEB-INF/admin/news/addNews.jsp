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
		
		<form name="frmadd_slider" method="POST" enctype="multipart/form-data">

			<h3>THÊM MỚI BÀI VIẾT</h3>

			<div class="form-group">
				<label style="display: block;">Chọn Loại bài</label>
				
			</div>
			<div class="form-group">
				<label style="display: block;"> Chọn công ty</label>
				
			</div>
			<div class="form-group">
				<label>Số điện thoại/ Thông tin liên hệ</label>
				<input type="text" name="contacts" class="form-control" placeholder="Số điện thoai/ Thông tin liên hệ"
				value=""
				>
				
			</div>

			<div class="form-group">
				<label style="display: block;"> Chọn công việc</label>
				
			</div>

			<div class="form-group">
				<label style="display: block;"> Chọn khu vực</label>
				
				
			</div>

			<div class="form-group">
				<label>Tiêu Đề </label>
				<input type="text" name="title" class="form-control" placeholder="Tiêu Đề"
				value=""
				>
				
			</div>
			<div class="form-group">
				<label>Tình trạng</label>
				<br>
				<input type="checkbox" name="active" value="active" checked > Hiển thị
				<input type="date" name="etime" value="">
				
			</div>
			<div class="form-group">
				<label>Lương</label>
				
				<!-- <input type="number" name="start_pr" min="20000" step="1000" value="20000" />
				-
				<input type="number" name="end_pr" min="30000" step="1000"  /> -->
				<input type="text" name="price" class="form-control" placeholder="Tiêu Đề"
				value=""/>
			</div>
			<div class="form-group">
				<label>Thông Tin Chi Tiết </label>
				<textarea id="noidung" name="description" class="form-control" value=""></textarea>
				
				<h5 class="text-danger">(Lưu ý: Set Chiều Cao: 50% & Chiều Dài: 50% Của Ảnh)</h5>
			</div>
			<div class="form-group">
				<label>Chọn Ảnh Đại Diện Của Bài Viết</label>
				<input type="file" name="img">
			</div>
			<!-- <input type="hidden" name="typeid" id="type-id" value=""> -->
			<input type="submit" name="submit" class="btn btn-primary" value="THÊM MỚI">
		</form>
	</div>
</div>
<script type="text/javascript" src="../media/admin/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="../media/admin/ckfinder/ckfinder.js"></script>
<script type="text/javascript">
	CKEDITOR.replace('noidung');
</script>
<jsp:include page="../includes/_footer.jsp"></jsp:include>