$( document ).ready(function() {

	// click to show search
	$(".search-show").click(function() {
		$('.search-wrap').toggleClass('search-appear');
		$('.search-wrap .form-control').focus();
		$('.navbar .nav-link').fadeToggle(500);
		$('.overlay-wrap').fadeToggle(500);
	});

	// close search bar
	$(".close-search").click(function() {
		$('.search-wrap').toggleClass('search-appear');
		$('.navbar .nav-link').fadeToggle(500);
		$('.overlay-wrap').fadeToggle(500);
	});

	// overlay show
	$(".overlay-wrap").click(function() {
		$('.close-search').trigger('click');
	});

	// if ($(window).width() > 991) {
	// 	$( ".dropdown" ).hover(
	// 		function() {
	// 			$(this).find(".dropdown-menu").toggleClass("show");
	// 		}
	// 	);
	// }

	// Scroll with ease effect
	// $('html').scrollWithEase();

	// change navbar background when srcoll
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		if (scroll > 20) {
			$(".navbar").addClass('nav-bg-white');
		}
		else{
			$(".navbar").removeClass('nav-bg-white');
		}
	});

	// member slider
	$('.memeber-slider').slick({
		dots: true,
		infinite: false,
		speed: 300,
		slidesToShow: 4,
		slidesToScroll: 4,
		responsive: [
		{
			breakpoint: 1024,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 3,
				infinite: true,
				dots: true
			}
		},
		{
			breakpoint: 600,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 2
			}
		},
		{
			breakpoint: 480,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		}
		]
	});

	// go to top
	$(window).scroll(function () {
		if ($(this).scrollTop() > 50) {
			$('#back-to-top').fadeIn();
		} else {
			$('#back-to-top').fadeOut();
		}
	});
	$('#back-to-top').click(function () {
		$('#back-to-top').tooltip('hide');
		$('body,html').animate({
			scrollTop: 0
		}, 800);
		return false;
	});

	// select2 
	$(".jobFilter").select2({
		theme: 'bootstrap4'
	});

	$(".statusFilter").select2({
		theme: 'bootstrap4'
	});
	
	$(".cityFilter").select2({
		theme: 'bootstrap4'
	});

	// show tooltip
	$(document).ready(function(){
		$('[data-toggle="tooltip"]').tooltip(); 
	});

	// animate hambuger icon
	$(function() {
		$('#navbarSupportedContent').on('hide.bs.collapse', function () {
			$('.navbar-toggler').removeClass('open');
		})
		$('#navbarSupportedContent').on('show.bs.collapse', function () {
			$('.navbar-toggler').addClass('open');
		})
	});

	$(".filter-job .card-header").click(function() {
		$(this).parent().find('.card-body').slideToggle(300);
		$(this).find('.icon-rotate').find('.fas').toggleClass('animate-icon');
	});
	
	// ==============================Scrolling  ===============
	(function($){
        $(window).on("load",function(){
            $(".list-job-container").mCustomScrollbar({
            	theme:"dark-thin"
            });
        });
    })(jQuery);

    (function($){
        $(window).on("load",function(){
            $(".detail-post").mCustomScrollbar({
            	theme:"dark-thin"
            });
        });
    })(jQuery);

    (function($){
        $(window).on("load",function(){
            $(".apply-post").mCustomScrollbar({
            	theme:"dark-thin"
            });
        });
    })(jQuery);

   
    
// ==============================// END Scrolling ===============
// ==============================================================
	// Calender - dater picking
	$(function () {
        $('#birthday').datetimepicker({
        	// locale: 'vi',
        	format: 'L',
        	locale: 'vi',
        	viewMode: 'years',
        	format: 'DD/MM/YYYY'
        });
        $('#birthday').on("change.datetimepicker", function (e) {
		    //  // console.log(e.date._i);
		});
        
    });


 // =========================
});

// =====================Search form for bai-dang.php================

// Add class .show to display ul,li
$(document).ready(function(){
  $("#myInput").click(function(){
    $("#myUL").addClass("show");
  });
});
// When click outside form search remove class show
$(document).ready(function(){
  	window.onclick = function(event) {
  	 	if (!event.target.matches('#myInput')) {
			    $("#myUL").removeClass("show");
		}
	}
});

// Filer content search <input>
function myFunction() {
    var input, filter, ul, li, a, i;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}

// });
	$(".filter-job .card-header").click(function() {
		$(this).parent().find('.card-body').slideToggle(300);
		$(this).find('.icon-rotate').find('.fas').toggleClass('animate-icon');
	});

	(function($){
        $(window).on("load",function(){
            $(".list-job-container").mCustomScrollbar({
            	theme:"dark-thin"
            });
        });
    })(jQuery);

// });

// =====================Search form for bai-dang.php================

// Add class .show to display ul,li
$(document).ready(function(){

  $("#myInput").click(function(){
    $("#myUL").addClass("show");
  });

  $( ".avatar").click(function() {
  	$('.btn-change-img').fadeToggle("fast", "swing");
  	$('.avatar .pencil-edit').fadeToggle("fast", "swing");

  });

  $( ".info-user-form, .info-user-wrap .pencil-edit").click(function() {
  	$('.info-user-form').fadeToggle("fast", "swing");
  	$('.info-user-edit').fadeToggle("fast", "swing");
  	$('.user-right').addClass("border-box");
  	$('.info-user-wrap .pencil-edit').hide();
  });

  $( ".cancel-edit-form").click(function() {
  	$('.info-user-form').fadeToggle("fast", "swing");
  	$('.info-user-edit').fadeToggle("fast", "swing");
  	$('.user-right').removeClass("border-box");
  	$('.info-user-wrap .pencil-edit').show();
  });

  // $( ".info-user-wrap .pencil-edit").click(function() {
  // 	$('.info-user-form').fadeToggle();
  // 	$('.info-user-edit').fadeToggle();
  // 	$('.info-user-wrap .pencil-edit').hide();
  // });

});
// When click outside form search remove class show
$(document).ready(function(){
  	window.onclick = function(event) {
  	 	if (!event.target.matches('#myInput')) {
			    $("#myUL").removeClass("show");
		}
	}
});

// Filer content search <input>
function myFunction() {
    var input, filter, ul, li, a, i;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}

