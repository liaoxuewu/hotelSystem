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

<script language="javascript">
<!--


    function del(roomId)
    {
       var a=window.confirm("ȷ��Ҫɾ����");
       if(a==true)
       {
          window.location.reload("DeleteRoomServlet?roomId="+roomId);
       }else
       {
         window.location.reload("showRoom.jsp");
       }
    }

	function login(){
		if( document.myForm.uname.value =="" ){
			alert("�û�������Ϊ��");
			return false;
		}else if(document.myForm.upass.value == ""){
			alert("���벻��Ϊ��");
			return false;
		} else {
			return true;
		}
	}
-->
</script>

</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>

<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="5"><img src="images/top.jpg" width="780" height="213"></td>
  </tr>
  <tr>
    <td colspan="5"><img src="images/middle3.jpg" width="780" height="47"></td>
  </tr>
  <tr>
    <td width="38" background="images/middle2.jpg">&nbsp;</td>
    <td width="172" valign="top">
    
  <form action="" method="post" name="showForm" ><table align="center"> 
        <tr>
			<td colspan="2">����,��ã�
			<a href='Login.jsp'>ע��</td>
			</tr>
		<tr >
			<td colspan="2"><input type="button" name="showRoom" value="�鿴���з���" onclick="queryRoom()"></td>
		</tr>
		<tr>
	 <td colspan="2"><input type="button" name="showType" value="�鿴Ԥ������" onclick="queryReserveorder()"></td>
			</tr>
		<tr>
		  <td colspan="2"><input type="button" name="showType" value="�鿴��ס����" onclick="queryCheckinorder()"></td>
		  </tr>
		  <tr>
			<td colspan="2"><input type="button" name="showType" value="�鿴��ʷ����" onclick="queryHistoryorder()"></tr>
		<tr>
		  <td colspan="2"><input type="button" name="showType" value="�鿴����Ա��" onclick="queryStaff()"></td>
		</tr>
	
	<script type="text/javascript">
	function queryRoom(){
		showForm.action="managerQueryRoomAction";
		document.showForm.submit();
	}
	
	function queryReserveorder(){
		showForm.action="managerQueryReserveorderAction";
		document.showForm.submit();
	}
	
	function queryCheckinorder(){
		showForm.action="managerQueryCheckinorderAction";
		document.showForm.submit();
	}
	
	function queryHistoryorder(){
		showForm.action="managerQueryHistoryorderAction";
		document.showForm.submit();
	}
	
	function queryStaff(){
		showForm.action="managerQueryStaffAction";
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
			<td colspan="2" width="100" align="center">�����</td>
			<td colspan="2" width="100" align="center">��������</td>
			<td colspan="2" width="100" align="center">״̬</td>
			<td colspan="2" width="100" align="center">�۸�</td>
			<td colspan="2" width="100" align="center">λ��</td>
		</tr>
		<%
    	if(request.getAttribute("showRoom")!=null){
    	ArrayList<Room> rooms = (ArrayList<Room>)request.getAttribute("showRoom");
    	
    	for(int i=0;i<rooms.size();i++)
    	{
    		String str = "";
    		str += "<tr><td colspan=\"2' width=\"100\" align=\"center\"><a href='managerFindRoomAction?roomId="+rooms.get(i).getRoomId()+"'>"+rooms.get(i).getRoomId()+"</td>";
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
	<form action="ADDRoom.jsp" method="post" name="myForm" align="absbottom">
	<input type="submit" name="ok" value="��ӷ���" >

		
			
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