<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="./include/header.jsp" %>
	<style>
<!--
	td{
		border-left:2px solid #999;
		border-right:2px solid #999;
		background-color: #FFFFE6;
		padding-top: 15px;
	}
	th{
		border-left:2px solid #999;
		border-right:2px solid #999;
		background-color: #404040;
		color: rgba(255,255,255,0.75);
		text-align: center;
		font-size: 13pt;
		padding: 5px;
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
		margin-left: 20px;
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
	
-->
	</style>
	<button class="btn btn-warning btn-sm" style=""><div style="float:left"><span class="glyphicon glyphicon-time" /></div><div style="float:left; padding-left:5px;">상영시간표</div></button>
	<button class="btn btn-warning btn-sm"><div style="float:left"><span class="glyphicon glyphicon-repeat" /></div><div style="float:left; padding-left:5px;">예매다시하기</div></button>
	
	<table>
		<tr>
			<th style="width:450px">영화</th>
			<th style="width:450px">극장</th>
			<th style="width:200px">날짜</th>
			<th style="width:500px">시간</th>
		</tr>
		<tr style="height: 100px">
			<td valign="top">
				<ul>
					<div id="movie_menu1" class="movie_menu"><li style="float: none; display: inline-block;">전체</li></div>
					<div id="movie_menu2" class="movie_menu"><li style="float: none; display: inline-block;">아트하우스</li></div>
					<div id="movie_menu3" class="movie_menu"><li style="float: none; display: inline-block;">특별관</li></div>
				</ul>
				<br>
				<ul style="margin-top:15px; float:none">
					<div id="movie_second_menu1" class="movie_second_menu" onclick="order_reservation()"><li style="float: none; display: inline-block;">예매율순</li></div>
					<div id="movie_second_menu2" class="movie_second_menu" onclick="order_alphabet()"><li style="float: none; display: inline-block;">가나다순</li></div>
					<div id="movie_second_menu3" class="movie_second_menu"><li style="float: none; display: inline-block;">&nbsp;</li></div>
				</ul>
				<br>
				<div id="movie_list"></div>
			</td>
			<td valign="top">
				<div style="float:left; border-top:2px solid #999; border-bottom:2px solid #999; width:120px; margin-left:45px;
							color: red; font-weight: bold;">
					자주가는 CGV<br>
					<br>
					<br>
				</div>
				<div style="float:left; border-top:2px solid #999; border-bottom:2px solid #999; width:120px;">
					CGV1<br>
					CGV2<br>
					CGV3
				</div>
				<ul style="margin-top:75px; margin-left:5px; float:none;">
					<div id="theater_menu1" class="theater_menu"><li style="float: none; display: inline-block;">전체</li></div>
					<div id="theater_menu2" class="theater_menu"><li style="float: none; display: inline-block;">아트하우스</li></div>
					<div id="theater_menu3" class="theater_menu"><li style="float: none; display: inline-block;">특별관</li></div>
				</ul>
				<br>
				<div style="height: 300px">
					<ul id="theater_state">
						<c:forEach items="${ localList }" var="local_list">
							<li style="float: none; display: inline-block;"><div onclick="theater_local('${ local_list }')">${ local_list }</div></li>
						</c:forEach>
						
					</ul>
					<ul id="theater_state_num">
						
						<c:forEach items="${ theaterNum }" var="theater_num">
							<li style="float: none; display: inline-block;"><div>(${ theater_num })</div></li>
						</c:forEach>

					</ul>
					<ul class="theater_city">
						<div id = "theater_detail"></div>
					</ul>
				</div>
			</td>
			<td valign="top">
				<div style="text-align: center; font-size: 15pt;" id = "year"></div><br>
				<div style="margin-top: -20px; text-align: center; font-size: 30pt;" id = "month"></div><br>
				<div id="calender_date"></div>
				
			</td>
			<td valign="top">
				<div>
					<div><span class="glyphicons glyphicons-brightness-increase"></span><span class="glyphicons glyphicons-moon"></span></div>
					<c:forEach items="${ plexList }" var="plex_list">
						<div style="margin-left: 20px; margin-bottom: 5px; float:none; clear:both;"><span style="color: #993800; font-weight: bold"> ${ plex_list.plex_type } </span> <span style="font-weight: bold;">${ plex_list.plex_number }관 </span> (총 ${ plex_list.plex_seat_cnt }석)</div>
						<c:forEach items="${ timetableList }" var="timetable_list">
							<div class="timetable_time">${ fn:substring(timetable_list.start_time, 11,16) }</div><div class="timetable_seat">50석</div>
						</c:forEach>
					</c:forEach>
				</div>
			</td>
		</tr>
	</table>
	
	<div style="background-color: rgba(0,0,0,0.9); height: 200px;">
		<div id="selected_movie" style="color: rgba(230,230,230,0.75); font-size: 20pt; margin-top: 80px; float: left; margin-right: 15px; padding-right: 20px; margin-left:50px; border-right: 2px solid rgba(255,255,255,0.75)">
			영화선택
		</div>
		<div id="selected_theater" style="color: rgba(255,255,255,0.75); font-size: 20pt; margin-top: 80px; float: left; margin-right: 15px; padding-right: 20px; border-right: 2px solid rgba(255,255,255,0.75)">
			극장선택
		</div>
		<div style="color: rgba(255,255,255,0.75); font-size: 20pt; margin-top: 80px; float: left;">
			> 좌석선택 > 결제
		</div>
		<div style="float: right;"><button onclick="nextStep();" style="margin-top: 50px; margin-right: 50px; background-color: #999; color: #fff;"><span style="font-size: 35pt;color: #fff; font-weight: bolder;">></span><br/>좌석선택</button></div>
	</div>
	
	<form id="frm" name="frm" method="post" action="/yzrproject/main">
		<input type="text" id="movie" name="movie" size="50" maxlength="100" style="display:none;">
		<input type="text" id="theater" name="theater" size="50" maxlength="100" style="display:none;">
		<input type="text" id="date" name="date" size="50" maxlength="100" style="display:none;">
	</form>
	
	<script>
		var checkMovie = false;
		var checkTheater = false;
		var checkDate = false;
		var currentMoviePage = "reservation_rate";
		var currentTheaterPage = "서울";
	
		function nextStep(){
			location.href="/yzrproject/reservation";
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
		
		$(document).ready(function() {
			$(".state_value").click(function(){
				//alert($(this).val());
			});
		});
		
		$(document).ready(function() {
			$("#day").click(function(){
				//alert($(this).val());
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
			
			for(i=0;i<10;i++){
				result += "<div class='calender' onclick='dateSelect("+ i +")'>" +  "<ul>" + "<li style='float: none; font-size: 13pt; margin-right: 5px;' id='day" + i 
				+ "'></li>" + "<li style='float: none; font-size: 13pt; font-weight: bold;' id='date" + i + "'></li>" + "</ul>" + "</div>"
			}
			result += "";
			document.getElementById("calender_date").innerHTML = result;
			
			for(i=0;i<10;i++){
				date = now.getDate();
				day = now.getDay();

				document.getElementById("date"+i).innerHTML = date;
				document.getElementById("date"+i).value = date;
				document.getElementById("day"+i).innerHTML = week[now.getDay()];
				document.getElementById("day"+i).value = week[now.getDay()];
				now.setDate(now.getDate()+1);
			}

		}
		
		$(document).ready(function() {
			today();
			
			var interval = setInterval(function(){
				if(checkMovie && checkTheater && checkDate){
					alert("11");
					clearInterval(interval);
					var movie = $("#movie").val();
					var theater = $("#theater").val();
					var date = $("#year").val() + '-' + $("#month").val() + '-';
					date += $("#date").val();
					
					alert(movie);
					alert(theater);
					alert(date);
					getTimetable(movie, theater, date)
				}	
			}, 50)
			
		});
		
		function dateSelect(i){
			
			//alert(value);
			var date = document.getElementById("date"+i).value;
			checkDate = true;
			alert("checkMovie = " + checkMovie);
			alert("checkTheater = " + checkTheater);
			alert("checkDate = " + checkDate);
			frm.date.value = date;
			//alert(date);
		}

		function order_reservation() {
			$('#order').val("reservation_rate");
			//alert($('#order').val());
			getMovieList("reservation_rate");
		}
		
		function order_alphabet() {
			$('#order').val("alphabet");
			//alert($('#order').val());
			getMovieList("alphabet");
		}
		
		function theater_local(value) {
			//alert(value);
			getTheaterList(value);
		}
		
		function movie_select(value) {
			//alert(value);
			checkMovie = true;
			alert("checkMovie = " + checkMovie);
			alert("checkTheater = " + checkTheater);
			alert("checkDate = " + checkDate);
			document.getElementById("selected_movie").innerHTML = value;
			
			frm.movie.value = value;
		}
		
		function theater_select(value) {
			//alert(value);
			checkTheater = true;
			alert("checkMovie = " + checkMovie);
			alert("checkTheater = " + checkTheater);
			alert("checkDate = " + checkDate);
			document.getElementById("selected_theater").innerHTML = value;
			
			frm.theater.value = value;
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
				result += "<div style='width: 35px; float:left;'>" + this.rating + "</div><span onclick='movie_select(" + '"' + this.title + '"' + ")'>" + this.title + "</span><br>" 
			})
			
			result += "</ul>";

			document.getElementById("movie_list").innerHTML = result;
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
				result += "<div onclick='theater_select(" + '"' + this.theater_name + '"' + ")'><li style='float: none; display: inline-block;'>" + this.theater_name + "</li></div>"
			})
			
			result += "";

			document.getElementById("theater_detail").innerHTML = result;
		}
		getTheaterList("서울");
		getMovieList("reservation_rate");
		
		function getTimetable(movie, theater, date) {			
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
					setMovieList(result.l);
				}
			});
		}
		
		
	</script>
<%@include file="./include/footer.jsp" %>