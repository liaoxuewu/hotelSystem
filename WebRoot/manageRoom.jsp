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
			<td colspan="2" align="center" ><font size=6 color="red"><%out.println(request.getParameter("roomId"));%>
		</tr>
		<br>
		<tr >
			<td align="right"><a href='managerQueryRoomAction' >返回</td>
		</tr>
	  </table>
	</form>
    </td>
    
    <td width="35" background="images/layout_24.gif">&nbsp;</td>
    <td width="495">
	<table align ="center">
		<tr>
			<td colspan="2" width="100" align="center">房间号</td>
			<td colspan="2" width="100" align="center">房间类型</td>
			<td colspan="2" width="100" align="center">状态</td>
			<td colspan="2" width="100" align="center">价格</td>
			<td colspan="2" width="100" align="center">位置</td>
		</tr>
		<%
    	if(request.getAttribute("handleRoom")!=null){
    	Room room = (Room)request.getAttribute("handleRoom");

    		String str = "";
    		str += "<tr><td colspan=\"2' width=\"100\" align=\"center\">"+room.getRoomId()+"</td>";
    		str += "<td colspan=\"2\" width=\"100\" align=\"center\">"+room.getType()+"</td>";
    		str += "<td colspan=\"2\" width=\"100\" align=\"center\">"+room.getStaus()+"</td>";
    		str += "<td colspan=\"2\" width=\"100\" align=\"center\">"+room.getPrice()+"</td>";
    		str += "<td colspan=\"2\" width=\"100\" align=\"center\">"+room.getLocation()+"</td></tr>";
    		out.println(str);
    	
    }	
  %>
		<tr>
		
		</tr>
		
	</table>
	<align="center">
	<form action="" method="post" name="handleForm" align="absbottom">
	<input type="button" name="ok" value="修改房间" align="right" onclick="modifyRoom()"></input>
	<input type="button" name="om" value="删除房间" align="right" onclick="deleteRoom()"></input>
	<script type="text/javascript">
	function deleteRoom(){
		/**/
		if(<%
		Room room = (Room)request.getAttribute("handleRoom");
		if(room.getStaus().equals("free")){
			out.print("true");
			
		}
		else
			out.print("false");
		%>){
			if(confirm("确定删除？")){
		<%
			out.print("handleForm.action=\"deleteRoomAction?roomId="+request.getParameter("roomId")+"\";");
		%>
			document.handleForm.submit();
			}
			else{}
		}
		else
			alert("此房非空闲房间,不能进行删除");
	}
	
	function modifyRoom(){
		/**/
		if(<%
		if(room.getStaus().equals("free")){
			out.print("true");
		}
		else
			out.print("false");
		%>){
		<%
			out.print("handleForm.action=\"findandModifyRoomAction?roomId="+request.getParameter("roomId")+"\";");
		%>
			document.handleForm.submit();
		}
		else
			alert("此房已有人入住,请选择其他房间进行入住");
	}
	
	

	
	</script>	
			
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