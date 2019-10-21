<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<jsp:include page="../includes/_header.jsp"></jsp:include>
<style type="text/css">
th {
	text-align: center;
}
td {
	text-align: center;
}
#example_wrapper { 
	position: relative;
}
tfoot {
	position: absolute;
	top: -50px;
	left: 25%;
}
tfoot tr th:first-child{
	display: none;
}
table.dataTable tfoot th select {
	width : 100% !important;
}
h5{
	margin-top: -16px;
	margin-left: 175px;
	margin-bottom: 22px;
}
</style>
<div class="row">
	<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
		<h3 style="text-align: center;">DANH SÁCH BÀI VIẾT</h3><br><br><br>
		<h5>Chọn Loại bài:</h5>
		<table id="example" class="table table-striped table-bordered">
			<thead>
				<tr>
					<th style="text-align: left;">Mã</th>
					<th style="text-align: left;">Loại bài</th>
					<th style="text-align: left;">Công ty</th>
					<th style="text-align: left;">Công việc</th>
					<th style="text-align: left;">Khu vực</th>
					<th style="text-align: left;">Tiêu Đề </th>
					<th style="text-align: left;">Hình ảnh</th>
					<th style="text-align: left;">Tình trạng</th>
					<th style="text-align: left;">Giá tiền</th>
					
					<!-- <th>Ảnh</th> -->
					<th>Thời gian</th>
					<th>Chỉnh Sửa</th>
					<th>Xóa</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td style="text-align: left;"></td>
						<td style="text-align: left;">
						</td>
						<!-- <td style="text-align: left;"> -->
							
						<!-- </td> -->
						<td style="text-align: left;">
							
						</td>
						<td style="text-align: left;"></td>
						<td style="text-align: left;"></td>
						<td style="text-align: center;"></td>
						<td><img width="100" src="../../media/admin/upload/noimage.png"></td>
						<td></td>
						<td style="text-align: center;">
							
						</td>
						<td>
						
						 	
						 </td>
						<td align="center">
							<a href="edit_news.php?id=">
								<img src="images/edit.png" width="16">
							</a>
						</td>

						<td align="center">
							<a href="delete_news.php?id=" onclick="return confirm('Bạn Có Thực Sự Muốn Xóa Không ?');">
								<img src="images/delete.png" width="16">
							</a> 
						</td>
					</tr>
					<?php

				}
				?>
			</tbody>
			<tfoot>
				<tr>
					<th></th>
					<th style="width: 486px !important;">name</th> 
				</tr>
			</tfoot>
		</table>
	</div>
</div>
<!-- <script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	} );
</script> -->

<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable( {
			initComplete: function () {
				this.api().columns().every( function () {
					var column = this;
					var select = $('<select><option value=""></option></select>')
					.appendTo( $(column.footer()).empty())
					.on( 'change', function () {
						var val = $.fn.dataTable.util.escapeRegex(
							$(this).val()
							);

						column
						.search( val ? '^'+val+'$' : '', true, false )
						.draw();
					} );

					column.data().unique().sort().each( function ( d, j ) {
						select.append( '<option value="'+d+'">'+d+'</option>' )
					} );
				} );
			}
		} );
	} );
</script>
<jsp:include page="../includes/_footer.jsp"></jsp:include>
