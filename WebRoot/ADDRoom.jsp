<%@ page contentType="text/html; charset=GBK" import ="com.hotel.entity.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
<HEAD>
<TITLE>酒店入住管理系统</TITLE>
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
    <td colspan="5"><img src="images/middle1.jpg" width="780" height="47"></td>
  </tr>
  <tr>
    <td width="38" background="images/middle2.jpg">&nbsp;</td>
    <td width="172" valign="top">
    
     <table align="center" height="100px"> 
		
		<tr>
			<td colspan="2">当前操作为:
		</tr>
		<br>
		<tr>
			<td colspan="2" align="center" ><font size=6 color="red">添加房间
		</tr>
		<br>
		<tr >
			<td align="right"><a href='Manager.jsp' >返回</td>
		</tr>
		<tr>
			<td colspan="2"></td>
			</tr>
		<tr>
		  <td colspan="2"></td>
		  </tr>
		 <tr>
			<td colspan="2"></td>
			</tr>
		
	  </table>
    
    </td>
    <td width="35" background="images/layout_24.gif">&nbsp;</td>
    <td width="495">
<script type="text/javascript">
	function check(form)
  {
  	if(form.roomID.value==null||form.roomID.value=="")
  	{
  		alert('请您输入房间号！');
  		return false;
  	}
  	else if(form.type.value==null||form.type.value=="")
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
<form action="addRoomAction" method="post" name="addRoomForm" align="absbottom" onsubmit="return check(this)">
	<table align ="center" height="100px">
		<tr>
			<td colspan="2" width="100" align="center">房间号</td>
			<td colspan="2" width="100" align="center">房间类型</td>
			<td colspan="2" width="100" align="center">房间等级</td>
			<td colspan="2" width="100" align="center">价格</td>
			<td colspan="2" width="100" align="center">位置</td>
			
		</tr>
		<tr>
			<td colspan="2" width="100"  align="center">
			<input type="text" name="roomID" size=5" class="editbox"></td>
			<td colspan="2" width="100" align="center">
			<input type="text" name="type" size=5" class="editbox">
			</td>
			<td colspan="2" width="100" align="center">
			<input type="text" name="level" size=5">
			</td>
			<td colspan="2" width="100" align="center">
			<input type="text" name="price" size=5">
			</td>
			<td colspan="2" width="100" align="center">
			<input type="text" name="location" size=5"></td>
			</td>
			
		</tr>
		<tr>
		</td>
		</tr>
	</table>
		
	<input type="submit" name="ok" value="确定" >
	<input type="reset" name="rest" value="重置" class='btn'>
	
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