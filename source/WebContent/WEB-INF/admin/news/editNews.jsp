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
		<form name="frmedit_baiviet" method="POST" enctype="multipart/form-data">
			<h3>SỬA BÀI VIẾT: </h3>
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
				<label>Tiêu Đề Mới </label>
				<input type="text" name="title" class="form-control"
					value="">
			</div>
			<div class="form-group">
				<label>Tình trạng</label>
				<br>
				<input type="checkbox" name="active" value="active" > Hiển thị
				
				 <p>Format datetime Y-M-D 00:00:00</p>
				<input type="text" class="form-control" name="etime" value="">
				
		
			</div>
			 <div class="form-group">
				<label>Lương</label>
				<input type="text" class="form-control" name="price" value="">
				<!-- <input type="number" name="start_pr" min="20000" step="1000" value="<?php echo $start_pr; ?>" />
				-
				<?php $endprice =(isset($end_pr)?$end_pr:0); ?>
				<input type="number" name="end_pr" min="<?php echo($endprice) ?>" step="1000" value="<?php echo $endprice ?>" /> -->
			</div> 
			<div class="form-group">
				<label>Thông Tin Chi Tiết </label>
				<textarea class="form-control" id="noidung" name="description">
					
				</textarea>
				
			</div>

			<div class="form-group">
				<label>Ảnh Đại Diện Mới Của Sản Phẩm</label>
				<p><img width="250" src="../lib/upload/images/"></p>
				<input type="hidden" name="anh_hi" value="">
				<input type="file" name="img">
			</div>

			<input type="submit" name="submit" class="btn btn-primary" value="SỬA">
			<a href="news"><button type="button" class="btn btn-danger"><i class="fa fa-times-circle" aria-hidden="true"></i> TRỞ VỀ</button></a>
		</form>
	</div>
</div>
<script type="text/javascript" src="../media/admin/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="../media/admin/ckfinder/ckfinder.js"></script>
<script type="text/javascript">
	CKEDITOR.replace('noidung');
</script>
<!-- <script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			type: 'POST',
			url: 'inc/getProject.php',
			data: {
				'typeid': 0
			},
			success: function (data) {
				var data_obj = JSON.parse(data);
			            //$('#menuid').empty();
			            for (var i = 0; i < data_obj.length; i++) {
			            	$('#typeid').append('<option value=' + data_obj[i].id + '>' + data_obj[i].name + '</option>');
			            }
			        }
			    });
		});
	</script> -->
<jsp:include page="../includes/_footer.jsp"></jsp:include>
 