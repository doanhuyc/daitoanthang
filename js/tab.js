
$(document).ready(function(){
		$('#tag_2').css({display:'none'});
		$('#tag_3').css({display:'none'});
		$('.tag_1').click(function(){
				$('#tag_2').css({display:'none'});
				$('#tag_3').css({display:'none'});
				$('#tag_1').css({display:'block'});
		});
		$('.tag_2').click(function(){
				$('#tag_1').css({display:'none'});
				$('#tag_3').css({display:'none'});
				$('#tag_2').css({display:'block'});
		});		
		$('.tag_3').click(function(){
				$('#tag_2').css({display:'none'});
				$('#tag_1').css({display:'none'});
				$('#tag_3').css({display:'block'});
		});
		$('.tab ul li').click(function(){
			$('.tab ul li').removeClass('active');
			$(this).addClass('active');
		});
	});
