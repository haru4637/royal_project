<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
<c:url value="/resources/css/communication/notice.css" var="noticeCSS" />
<c:url value="/resources/css/communication/public_communication.css"
	var="public_communicationCSS" />
<c:url value="/resources/js/communication/public_communication.js"
	var="public_communicationJS" />
<link rel="stylesheet" href="${noticeCSS}" />
<link rel="stylesheet" href="${public_communicationCSS}" />
<link rel="stylesheet" href="${public_communicationJS}" />
</head>
<body>
	<jsp:include page="../../layout/header.jsp" />

	<div class="top_img_name">
		<div>
			<img id="top_bg_Img"
				src="https://royal.cha.go.kr/resource/templete/royal/img/sub/bg_sub06.jpg">
		</div>
		<div id="sub_category_name">
			<h2>소 통</h2>
		</div>
	</div>

	<div class="notice_title_BTN">
		<div id="notice_title_div">
			<h2 id="notice_title">공지사항</h2>
		</div>

		<div class="BTN_class">
			<div id="all_BTN" class="all on">전 체</div>
			<div id="GB_BTN" class="GB">경복궁</div>
			<div id="DS_BTN " class="DS">덕수궁</div>
			<div id="CG_BTN" class="CG">창경궁</div>
			<div id="CD_BTN" class="CD">창덕궁</div>
			<div id="JM_BTN" class="JM">종 묘</div>
		</div>
	</div>

	<div id="white_space"></div>

	<div class="search_div">
		<div class="search_left">
			<div class="count_div">전체: **개</div>
		</div>
		<form name="listForm" id="listForm" method="post" onsubmit="fn_search(); return false;"></form><input type="hidden" name="_csrf" value="90233427-ad76-42a3-a21f-fd13dc9189e9">
			<div class="search_right">
				<select name="search_select_id" id="search_select_id" title="구분">
					<option>전체</option>
					<option>제목</option>
					<option>내용</option>
				</select>
				<input type="text" name="search_input_id" id="search_input_id" value title="검색어를 입력해 주세요" placeholder="검색어를 입력해주세요.">
				<button type="submit">검색</button>
			</div>
		</form>	
	</div>


	<script src="${public_communicationJS}"></script>
	<jsp:include page="../../layout/footer.jsp" />
</body>
</html>