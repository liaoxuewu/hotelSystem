<%@ page contentType="text/html; charset=GBK" import ="java.util.*,com.hotel.dao.*, com.hotel.entity.*" pageEncoding="GBK"%>
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
    <td width="172" valign="top"><div align="center"> 
     
  </div>	
  
  <form action="" method="post" name="showForm" >
  <table align="center"> 
        <tr>
			<td colspan="2">��ǰ���������Ϊ:
		</tr>
		<br>
		<tr>
			<td colspan="2" align="center" ><font size=6 color="red"><%out.println(request.getParameter("roomId"));%>
		</tr>
		<br>
		<tr >
			<td align="right"><a href='managerQueryRoomAction' >����</td>
		</tr>
	  </table>
	</form>
    </td>
    
    <td width="35" background="images/layout_24.gif">&nbsp;</td>
    <td width="495">
	<table align ="center">
		<tr>
			<td colspan="2" width="100" align="center">�����</td>
			<td colspan="2" width="100" align="center">��������</td>
			<td colspan="2" width="100" align="center">״̬</td>
			<td colspan="2" width="100" align="center">�۸�</td>
			<td colspan="2" width="100" align="center">λ��</td>
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
	<input type="button" name="ok" value="�޸ķ���" align="right" onclick="modifyRoom()"></input>
	<input type="button" name="om" value="ɾ������" align="right" onclick="deleteRoom()"></input>
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
			if(confirm("ȷ��ɾ����")){
		<%
			out.print("handleForm.action=\"deleteRoomAction?roomId="+request.getParameter("roomId")+"\";");
		%>
			document.handleForm.submit();
			}
			else{}
		}
		else
			alert("�˷��ǿ��з���,���ܽ���ɾ��");
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
			alert("�˷���������ס,��ѡ���������������ס");
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
<P align="center">���ѧԺ</P>
<br/>

</BODY>
</HTML>