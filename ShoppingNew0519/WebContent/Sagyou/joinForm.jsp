<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%request.setCharacterEncoding("euc-kr"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value = "${now}" pattern = "yyyy-MM-dd HH:mm:ss" var = "today"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm.jsp</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="./Sagyou/RegularMethod2.js"></script>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<div id="container">
		<div><jsp:include page="/header.jsp"></jsp:include></div>
		<form action="MemberAddAction.mo" method="post" name="acount"
			onsubmit="call()">
			<input type="hidden" name="date" id="date" value="${today}" readonly />
			<center>
				<table style="font-size: 20;">
					<tr>
						<td colspan="2">
							<center>
								<h2>Member Information</h2>
							</center>
						</td>
					</tr>
					<tr>
						<td class="atrr" align=center>ID :</td>
						<td class="atrr1"><input type="text" id="id" name="id"
							maxlength="12" style="width: 180pt; height: 20pt;"> <span>4~12�ڸ�
								���� ��ҹ��ڿ� ���ڷθ� �Է�</span></td>
					</tr>
					<tr>
						<td class="atrr" align=center>PASS :</td>
						<td class="atrr1"><input type="password" id="pw" name="pw"
							maxlength="12" style="width: 180pt; height: 20pt;"> <span>4~12�ڸ�
								���� ��ҹ��ڿ� ���ڷθ� �Է�</span></td>
					</tr>
					<tr>
						<td class="atrr" align=center>PASS-RE :</td>
						<td><input type="password" id="checkpw" maxlength="12"
							style="width: 180pt; height: 20pt;"></td>
					</tr>
					<tr>
						<td class="atrr" align=center>E-MAIL:</td>
						<td><input type="text" name="email" id="email"
							style="width: 180pt; height: 20pt;"></td>
					</tr>
					<tr>
						<td class="atrr" align=center>NAME :</td>
						<td><input type="text" name="name" id="name"
							style="width: 180pt; height: 20pt;"></td>
					</tr>

					<tr>
						<td colspan="2">
							<center>
								<h2>Privacy Information</h2>
							</center>
						</td>
					</tr>

					<tr>
						<td class="atrr" align=center>IDENTIFICATION NUM :</td>
						<td class="atrr1"><input type="text" name="jumin" id="jumin"
							maxlength="6" style="width: 100pt; height: 20pt;" /> <input
							type="password" name="jumin2" id="jumin2" maxlength="7"
							onblur="calcul()" style="width: 100pt; height: 20pt;" /></td>
					</tr>
					<tr>
						<td class="atrr" align=center>BIRTH (AUTO) :</td>
						<td class="atrr1"><input type="text" style="width: 80px"
							id="year" name="year" style=" width:250pt; height:20pt;" />Y <input
							type="text" style="width: 80px" id="month" name="month"
							style=" width:250pt; height:20pt;" />M <input type="text"
							style="width: 80px" id="day" name="day"
							style=" width:250pt; height:20pt;" />D</td>
					</tr>
					<tr>
						<td class="atrr" align=center>ADDRESS :</td>
						</font>
						<td class="atrr1"><input type="text" name="postcode"
							id="postcode" style="width: 70pt; height: 20pt;"
							placeholder="�����ȣ"> <input type="button"
							onclick="execDaumPostcode()" value="�����ȣ ã��"><br> <input
							type="text" name="address1" id="address1"
							style="width: 150pt; height: 20pt;" placeholder="�ּ�"> <input
							type="text" name="address2" id="address2"
							style="width: 200pt; height: 20pt;" placeholder="���ּ�"></td>
					</tr>
					<tr>
						<td class="atrr" align=center>PHONE:</td>
						<td><input type="text" name="phone" id="phone"
							; placeholder="000-0000-0000" /></td>
					</tr>
					<tr>
						<td class="atrr" align=center>POINT:</td>
						<td><input type="text" name="point" id="point" value="0"
							; readonly /></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<p>
								<br> <input type="submit" value="JOIN"
									style="width: 60pt; height: 30pt;"> &emsp; &emsp; <input
									type="reset" value="RESET" style="width: 80pt; height: 30pt;">
							</p>
						</td>
					</tr>
				</table>
				</b>
			</center>
		</form>
	</div>
</body>
</html>