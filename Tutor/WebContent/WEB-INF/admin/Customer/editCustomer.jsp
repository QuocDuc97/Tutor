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
		<c:if test="${not empty listCustomerEdit}">
			<form name="frmedit_subcategory" method="POST" action="EditCustomer">
				<h3>Sửa thông tin khach hang:</h3>
				<%-- <div class="form-group">
					<label>Mã Khach hang</label> <input type="text" name="id"
						class="form-control" readonly value="${listCustomerEdit.idKH}">

				</div> --%>
				<div class="form-group">
					<label>Tên Khach Hang</label> <input type="text" name="name"
						class="form-control" value="${listCustomerEdit.hoTen}">

				</div>

				<div class="form-group">
					<label>Email: </label> <input type="email" name="email"
						class="form-control" value="${listCustomerEdit.email}">
				</div>

				<div class="form-group">
					<label>Giới tính:</label> <label class="radio-inline"> <input
						type="radio" name="optradio"
						checked="checked"
						value="${listCustomerEdit.gioiTinh}">Nam
					</label> <label class="radio-inline"> <input type="radio"
						name="optradio" value="${listCustomerEdit.gioiTinh}">Nữ
					</label> </label>


				</div>

				<div class="form-group">
					<label>Số điện thoại: </label> <input type="text"
						name="phonenumber" class="form-control"
						value="${listCustomerEdit.soDienThoai}">
				</div>
				<div class="form-group">
					<label>Địa chỉ </label>
					<textarea id="noidung" name="address" class="form-control" value=""> ${listCustomerEdit.diaChi}</textarea>
				</div>



				<input type="submit" name="submit" class="btn btn primary"
					value="Sửa"> <input class="btn btn-danger" type="button"
					value="Quay lại" onclick="history.go(-1);" />
			</form>
		</c:if>
	</div>
</div>


</script>
<script type="text/javascript" src="media/admin/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="media/admin/ckfinder/ckfinder.js"></script>
<script type="text/javascript">
	CKEDITOR.replace('noidung');
</script>
<jsp:include page="../includes/_footer.jsp"></jsp:include>
