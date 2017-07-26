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

<script language="javascript">

    function del(typeId)
    {
       var a=window.confirm("确定要删除吗？");
       if(a==true)
       {
          window.location.reload("DeleteRoomTypeServlet?typeId="+typeId);
       }else
       {
         window.location.reload("showRoomType.jsp");
       }
    }
</script>

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
		
		</tr>
		
		<tr>
			<td colspan="2" ><font size="6" color="red">修改的房间号</font></td>
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

	<table align ="center" height="100px">
		<tr>
			<td colspan="2" width="70" align="center">房间号</td>
			<td colspan="2" width="200" align="center">房间类型</td>
			<td colspan="2" width="100" align="center">价格</td>
			<td colspan="2" width="100" align="center">入住人数</td>
			<td colspan="2" width="80" align="center">描述</td>
		</tr>
		<tr>
			<td colspan="2" width="70"  align="center"><input type="text" name="roomname" size=5" class="editbox"></td>
			<td colspan="2" width="200" align="center">
			<select name="person">
		     <option value="0">家庭间</option>
		      <option value="1">双人间</option>
		       <option value="2">大床房</option>
		     <option value="3" selected="selected">豪华套房</option>
			</td>
			<td colspan="2" width="100" align="center"><input type="number" name="prince" size=5"></td>
			<td colspan="2" width="100" align="center">
			<select name="personnum" size="1" multiple>
			<option value="a">1</option>
		      <option value="b">2<option>
		       <option value="c">3</option>
		       <option value="d">4</option>
		     <option value="e" selected="selected">5</option>
			 </select>
			</td>
			<td colspan="2" width="80" align="center"><textarea  name="texta" rows="3" cols="10"></textarea></td>
			</td>
			
		</tr>
		<tr>
		</td>
		</tr>
	</table>
	<form action="addRoomType.jsp" method="post" name="myForm">
	<input type="submit" name="ok" value="保存修改">	
   <input type="button" name="canel" value="取消" onclick="window.location.href='showRoom.jsp'">
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