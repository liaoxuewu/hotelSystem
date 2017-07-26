<%@ page contentType="text/html; charset=GBK" import ="com.hotel.dao.*, com.hotel.entity.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
<HEAD>
<TITLE>酒店管理系统</TITLE>
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
			<td colspan="2">当前操作房间号为:
		</tr>
		<br>
		<tr>
			<td colspan="2" align="center" ><font size=6 color="red"><%
			out.println(request.getParameter("roomId"));
			%>
		</tr>
		<br>
		<tr >
			<td align="right"><a href='Room.jsp' >返回</td>
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
  		alert('请您输入顾客姓名！');
  		return false;
  	}
  	else if(form.customerPhoneNumber.value==null||form.customerPhoneNumber.value=="")
  	{
  		alert('请您输入顾客电话！');
  		return false;
  	}
  	else if(form.days.value==null||form.days.value=="")
  	{
  		alert('请您输入入住天数！');
  		
  		return false;
  	}
  	else if(form.payment.value==null||form.payment.value=="")
  	{
  		alert('请您输入入住日期！');
  		return false;
  	}
  	//else if( eval(form.payment.value) < eval(document.getElementById('day').value*<%out.print(request.getParameter("roomPrice"));%>){
  	//	alert('此房单价为<%out.print(request.getParameter("roomPrice"));%>元，押金为100元，共需要支付'+document.getElementById('day').value*<%out.print(request.getParameter("roomPrice"));%>+'元。');
  	//	return false;
	
  	//}
  	else if(eval(form.payment.value)<document.getElementById('day').value*<%out.print(request.getParameter("roomPrice"));%>){
  		alert('此房单价为<%out.print(request.getParameter("roomPrice"));%>元，押金为100元，共需要支付'+(100+document.getElementById('day').value*<%out.print(request.getParameter("roomPrice"));%>)+'元。');
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
<tr><th align="left">客户姓名</th>
<td><input type="text" name="customerName" size=15/></td>
</tr>
<tr><th align="left">身份证号</th>
<td><input type="text" name="customerID" size=15/></td>
</tr>
<tr><th align="left">电话号码</th>
<td><input type="text" name="customerPhoneNumber" size=15/></td>
</tr>

<tr><th align="left">入住天数：</th>
<td><input type="text" name="days" size=15 id="day"/></td>
</tr>
<tr><th align="left">支付金额：</th>
<td><input type="text" name="payment" size=15 /></td>
<td>

<tr>
<td>
<INPUT type="submit" name="yuding" value="确定">
<INPUT type="reset" name="reset" value="重置">
</td></tr>
</table>
</FORM>

	
    <td width="40" background="images/middle4.jpg">&nbsp;</td>
  </tr>
  <tr>
 
    <td colspan="5"><img src="images/bottom.jpg" width="780" height="82"></td>
     
  </tr>
</table>
<P align="center">软件学院</P>
<br/>

</BODY>
</HTML>