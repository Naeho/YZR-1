<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="./include/header.jsp" %>
	<style>
<!--
	
	.content1 {
		border-left:2px solid #999;
		border-right:2px solid #999;
		background-color: #F2F0E4;
		padding-top: 15px;
		float: left;
	}
	
	#menu1{
		width: 1140px;
		height: 40px;
	}
	
	#content1{
		width: 1140px;
		height: 420px;
		clear: both;
	}
	
	.menu1{
		border-left:2px solid #999;
		border-right:2px solid #999;
		background-color: #404040;
		color: rgba(255,255,255,0.75);
		text-align: center;
		font-size: 13pt;
		padding: 5px;
		float:left;
		height: 40px;
	}
	
	#menu1-1, #content1-1 {
		width: 27%;
	}
	
	#menu1-2, #content1-2 {
		width: 28%;
	}
	
	#menu1-3, #content1-3 {
		width: 19%;		
	}
	
	#menu1-4, #content1-4 {
		width: 26%;
	}
	
	#content1-1 {
		height: 420px;
	}
	
	#content1-2 {
		height: 420px;
	}
	
	#content1-3 {
		height: 420px;
		overflow: scroll;
	}
	
	
	#content1-4 {
		height: 420px;
	}
	
	#title2-1 {
		 color: #fff;
		 font-weight: bolder;
		 width: 400px;
		 padding-left: 20px;
	}
	
	#title2-2 {
		 color: rgba(230,230,230,0.75);
		 padding-left: 120px;
		 font-size: 14pt;
		 width: 400px;
	}
	
	#title2-3 {
		color: rgba(230,230,230,0.75);
		font-weight: bolder;
		text-align: right;
		padding-right:20px;
		width: 800px;
	}
	
	.movie_menu{
		float:left;
		padding-right:7px;
		padding-left:7px;
		text-align: center;
		cursor:pointer;
	}
	
	#movie_menu1{
		border: 2px solid #000;
		border-bottom: 0px solid #000;
		width: 70px;
	}
	
	#movie_menu2{
		border: 1px solid #999;
		border-bottom: 2px solid #000;
		width: 100px;
	}
	#movie_menu3{
		border: 1px solid #999;
		border-bottom: 2px solid #000;
		width: 70px;
	}
	
	.movie_second_menu{
		float:left;
		padding-right:8px;
		padding-left:8px;
		border-bottom:2px solid #999;
		text-align: center;
		width: 80px;
		cursor:pointer;
	}
	
	#movie_second_menu1{
		border-bottom: 2px solid #000;
		cursor:pointer;
	}
	
	.theater_menu{
		float:left;
		padding-right:7px;
		padding-left:7px;
		text-align: center;
	}
	
	#theater_menu1{
		border: 2px solid #000;
		border-bottom: 0px solid #000;
		width: 70px;
		cursor:pointer;
	}
	
	#theater_menu2{
		border: 1px solid #999;
		border-bottom: 2px solid #000;
		width: 100px;
		cursor:pointer;
	}
	
	#theater_menu3{
		border: 1px solid #999;
		border-bottom: 2px solid #000;
		width: 70px;
		cursor:pointer;
	}
	
	#theater_state{
		margin-top:15px;
		float:left;
		text-align: right;
		width:130px;
	}
	
	#time{
		cursor:pointer;
	}
	
	#theater_state_num{
		margin-top:15px;
		margin-left:-20px;
		float:left;
		text-align: left;
		width:20px;	
	}
	
	ul#theater_state>li>div{
		background-color: rgba(166,166,166,0.2);
		margin-bottom: 3px;
		padding: 8px;
		width:90px;
		cursor:pointer;
	}
	
	ul#theater_state_num>li>div{
		background-color: rgba(166,166,166,0.2);
		margin-bottom: 3px;
		padding: 8px;
		margin-left: -20px;
		width:35px;
		
	}
	
	.theater_city{
		margin-top:15px;
		margin-left:-35px;
		float:left;
		text-align: left;
	}
	
	#theater_detail>div{
		background-color: rgba(166,166,166,0.2);
		margin-bottom: 3px;
		padding: 8px;
		margin-left: 20px;
		width:120px
	}
	
	.timetable_time{
		border: 1px solid #999;
		float: left;
		margin-left: 15px;
		margin-right: 3px;
		margin-bottom: 5px;
	}
	
	.timetable_seat{
		color: #6B9900;
		margin-right: 10px;
		float: left;
	}
	
	.calender{
		
		height: 30px;
		width: 195px;
		padding-left: 30px;
		cursor:pointer;
	}
	
	#movie_list{
		cursor:pointer;
	}
	
	#theater_detail{
		cursor:pointer;
	}
	
	#reset {
		float:left;
		padding-left:5px;
	}
	
	#timetableBtn {
		float:left;
		padding-left:5px;
	}
	
	.glyphicon{
		clear: both;
	}
	
	#favoriteCGV1 {
		float:left;
		border-top:2px solid #999;
		border-bottom:2px solid #999;
		width:120px;
		margin-left:45px;
		color: red; font-weight: bold;
	}
	
	#favoriteCGV2 {
		float:left;
		border-top:2px solid #999;
		border-bottom:2px solid #999;
		width:120px;
	}
	
	#info_box {
		background-color: #1D1D1C;
		height: 200px;
		clear:both;
	}
	
	#screen {
		width: 600px;
		height: 25px;
		background-color: #bbb;
		margin: 0px auto;
		text-align: center;
		font-size: 14pt;
		font-weight: bold;
		color: #555;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	th{
		background-color: rgba(0,0,0,0.9);
		<!--border: 1px solid rgba(230,230,230,0.75);-->
		padding-top: 5px;
		height: 40px;
	}
	
	td{
		background-color: #FFFFE6;
		padding: 5px;
		border: 2px solid #999;
	}
	
	.seat_num{
		margin-bottom:3px;
		
	}
	
	.seat_number{
		float: left;
		margin-left: 5px;
	}
	
	.box{
		float: left;
		width: 18px;
		height: 18px;
		border: 1px solid #000;
	}
	
	#seat{
		margin: 0px auto;
	}
	
	.seat_header{
		width: 25px;
		height: 25px;
		font-size: 2pt;
		text-align: center;
		background-color: #FFFFE6;
		border-top: 2px solid #ddd;
		border-bottom: 2px solid #ddd;
		border-spacing: 0px;
	}
	
	.seat_prime{
		width: 25px;
		height: 25px;
		font-size: 2pt;
		text-align: center;
		border: 2px solid #f00;
		border-spacing: 0px;
		cursor:pointer;
	}
	
	.seat_standard{
		width: 25px;
		height: 25px;
		font-size: 2pt;
		text-align: center;
		border: 2px solid #477500;
		cursor:pointer;
	}
	
	.seat_economy{
		width: 25px;
		height: 25px;
		font-size: 2pt;
		text-align: center;
		border: 2px solid #FF4500;
		cursor:pointer;
	}
	
	.seat_handicapped{
		width: 25px;
		height: 25px;
		font-size: 2pt;
		text-align: center;
		border: 0px solid #FF4500;
		background-color: #597812;
		cursor:pointer;
	}
	
	.seat_nonselect{
		width: 25px;
		height: 25px;
		font-size: 2pt;
		text-align: center;
		border: 0px solid #FF4500;
		background-color: #C2C2C2;
		cursor:pointer;
	}
	
	.seat_clicked{
		width: 25px;
		height: 25px;
		font-size: 2pt;
		text-align: center;
		border: 2px solid #999;
		background-color: #980000;
	}
	
	.seat_over{
		width: 25px;
		height: 25px;
		font-size: 2pt;
		text-align: center;
		border: 2px solid #999;
		background-color: #980000;
	}
	
	.seat_empty{
		width: 25px;
		height: 25px;
		font-size: 2pt;
		text-align: center;
		border: 0px solid #FF4500;
		background-color: #FFFFE6;
		
	}
	
	.seat_count_nomal,.seat_count_youth,.seat_count_advantage{
		border: 1px solid #000;
		height: 20px;
		width: 20px;
		background-color: #e11;
	}
	
	.seat_nomal,.seat_youth,.seat_advantage,.seat_title{
		margin-right: 5px;
		float:left;
		text-align: center;
	}
	.seat_nomal,.seat_youth,.seat_advantage{
		cursor: pointer;
		border: 1px solid #000;
		height: 20px;
		width: 20px;
	}
	
	.seat_title {
		width: 80px;
		height: 20px;
		margin-left:10px;
		text-align: left;
		float:none;
	}
	
	#prime {
		width: 18px;
		height: 18px;
		border: 2px solid #f00;
		float: left;
	}
	
	#standard {
		 width: 18px;
		 height: 18px;
		 border: 2px solid #477500;
		 float: left;
	}
	
	#economy {
		 width: 18px;
		 height: 18px;
		 border: 2px solid #FF4500;
		 float: left;
	}
	
	#handicapped {
		width: 18px;
		height: 18px;
		border: 0px solid #FF4500;
		background-color: #597812;
		float: left;
	}
	
	#sweetbox {
		width: 18px;
		height: 18px;
		border: 0px solid #999;
		background-color: #FF007F;
		float: left;
	}
	
	#reservationed {
		width: 18px;
		height: 18px;
		border: 0px solid #FF4500;
		background-color: #C2C2C2;
		float: left;
	}
	
	#selected {
		width: 18px;
		height: 18px;
		border: 2px solid #999;
		background-color: #980000;
		float: left;
	}
	
	#backArea {
		float: left;
	}
	
	#backBtn {
		 margin-top: 50px;
		 margin-left: 50px;
		 background-color: #999;
		 color: #fff;
	}
	
	#nextBtn1, #nextBtn2 {
	 	margin-top: 50px;
		margin-right: 50px;
		background-color: #999;
		color: #fff;
	 }
	
	#backBtn > span, #nextBtn1 > span, #nextBtn2 > span {
		font-size: 35pt;
		color: #fff;
		font-weight: bolder;
	}
	
	#selected_movie {
		color: #777776;
		font-weight: bold;
		font-size: 20pt;
		margin-top: 80px;
		float: left;
		margin-right: 15px;
		padding-right: 20px;
		margin-left: 50px;
		border-right: 2px solid #777776;
	}
	
	#selected_theater	{
		 color: #777776;
		 font-weight: bold;
		 font-size: 20pt;
		 margin-top: 80px;
		 float: left;
		 margin-right: 15px;
		 padding-right: 20px;
		 border-right: 2px solid #777776;
	}
	
	#etc {
		 color: #777776;
		 font-weight: bold;
		 font-size: 20pt;
		 margin-top: 80px;
		 float: left;
	}
	
	#nextArea1, #nextArea2 {
		float: right;
	}

-->
	</style>
	<div id="reservation1">
		<button class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-time" /><div id="timetableBtn">상영시간표</div></button>
		<button class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-repeat" /><div id="reset">예매다시하기</div></button>
		
		<br>
		<br>
		<div id="menu1">
			<div id="menu1-1" class="menu1">영화</div>
			<div id="menu1-2" class="menu1">극장</div>
			<div id="menu1-3" class="menu1">날짜</div>
			<div id="menu1-4" class="menu1">시간</div>
		</div>
		
		<div id="content1">
			<div id="content1-1" class="content1">
				<ul>
					<div id="movie_menu1" class="movie_menu"><li>전체</li></div>
					<div id="movie_menu2" class="movie_menu"><li>아트하우스</li></div>
					<div id="movie_menu3" class="movie_menu"><li>특별관</li></div>
				</ul>
				<br>
				<ul style="margin-top:15px; float:none">
					<div id="movie_second_menu1" class="movie_second_menu" onclick="order_reservation()"><li">예매율순</li></div>
					<div id="movie_second_menu2" class="movie_second_menu" onclick="order_alphabet()"><li">가나다순</li></div>
					<div id="movie_second_menu3" class="movie_second_menu"><li>&nbsp;</li></div>
				</ul>
				<br>
				<div id="movie_list"></div>
			</div>
			
			<div id="content1-2" class="content1">
				<div id="favoriteCGV1">
					자주가는 CGV<br>
					<br>
					<br>
				</div>
				<div id="favoriteCGV2">
					CGV1<br>
					CGV2<br>
					CGV3
				</div>
				<ul style="margin-top:75px; margin-left:5px; float:none;">
					<div id="theater_menu1" class="theater_menu"><li">전체</li></div>
					<div id="theater_menu2" class="theater_menu"><li">아트하우스</li></div>
					<div id="theater_menu3" class="theater_menu"><li">특별관</li></div>
				</ul>
				<br>
				<div style="height: 300px">
					<ul id="theater_state">
						<c:forEach items="${ localList }" var="local_list">
							<li style="float: none; display: inline-block;">
								<div onclick="theater_local('${ local_list }')">${ local_list }</div>
							</li>
						</c:forEach>
						
					</ul>
					<ul id="theater_state_num">
						
						<c:forEach items="${ theaterNum }" var="theater_num">
							<li><div>(${ theater_num })</div></li>
						</c:forEach>
		
					</ul>
					<ul class="theater_city">
						<div id = "theater_detail"></div>
					</ul>
				</div>
			</div>
			<div id="content1-3" class="content1">
				<div style="text-align: center; font-size: 15pt;" id = "year"></div><br>
				<div style="margin-top: -20px; text-align: center; font-size: 30pt;" id = "month"></div><br>
				<div id="calender_date"></div>
				
			</div>
			<div id="content1-4" class="content1">
				<div id="timetable">
					<div>
						<span class="glyphicons glyphicons-brightness-increase"></span>
						<span class="glyphicons glyphicons-moon"></span>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
	<div id="reservation2">
		<table>
			<tr>
				<th id="title2-1">☞ 관람 할인 안내</th>
				<th id="title2-2">인원/좌석</th>
				<th id="title2-3">다시하기<span class="glyphicon glyphicon-repeat"></span></th>
			</tr>
			<tr>
				<td style="width: 500px;">
					<div class="seat_num">
						<div class="seat_title" style="float: left;">일반</div>
						<div id="nomal_defalut" class="seat_nomal">0</div>
						<div class="seat_nomal">1</div>
						<div class="seat_nomal">2</div>
						<div class="seat_nomal">3</div>
						<div class="seat_nomal">4</div>
						<div class="seat_nomal">5</div>
						<div class="seat_nomal">6</div>
						<div class="seat_nomal">7</div>
						<div class="seat_nomal">8</div>
					</div>
					<div class="seat_num">
						<div class="seat_title">청소년</div>
						<div id="youth_defalut" class="seat_youth" style="margin-left:95px;">0</div>
						<div class="seat_youth">1</div>
						<div class="seat_youth">2</div>
						<div class="seat_youth">3</div>
						<div class="seat_youth">4</div>
						<div class="seat_youth">5</div>
						<div class="seat_youth">6</div>
						<div class="seat_youth">7</div>
						<div class="seat_youth">8</div>
					</div>
					<div class="seat_num">
						<div class="seat_title">우대</div>
						<div id="advantage_defalut" class="seat_advantage" style="margin-left:95px;">0</div>
						<div class="seat_advantage">1</div>
						<div class="seat_advantage">2</div>
						<div class="seat_advantage">3</div>
						<div class="seat_advantage">4</div>
						<div class="seat_advantage">5</div>
						<div class="seat_advantage">6</div>
						<div class="seat_advantage">7</div>
						<div class="seat_advantage">8</div>
					</div>
				</td>
				<td style="width: 200px; text-align: center;">
					<div>좌석붙임설정</div>
					<div style="margin-left: 30px; height: 25px;">
						<input class ="seat_number" name="seat_num" type="radio" value="1">
						<div class="box"></div>
						<div style="margin-right: 5px; height: 18px; float: left"></div>
						
						
						<input class ="seat_number" name="seat_num" type="radio" value="2">
						<div class="box"></div><div class="box"></div>
						<div style="margin-right: 5px; height: 18px; float: left"></div>
						
						
						<input class ="seat_number" name="seat_num" type="radio" value="3">
						<div class="box"></div><div class="box"></div><div class="box"></div>
						<div style="margin-right: 5px; height: 18px; float: left"></div>
						
						<input class ="seat_number" name="seat_num" type="radio" value="4">
						<div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div>
					</div>
				</td>
				<td>
					<div>선택하신 상영관/시간</div>
					<div style="margin-top: 10px;">
						<span id="plex" style="font-size: 12pt; font-weight: bolder;"></span>
						<span id="seat_totcnt">(총 172석)</span>
						<span style="font-size: 12pt;">21:30 - 23:38</span>
						(잔여 132석)
					</div>
					<button style="float: left;" class="btn btn-warning">상영시간 변경하기</button>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="border-right: 0px solid #999;">
					<div id="screen">screen</div>
					<div style="height:50px"><span></span></div>
					<%@include file="./include/Plex1.html" %>
				</td>
				<td style="border-left: 0px solid #999;">
					<div id="selected"></div><div>선택</div><br>
					<div id="reservationed"></div><div>예매완료</div><br>
					
					<div id="prime"></div><div>Prime Zone</div><br>
					<div id="standard"></div><div>Standard Zone</div><br>
					<div id="economy"></div><div>Economy Zone</div><br>
					<div id="handicapped"></div><div>장애인석</div><br>
					<div id="sweetbox"></div><div>SweetBox</div><br>
				</td>
			</tr>
		</table>
	</div>
	
	
	<div id="info_box">
		<div id="backArea"><button id="backBtn" onclick="backStep()"><span><</span><br/>영화선택</button></div>
		<div id="selected_movie">
			영화선택
		</div>
		<div id="selected_theater">
			극장선택
		</div>
		<div id="etc">
			> 좌석선택 > 결제
		</div>
		<div id="nextArea1"><button id="nextBtn1" onclick="nextStep();"><span>></span><br/>좌석선택</button></div>
		<div id="nextArea2"><button id="nextBtn2" onclick=""><span>></span><br/>결제선택</button></div>
	</div>
	
	<form id="frm" name="frm" method="post" action="/yzrproject/reservation">
		<input type="text" id="movie" name="movie" size="50" maxlength="100" style="display:none;">
		<input type="text" id="theater" name="theater" size="50" maxlength="100" style="display:none;">
		<input type="text" id="years" name="year" size="50" maxlength="100" style="display:none;">
		<input type="text" id="months" name="month" size="50" maxlength="100" style="display:none;">
		<input type="text" id="dates" name="date" size="50" maxlength="100" style="display:none;">
		<input type="text" id="start_time" name="start_time" size="50" maxlength="100" style="display:none;">
		<input type="text" id="plex" name="plex" size="50" maxlength="100" style="display:none;">
		<input type="text" id="seat_cnt" name="seat_cnt" size="50" maxlength="100" style="display:none;">
	</form>
	
	<script>
		var checkMovie = false;
		var checkTheater = false;
		var checkDate = false;
		var currentMoviePage = "reservation_rate";
		var currentTheaterPage = "서울";
		var movieId = ""
		var theaterId = ""
		var reservationCode = "";
		var plexNum = "";
		
		function backStep(){
			$("#reservation1").show();
			$("#reservation2").hide();
			$("#backArea").hide();
			$("#nextArea2").hide();
			$("#nextArea1").show();
		}
		
		
		function nextStep(){
			
			if(frm.months.value < 10 && frm.months.value.length != 2){
				frm.months.value = "0" + frm.months.value;
			}
			
			if(frm.plex.value == "" || frm.plex.value == null) {
				alert("시간을 선택해 주세요");	
			} else {
//				alert(frm.movie.value);
//				alert(frm.theater.value);
//				alert(frm.years.value);
//				alert(frm.months.value);
//				alert(frm.dates.value);
//				alert(frm.start_time.value);
//				alert(frm.plex.value);
				$("#reservation1").hide();
				$("#reservation2").show();
				$("#backArea").show();
				$("#nextArea1").hide();
				$("#nextArea2").show();
				$("#nextBtn1").hide;
				$("#plex").text(frm.plex.value + "관");
				$("#seat_totcnt").text(" (총  " + frm.seat_cnt.value + " 석 )");
				reservationCode = $("#years").val() + $("#months").val() 
								+ $("#dates").val() + movieId + theaterId + frm.plex.value;
//				alert(reservationCode);
				//frm.submit();
			}
		}	
	
		$(document).ready(function() {
			$("#movie_menu1").click(function(){
				$("#movie_menu1").css("border", "2px solid #000");
				$("#movie_menu1").css("border-bottom", "0px solid #000");
				$("#movie_menu2").css("border", "1px solid #999");
				$("#movie_menu2").css("border-bottom", "2px solid #000");
				$("#movie_menu3").css("border", "1px solid #999");
				$("#movie_menu3").css("border-bottom", "2px solid #000");
			});
		});
		
		$(document).ready(function() {
			$("#movie_menu2").click(function(){
				$("#movie_menu1").css("border", "1px solid #999");
				$("#movie_menu1").css("border-bottom", "2px solid #000");
				$("#movie_menu2").css("border", "2px solid #000");
				$("#movie_menu2").css("border-bottom", "0px solid #000");
				$("#movie_menu3").css("border", "1px solid #999");
				$("#movie_menu3").css("border-bottom", "2px solid #000");
			});
		});
		
		$(document).ready(function() {
			$("#movie_menu3").click(function(){
				$("#movie_menu1").css("border", "1px solid #999");
				$("#movie_menu1").css("border-bottom", "2px solid #000");
				$("#movie_menu2").css("border", "1px solid #999");
				$("#movie_menu2").css("border-bottom", "2px solid #000");
				$("#movie_menu3").css("border", "2px solid #000");
				$("#movie_menu3").css("border-bottom", "0px solid #000");
			});
		});
		
		$(document).ready(function() {
			$("#movie_second_menu1").click(function(){
				$("#movie_second_menu1").css("border-bottom", "2px solid #000")
				$("#movie_second_menu2").css("border-bottom", "2px solid #999")
			});
		});
		
		$(document).ready(function() {
			$("#movie_second_menu2").click(function(){
				$("#movie_second_menu1").css("border-bottom", "2px solid #999")
				$("#movie_second_menu2").css("border-bottom", "2px solid #000")
			});
		});
		
		$(document).ready(function() {
			$("#theater_menu1").click(function(){
				$("#theater_menu1").css("border", "2px solid #000");
				$("#theater_menu1").css("border-bottom", "0px solid #000");
				$("#theater_menu2").css("border", "1px solid #999");
				$("#theater_menu2").css("border-bottom", "2px solid #000");
				$("#theater_menu3").css("border", "1px solid #999");
				$("#theater_menu3").css("border-bottom", "2px solid #000");
			});
		});
		
		$(document).ready(function() {
			$("#theater_menu2").click(function(){
				$("#theater_menu1").css("border", "1px solid #999");
				$("#theater_menu1").css("border-bottom", "2px solid #000");
				$("#theater_menu2").css("border", "2px solid #000");
				$("#theater_menu2").css("border-bottom", "0px solid #000");
				$("#theater_menu3").css("border", "1px solid #999");
				$("#theater_menu3").css("border-bottom", "2px solid #000");
			});
		});
		
		$(document).ready(function() {
			$("#theater_menu3").click(function(){
				$("#theater_menu1").css("border", "1px solid #999");
				$("#theater_menu1").css("border-bottom", "2px solid #000");
				$("#theater_menu2").css("border", "1px solid #999");
				$("#theater_menu2").css("border-bottom", "2px solid #000");
				$("#theater_menu3").css("border", "2px solid #000");
				$("#theater_menu3").css("border-bottom", "0px solid #000");
			});
		});
		
		
		function today() {
			var now = new Date();
			var year = now.getFullYear();
			var month = now.getMonth()+1;
			var date = now.getDate();
			var day = now.getDay();
			
			var week = new Array("일", "월", "화", "수", "목", "금", "토");
			
			if(date < 10)
				date = "0" + date;
			
			document.getElementById("year").innerHTML = year;
			document.getElementById("year").value = year;
			document.getElementById("month").innerHTML = month;
			document.getElementById("month").value = month;
			
			
			var result = "";
			
			for(i=0;i<15;i++){
				result += "<div class='calender' onclick='dateSelect("+ i +")'>" 
						+  "<ul>" + "<li style='float: none; font-size: 13pt; margin-right: 5px;' id='day" + i 
						+ "'></li>" + "<li style='float: none; font-size: 13pt; font-weight: bold;' id='date" + i 
						+ "'></li>" + "</ul>" + "</div>";
			}
			result += "";
			document.getElementById("calender_date").innerHTML = result;
			
			for(i=0;i<15;i++){
				date = now.getDate();
				day = now.getDay();

				document.getElementById("date"+i).innerHTML = date;
				document.getElementById("date"+i).value = date;
				document.getElementById("day"+i).innerHTML = week[now.getDay()];
				document.getElementById("day"+i).value = week[now.getDay()];
				now.setDate(now.getDate()+1);
			}

		}
		
		function interval(){
			var interval = setInterval(function(){
				if(checkMovie && checkTheater && checkDate){
					clearInterval(interval);
					var movie = $("#movie").val();
					var month = $("#month").val();
					
					if(month < 10){
						month = "0" + month;
					}
					
					var days = $("#dates").val();
					
					if(days < 10){
						days = "0" + days;
					}
					
					var theater = $("#theater").val();
					var date = $("#year").val() + '-' + month + '-';
					date += days;
					
					getTimetable(movie, theater, date)
				}	
			}, 50)
		}
		
		$(document).ready(function() {
			today();
			$("#backArea").hide();
			$("#nextArea2").hide();
			interval();
			
		});
		
		function dateSelect(i){
			checkDate = false;
			var date = document.getElementById("date"+i).value;
			frm.years.value = $('#year').val();
			frm.months.value = $('#month').val();
			frm.dates.value = date;
			checkDate = true;
			interval();
		}

		function order_reservation() {
			$('#order').val("reservation_rate");
			getMovieList("reservation_rate");
		}
		
		function order_alphabet() {
			$('#order').val("alphabet");
			getMovieList("alphabet");
		}
		
		function theater_local(value) {
			getTheaterList(value);
		}
		
		function movie_select(title, movie_id) {
			checkMovie = false;
			document.getElementById("selected_movie").innerHTML = title;
			movieId = movie_id
			frm.movie.value = title;
			
			checkMovie = true;
			interval();
		}
		
		function theater_select(theater_name, theater_id) {
			checkTheater = false;
			document.getElementById("selected_theater").innerHTML = theater_name;
			theaterId = theater_id;
			frm.theater.value = theater_name;
			checkTheater = true;
			interval();
		}
		
		function getMovieList(page) {
			
			if(page == null){
				page = currentMoviePage;
			}
			//alert(page);
			
			$.ajax({
				type:'get',
				url:'/yzrproject/main/movie/' + page,
				headers: {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "GET",
				},
				dataType:'json',
				data : '',
				success : function(result){
					//alert(result.l);
					setMovieList(result.l);
				}
			});
		}
		
		function setMovieList(data) {
			var result = "<ul style='margin-top:15px; float:none'>";
			
			$(data).each(function() {
				result += "<div style='width: 35px; float:left;'>" + this.rating + "</div><span onclick='movie_select(" 
						+ '"' + this.title + '", ' + '"' + this.movie_id + '"' + ")'>" + this.title + "</span><br>";
			})
			
			result += "</ul>";

			document.getElementById("movie_list").innerHTML = result;
		}
		
		function setTimetableList(time, plex) {
			//alert("ee");
			var result = "";
			var number = 1;
			if(time == "" || plex == ""){
				//alert("dddddd");
				result += '<div></div>';
				document.getElementById("timetable").innerHTML = result;
			}else {
				$(plex).each(function() {
					
					result += '<div style="margin-left: 20px; margin-bottom: 5px; float:none; clear:both;">' 
						+ '<span style="color: #993800; font-weight: bold">'
						+ this.plex_type + '</span> <span style="font-weight: bold;">' + this.plex_number + '관 </span> (총 '
						+ this.plex_seat_cnt + '석)</div>';
					//alert(this.plex_number);
					seat_tot_num(this.plex_seat_cnt);
					
						$(time).each(function() {
							if(this.plex_number == number){
								result += '<div id="time" onclick="timetable(' + "'" + this.start_time.substring(11,16) + "',  " 
										+ "'" + this.plex_number + "'" +');"><div class="timetable_time">' 
										+ this.start_time.substring(11,16) + '</div><div class="timetable_seat">50석</div></div>';
							}
							document.getElementById("timetable").innerHTML = result;
						});
					number++;
				});
			}

		}
		
		function seat_tot_num(seat_num) {
			frm.seat_cnt.value = seat_num;
		}
		
		function timetable(time, plex){
				
			frm.start_time.value = time;
			frm.plex.value = plex;
			
		}
				
		function getTheaterList(page) {
			
			if(page == null){
				page = currentTheaterPage;
			}
			//alert(page);
			
			$.ajax({
				type:'get',
				url:'/yzrproject/main/theater/' + page,
				headers: {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "GET",
				},
				dataType:'json',
				data : '',
				success : function(result){
					//alert(result.l);
					setTheaterList(result.l);
				}
			});
		}
		
		function setTheaterList(data) {
			var result = "";
			
			$(data).each(function() {
				result += "<div onclick='theater_select(" + '"' + this.theater_name + '", ' + '"' + this.theater_id + '"' 
						+ ")'><li style='float: none; display: inline-block;'>" + this.theater_name + "</li></div>";
			});
			
			result += "";

			document.getElementById("theater_detail").innerHTML = result;
		}
		getTheaterList("서울");
		getMovieList("reservation_rate");
		
		function getTimetable(movie, theater, date) {
			//alert(date);
			$.ajax({
				type:'get',
				url:'/yzrproject/main/timetable/' + movie + '/' + theater + '/' + date,
				headers: {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "GET",
				},
				dataType:'json',
				data : '',
				success : function(result){
					//alert(result.l);
					setTimetableList(result.l,result.t);
				}
			});
		}
		
		var nomalCount = 0;
		var youthCount = 0;
		var advantageCount = 0;
		var countSum = 0;
		var currentCheckedValue = 0;
		var radioCheked = 0;
		var endTime = "";
		var selectFlag = 0;
		
		$(document).ready(function() {
			$("#nomal_defalut").addClass("seat_count_nomal");
			$("#youth_defalut").addClass("seat_count_youth");
			$("#advantage_defalut").addClass("seat_count_advantage");
			//endTimeGenerate("15:00", 180);
		});
		
		$(document).ready(function() {
			
			//프라임 좌석 선택
			seat_prime;
			
			//스탠다드 좌석 선택
			seat_standard;
			
			//이코노미 좌석 선택
			seat_economy;
			
			//장애인 좌석 선택
			seat_handicapped;
			
			//좌석 선택영역 표시
			mouseover;		
			mouseout;
			
			//일반 좌석 수
			nomal_count;
			
			//청소년 좌석 수
			youth_count;
			
			//우대 좌석 수
			advantage_count;
			
			//좌석형태 함수
			seatNum;
			
			$("#reservation1").hide();
			
		});

		var seat_prime = $(".seat_prime").click(function() {
			
			if(currentCheckedValue == 1){
				$(this).toggleClass("seat_clicked");
				countSum -= currentCheckedValue;
				seatSelect(1);
			} else if(currentCheckedValue == 2){
				$(this).toggleClass("seat_clicked");
				
				if($(this).next().hasClass("seat_empty") === true ||
				   $(this).next().hasClass("seat_clicked") === true ||
				   $(this).next().hasClass("seat_nonselect") === true)
				{
					$(this).prev().toggleClass("seat_clicked");
					
				} else {
					$(this).next().toggleClass("seat_clicked");					
				}
				countSum -= currentCheckedValue;
				seatSelect(2);
			} else if(currentCheckedValue == 3){
				$(this).toggleClass("seat_clicked");
				
				if($(this).next().hasClass("seat_empty") === true ||
				   $(this).next().hasClass("seat_clicked") === true ||
				   $(this).next().hasClass("seat_nonselect") === true)
				{
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
					
				} else if($(this).next().next().hasClass("seat_empty") === true || 
						  $(this).next().next().hasClass("seat_clicked") === true || 
						  $(this).next().next().hasClass("seat_nonselect") === true)
				{
					$(this).next().toggleClass("seat_clicked");
					$(this).prev().toggleClass("seat_clicked");
					
				} else {
					$(this).next().toggleClass("seat_clicked");
					$(this).next().next().toggleClass("seat_clicked");
				}
				countSum -= currentCheckedValue;
				seatSelect(3);
			} else if(currentCheckedValue == 4){
				$(this).toggleClass("seat_clicked");
				
				if($(this).next().hasClass("seat_empty") === true ||
				   $(this).next().hasClass("seat_clicked") === true || 
				   $(this).next().hasClass("seat_nonselect") === true)
				{
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
					$(this).prev().prev().prev().toggleClass("seat_clicked");
					
				} else if($(this).next().next().hasClass("seat_empty") === true || 
						  $(this).next().next().hasClass("seat_clicked") === true || 
						  $(this).next().next().hasClass("seat_nonselect") === true)
				{
					$(this).next().toggleClass("seat_clicked");
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
					
				} else if($(this).next().next().next().hasClass("seat_empty") === true || 
						  $(this).next().next().next().hasClass("seat_clicked") === true || 
						  $(this).next().next().next().hasClass("seat_nonselect") === true)
				{
					$(this).next().toggleClass("seat_clicked");
					$(this).next().next().toggleClass("seat_clicked");
					$(this).prev().toggleClass("seat_clicked");
					
				} else {
					$(this).next().toggleClass("seat_clicked");
					$(this).next().next().toggleClass("seat_clicked");
					$(this).next().next().next().toggleClass("seat_clicked");
				}
				countSum -= currentCheckedValue;
				seatSelect(4);
			}
		});
		
		var seat_standard = $(".seat_standard").click(function() {
			
			if(currentCheckedValue == 1){
				$(this).toggleClass("seat_clicked");
				countSum -= currentCheckedValue;
				seatSelect(1);
			} else if(currentCheckedValue == 2){
				$(this).toggleClass("seat_clicked");
				
				if($(this).next().hasClass("seat_empty") === true || 
				   $(this).next().hasClass("seat_clicked") === true || 
				   $(this).next().hasClass("seat_nonselect") === true)
				{
					$(this).prev().toggleClass("seat_clicked");
					
				} else {
					$(this).next().toggleClass("seat_clicked");
				}
				countSum -= currentCheckedValue;
				seatSelect(2);
			} else if(currentCheckedValue == 3){
				$(this).toggleClass("seat_clicked");
				
				if($(this).next().hasClass("seat_empty") === true || 
				   $(this).next().hasClass("seat_clicked") === true || 
				   $(this).next().hasClass("seat_nonselect") === true)
				{
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
					
				} else if($(this).next().next().hasClass("seat_empty") === true || 
						  $(this).next().next().hasClass("seat_clicked") === true || 
						  $(this).next().next().hasClass("seat_nonselect") === true)
				{
					$(this).next().toggleClass("seat_clicked");
					$(this).prev().toggleClass("seat_clicked");
					
				} else {
					$(this).next().toggleClass("seat_clicked");
					$(this).next().next().toggleClass("seat_clicked");
				}
				countSum -= currentCheckedValue;
				seatSelect(3);
			} else if(currentCheckedValue == 4){
				$(this).toggleClass("seat_clicked");
				
				if($(this).next().hasClass("seat_empty") === true || 
				   $(this).next().hasClass("seat_clicked") === true || 
				   $(this).next().hasClass("seat_nonselect") === true)
				{
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
					$(this).prev().prev().prev().toggleClass("seat_clicked");
				} 
				else if($(this).next().next().hasClass("seat_empty") === true || 
						$(this).next().next().hasClass("seat_clicked") === true || 
						$(this).next().next().hasClass("seat_nonselect") === true)
				{
					$(this).next().toggleClass("seat_clicked");
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
					
				} else if($(this).next().next().next().hasClass("seat_empty") === true || 
						  $(this).next().next().next().hasClass("seat_clicked") === true || 
						  $(this).next().next().next().hasClass("seat_nonselect") === true)
				{
					$(this).next().toggleClass("seat_clicked");
					$(this).next().next().toggleClass("seat_clicked");
					$(this).prev().toggleClass("seat_clicked");
					
				} else {
					$(this).next().toggleClass("seat_clicked");
					$(this).next().next().toggleClass("seat_clicked");
					$(this).next().next().next().toggleClass("seat_clicked");
				}
				countSum -= currentCheckedValue;
				seatSelect(4);
			}
		});
		
		var seat_economy =  $(".seat_economy").click(function() {
			
			if(currentCheckedValue == 1){
				$(this).toggleClass("seat_clicked");
				countSum -= currentCheckedValue;
				seatSelect(1);
			} else if(currentCheckedValue == 2){
				$(this).toggleClass("seat_clicked");
				if($(this).next().hasClass("seat_empty") === true || 
				   $(this).next().hasClass("seat_clicked") === true ||
				   $(this).next().hasClass("seat_nonselect") === true)
				{
					$(this).prev().toggleClass("seat_clicked");
					
				} else {
					$(this).next().toggleClass("seat_clicked");
				}
				countSum -= currentCheckedValue;
				seatSelect(2);
			} else if(currentCheckedValue == 3){
				$(this).toggleClass("seat_clicked");
				
				if($(this).next().hasClass("seat_empty") === true ||
				   $(this).next().hasClass("seat_clicked") === true ||
				   $(this).next().hasClass("seat_nonselect") === true)
				{
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
					
				} else if($(this).next().next().hasClass("seat_empty") === true ||
						  $(this).next().next().hasClass("seat_clicked") === true ||
						  $(this).next().next().hasClass("seat_nonselect") === true)
				{
					$(this).next().toggleClass("seat_clicked");
					$(this).prev().toggleClass("seat_clicked");
				} else {
					$(this).next().toggleClass("seat_clicked");
					$(this).next().next().toggleClass("seat_clicked");
				}
				countSum -= currentCheckedValue;
				seatSelect(3);
			} else if(currentCheckedValue == 4){
				$(this).toggleClass("seat_clicked");
				
				if($(this).next().hasClass("seat_empty") === true || 
				   $(this).next().hasClass("seat_clicked") === true || 
				   $(this).next().hasClass("seat_nonselect") === true)
				{
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
					$(this).prev().prev().prev().toggleClass("seat_clicked");
					
				} else if($(this).next().next().hasClass("seat_empty") === true || 
						  $(this).next().next().hasClass("seat_clicked") === true || 
						  $(this).next().next().hasClass("seat_nonselect") === true)
				{
					$(this).next().toggleClass("seat_clicked");
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
					
				} else if($(this).next().next().next().hasClass("seat_empty") === true || 
						  $(this).next().next().next().hasClass("seat_clicked") === true || 
						  $(this).next().next().next().hasClass("seat_nonselect") === true)
				{
					$(this).next().toggleClass("seat_clicked");
					$(this).next().next().toggleClass("seat_clicked");
					$(this).prev().toggleClass("seat_clicked");
					
				} else {
					$(this).next().toggleClass("seat_clicked");
					$(this).next().next().toggleClass("seat_clicked");
					$(this).next().next().next().toggleClass("seat_clicked");
				}
				countSum -= currentCheckedValue;
				seatSelect(4);
			}
		});

		var mouseover = $(".seat_standard, .seat_prime, .seat_economy").mouseover(function() {
			
			if($(this).hasClass("seat_clicked") !== true) {
				
				if(currentCheckedValue == 1){
					$(this).addClass("seat_over");
				} else if(currentCheckedValue == 2){
					if(($(this).next().hasClass("seat_clicked") !== true || $(this).prev().hasClass("seat_clicked") !== true) && 
					   ($(this).next().hasClass("seat_empty") !== true || $(this).prev().hasClass("seat_clicked") !== true) &&
					   ($(this).prev().hasClass("seat_empty") !== true || $(this).next().hasClass("seat_clicked") !== true) && 
					   ($(this).prev().hasClass("seat_empty") !== true || $(this).next().hasClass("seat_nonselect") !== true) && 
					   ($(this).next().hasClass("seat_empty") !== true || $(this).prev().hasClass("seat_nonselect") !== true) &&
					   ($(this).next().hasClass("seat_nonselect") !== true || $(this).prev().hasClass("seat_clicked") !== true) &&
					   ($(this).prev().hasClass("seat_nonselect") !== true || $(this).next().hasClass("seat_clicked") !== true))
					{
						$(this).addClass("seat_over");
						if($(this).next().hasClass("seat_empty") === true ||
						   $(this).next().hasClass("seat_clicked") === true || 
						   $(this).next().hasClass("seat_nonselect") === true)
						{
							$(this).prev().addClass("seat_over");
							
						} else {
							$(this).next().addClass("seat_over");
						}
					} 

				} else if(currentCheckedValue == 3){
					
					if(($(this).next().hasClass("seat_clicked") !== true || $(this).prev().hasClass("seat_clicked") !== true) && 
					   ($(this).next().hasClass("seat_empty") !== true || $(this).prev().hasClass("seat_clicked") !== true) &&
					   ($(this).prev().hasClass("seat_empty") !== true || $(this).next().hasClass("seat_clicked") !== true) && 
					   ($(this).prev().hasClass("seat_empty") !== true || $(this).next().hasClass("seat_nonselect") !== true) && 
					   ($(this).next().hasClass("seat_empty") !== true || $(this).prev().hasClass("seat_nonselect") !== true) &&
					   ($(this).next().hasClass("seat_nonselect") !== true || $(this).prev().hasClass("seat_clicked") !== true) &&
					   ($(this).prev().hasClass("seat_nonselect") !== true || $(this).next().hasClass("seat_clicked") !== true)
						
						&&
					   ($(this).next().next().hasClass("seat_clicked") !== true || $(this).prev().hasClass("seat_clicked") !== true) &&
					   ($(this).next().hasClass("seat_clicked") !== true || $(this).prev().prev().hasClass("seat_clicked") !== true) &&
					   ($(this).next().next().hasClass("seat_empty") !== true || $(this).prev().hasClass("seat_clicked") !== true) &&
					   ($(this).next().hasClass("seat_clicked") !== true || $(this).prev().prev().hasClass("seat_empty") !== true) &&
					   ($(this).next().next().hasClass("seat_empty") !== true || $(this).prev().hasClass("seat_nonselect") !== true) &&
					   ($(this).next().hasClass("seat_nonselect") !== true || $(this).prev().prev().hasClass("seat_empty") !== true) &&
					   ($(this).next().next().hasClass("seat_nonselect") !== true || $(this).prev().hasClass("seat_clicked") !== true) &&
					   ($(this).next().hasClass("seat_clicked") !== true || $(this).prev().prev().hasClass("seat_nonselect") !== true))
						
					{
						$(this).addClass("seat_over");
						
						if($(this).next().hasClass("seat_empty") === true || 
						   $(this).next().hasClass("seat_clicked") === true || 
						   $(this).next().hasClass("seat_nonselect") === true)
						{
							$(this).prev().addClass("seat_over");
							$(this).prev().prev().addClass("seat_over");
							
						} else if($(this).next().next().hasClass("seat_empty") === true || 
								  $(this).next().next().hasClass("seat_clicked") === true || 
								  $(this).next().next().hasClass("seat_nonselect") === true)
						{
							$(this).next().addClass("seat_over");
							$(this).prev().addClass("seat_over");
							
						} else {
							$(this).next().addClass("seat_over");
							$(this).next().next().addClass("seat_over");
					}
					

					
					}
				} else if(currentCheckedValue == 4){
					$(this).addClass("seat_over");
					
					if($(this).next().hasClass("seat_empty") === true || 
					   $(this).next().hasClass("seat_clicked") === true || 
					   $(this).next().hasClass("seat_nonselect") === true)
					{
						$(this).prev().addClass("seat_over");
						$(this).prev().prev().addClass("seat_over");
						$(this).prev().prev().prev().addClass("seat_over");
						
					} else if($(this).next().next().hasClass("seat_empty") === true || 
							  $(this).next().next().hasClass("seat_clicked") === true || 
							  $(this).next().next().hasClass("seat_nonselect") === true)
					{
						$(this).next().addClass("seat_over");
						$(this).prev().addClass("seat_over");
						$(this).prev().prev().addClass("seat_over");
						
					} else if($(this).next().next().next().hasClass("seat_empty") === true || 
							  $(this).next().next().next().hasClass("seat_clicked") === true || 
							  $(this).next().next().next().hasClass("seat_nonselect") === true)
					{
						$(this).next().addClass("seat_over");
						$(this).next().next().addClass("seat_over");
						$(this).prev().addClass("seat_over");
						
					} else {
						$(this).next().addClass("seat_over");
						$(this).next().next().addClass("seat_over");
						$(this).next().next().next().addClass("seat_over");
					}					
				}
				
			} 
			
		});
		
		var mouseout = $(".seat_standard, .seat_prime, .seat_economy").mouseout(function() {
			if(currentCheckedValue == 1){
				$(this).removeClass("seat_over");
				
			} else if(currentCheckedValue == 2){
				$(this).removeClass("seat_over");
				
				if($(this).next().hasClass("seat_empty") === true || 
				   $(this).next().hasClass("seat_clicked") === true || 
				   $(this).next().hasClass("seat_nonselect") === true)
				{
					$(this).prev().removeClass("seat_over");
				} else {
					$(this).next().removeClass("seat_over");
				}
			} else if(currentCheckedValue == 3){
				$(this).removeClass("seat_over");
				
				if($(this).next().hasClass("seat_empty") === true || 
				   $(this).next().hasClass("seat_clicked") === true || 
				   $(this).next().hasClass("seat_nonselect") === true)
				{
					$(this).prev().removeClass("seat_over");
					$(this).prev().prev().removeClass("seat_over");
					
				} else if($(this).next().next().hasClass("seat_empty") === true || 
						  $(this).next().next().hasClass("seat_clicked") === true || 
						  $(this).next().next().hasClass("seat_nonselect") === true)
				{
					$(this).next().removeClass("seat_over");
					$(this).prev().removeClass("seat_over");
					
				} else {
					$(this).next().removeClass("seat_over");
					$(this).next().next().removeClass("seat_over");
				}
			} else if(currentCheckedValue == 4){
				$(this).removeClass("seat_over");
				
				if($(this).next().hasClass("seat_empty") === true || 
				   $(this).next().hasClass("seat_clicked") === true || 
				   $(this).next().hasClass("seat_nonselect") === true)
				{
					$(this).prev().removeClass("seat_over");
					$(this).prev().prev().removeClass("seat_over");
					$(this).prev().prev().prev().removeClass("seat_over");
					
				} else if($(this).next().next().hasClass("seat_empty") === true || 
						  $(this).next().next().hasClass("seat_clicked") === true || 
						  $(this).next().next().hasClass("seat_nonselect") === true)
				{
					$(this).next().removeClass("seat_over");
					$(this).prev().removeClass("seat_over");
					$(this).prev().prev().removeClass("seat_over");
					
				} else if($(this).next().next().next().hasClass("seat_empty") === true || 
						  $(this).next().next().next().hasClass("seat_clicked") === true || 
						  $(this).next().next().next().hasClass("seat_nonselect") === true)
				{
					$(this).next().removeClass("seat_over");
					$(this).next().next().removeClass("seat_over");
					$(this).prev().removeClass("seat_over");
					
				} else {
					$(this).next().removeClass("seat_over");
					$(this).next().next().removeClass("seat_over");
					$(this).next().next().next().removeClass("seat_over");
				}
			}
		});
		
		var seat_handicapped = $(".seat_handicapped").click(function() {
			$(this).toggleClass("seat_clicked");
		});
		
		var nomal_count = $(".seat_nomal").click(function() {
			
			radioCheked = $('input[name="seat_num"]:checked').length;
			
			countSum -=  nomalCount;
			
			nomalCount = $(this).text();
			
			countSum = Number(nomalCount) + Number(youthCount) + Number(advantageCount);
			
			
			if(countSum <= 8){
				reset("nomal");
				$(this).toggleClass("seat_count_nomal");
				if(countSum == 0 && radioCheked == 1){
					$(this).prop('checked',false);
					$('input[name="seat_num"]:radio[value="'+ currentCheckedValue +'"]').prop('checked',false);
					currentCheckedValue = 0;
				} else if(radioCheked == 1 && countSum < currentCheckedValue){
					currentCheckedValue = countSum;
					$('input[name="seat_num"]:radio[value="'+ currentCheckedValue +'"]').prop('checked',true);
				}
			} else{
				alert("최대 예매 가능한 인원수는 8명 까지 입니다. 단체관람의 경우 단체/대관문의를 이용해주세요.");
			}
			
		});
		
		var youth_count = $(".seat_youth").click(function() {
			
			radioCheked = $('input[name="seat_num"]:checked').length;
			
			countSum -=  youthCount;
			
			youthCount = $(this).text();
			
			countSum = Number(nomalCount) + Number(youthCount) + Number(advantageCount);
			
			if(countSum <= 8){
				reset("youth");
				$(this).toggleClass("seat_count_youth");
				
				if(countSum == 0 && radioCheked == 1){
					$(this).prop('checked',false);
					$('input[name="seat_num"]:radio[value="'+ currentCheckedValue +'"]').prop('checked',false);
					currentCheckedValue = 0;
				} else if(radioCheked == 1 && countSum < currentCheckedValue){
					currentCheckedValue = countSum;
					$('input[name="seat_num"]:radio[value="'+ currentCheckedValue +'"]').prop('checked',true);
				}
			} else{
				alert("최대 예매 가능한 인원수는 8명 까지 입니다. 단체관람의 경우 단체/대관문의를 이용해주세요.");
			}
			
		});
		
		var advantage_count = $(".seat_advantage").click(function() {
			
			radioCheked = $('input[name="seat_num"]:checked').length;
			
			countSum -=  advantageCount;
			
			advantageCount = $(this).text();
			
			countSum = Number(nomalCount) + Number(youthCount) + Number(advantageCount);
			
			if(countSum <= 8){
				reset("advantage");
				$(this).toggleClass("seat_count_advantage");
				if(countSum == 0 && radioCheked == 1){
					$(this).prop('checked',false);
					$('input[name="seat_num"]:radio[value="'+ currentCheckedValue +'"]').prop('checked',false);
					currentCheckedValue = 0;
				} else if(radioCheked == 1 && countSum < currentCheckedValue){
					currentCheckedValue = countSum;
					$('input[name="seat_num"]:radio[value="'+ currentCheckedValue +'"]').prop('checked',true);
				}
			} else{
				alert("최대 예매 가능한 인원수는 8명 까지 입니다. 단체관람의 경우 단체/대관문의를 이용해주세요.");
			}
			
		});
		
		function reset(name) {
			$(".seat_count_" + name).removeClass("seat_count_" + name);
		}
			
		var seatNum = $("input[name=seat_num]").click(function() {
			var value = $(this).val();
			
			if(countSum < value){
				$(this).prop('checked',false);
				$('input[name="seat_num"]:radio[value="'+ currentCheckedValue +'"]').prop('checked',true);
				
			} else {
				$(this).prop('checked',true);
				currentCheckedValue = $(this).val();				
			}
		});
		
		function seatSelect(value){
			if(countSum < value){
				currentCheckedValue = countSum;
				
				if(currentCheckedValue == 0){
					selectFlag = 1;
				}
				$('input[name="seat_num"]:radio[value="'+ value +'"]').prop('checked',false);
				$('input[name="seat_num"]:radio[value="'+ currentCheckedValue +'"]').prop('checked',true);
			}

		}
		
		function endTimeGenerate(startTime, runtime){
			var divideTime = startTime.split(":");
			alert( divideTime[0]+"시");
			alert(divideTime[1]+"분");
			var minute = 0;
			var hour = 0;
			
			minute = Number(divideTime[1]) + runtime;
			hour = Number(divideTime[0]);
			if(minute >= 60){
				hour += minute / 60;
				hour = Math.floor(hour);
				minute = minute % 60;
				if(minute < 10){
					minute = "0" + minute;
				}
			}
			
			alert(hour+"시");
			alert(minute+"분");
			
			endTime = hour + ":" + minute;
			alert("런타임 : " + runtime + "분");
			alert("시작 시간 : " + startTime);
			alert("종료 시간 : " + endTime);
		}
		
	</script>
<%@include file="./include/footer.jsp" %>