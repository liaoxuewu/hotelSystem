<%@ page contentType="text/html; charset=GBK" import ="com.hotel.dao.*, com.hotel.entity.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
<HEAD>
<TITLE>�Ƶ����ϵͳ</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">

<link href="style/mycss.css" rel="stylesheet" type="text/css" />
<link href="style/texts.css" rel="stylesheet" type="text/css" />
<link href="style/btn.css" rel="stylesheet" type="text/css" />
<style>
.table_title{
border:solid 1px #aaa;
border-width:0 0 1px 0;
}
</style>
</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>

<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="5"><img src="images/top.jpg" width="780" height="213"></td>
  </tr>
  <tr>
    <td colspan="5"><img src="images/middle5.jpg" width="780" height="47"></td>
  </tr>
  <tr>
    <td width="38" background="images/middle2.jpg">&nbsp;</td>
    <td width="172" valign="top">
    
  <form action="login.do" method="post" name="myForm" onsubmit="return login()">
        <table align="center"> 
		<tr>
			<td colspan="2">��ǰ���������Ϊ:
		</tr>
		<br>
		<tr>
			<td colspan="2" align="center" ><font size=6 color="red"><%
			out.println(request.getParameter("roomId"));
			%>
		</tr>
		<br>
		<tr >
			<td align="right"><a href='Room.jsp' >����</td>
		</tr>
	  </table>
	  
	  </form>
    
    </td>
    
    <td width="35" background="images/layout_24.gif">&nbsp;</td>
    <td width="495">
  
	<table align ="center">
	
<script language="javaScript">
  function check(form)
  {
  	if(form.customerName.value==null||form.customerName.value=="")
  	{
  		alert('��������˿�������');
  		return false;
  	}
  	else if(form.customerPhoneNumber.value==null||form.customerPhoneNumber.value=="")
  	{
  		alert('��������˿͵绰��');
  		return false;
  	}
  	else if(form.days.value==null||form.days.value=="")
  	{
  		alert('����������ס������');
  		
  		return false;
  	}
  	else if(form.payment.value==null||form.payment.value=="")
  	{
  		alert('����������ס���ڣ�');
  		return false;
  	}
  	//else if( eval(form.payment.value) < eval(document.getElementById('day').value*<%out.print(request.getParameter("roomPrice"));%>){
  	//	alert('�˷�����Ϊ<%out.print(request.getParameter("roomPrice"));%>Ԫ��Ѻ��Ϊ100Ԫ������Ҫ֧��'+document.getElementById('day').value*<%out.print(request.getParameter("roomPrice"));%>+'Ԫ��');
  	//	return false;
	
  	//}
  	else if(eval(form.payment.value)<document.getElementById('day').value*<%out.print(request.getParameter("roomPrice"));%>){
  		alert('�˷�����Ϊ<%out.print(request.getParameter("roomPrice"));%>Ԫ��Ѻ��Ϊ100Ԫ������Ҫ֧��'+(100+document.getElementById('day').value*<%out.print(request.getParameter("roomPrice"));%>)+'Ԫ��');
  		return false;
  	}

  	else
  	{
  		
  		return true;
  	}
  }
  

  </script>
	
	<FORM name="form1" id="checkinForm" method="post" action="checkinRoomAction?roomId=<%
		out.print(request.getParameter("roomId"));%>" onsubmit="return check(this);">
<table>
<tr><th align="left">�ͻ�����</th>
<td><input type="text" name="customerName" size=15/></td>
</tr>
<tr><th align="left">���֤��</th>
<td><input type="text" name="customerID" size=15/></td>
</tr>
<tr><th align="left">�绰����</th>
<td><input type="text" name="customerPhoneNumber" size=15/></td>
</tr>

<tr><th align="left">��ס������</th>
<td><input type="text" name="days" size=15 id="day"/></td>
</tr>
<tr><th align="left">֧����</th>
<td><input type="text" name="payment" size=15 /></td>
<td>

<tr>
<td>
<INPUT type="submit" name="yuding" value="ȷ��">
<INPUT type="reset" name="reset" value="����">
</td></tr>
</table>
</FORM>

	
    <td width="40" background="images/middle4.jpg">&nbsp;</td>
  </tr>
  <tr>
 
    <td colspan="5"><img src="images/bottom.jpg" width="780" height="82"></td>
     
  </tr>
</table>
<P align="center">���ѧԺ</P>
<br/>

</BODY>
</HTML>