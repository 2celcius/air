

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
 <title>������ ����������</title>
</head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>


 
 <style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 60%;
    position: absolute; 
    top:320px;
    left:250px;
    text-align: center;
    border-collapse: 0px;
    border-spacing: 0px;
    
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 15px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #60748ba8;
    color: white;
    text-align: center;
    width: 200px;
}

.con_list{

	position: absolute;
	left: -50px;
	top: 270px;
	width: 100%;
	margin-left: 150px;

}

.con_list p{
border-bottom: 2px ;
padding-bottom: 5px;
font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
font-weight: bold;
top: 500px;	 
}

.btns{
position: relative;
left:900px;

}

.btns input[type="button"]{
background-color: black;
border: none;
color: white;
width:70px;
height:50px;
box-shadow: 50px;
margin-bottom: 10px;
}
</style>
<%-- <%

AirSchedule Schedule=null;
Schedule=(AirSchedule)AirAdFilDao.selectScheduleInfo(Integer.parseInt(request.getParameter("sNo"))); 
session.setAttribute("infoData", Schedule);
%> --%>
<body class="w3-light-grey">
<jsp:include page="../template/managerHead.jsp"></jsp:include>

		<div class="w3-content" style="max-width: 1100px; margin-top: 200px; margin-bottom: 200px">
	<div id="w3-half w3-margin-bottom">
	


<div class="con_list">
	<p style="	margin-left: 150px">�������� ����/��� �󼼺���</p>
	</div>
	
	<div class="btns">
		<a href="AirAdFliEdit.jsp?modify=modify&modifysNo=${adFilInfoData.s_no}
				&modifypNO=${adFilInfoData.p_no}&modifyAlNO=${adFilInfoData.al_no}&modifyApNO=${adFilInfoData.ap_no}
				&modifyApNO2=${adFilInfoData.ap_no2}&modifyDepartTime=${adFilInfoData.departtime}
				&modifyArrivalTime=${adFilInfoData.arrivaltime}&modifyLead=${adFilInfoData.lead}
				&modifyCost=${adFilInfoData.cost}&modifySeat=${adFilInfoData.seat}
		"><input type="button" value="����"></a>
	</div>
    
<div class="clear"></div>
	
  <form action="" method="post">
	<table id="customers">
	
 <tr>
 	 <th>���׹�ȣ</th>
    <td>${adFilInfoData.s_no} </td>
 </tr> 
 
 <tr>
  <th>������ڵ�</th>
  <td>${adFilInfoData.p_no}</td>
</tr> 

 <tr>
 <th>�װ����ڵ�</th>
 <td>${adFilInfoData.al_no}</td>
</tr> 

 <tr>
 <th>��߰����ڵ�</th>
 <td>${adFilInfoData.ap_no} </td>
</tr> 

 <tr>
  <th>���������ڵ�</th>
 <td>${adFilInfoData.ap_no2} </td>
</tr> 

 <tr>
  <th>��߽ð�</th>
 <td>${adFilInfoData.departtime} </td>
</tr> 

 <tr>
<th>�����ð�</th>
  <td>${adFilInfoData.arrivaltime}</td>
</tr> 

<tr>
<th>�ҿ�ð�</th>
  <td>${adFilInfoData.lead}</td>
</tr> 

<tr>
<th>����</th>
  <td>${adFilInfoData.cost}</td>
</tr> 

<tr>
<th>�¼���</th>
  <td>${adFilInfoData.seat}</td>
</tr> 


</table>
</form>
</div>	
</div>
		<div style="margin-top: 1000px">
			<jsp:include page="../template/footer.jsp"></jsp:include>
			</div>
</body>
</html>  