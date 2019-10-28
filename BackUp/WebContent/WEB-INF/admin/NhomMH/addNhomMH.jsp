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

		<form name="frmadd_slider" method="POST" action="AddSubjectGroup">

			<h3>THÊM MỚI NhÓM MÔN HỌC</h3>
			<div class="form-group">
				<label>TEN NHÓM MH: </label> <input type="text" name="name"
					class="form-control" placeholder="tên nhóm môn học">
			</div>
			<input type="submit" name="submit" class="btn btn-primary"
				value="THÊM MỚI">
		</form>
	</div>
</div>
<script type="text/javascript" src="../media/admin/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="../media/admin/ckfinder/ckfinder.js"></script>
<script type="text/javascript">
	CKEDITOR.replace('noidung');
</script>
<jsp:include page="../includes/_footer.jsp"></jsp:include>