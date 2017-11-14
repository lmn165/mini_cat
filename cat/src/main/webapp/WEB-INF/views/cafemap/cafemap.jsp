<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@include file="../include/nav.jsp"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>고양이 카페</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- Nav Style -->
<link href="/resources/css/nav.css" rel="stylesheet">
<link href="/resources/css/map.css" rel="stylesheet">

</head>

<body>
	<div>
		<!--   <pre style="margin-bottom: 0px;height: 41px;" id="cafeName"> -->
		<ul class="mapajax">
			<c:forEach items="${list}" var="cafe">
				<li class="map-item"><a href="${cafe.cno}"><c:out
							value="${cafe.cname}"></c:out></a>&nbsp&nbsp</li>
			</c:forEach>
		</ul>
		<!--   </pre> -->
	</div>
	<!-- <div style="height: 100px">  -->
		<pre style="border: 1px solid black;" id="cafeContent">
  <c:out value="${cafe.addr}"></c:out>
  홈페이지 : <a href="${cafe.atagurl}"><c:out value="${cafe.url}"></c:out></a>
  전화번호 : <c:out value="${cafe.ctel}"></c:out>
  영업시간 : <c:out value="${cafe.ctime}"></c:out></pre>
	<!-- </div> -->
	<!-- 지도를 표시할 div 입니다 -->
	<div id="map" style="width: 100%; height: 500px;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7667eb8e291589fc2f4d9c7c4def041a"></script>

	<form id='actionForm' action='/cafemap/cafemap' method='get'>
		<input type='hidden' name='cno'>
	</form>
	<script>
  var mapContainer = document.getElementById('map'), // 지도를 표시할 div
    mapOption = {
      center: new daum.maps.LatLng(${cafe.lat}, ${cafe.lng}), // 지도의 중심좌표
      level: 3 // 지도의 확대 레벨
    };


  $(document).ready(function(){
	  // 액션폼 설정
  	var actionForm = $("#actionForm");
    // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
    var map = new daum.maps.Map(mapContainer, mapOption);

    var markerPosition  = new daum.maps.LatLng(${cafe.lat}, ${cafe.lng});

    var marker = new daum.maps.Marker({
      map: map, // 마커를 표시할 지도
      position: markerPosition // 마커의 위치
    });

    marker.setMap(map);

    var content = "<div>${cafe.cname}</div>"
    // 마커에 표시할 인포윈도우를 생성합니다
    var infowindow = new daum.maps.InfoWindow({
      content: content // 인포윈도우에 표시할 내용
    });

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));

    // 인포윈도우를 표시하는 클로저를 만드는 함수입니다
    function makeOverListener(map, marker, infowindow) {
      return function() {
        infowindow.open(map, marker);
      };
    }

    // 인포윈도우를 닫는 클로저를 만드는 함수입니다
    function makeOutListener(infowindow) {
      return function() {
        infowindow.close();
      };
    }

    
    
    
  $(".mapajax").on("click", "li > a", function(event){
		
		event.preventDefault();
		
		var cno = $(this).attr("href");
		
//		alert("PAGE: " + cno);
		
		actionForm.find("input[name='cno']").val(cno);
		actionForm.submit();
	});
  });

</script>
</body>

</html>

