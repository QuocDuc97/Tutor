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
		<h3>List Tutor</h3>
		<table id="example" class="table table-striped table-bordered"
			cellspacing="0" width="100%">
			<thead>
				<tr>
					<th style="text-align: center;">id</th>
					<th style="text-align: center;">Name</th>
					<th style="text-align: center;">Email</th>
					<th style="text-align: center;">Gender</th>
					<th style="text-align: center;">Image</th>
					<th style="text-align: center;">Phone</th>
					<th style="text-align: center;">Address</th>
					<th style="text-align: center;">Job</th>
					<th>Chỉnh Sửa</th>
					<th>Xóa</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty listGS}">
					<c:forEach items="${listGS}" var="j">
						<tr>
							<td>${j.idGS}</td>
							<td>${j.hotenGS}</td>
							<td>${j.emailGS}</td>
							<td>${j.gioiTinhGS}</td>
							<td>${j.imageGS.substring(j.imageGS.lastIndexOf("\\")+1)}</td>
							<td>${j.soDienThoaiGS}</td>
							<td>${j.diaChiGS}</td>
							<td>${j.ngheNghiepGS}</td>
							<td align="center"><a href="EditTutor?idGS_id=${j.idGS}">
									<img src="media/admin/images/edit.png" width="16">
							</a></td>

							<td align="center"><a
								href="DeleteTutor?idGS_id=${j.idGS}"
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

<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	} );
</script>

<jsp:include page="../includes/_footer.jsp"></jsp:include>