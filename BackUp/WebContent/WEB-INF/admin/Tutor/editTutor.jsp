<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../includes/_header.jsp"></jsp:include>
<style type="text/css">
.required {
	color: red;
}
</style>
<body>
	<div class="row">
		<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
			<c:if test="${not empty listTutorEdit}">
				<form name="name_info" method="post" action="EditTutor"
					enctype="multipart/form-data">

					<h3>Cập nhật thông tin gia sư</h3>

					<div class="form-group">
						<label>Họ tên gia sư: </label> <input type="text" name="usename"
							class="form-control" value="${listTutorEdit.hotenGS}">
					</div>

					<div class="form-group">
						<label>Email: </label> <input type="email" name="email"
							class="form-control" value="${listTutorEdit.emailGS}">
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
							class="form-control-file border" name="fileanh" value="">
					</div>



					<div class="form-group">
						<label>Số điện thoại: </label> <input type="text"
							name="phonenumber" class="form-control"
							value="${listTutorEdit.soDienThoaiGS}">
					</div>
					<div class="form-group">
						<label>Địa chỉ </label>
						<textarea id="noidung" name="address" class="form-control"
							value="0">  ${listTutorEdit.diaChiGS} </textarea>
					</div>

					<div class="form-group">
						<label>Nghe nghiep </label> <select class="form-control"
							name="nghenghiep">
							<option selected>${listTutorEdit.ngheNghiepGS}</option>
							<option value="Student">Student</option>
							<option value="Worker">Worker</option>
						</select>f
					</div>
					<input type="submit" name="submit" class="btn btn primary"
						value="Sửa"> <input class="btn btn-danger" type="button"
						value="Quay lại" onclick="history.go(-1);" />
				</form>
			</c:if>
		</div>
	</div>
	<script type="text/javascript" src="media/admin/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="media/admin/ckfinder/ckfinder.js"></script>
	<script type="text/javascript">
		CKEDITOR.replace('noidung');
	</script>
	<jsp:include page="../includes/_footer.jsp"></jsp:include>