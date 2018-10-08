<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<!-- <script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
---- Include the above in your HEAD tag --------
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
---- Include the above in your HEAD tag --------
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script> -->

<title>WHERE ARE U GOING?</title>

<style>
.custab {
	border: 1px solid #ccc;
	padding: 5px;
	margin: 5% 0;
	box-shadow: 3px 3px 2px #ccc;
	transition: 0.5s;
}

.custab:hover {
	box-shadow: 3px 3px 0px transparent;
	transition: 0.5s;
}

tr#selected:hover {
	background-color: #D5D5D5;
}
</style>
<script>
	function myFunction(id) {
		var x = document.getElementById(id);
		if (x.className.indexOf("w3-show") == -1) {
			x.className += " w3-show";
			x.previousElementSibling.className = x.previousElementSibling.className
					.replace("w3-black", "w3-red");
		} else {
			x.className = x.className.replace(" w3-show", "");
			x.previousElementSibling.className = x.previousElementSibling.className
					.replace("w3-red", "w3-black");
		}
	}
	$(document).ready(function() {
		$("button#reservation").click(function() {
			if ($("input#check").prop("checked")) {
				$("form#frm").submit();
				return false;
			} else {
				$("div#message").html("<font color='red'>�Ϲ� ���� �� ��� ������ �������ּ���.</font>");
				return false;
			}

		});
	});
</script>
</head>
<body class="w3-light-grey">

	<jsp:include page="../template/head.jsp"></jsp:include>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- ������ -->
				<div class="panel panel-primary" id="departList"
					style="border-color: #f44336">
					<div class="panel-heading" style="background-color: #f44336">
						<h3 class="panel-title">������ DEPART</h3>
					</div>
					<div class="panel-body">
						<div class="col-md-14">
							<table class="table table-striped custab"
								style="margin-top: 10px; margin-bottom: 10px;">
								<thead>
									<tr style="margin: 5px">
										<th>�װ����</th>
										<th>��߰���</th>
										<th>��߽ð�</th>
										<th>�ҿ�ð�</th>
										<th>��������</th>
										<th>�����ð�</th>
										<th>����</th>
									</tr>
								</thead>
								<tr style="margin-top: 3px">
									<td>${departList.al_no}</td>
									<td>${departList.ap_no }</td>
									<td>${departList.departtime }</td>
									<td>${departList.lead }</td>
									<td>${departList.ap_no2 }</td>
									<td>${departList.arrivaltime }</td>
									<td>${departList.cost }��</td>
								</tr>

							</table>
						</div>
					</div>

				</div>
				<br>
				<!-- ������ -->
				<c:if test="${way=='roundtrip'}">
					<div class="panel panel-primary" id="departList"
						style="border-color: #f44336">
						<div class="panel-heading" style="background-color: #f44336">
							<h3 class="panel-title">������ RETURN</h3>
						</div>
						<div class="panel-body">
							<div class="col-md-14">
								<table class="table table-striped custab"
									style="margin-top: 10px; margin-bottom: 10px;">
									<thead>
										<tr style="margin: 5px">
											<th>�װ����</th>
											<th>��߰���</th>
											<th>��߽ð�</th>
											<th>�ҿ�ð�</th>
											<th>��������</th>
											<th>�����ð�</th>
											<th>����</th>
										</tr>
									</thead>
									<tr style="margin-top: 3px">
										<td>${returnList.al_no}</td>
										<td>${returnList.ap_no }</td>
										<td>${returnList.departtime }</td>
										<td>${returnList.lead }</td>
										<td>${returnList.ap_no2 }</td>
										<td>${returnList.arrivaltime }</td>
										<td>${returnList.cost }��</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</c:if>
				<br> <br>

				<!-- �� ������ ���� -->
				<div class="panel panel-primary" id="departList"
					style="border-color: #8C8C8C">
					<div class="panel-heading" style="background-color: #8C8C8C">
						<h3 class="panel-title">�� ���� ��� COST</h3>
					</div>
					<div class="panel-body">
						<div class="col-md-14">
							<table class="table table-striped custab"
								style="margin-top: 10px; margin-bottom: 10px;">
								<thead>
									<tr style="margin: 5px">
										<th>�ο�</th>
										<th>�װ�����</th>
										<th>����������</th>
										<th>����������</th>
										<th>�߱Ǵ��������</th>
										<th>����</th>
										<th>�հ�</th>
									</tr>
								</thead>
								<tr style="margin-top: 3px">
									<c:choose>
										<c:when test="${way=='roundtrip'}">
											<td>${persons}</td>
											<td>${(returnList.cost + departList.cost)*persons-10000-((((returnList.cost + departList.cost)*persons-10000)-(((returnList.cost + departList.cost)*persons-10000)*0.1))*0.05)-(((returnList.cost + departList.cost)*persons-10000)*0.1)}��</td>
											<td>${(((returnList.cost + departList.cost)*persons-10000)-(((returnList.cost + departList.cost)*persons-10000)*0.1))*0.05}��</td>
											<td>${((returnList.cost + departList.cost)*persons-10000)*0.1}��</td>
											<td>10000��</td>
											<td></td>
											<td><font color="red">${(returnList.cost + departList.cost)*persons}</font>��</td>
										</c:when>
										<c:otherwise>
											<td>${persons}</td>
											<td>${(departList.cost)*persons-10000-((((departList.cost)*persons-10000)-(((departList.cost)*persons-10000)*0.1))*0.05)-(((departList.cost)*persons-10000)*0.1)}��</td>
											<td>${(((departList.cost)*persons-10000)-(((departList.cost)*persons-10000)*0.1))*0.05}��</td>
											<td>${((departList.cost)*persons-10000)*0.1}��</td>
											<td>10000��</td>
											<td></td>
											<td><font color="red">${departList.cost*persons}</font>��</td>
										</c:otherwise>
									</c:choose>
								</tr>

							</table>
						</div>
					</div>
				</div>
				<br> <br>
				<!-- ž���� ���� -->
				<div class="panel panel-primary" id="departList"
					style="border-color: #8C8C8C">
					<div class="panel-heading" style="background-color: #8C8C8C">
						<h3 class="panel-title">ž���� ���� �Է� PASSENGERS INFO</h3>
					</div>
					<div class="col-md-14" style="margin-left: 10px">
						<br> - ž�°� �����̸�, �������, ���� ���� �� ���ǻ���<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: ž������ �����̸�, �������, ������ ���ǰ� �����ؾ� �ϸ�,
						���� �� �̸� ������ �Ұ��ϸ� �������� ���� ��� ž���� ������ �� �ֽ��ϴ�.<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: ���� ��� / ���� ��� �� ���Է����� ���� ������ �ٸ��ų�
						������ ��� �Ǵ� �н� �Ű�� ����, �̹� ���� �ܼ� ���� ���� �� <br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���� ���� ���� ������ ��� �װ��� ž�� ��
						���� �Ա��� ������ �� ������ �̿� ���ؼ� ���� å������ �ʽ��ϴ�.<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: ��Ȯ�� ���� ���� �̸��� �ο�24(���� ��Ȱ���� & ó���ؾ���
						��Ȱ����)���� Ȯ���� �� �ֽ��ϴ�.<br>
					</div>
					<div class="panel-body">
						<div class="col-md-14">
							<table class="table table-striped custab"
								style="margin-top: 10px; margin-bottom: 10px;">
								<thead>
									<tr style="margin: 5px">
										<th>NO</th>
										<th>�ѱ� �̸�</th>
										<th>���� �̸�</th>
										<th>���� ��</th>
										<th>�������</th>
									</tr>
								</thead>
								<form action="appointInsert.do" id="frm" method="POST">
								<c:forEach varStatus="i" begin="1" end="${persons}" step="1">
									<tr style="margin-top: 3px">
										<td>${i.count}</td>
										<td><input name="hanname${i.count}" type="text"></td>
										<td><input name="firstname${i.count}" type="text"></td>
										<td><input name="lastname${i.count}" type="text"></td>
										<td><input name="birth${i.count}" type="text"></td>
									</tr>
								</c:forEach>
									<input name ="returnSchedule" type="hidden" value="${returnS_no}">
									<input name ="departSchedule" type="hidden" value="${departS_no}">
									<input name ="persons" type="hidden" value="${persons}">
								</form>
							</table>
						</div>
					</div>
				</div>
				<br> <br>
			</div>
			<h4>�Ϲݱ��� �� ��ݱ���</h4>
			<p>
				<input type="checkbox" id="check"> ��� �װ��� ������ Ȯ�� �� �����մϴ�. <font
					color="red">[�ʼ�]</font>
			</p>

			<button onclick="myFunction('Demo1')"
				class="w3-button w3-block w3-gray w3-left-align"
				style="border-color: black; border: 1px">�Ϲݱ���</button>
			<div id="Demo1" class="w3-hide w3-container">
				<p>
					<br> - ���� ����<br> 1) ������������ ���������� �װ��� �������ѿ� ���� �մ�� �� �� ������
					�������� ���Ŀ��� ����� �λ�� �� �ֽ��ϴ�.<br> 2) ������� ���������� ���� �̿��ϴ� �װ�����
					�����ð����� �ٸ��� ������, ����� ���������� �켱 ����ǹǷ� �̷ν� �߻��Ǵ� �����ǿ� ���ؼ��� å������ �����Ƿ� ������
					�ֽñ� �ٶ��ϴ�. <br> 3) ���� �� ���������� �ָ�(��/��)�� ��쿡�� ���� 2�� �������� �߱���
					�����Ͽ��� ������ ���ѷ� �ֽñ� �ٶ�� �Ͽ����� ������ �������� ��쿡�� �߱Ǿ����� �����Ƿ� �̸� Ȯ���Ͻþ� ����
					17�ñ��� ���� ��û�� �ֽñ� �ٶ��ϴ�.(�� ���߰����� ���� �߻��Ǵ� ��� ����� ����翡�� å���� �� ����)<br>
					4) ������û �� ��ҿ�û �ÿ��� �ð��� ������� �ٷ� ȯ���������� �ݿ��ǿ��� �����ð� �̳��� �� ������û �� ��ҿ�û
					������ ���ֽñ� �ٶ��ϴ�.(���� �����ϼż� ������û ��Ź�帳�ϴ�.)<br> 5) �ؿܹ��� ī��� ������
					�Ұ����մϴ�. <br> 6) �߱��� �����װ���(e-ticket)�� ���Ϸ� ���۵˴ϴ�.<br> <br>
					- ����<br> 1) �ͱ��� �������� �ش� �װ���� 72�ð� ���� ��Ȯ���ϼž� �˴ϴ�. (�������� ��Ȯ�ν�
					�ڵ����� ������ ��ҵ� �� �ֽ��ϴ�.) ���� �װ��� ������ ���� �������� �����̳� ��Ұ� �߻��� �� ������ ��/�ͱ�����
					�������� Ȯ���� �ֽñ� �ٶ��ϴ�. �װ��� ������ ���� ����� ���������� ��Ȯ������ �ʾ� �߻��� ������ ���ؼ� ����翡����
					å�� ���� �ʽ��ϴ�. <br> 2) NO-SHOW�� ���� �߻��� ���ش� å������ ���ϹǷ� ������ ���� Ȯ���Ͻþ�
					��¥������ ���ֽñ�ٶ��ϴ�. (NO-SHOW��? ���2�������� ���ຯ���̳� ��� ����, ���׿� ������ �ʴ� ����
					�ǹ��մϴ�. �װ��翡 ���� ������ �� ����)<br>3) �װ��� ������ ����(�ߺ�)������ �ϴ� ���(��¥�� ���ð�
					�ٸ����� �����װ����� ����)�� ���� ��� ���� ��� ������ ��ҵǹǷ� �����Ͽ� �ֽñ� �ٶ��ϴ�. Ư��, �߱� �Ŀ���
					����(�ߺ�)������ �ִ� ��쿡�� ���� ������ ��� �������, ž�¼��Ӱź�, �߰�����¡�� ���� ������ �߻��ǹǷ� �����Ͽ�
					�ֽñ� �ٶ��ϴ�. <br>4) ��� �������� ü�����δ� �߱� ���� �����ϼž� �ϸ�, �߱� �Ŀ��� ������
					�Ұ����մϴ�. (ü������ ��û�� �����װ��������� �̿��Ͽ� �ֽñ� �ٶ��ϴ�.) <br>5) ���¿����� ��Ȯ��
					�¼�����, �����⿡�� �ͱ��� ������ �����Ƿ� ���¿����� �ﰡ �ֽñ� �ٶ��ϴ�. �ͱ��� ���� ���� �Ǵ� �ͱ����� �����Ͻ�
					���̴��� �ͱ��� ����/����� �������� ����� �¼��� ������� ������ �Ϲݼ� �̴��� ��������� �¼����� �̿��Ͻô� ���
					�߰���� �� ����� �����ᰡ �ΰ��˴ϴ�. ��, ���ױ��� �����ϴ��� ������ �Ұ��� ������ �װ����� ������ �ֽ��ϴ�. <br>6)
					�߱� �Ŀ��� �⵵�� ����, �װ��� �� �����̸� ������ ���� �Ұ��Ͽ���, �߱� ���� Ȯ���Ͻñ� �ٶ��ϴ�. <br>7)
					�߱ǵ� �װ����� Ÿ�ο��� �絵�� ���� �ʽ��ϴ�. <br>8) �߱ǵ� Ƽ�ϻ���� �ݵ�� ù ��° �������� �������
					����ϼž� �ϸ� ������� �̿����� ���� �װ����� ���ó�� �˴ϴ�. <br>9) ��õ��� �� ��¥�� ������ ���
					���׺��� �Ʒ��� ���� ¡�� �˴ϴ�. �����Ͻ� ����� ������ ���氡���� �װ����� ��쿡�� �ش�˴ϴ�. (��, ���� ����
					�� ��ȿ�Ⱓ�� �¼��� ���� ��쿡�� ���� ����) <br>&nbsp;�� �װ��� ���� �λ� ����������� �߻��Ǵ�
					�װ� ��� �λ� �ݾ�+�ؽ�����¡��+�װ��� �����ᰡ �߻��մϴ�. <br>&nbsp;�� �װ��� ���� ���� ���������
					�װ����� �ݾ��� ������ �װ����� �ݾ׺��� ��������쿡�� ���� �� ȯ�� �Ұ��մϴ�. <br>10) ���ຯ�� ��
					ȯ���� ������ ����翡�� ��û�ϼž� �ϸ� ���Բ��� ���� �ش� �װ��翡 ���� ���� �� ȯ���Ͽ� �߻��ϴ� ������ ����翡��
					ó�� �Ұ��մϴ�. (��, �߱� �뼱�� �Խ����̳� ��ȭ������ ����� ��� �ش� �װ���� ���� �Ͻþ� �װ��� ��ȣ��
					�����Ͻð� ���� �� �����Ź�帳�ϴ�) <br>11) ���ຯ�� �� ���ó����� ����ڵ��� ������ �߼��ϰ� ������
					Ȯ������ ���� ���� �������� �߻��� ������ å���� �� �����ϴ�. <br>12) �װ��� �̿�� ��/��������
					'���Ÿ����' �������� ���� �ð��밡 1�ð��� �մ�����ų� �������� ��찡 �߻��Ϲ� �� �ش籹�� ���Ÿ�� �Ⱓ�� ������
					�� Ȯ���Ͻþ� ������ ������ ������ ���� �ʵ��� ������ �ֽñ� �ٶ��ϴ�. <br>13) �װ��� �ý��ۻ� ž����
					��ȸ�� �����Ϸκ��� 330�ϱ����� ��ȸ�� �����մϴ�. 330�� ���� �װ��� ��ȸ�� �Ұ��Ͽ� ������ ��¥�� ���� ��
					�����Ͻô���, �ͱ��� ���� �Ǵ� ������ �װ��翡�� ������ �����ᰡ �ΰ��ǿ��� ���عٶ��ϴ�. <br>14)
					�ӽź� �Ǵ� ���Ƹ� ������ �ӽź� �°��� �ӽ� �Ⱓ, �����Ͽ� ���� �װ��纰 �������� �� ž�� ������ ������ ������ ��
					������ ���� �� ������ ������� ���� �ٶ��ϴ�.
				</p>
			</div>

			<button onclick="myFunction('Demo2')"
				class="w3-button w3-block w3-gray w3-left-align">�߱� ���� Ȯ��</button>
			<div id="Demo2" class="w3-hide w3-container">
				<p>
					<br>�������� Ȯ�� ����<br> <br> 1. ���� ���� �� ��¥/������/������
					Ȯ���ϼ̽��ϱ�?<br> 2. ž�°� ���� �̸��� ���ǰ� ��ġ �մϱ�?<br> 3. �Է��Ͻ� ž�°���
					��������� Ȯ�� �մϱ�?<br> 4. ž�°��� ������ȿ�Ⱓ�� �ⱹ�Ϸκ��� 6���� �̻� ���� �ֽ��ϱ�?<br>
					5. �����Ͻ� �װ������ ��� ������ Ȯ���ϼ̽��ϱ�?<br> 6. �������� ������ ���ڴ� Ȯ���ϼ̽��ϱ�? <br>
					- ���������� �װ����� �����Ͻ� ��쿡�� ����� �Ա� ������ ���ڸ� �ݵ�� �����ϰ� ��ž� �ϸ�, ���ڸ� �������� ����
					��쿡�� �ش� �������� �ⱹ�� �źε˴ϴ�.<br> - �������� ���ڰ� �ʿ��� ��찡 ������ ��� ����
					Ȯ���Ͻñ� �ٶ��ϴ�.<br> 7. �Է��Ͻ� ���� ������ ��Ȯ���� Ȯ�� �ϼ̽��ϱ�? <br> - ���Է�,
					���Է� � ���� ���� �߻� �� ��翡�� å������ �ʽ��ϴ�.<br> 8. �ſ�ī�� ���� �� �װ����
					�߱Ǵ�������ᰡ ���� �����ǹǷ� 2���� ������ ����˴ϴ�.<br> (�߱Ǵ��������� �� ��ݿ� ���ԵǾ�
					�ֽ��ϴ�.)<br> <br> �߱� ���� Ȯ�� ����<br> <br> * ���� ��
					�߱Ǵ�������ᰡ �ΰ��˴ϴ�. (ž�°��� �ΰ�)<br> - �߱Ǵ��������� �װ��� ����, ���, �߱� ���� ������
					�޴� ��޼����� �Դϴ�. (�߱Ǵ��������� ȯ�ҵ��� �ʽ��ϴ�.)<br> - �װ��� ���� �� �߱Ǵ���������
					������ũ�� ���� ���εǸ� �Ͻú� �����˴ϴ�.<br> - ���� ���� ���� �� ����� �λ�� �� ������, �װ���
					�����̳� ȯ���� ���ؼ��� �������� ���� ����� �� �ֽ��ϴ�.<br> - �װ����� Ÿ�ο��� �絵�� �� ������,
					ž�°��� �̸� ������ �Ұ����� ��쵵 �ֽ��ϴ�.<br> - ���� �� �ٸ� �װ���� 2-3���� ������ �Ͻ� ��
					������ ������ �װ���� �ߺ� �����Ͻø� �װ��翡�� ������<br> ���Ƿ� ����� �� �ֽ��ϴ�.<br> -
					�װ��� ȯ���̳� �װ��� ����� �� ����� ������(��ݱ���Ȯ��)�� �ΰ��˴ϴ�.<br> (��, ���� �̸� ��������
					���� ����� �� ����� ������ ¡����󿡼� ����)<br> - ���� ��û �� �Ϸ� �Ŀ��� ���� ���� �� �Һ� ����
					������ �Ұ����մϴ�.<br> - ������ �װ� ���� ���� �� ������ ����/���/ȯ��/����� ���� ����� �� ���
					������ �����Ͽ�����, �̸� �����ϴ� �������� ������ ������ ������ Ȯ���մϴ�.
				</p>
			</div>
			<br> <br> <br>
			<div id="message"></div>
			<br>
			<button class="w3-button w3-block w3-red" id="reservation">�����ϱ�</button>
			<br> <br>
		</div>
	</div>
	</div>
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>