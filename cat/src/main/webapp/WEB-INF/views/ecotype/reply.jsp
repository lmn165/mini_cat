<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/nav.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/resources/css/nav.css">
<style>
.contain {
	width: 98%;
	margin: 0 auto;
}

/* .contain button { */
/* 	width: 100px; */
/* 	height: 55px; */
/* } */
label {
	display: block;
}

.c2 {
	clear: both;
	margin-top: 30px;
}

.c2 div {
	height: 183px;
	clear: both;
	margin-bottom: 10px;
	border-top: 1px solid black;
	clear: both;
}

label {
	margin-right: 15px;
}

span {
	float: right;
	margin-right: 5px;
}


.replyForm {
	width: 75%;
	margin: 0 auto;
	border: solid 1px black;
	padding: 15px 5px 0 5px;
	
}

.btn-group-lg>.btn, .btn-lg {
    line-height: 0.9;
}

.btnHand:hover {
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="replyForm">
		<form class="contain">
			<input type="hidden" id="nick" value="testNick"> <input
				type="hidden" id="eno" value="${eno}">
			<textarea class="form-control rcontent" rows="4" placeholder="댓글 입력"></textarea>
			<button type="button" class="btn btn-default btn-lg btn-block"
				id="insert">댓글 등록</button>
		</form>

		<div class="contain c2"></div>
	</div>

	<!-- start script -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<script type="text/javascript">
$(document).ready(function(){

	// 댓글 페이지 가져오기
	var showList = function(){
		console.log("hi");
		$.ajax({
			type: "get",
			url: "/reply/show",
			data: {eno: ${eno}},
			success: function(e){
				console.log(e);

				var html = "";
				for (var i=0; i<e.length; i++){
					html += '<div><span class="btnHand"><input type="hidden" value="'+ e[i].rno +'">x</span>'+
						'<span class="btnHand">수정</span>'+
						'<label id="nick">작성자 : '+ e[i].rnick +'</label>'+
						'<label id="date">등록 날짜 : '+ e[i].regDate +'</label>'+
						'<textarea class="form-control content" rows="4" disabled="true">'+ e[i].rcontent +'</textarea></div>';
				}
// 				console.log(html);
				$(".c2").html(html);
				
			}
		});
		
		
	}

	showList();
	
	
	// 삭제 기능
	$(".c2").on("click", "span:nth-child(1)", function (e) {
		e.preventDefault();
		
		var $this = $(this).children();
		console.log($this.val());

		$.ajax({    
			type: "delete",
			url: "/reply/del/"+$this.val(),
            success: function(){
                alert("댓글이 삭제되었습니다.");
                showList();
            }
        });
		
	});
	
	// 댓글 수정을 위한 textarea 활성화
	$(".c2").on("click", "span:nth-child(2)", function (e) {
		e.preventDefault();
		var $this = $(this);

		$this.hide();
		$this.siblings('textarea').attr('disabled', false);
		$this.parent().html( $this.parent().html()+'<button type="button" class="btn btn-default btn-lg btn-block" id="insert">수정</button>' );
	});
	
	
	// 댓글 수정
	$(".c2").on("click", "button", function (e) {
		e.preventDefault();
		var $this = $(this);
		var rno = $this.siblings("span:nth-child(1)").children().val();
		var content = $this.siblings("textarea").val();
		var param = "rno=" + rno + "&rcontent=" + content;
		
// 		console.log(param);
		$.ajax({                
            type: "post",
            url: "/reply/update",
            data: param,
            success: function(){
                alert("댓글이 수정되었습니다.");
				showList();
            }
        });
		
	});

	
	// 댓글 등록
	$("#insert").on("click", function(e){
		e.preventDefault();
		var $rcontent = $(".rcontent");
		
		var nick = $("#nick").val();
		var eno = $("#eno").val();
		var content = $rcontent.val();
		var param = "rnick=" + nick + "&eno=" + eno + "&rcontent=" + content;
// 		var param = {"rnick" : nick, "rcontent" : content};
		console.log(param);
		$.ajax({                
             type: "post",
             url: "/reply/regist",
             data: param,
             success: function(){
                 alert("댓글이 등록되었습니다.");
                 $rcontent.val("");
				 showList();
             }
         });
// 		console.log(content);
	});

	
	
});
</script>
</body>
</html>

















