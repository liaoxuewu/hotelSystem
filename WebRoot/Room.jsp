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
  
  <form action="" method="post" name="showForm" ><table align="center"> 
        <tr>
			<td colspan="2">员工,你好！
			<a href='Login.jsp'>注销</td>
			</tr>
		<tr >
			<td colspan="2"><input type="button" name="showType" value="  所有房间  " onclick="showAll()"></td>
		</tr>
		<tr>
	 <td colspan="2"><input type="button" name="showType" value="已预订房间" onclick="showReserve()"></td>
			</tr>
		<tr>
		  <td colspan="2"><input type="button" name="showType" value="已入住房间" onclick="showCheckin()"></td>
		  </tr>
		  <tr>
			<td colspan="2"><input type="button" name="showType" value="   空房间   " onclick="showFree()"></tr>
	<script type="text/javascript">
	function showAll(){
		showForm.action="showAllRoomAction";
		document.showForm.submit();
	}
	
	function showReserve(){
		showForm.action="showReserveRoomAction";
		document.showForm.submit();
	}
	
	function showCheckin(){
		showForm.action="showCheckinRoomAction";
		document.showForm.submit();
	}
	
	function showFree(){
		showForm.action="showFreeRoomAction";
		document.showForm.submit();
	}
	</script>
		
		
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
    	if(request.getAttribute("showRoom")!=null){
    	ArrayList<Room> rooms = (ArrayList<Room>)request.getAttribute("showRoom");
    	
    	for(int i=0;i<rooms.size();i++)
    	{
    		String str = "";
    		str += "<tr><td colspan=\"2' width=\"100\" align=\"center\"><a href='findRoomAction?roomId="+rooms.get(i).getRoomId()+"'>"+rooms.get(i).getRoomId()+"</td>";
    		str += "<td colspan=\"2\" width=\"100\" align=\"center\">"+rooms.get(i).getType()+"</td>";
    		str += "<td colspan=\"2\" width=\"100\" align=\"center\">"+rooms.get(i).getStaus()+"</td>";
    		str += "<td colspan=\"2\" width=\"100\" align=\"center\">"+rooms.get(i).getPrice()+"</td>";
    		str += "<td colspan=\"2\" width=\"100\" align=\"center\">"+rooms.get(i).getLocation()+"</td></tr>";
    		out.println(str);
    	} 
    }	
  %>
		<tr>
		
		</tr>
		
	</table>
	<align="center">

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