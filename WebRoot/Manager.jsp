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
			<td colspan="2" width="200" align="center"><h3>��ӭʹ�þƵ����ϵͳ��</h3></td>

			
		</tr>
		<tr>
		
		</tr>
	</table>

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