<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../includes/_header.jsp"></jsp:include>

<style type="text/css">
th {
	text-align: center;
}

td {
	text-align: center;
}
</style>
<div class="row">
	<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
		<h3>List Customer</h3>
		<table id="example" class="table table-striped table-bordered"
			cellspacing="0" width="100%">
			<thead>
				<tr>
				<th>Ma KH</th>
					<th style="text-align: left;">Name</th>
					<th style="text-align: center;">Email</th>
					<th style="text-align: center;">Gender</th>
					<th style="text-align: center;">Phone</th>
					<th style="text-align: center;">Address</th>
					<th>Chỉnh Sửa</th>
					<th>Xóa</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty listCustomer}">
					<c:forEach items="${listCustomer}" var="j">
						<tr>
							<td>${j.idKH}</td>
							<td>${j.hoTen}</td>
							<td>${j.email}</td>
							<td>${j.gioiTinh}</td>
							<td>${j.soDienThoai}</td>
							<td>${j.diaChi}</td>
							<td align="center"><a
								href="EditCustomer?idKH_id=${j.idKH}"> <img
									src="media/admin/images/edit.png" width="16">
							</a></td>

							<td align="center"><a
								href="DeleteCustomer?idKH_id=${j.idKH}"
								onclick="return confirm('Bạn Có Thực Sự Muốn Xóa Không ?');">
									<img src="media/admin/images/delete.png" width="16">
							</a></td>

						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</div>

<!-- <script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	} );
</script> -->

<jsp:include page="../includes/_footer.jsp"></jsp:include>