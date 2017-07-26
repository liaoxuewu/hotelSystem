<%@ page contentType="text/html; charset=GBK" import ="java.util.*,com.hotel.dao.*, com.hotel.entity.*" pageEncoding="GBK"%>
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
    <td width="172" valign="top"><div align="center"> 
     
  </div>	
  
  <form action="" method="post" name="showForm" >
  <table align="center"> 
        <tr>
			<td colspan="2">当前操作房间号为:
		</tr>
		<br>
		<tr>
			<td colspan="2" align="center" ><font size=6 color="red"><%
			Room room = (Room)request.getAttribute("handleRoom");
			out.println(room.getRoomId());%>
		</tr>
		<br>
		<tr >
			<td align="right"><a href='managerQueryRoomAction' >返回</td>
		</tr>
	  </table>
	</form>
    </td>

<script language="javaScript">
  function check(form)
  {
  	if(form.type.value==null||form.type.value=="")
  	{
  		alert('请您输入房间类型！');
  		return false;
  	}
  	else if(form.level.value==null||form.level.value=="")
  	{
  		alert('请您输入房间等级！');
  		return false;
  	}
  	else if(form.price.value==null||form.price.value=="")
  	{
  		alert('请您输入房间价格！');
  		
  		return false;
  	}
  	else if(form.location.value==null||form.location.value=="")
  	{
  		alert('请您输入房间位置！');
  		return false;
  	}
  	else
  	{
  		return true;
  	}
  }
  

  </script>

 <form action="saveModifyRoomAction?roomId=<%out.print(room.getRoomId());%>" method="post" name="handleForm" align="absbottom" onsubmit="return check(this)"> 
   
    <td width="35" background="images/layout_24.gif">&nbsp;</td>
    <td width="495">
	<table>
<tr><th align="left">房间号:</th>
<td><input type="text" name="roomId " size=15 value="<%out.print(room.getRoomId());%>" disabled="disabled"/></td>
</tr>
<tr><th align="left">房间类型</th>
<td><input type="text" name="type" size=15 value="<%out.print(room.getType());%>"/></td>
</tr>
<tr><th align="left">房间等级</th>
<td><input type="text" name="level" size=15 value="<%out.print(room.getLevel());%>"/></td>
</tr>

<tr><th align="left">房间价格：</th>
<td><input type="text" name="price" size=15 value="<%out.print(room.getPrice());%>"/></td>
</tr>
<tr><th align="left">房间位置：</th>
<td><input type="text" name="location" size=15 value="<%out.print(room.getLocation());%>"/></td>
<td>
		
	</table>
	<align="center">
	
	<input type="submit" name="ok" value="确定" align="right"></input>
	<input type="reset" name="om" value="重置" align="right"></input>
			
	</form>
	</td>
	
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