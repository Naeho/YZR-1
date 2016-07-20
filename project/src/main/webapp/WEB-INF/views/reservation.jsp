<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="./include/header.jsp" %>
<style>
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
	
	input{
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

</style>
	<table>
		<tr>
			<th style="color: #fff; font-weight: bolder; width: 400px; padding-left: 20px">☞ 관람 할인 안내</th>
			<th style="color: rgba(230,230,230,0.75); padding-left: 120px ;font-size: 14pt; width: 400px">인원/좌석</th>
			<th style="color: rgba(230,230,230,0.75); font-weight: bolder; text-align: right; padding-right:20px; width: 800px">다시하기<span class="glyphicon glyphicon-repeat"></span></th>
		</tr>
		<tr>
			<td style="width: 500px;">
				<div class="seat_num">
					<div class="seat_title" style="width: 80px; height: 20px; margin-left:10px; text-align: left;">일반</div>
					<div class="seat_nomal">0</div>
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
					<div class="seat_title" style="width: 80px; height: 20px; margin-left:10px; text-align: left; float:none">청소년</div>
					<div class="seat_youth" style="margin-left:95px;">0</div>
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
					<div class="seat_title" style="width: 80px; height: 20px; margin-left:10px; text-align: left; float:none">우대</div>
					<div class="seat_advantage" style="margin-left:95px;">0</div>
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
					<input name="seat_num" type="radio"><div class="box"></div><div style="margin-right: 5px; height: 18px; float: left"></div>
					<input name="seat_num" type="radio"><div class="box"></div><div class="box"></div><div style="margin-right: 5px; height: 18px; float: left"></div>
					<input name="seat_num" type="radio"><div class="box"></div><div class="box"></div><div class="box"></div><div style="margin-right: 5px; height: 18px; float: left"></div>
					<input name="seat_num" type="radio"><div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div>
				</div>
			</td>
			<td>
				<div>선택하신 상영관/시간</div>
				<div style="margin-top: 10px;"><span style="font-size: 12pt; font-weight: bolder;;">3관 8층</span>(총 172석) <span style="font-size: 12pt;">21:30 - 23:38</span>(잔여 132석)</div>
				<button style="float: left;" class="btn btn-warning">상영시간 변경하기</button>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="border-right: 0px solid #999;">
				<div style="width: 600px; height: 25px; background-color: #bbb; margin: 0px auto; text-align: center; font-size: 14pt; font-weight: bold; color: #555">screen</div>
				<div style="height:50px"><span></span></div>
				<%@include file="./include/Plex1.html" %>
			</td>
			<td style="border-left: 0px solid #999;">
				<div style="width: 18px; height: 18px; border: 2px solid #999; background-color: #980000; float: left;"></div><div>선택</div><br>
				<div style="width: 18px; height: 18px; border: 0px solid #FF4500; background-color: #C2C2C2; float: left;"></div><div>예매완료</div><br>
				
				<div style="width: 18px; height: 18px; border: 2px solid #f00; float: left;"></div><div>Prime Zone</div><br>
				<div style="width: 18px; height: 18px; border: 2px solid #477500; float: left;"></div><div>Standard Zone</div><br>
				<div style="width: 18px; height: 18px; border: 2px solid #FF4500; float: left;"></div><div>Economy Zone</div><br>
				<div style="width: 18px; height: 18px; border: 0px solid #FF4500; background-color: #597812; float: left;"></div><div>장애인석</div><br>
				<div style="width: 18px; height: 18px; border: 0px solid #999; background-color: #FF007F; float: left;"></div><div>SweetBox</div><br>
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
		<div style="float: right;"><button style="margin-top: 50px; margin-right: 50px; background-color: #999; color: #fff;"><span style="font-size: 35pt;color: #fff; font-weight: bolder;">></span><br/>좌석선택</button></div>
	</div>
	
	<script>
	
		var nomalFlag = false;
		var youthFlag = false;
		var advantageFlag = false;
		var nomalCount = 0;
		var youthCount = 0;
		var advantageCount = 0;
	
		$(document).ready(function() {
			$(".seat_prime").click(function() {
				$(this).toggleClass("seat_clicked");
			});
		});
		
		$(document).ready(function() {
			$(".seat_standard").click(function() {
				$(this).toggleClass("seat_clicked");
			});
		});
		
		$(document).ready(function() {
			$(".seat_handicapped").click(function() {
				$(this).toggleClass("seat_clicked");
			});
		});
		
		$(document).ready(function() {
			$(".seat_economy").click(function() {
				$(this).toggleClass("seat_clicked");
			});
		});
		
		$(document).ready(function() {
			
			$(".seat_nomal").click(function() {
				if(nomalFlag){
					reset("nomal");
					nomalFlag = false;
				}
				alert(nomalCount);
				nomalCount = $(this).text();
				
				if(Number(nomalCount) + Number(youthCount) + Number(advantageCount) <= 8){
					alert("1111");
					$(this).toggleClass("seat_count_nomal");
					nomalFlag = true;
				} else{
					alert("안댐!");
				}
				
			});
		});
		
		$(document).ready(function() {
			
			$(".seat_youth").click(function() {
				if(youthFlag){
					reset("youth");
					youthFlag = false;
				}
				
				youthCount = $(this).text();
				
				alert(Number(nomalCount) + Number(youthCount) + Number(advantageCount));
				
				if(Number(nomalCount) + Number(youthCount) + Number(advantageCount) <= 8){
					$(this).toggleClass("seat_count_youth");
					youthFlag = true;
				} else{
					alert("안댐!");
				}
				
			});
		});
		
		$(document).ready(function() {
			
			$(".seat_advantage").click(function() {
				if(advantageFlag){
					reset("advantage");
					advantageFlag = false;
				}
				
				advantageCount = $(this).text();
				
				if(Number(nomalCount) + Number(youthCount) + Number(advantageCount) <= 8){
					$(this).toggleClass("seat_count_advantage");
					advantageFlag = true;
				} else{
					alert("안댐!");
				}
				
			});
		});
		
		function reset(name) {
			$(".seat_count_" + name).removeClass("seat_count_" + name);
		}

	</script>
	
	
<%@include file="./include/footer.jsp" %>