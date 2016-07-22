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
					<div class="seat_title" style="width: 80px; height: 20px; margin-left:10px; text-align: left; float:none">청소년</div>
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
					<div class="seat_title" style="width: 80px; height: 20px; margin-left:10px; text-align: left; float:none">우대</div>
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
					<input name="seat_num" type="radio" value="1"><div class="box"></div><div style="margin-right: 5px; height: 18px; float: left"></div>
					<input name="seat_num" type="radio" value="2"><div class="box"></div><div class="box"></div><div style="margin-right: 5px; height: 18px; float: left"></div>
					<input name="seat_num" type="radio" value="3"><div class="box"></div><div class="box"></div><div class="box"></div><div style="margin-right: 5px; height: 18px; float: left"></div>
					<input name="seat_num" type="radio" value="4"><div class="box"></div><div class="box"></div><div class="box"></div><div class="box"></div>
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
	
		var nomalCount = 0;
		var youthCount = 0;
		var advantageCount = 0;
		var countSum = 0;
		var currentCheckedValue = 0;
		var radioCheked = 0;
		var endTime = "";
		var selectFlag = false;
		
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
			
		});

		var seat_prime = $(".seat_prime").click(function() {
			
			if(currentCheckedValue == 1){
				$(this).toggleClass("seat_clicked");
				countSum -= currentCheckedValue;
				seatSelect(1);
			} else if(currentCheckedValue == 2){
				$(this).toggleClass("seat_clicked");
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().toggleClass("seat_clicked");
				} else {
					$(this).next().toggleClass("seat_clicked");
				}
				countSum -= currentCheckedValue;
				seatSelect(2);
			} else if(currentCheckedValue == 3){
				$(this).toggleClass("seat_clicked");
				
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
				} else if($(this).next().next().hasClass("seat_empty") === true){
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
				
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
					$(this).prev().prev().prev().toggleClass("seat_clicked");
				} else if($(this).next().next().hasClass("seat_empty") === true){
					$(this).next().toggleClass("seat_clicked");
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
				} else if($(this).next().next().next().hasClass("seat_empty") === true){
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
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().toggleClass("seat_clicked");
				} else {
					$(this).next().toggleClass("seat_clicked");
				}
				countSum -= currentCheckedValue;
				seatSelect(2);
			} else if(currentCheckedValue == 3){
				$(this).toggleClass("seat_clicked");
				
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
				} else if($(this).next().next().hasClass("seat_empty") === true){
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
				
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
					$(this).prev().prev().prev().toggleClass("seat_clicked");
				} else if($(this).next().next().hasClass("seat_empty") === true){
					$(this).next().toggleClass("seat_clicked");
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
				} else if($(this).next().next().next().hasClass("seat_empty") === true){
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
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().toggleClass("seat_clicked");
				} else {
					$(this).next().toggleClass("seat_clicked");
				}
				countSum -= currentCheckedValue;
				seatSelect(2);
			} else if(currentCheckedValue == 3){
				$(this).toggleClass("seat_clicked");
				
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
				} else if($(this).next().next().hasClass("seat_empty") === true){
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
				
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
					$(this).prev().prev().prev().toggleClass("seat_clicked");
				} else if($(this).next().next().hasClass("seat_empty") === true){
					$(this).next().toggleClass("seat_clicked");
					$(this).prev().toggleClass("seat_clicked");
					$(this).prev().prev().toggleClass("seat_clicked");
				} else if($(this).next().next().next().hasClass("seat_empty") === true){
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
			if(currentCheckedValue == 1){
				$(this).addClass("seat_over");
			} else if(currentCheckedValue == 2){
				$(this).addClass("seat_over");
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().addClass("seat_over");
				} else {
					$(this).next().addClass("seat_over");
				}
			} else if(currentCheckedValue == 3){
				$(this).addClass("seat_over");
				
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().addClass("seat_over");
					$(this).prev().prev().addClass("seat_over");
				} else if($(this).next().next().hasClass("seat_empty") === true){
					$(this).next().addClass("seat_over");
					$(this).prev().addClass("seat_over");
				} else {
					$(this).next().addClass("seat_over");
					$(this).next().next().addClass("seat_over");
				}
			} else if(currentCheckedValue == 4){
				$(this).addClass("seat_over");
				
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().addClass("seat_over");
					$(this).prev().prev().addClass("seat_over");
					$(this).prev().prev().prev().addClass("seat_over");
				} else if($(this).next().next().hasClass("seat_empty") === true){
					$(this).next().addClass("seat_over");
					$(this).prev().addClass("seat_over");
					$(this).prev().prev().addClass("seat_over");
				} else if($(this).next().next().next().hasClass("seat_empty") === true){
					$(this).next().addClass("seat_over");
					$(this).next().next().addClass("seat_over");
					$(this).prev().addClass("seat_over");
				} else {
					$(this).next().addClass("seat_over");
					$(this).next().next().addClass("seat_over");
					$(this).next().next().next().addClass("seat_over");
				}					
			}
		});
		
		var mouseout = $(".seat_standard, .seat_prime, .seat_economy").mouseout(function() {
			if(currentCheckedValue == 1){
				$(this).removeClass("seat_over");
			} else if(currentCheckedValue == 2){
				$(this).removeClass("seat_over");
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().removeClass("seat_over");
				} else {
					$(this).next().removeClass("seat_over");
				}
			} else if(currentCheckedValue == 3){
				$(this).removeClass("seat_over");
				
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().removeClass("seat_over");
					$(this).prev().prev().removeClass("seat_over");
				} else if($(this).next().next().hasClass("seat_empty") === true){
					$(this).next().removeClass("seat_over");
					$(this).prev().removeClass("seat_over");
				} else {
					$(this).next().removeClass("seat_over");
					$(this).next().next().removeClass("seat_over");
				}
			} else if(currentCheckedValue == 4){
				$(this).removeClass("seat_over");
				
				if($(this).next().hasClass("seat_empty") === true){
					$(this).prev().removeClass("seat_over");
					$(this).prev().prev().removeClass("seat_over");
					$(this).prev().prev().prev().removeClass("seat_over");
				} else if($(this).next().next().hasClass("seat_empty") === true){
					$(this).next().removeClass("seat_over");
					$(this).prev().removeClass("seat_over");
					$(this).prev().prev().removeClass("seat_over");
				} else if($(this).next().next().next().hasClass("seat_empty") === true){
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
				alert(currentCheckedValue);
				
			}
		});
		
		function seatSelect(value){
			if(countSum < value){
				currentCheckedValue = countSum;
				
				if(currentCheckedValue == 0){
					selectFlag = true;
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