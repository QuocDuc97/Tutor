<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../includes/_header.jsp"></jsp:include>
<style type="text/css">
.required {
	color: red;
}
</style>
<div class="row">
	<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">

		<form name="name_info" method="post" action="AddSubject">

			<h3>THÊM MỚI MÔN HỌC</h3>

			<div class="form-group">
				<label>TÊN MÔN HỌC: </label> <input type="text" name="name"
					class="form-control" placeholder="enter your name subject">
			</div>

			<c:if test="${not empty listNhomMH}">
				<div class="form-group">
					<label>Tên nhóm môn học</label> <select class="form-control"
						name="nghenghiep">
						<c:forEach items="${listNhomMH}" var="j">
							<option value="${j.idN}">${j.tenN}</option>
						</c:forEach>
					</select>


				</div>

			</c:if>
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