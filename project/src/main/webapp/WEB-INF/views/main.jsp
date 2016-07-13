<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	ul.theater_city>div{
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
					<div id="movie_second_menu1" class="movie_second_menu"><li style="float: none; display: inline-block;">예매율순</li></div>
					<div id="movie_second_menu2" class="movie_second_menu"><li style="float: none; display: inline-block;">가나다순</li></div>
					<div id="movie_second_menu3" class="movie_second_menu"><li style="float: none; display: inline-block;">&nbsp;</li></div>
				</ul>
				<br>
				<ul style="margin-top:15px; float:none">
					<c:forEach items="${ movieList }" var="movie_list">
						${ movie_list.getTitle() }<br>
					</c:forEach>
				</ul>
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
							<li style="float: none; display: inline-block;"><div>${ local_list }</div></li>
						</c:forEach>
						
					</ul>
					<ul id="theater_state_num">
						
						<c:forEach items="${ theaterNum }" var="theater_num">
							<li style="float: none; display: inline-block;"><div>(${ theater_num })</div></li>
						</c:forEach>
							
						

						
					</ul>
					<ul class="theater_city">
						<c:forEach items="${ theaterList }" var="theater_list">
							<div><li style="float: none; display: inline-block;">${ theater_list.theater_name }</li></div>
						</c:forEach>
					</ul>
				</div>
			</td>
			<td valign="top">
				<div style="text-align: center; font-size: 15pt;">2016</div><br>
				<div style="margin-top: -20px; text-align: center; font-size: 30pt;">7</div><br>
				<div>
					<ul>
						<li style="float: none; display: inline-block; font-size: 13pt; margin-right: 5px;">금</li>
						<li style="float: none; display: inline-block; font-size: 13pt; font-weight: bold;">08</li>
					</ul>
				</div>
				<div>
					<ul>
						<li style="float: none; display: inline-block; font-size: 13pt; margin-right: 5px; color: blue;">토</li>
						<li style="float: none; display: inline-block; font-size: 13pt; font-weight: bold; color: blue;">09</li>
					</ul>
				</div>
				<div>
					<ul>
						<li style="float: none; display: inline-block; font-size: 13pt; margin-right: 5px; color: red;">일</li>
						<li style="float: none; display: inline-block; font-size: 13pt; font-weight: bold; color: red;">10</li>
					</ul>
				</div>
				<div>
					<ul>
						<li style="float: none; display: inline-block; font-size: 13pt; margin-right: 5px;">월</li>
						<li style="float: none; display: inline-block; font-size: 13pt; font-weight: bold;">11</li>
					</ul>
				</div>
			</td>
			<td valign="top">
			<div>
				<div><span class="glyphicons glyphicons-brightness-increase"></span><span class="glyphicons glyphicons-moon"></span></div>
				<c:forEach items="${ plexList }" var="plex_list">
					<div style="margin-left: 20px; margin-bottom: 5px;"><span style="color: #993800; font-weight: bold"> ${ plex_list.plex_type } </span> <span style="font-weight: bold;">${ plex_list.plex_number }관 </span> (총 ${ plex_list.plex_seat_cnt }석)</div>
				</c:forEach>
				<div class="timetable_time">09:00</div><div class="timetable_seat">50석</div>
				<div class="timetable_time">11:00</div><div class="timetable_seat">150석</div>
				<div class="timetable_time">13:00</div><div class="timetable_seat">150석</div>
				<div class="timetable_time">15:00</div><div class="timetable_seat">90석</div>
				<div class="timetable_time">17:00</div><div class="timetable_seat">85석</div>
			</div>
			</td>
		</tr>
	</table>
	
	<div style="background-color: rgba(0,0,0,0.9); height: 200px;">
		<div style="color: rgba(230,230,230,0.75); font-size: 20pt; margin-top: 80px; float: left; margin-right: 15px; padding-right: 20px; margin-left:50px; border-right: 2px solid rgba(255,255,255,0.75)">
			영화선택
		</div>
		<div style="color: rgba(255,255,255,0.75); font-size: 20pt; margin-top: 80px; float: left; margin-right: 15px; padding-right: 20px; border-right: 2px solid rgba(255,255,255,0.75)">
			극장선택
		</div>
		<div style="color: rgba(255,255,255,0.75); font-size: 20pt; margin-top: 80px; float: left;">
			> 좌석선택 > 결제
		</div>
		<div style="float: right;"><button onclick="nextStep()" style="margin-top: 50px; margin-right: 50px; background-color: #999; color: #fff;"><span style="font-size: 35pt;color: #fff; font-weight: bolder;">></span><br/>좌석선택</button></div>
	</div>
	
	<script>
	
		function nextStep(){
			Location.href="/yzrproject/reservation"
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
				alert($(this).val());
			});
		});
		
	</script>
<%@include file="./include/footer.jsp" %>