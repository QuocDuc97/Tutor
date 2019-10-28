<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Đăng nhập</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8" />
<meta name="keywords"
	content="My School Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!-- //Meta tag Keywords -->

<!-- Custom-Files -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Bootstrap-CSS -->
<link href="css/stylemyschool.css" rel='stylesheet' type='text/css' />
<!-- Style-CSS -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Font-Awesome-Icons-CSS -->
<!-- //Custom-Files -->

<!-- Web-Fonts -->
<!-- <link href="//fonts.googleapis.com/css?family=Lora:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese"
        rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext" rel="stylesheet"> -->
<!-- //Web-Fonts -->
</head>
<body>
	<header>
		<div class="container">
			<div
				class="header d-lg-flex justify-content-between align-items-center py-2 px-sm-2 px-1">
				<!-- logo -->
				<div id="logo">
					<h1>
						<a href="TrangChu">Gia sư ĐH Vinh</a>
					</h1>
				</div>

				<div class="nav_w3ls ml-lg-5">
					<nav>
						<label for="drop" class="toggle">Menu</label> <input
							type="checkbox" id="drop" />
						<ul class="menu">
							<li><a href="TrangChu">Trang Chủ</a></li>
							<li><a>Phụ huynh<span class="fa fa-angle-down"
									aria-hidden="true"></span></a> <input type="checkbox" id="drop-2" />
								<ul>
									<li><a href="Register">Đăng ký tìm gia sư</a></li>
									<li><a href="#what" class="drop-text">Học phí tham
											khảo</a></li>
									<li><a href="#about" class="drop-text">Phụ huynh cần
											biết</a></li>
									<li><a href="#events" class="drop-text">Dịch vụ gia sư</a></li>
								</ul></li>
							<li><a>Gia sư<span class="fa fa-angle-down"
									aria-hidden="true"></span></a> <input type="checkbox" id="drop-2" />
								<ul>
									<li><a href="Dangky">Đăng ký làm gia sư</a></li>
									<li><a href="#stats" class="drop-text">Hướng dẫn nhận
											lớp</a></li>
									<li><a href="#courses" class="drop-text">Lớp học cần
											gia sư</a></li>
								</ul></li>
							</li>
							<li><a>Liên hệ<span class="fa fa-angle-down"
									aria-hidden="true"></span></a> <input type="checkbox" id="drop-2" />
								<ul>
									<li>Hotline:0965234157</li>
									<li><a href="https://mail.google.com/mail/u/0/#inbox">Gmail.com</a></li>
									<li><a href="https://www.facebook.com/lengoc.phat.1">facebook</a></li>
								</ul></li>
							<%
								if (session.getAttribute("session") != null) {
							%>
							<li><a>Xin chào <%
								out.print(session.getAttribute("session"));
							%>
							</a></li>
							<li><a href="Logout">Đăng Xuất</a></li>
							<%
								} else {
							%>
							<li><a href="Index">Đăng nhập</a></li>
							<%
								}
							%>
						</ul>
					</nav>
				</div>

			</div>
		</div>
	</header>


	<div class="main-w3pvt mian-content-wthree text-center" id="home">
		<div class="container">
			<div class="style-banner mx-auto">
				<h3 class="text-wh font-weight-bold">
					<span>Gia sư ĐH Vinh</span> <br>
				</h3>
				<p class="mt-3 text-li" id="join">Ươm mầm tài năng trẻ</p>
				<!-- form -->
				<div class="home-form-w3ls mt-5">
					<form action="#" method="post">
						<div class="row">
							<div class="col-lg-6">
								<div class="form-group">
									<input class="form-control" type="text" name="Name"
										placeholder="Nhập mã lớp hoặc từ khóa" required="">
								</div>
								<div class="form-group">
									<input class="form-control" type="text" name="Name"
										placeholder="Nhập huyện/phường" required="">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="form-group">
									<input class="form-control" type="text" name="Name"
										placeholder="Nhập đường" required="">
								</div>
								<div class="form-group">
									<textarea class="form-control" name="Name"
										placeholder="Cấp học"></textarea>
								</div>
							</div>
						</div>
						<button type="submit" class="btn_apt btn">Tìm kiếm</button>
					</form>
				</div>
				<!-- //form -->
			</div>
		</div>
	</div>

	<section class="w3ls-bnrbtm py-5" id="about">
		<div class="container py-xl-5 py-lg-3">
			<h3
				class="title-w3 mb-md-5 mb-sm-4 mb-2 text-center font-weight-bold">Phụ
				huynh cần biết?</h3>
			<div class="row">
				<div class="col-lg-6 text-center">
					<img src="images/about.jpg" alt="about" class="img-fluid mt-4" />
				</div>
				<div class="col-lg-6 pr-xl-5 mt-4">
					<h1
						style="text-align: center; color: red; font-size: 22px; margin-top: 10px;"
						class="title" itemprop="name">Phụ Huynh Cần Biết Cách Tìm Gia
						Sư Tốt Cho Con</h1>
					<span style="color: rgb(0, 0, 255);">Kính Gửi Quý Phụ Huynh</span>
					<span
						style="color: rgb(35, 31, 32); font-family: Arial, Helvetica, sans-serif; font-size: medium;">Làm
						thế nào để con mình học tập hiệu quả, đạt kết quả cao ? Cho con
						học gia sư sao cho hiệu quả ? Làm thế nào để&nbsp;<strong>tìm
							gia sư tại nhà giỏi</strong>&nbsp;? Đó luôn luôn là những trăn trở, lo
						lắng&nbsp; của các bậc phụ huynh về tình hình học tập của con em
						mình.
					</span> <span
						style="color: rgb(35, 31, 32); font-family: Arial, Helvetica, sans-serif; font-size: medium;">Công
						việc bận rộn, chương trình giáo dục đổi mới khiến các bậc phụ
						huynh gặp không ít khó khăn trong việc kèm cặp con cái.</span><br> <span
						style="color: rgb(255, 0, 0); font-size: 18px;">Nhiều phụ
						huynh đang gặp những vấn đề sau</span><br> <span style="">Mong
						muốn con mình học giỏi, nhưng sự bận rộn của công việc khiến cho
						sự quan tâm đến học tập của con cái gặp nhiều khó khăn.</span><br> <span
						style="">Thấy con mình chểnh mảng học tập, có dấu hiệu học
						hành sa sút</span><br> <span style="">Cháu bị hổng kiến
						thức,mất căn bản, lười học , không có cảm hứng và động lực học tập</span><br>
					<span style="">Muốn con mình bồi dưỡng nâng cao kiến thức để
						thi vào các trường chuyên, trường đại học danh tiếng mà mình mong
						muốn.</span><br> <span style="">Chính quý phụ huynh cũng muốn
						nâng cao kiến thức môn ngoại ngữ, tin học để lấy các chứng chỉ
						quốc tế hoặc phục vụ tốt nhất cho công việc của mình.</span>
				</div>
			</div>
		</div>
	</section>
	<!-- //banner bottom -->

	<!-- services -->
	<div class="services py-5" id="what">
		<div class="container py-xl-5 py-lg-3">
			<h3
				class="title-w3 mb-xl-5 mb-sm-4 mb-2 text-center text-wh font-weight-bold">Học
				phí tham khảo</h3>
			<div class="row w3pvtits-services-row text-center">
				<div class="col-lg-12 serv-w3mk mt-5">
					<div class="w3pvtits-services-grids">
						<span class="fa fa-leanpub ser-icon" aria-hidden="true"></span>
						<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}
</style>
						</head>
						<body>
							<h2>Bảng giá gia sư</h2>
							<table style="width: 100%" class="table">
								<tbody>
									<tr>
										<th class="col1" rowspan="2">KHỐI LỚP</th>
										<th colspan="2">2 buổi /tuần</th>
										<th colspan="2">3 buổi /tuần</th>
									</tr>
									<tr>
										<th>Sinh Viên</th>
										<th>Giáo Viên</th>
										<th>Sinh Viên</th>
										<th>Giáo Viên</th>
									</tr>
									<tr>
										<td class="col1">Lớp lá 1,2,3,4</td>
										<td>600 -&gt; 700</td>
										<td>1000 -&gt; 1200</td>
										<td>800 -&gt; 1000</td>
										<td>1400 -&gt; 1800</td>
									</tr>
									<tr>
										<td class="col1">Lớp 5,6</td>
										<td>700 -&gt; 800</td>
										<td>1200 -&gt; 1400</td>
										<td>900 -&gt; 1000</td>
										<td>1600 -&gt; 2000</td>
									</tr>
									<tr>
										<td class="col1">Lớp 7,8</td>
										<td>800 -&gt; 1000</td>
										<td>1400 -&gt; 1600</td>
										<td>1100 -&gt; 1400</td>
										<td>1800 -&gt; 2400</td>
									</tr>
									<tr>
										<td class="col1">Lớp 9,Ôn thi HSG,cuối cấp</td>
										<td>900 -&gt; 1100</td>
										<td>1500 -&gt; 1700</td>
										<td>1300 -&gt; 1500</td>
										<td>2200 -&gt; 2500</td>
									</tr>
								</tbody>
							</table>
							</span>
							</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //services -->

	<!-- courses -->
	<section class="branches py-5" id="courses">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title-w3 mb-5 text-center font-weight-bold">Lớp học
				cần gia sư</h3>
			<div class="row branches-position pt-lg-4">
				<div class="col-lg-3 col-sm-6 place-w3">
					<!-- branch-img -->
					<div class="team-img team-img-1">
						<div class="team-content">
							<p></p>
							<p class="team-meta">Smod</p>
						</div>
					</div>
				</div>
				<!-- / branch-img -->
				<div class="col-lg-3 col-sm-6 place-w3 mt-sm-0 mt-4">
					<!-- team-img -->
					<div class="team-img team-img-2">
						<div class="team-content">
							<h4 class="text-wh">Course 2</h4>
							<p class="team-meta">Cura bitur eui</p>
						</div>
					</div>
				</div>
				<!-- /.branch-img -->
				<div class="col-lg-3 col-sm-6 place-w3 mt-lg-0 mt-4">
					<!-- team-img -->
					<div class="team-img team-img-3">
						<div class="team-content">
							<h4 class="text-wh">Course 3</h4>
							<p class="team-meta">In tempus ac</p>
						</div>
					</div>
				</div>
				<!-- /.branch-img -->
				<div class="col-lg-3 col-sm-6 place-w3 mt-lg-0 mt-4">
					<!-- team-img -->
					<div class="team-img team-img-4">
						<div class="team-content">
							<h4 class="text-wh">Course 4</h4>
							<p class="team-meta">Cuan nibh sit</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //places -->

	<!-- stats section -->
	<div class="middlesection-w3pvt py-sm-5 pt-sm-0 pt-5 mt-5" id="stats">
		<div class="container py-xl-5 py-lg-3">
			<div
				class="offset-lg-4 offset-sm-3 left-build-wthree aboutright-w3pvtwthree">
				<h3 class="title-w3-2 title-w3 mb-md-5 mb-4 font-weight-bold">Hướng
					dẫn nhận lớp</h3>
				<div class="row">
					<div class="col-12 w3layouts_stats_left w3_counter_grid">
						<p class="title-sub mb-4" style="color: #fff;">Trung Tâm Gia
							Sư ĐH Vinh hướng dẫn cách đăng ký làm gia sư. Quy trình giao và
							nhận lớp của trung tâm, cách báo sự cố và báo nhận lớp thành
							công, cách in giấy giới thiệu Online, phí và cách thanh toán phí
							nhận lớp. Điều kiện hoàn trả lại phí, để các bạn giáo viên, sinh
							viên nắm rõ (các bạn xem video và đọc hợp đồng).Nếu đây là lần
							đầu tiên bạn nhận lớp dạy tại trung tâm Gia Sư ĐH Vinh, hay bạn
							chưa từng có kinh nghiệm đi dạy gia sư thì phải đọc kỹ hợp đồng
							Và xem các video hướng dẫn, trước khi nhận lớp dạy để tránh những
							sự cố đáng tiếc xảy ra sau này. Trong quá trình đọc hợp đồng và
							xem Video nếu có gì thắc mắc cần hỗ trợ các bạn liên hệ:
							0965234157.
					</div>
				</div>
			</div>
		</div>
		<div class="property-paper">
			<img src="images/img3.png" alt="" class="img-fluid agents-w3" />
		</div>
	</div>
	<!-- //stats section -->

	<!-- events -->
	<section class="blog_w3ls py-5" id="events">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title-w3 mb-5 text-center font-weight-bold">Dịch vụ
				gia sư dạy kèm tài nhà của Gia Sư ĐH Vinh</h3>
			<div class="row mt-4">
				<p style="color: red; font-size: 18px;">GIA SƯ ĐH VINH CHUYÊN:</p>
				<p style="font-size: medium;">Gia sư dạy cấp I các môn :
					Toán, Tiếng Việt, Anh Văn, Tập Đọc, Tập Viết, Rèn chữ đẹp…</p>
				<p style="font-size: medium;">Gia sư dạy cấp II các môn : Toán,
					Lý, Hoá, Anh Văn, Ngữ Văn, Sinh, Sử, Địa, Tin học, Báo Bài …</p>
				<p style="font-size: medium;">Gia sư chuyên : Luyện thi lên lớp
					6, Luyện thi lên lớp 10, Luyện thi vào Trường chuyên - Lớp chọn.</p>
			</div>
			<div class="row mt-4">
				<p style="color: red; font-size: 18px;">PHƯƠNG CHÂM DẠY KÈM:</p>
				<p style="font-size: medium; color: black;">Ôn tập lại những
					kiến thức đã học ở trường.</p>
				<p style="font-size: medium; color: black;">Dạy sát chương
					trình, dạy sâu kiến thức, dạy kỹ chuyên môn.</p>
				<p style="font-size: medium; color: black;">Lấy lại căn bản cho
					học sinh mất gốc.</p>
				<p style="font-size: medium; color: black;">Mở rộng kiến thức,
					dạy nâng cao cho học sinh khá, giỏi.</p>
				<p style="font-size: medium; color: black;">Thường xuyên báo cáo
					kết quả học tập đến quý phụ huynh</p>
			</div>

		</div>
	</section>

	<section class="clients py-5" id="testi">
		<div class="container py-xl-5 py-lg-3">
			<div class="feedback-info text-center">
				<p>"Các bài giảng của giáo sư, cho dù có đầy đủ, xúc tích đến
					đâu, có chứa chan tình yêu tri thức của bản thân giáo viên đến đâu,
					thì về thực chất, mà nói, đó chẳng qua cũng vẫn chỉ là chương
					trình, là những lời chỉ dẫn tuần tự để điều chỉnh trật tự nhận thức
					của sinh viên. Người nào chỉ biết ngồi nghe giáo sư giảng chứ bản
					thân mình trong lòng không cảm thấy khát khao đọc sách, thì có thể
					nói tất cả những điều người ấy nghe giảng ở trường đại học cũng sẽ
					chỉ như một tòa nhà xây trên cát mà thôi ."</p>
				<img src="images/te1.jpg" alt=" " class="img-fluid mt-5">
				<h4 class="mt-4 text-wh font-weight-bold mb-4">I.A. Gontcharov</h4>
			</div>
		</div>
		<br>
	</section>
	<section class="contact py-5" id="contact">
		<div class="container py-xl-5 py-lg-3">
			<h3
				class="title-w3 mb-sm-5 mb-4 text-center text-wh font-weight-bold">Hộp
				thư góp ý</h3>
			<div class="contact_grid_right pt-4">
				<form action="#" method="post">
					<div class="row contact_left_grid">
						<div class="col-lg-6 con-left" data-aos="fade-up">
							<div class="form-group">
								<input class="form-control" type="text" name="Name"
									placeholder="Name" required="">
							</div>
							<div class="form-group">
								<input class="form-control" type="email" name="Email"
									placeholder="Email" required="">
							</div>
							<div class="form-group">
								<input class="form-control" type="text" name="Subject"
									placeholder="Subject" required="">
							</div>
						</div>
						<div class="col-lg-6 con-right" data-aos="fade-up">
							<div class="form-group">
								<textarea id="textarea" placeholder="Message" required=""></textarea>
							</div>
							<div class="sub-honey">
								<button class="form-control btn" type="submit">Góp ý</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- //contact -->

	<!-- footer -->
	<footer class="py-5">
		<div class="container py-xl-4 py-lg-3">
			<div class="row footer-grids">
				<div class="col-lg-2 col-6 footer-grid">
					<h3 class="mb-sm-4 mb-3">Liên hệ:</h3>
					<ul class="list-unstyled">
						<li>0965234157</li>
						<li><a href="https://mail.google.com/mail/u/0/#inbox">Gmail.com</a>
						</li>
						<li><a href="https://www.facebook.com/lengoc.phat.1">facebook</a>
						</li>
					</ul>
				</div>
				<div class="col-lg-2 col-6 footer-grid text-lg-right">
					<ul class="list-unstyled">
						<li><a href="Index">Đăng nhập</a></li>
						<li><a href="Dangky">Đăng ký</a></li>
					</ul>
					</ul>
				</div>
				<div class="col-lg-4 footer-grid mt-lg-0 mt-4">
					<div class="footer-logo">
						<h2 class="text-lg-center text-center">
							<a class="logo text-wh font-weight-bold" href="TrangChu">
								Trang chủ</a>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- //footer -->
	<!-- copyright -->
	<div class="copyright-w3ls py-4">
		<div class="container">
			<div class="row">
				<!-- copyright -->
				<p
					class="col-lg-8 copy-right-grids text-wh text-lg-left text-center mt-lg-2">©
					2019 Gia su DH Vinh| Design by Le Ngoc Phat</p>
				<!-- //copyright -->
				<!-- social icons -->
				<div
					class="col-lg-4 w3social-icons text-lg-right text-center mt-lg-0 mt-3">
					<ul>
						<li><a href="https://www.facebook.com/lengoc.phat.1"
							class="rounded-circle"> <span class="fa fa-facebook-f"></span>
						</a></li>
						<li class="px-2"><a
							href="https://mail.google.com/mail/u/0/#inbox"
							class="rounded-circle"> <span class="fa fa-google-plus"></span>
						</a></li>
						<li><a href="#" class="rounded-circle"> <span
								class="fa fa-twitter"></span>
						</a></li>
						<li class="pl-2"><a href="#" class="rounded-circle"> <span
								class="fa fa-dribbble"></span>
						</a></li>
					</ul>
				</div>
				<!-- //social icons -->
			</div>
		</div>
	</div>
	<!-- //copyright -->
	<!-- move top icon -->
	<a href="#home" class="move-top text-center"> <span
		class="fa fa-angle-double-up" aria-hidden="true"></span>
	</a>
	<!-- //move top icon -->

</body>
</html>