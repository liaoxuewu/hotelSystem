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

<script language="javascript">
<!--


    function del(roomId)
    {
       var a=window.confirm("确定要删除吗？");
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
			alert("用户名不能为空");
			return false;
		}else if(document.myForm.upass.value == ""){
			alert("密码不能为空");
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
			<td colspan="2">经理,你好！
			<a href='Login.jsp'>注销</td>
			</tr>
		<tr >
			<td colspan="2"><input type="button" name="showRoom" value="查看所有房间" onclick="queryRoom()"></td>
		</tr>
		<tr>
	 <td colspan="2"><input type="button" name="showType" value="查看预定订单" onclick="queryReserveorder()"></td>
			</tr>
		<tr>
		  <td colspan="2"><input type="button" name="showType" value="查看入住订单" onclick="queryCheckinorder()"></td>
		  </tr>
		  <tr>
			<td colspan="2"><input type="button" name="showType" value="查看历史订单" onclick="queryHistoryorder()"></tr>
		<tr>
		  <td colspan="2"><input type="button" name="showType" value="查看所有员工" onclick="queryStaff()"></td>
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
			<td colspan="2" width="100" align="center">订单号</td>
			<td colspan="2" width="100" align="center">顾客姓名</td>
			<td colspan="2" width="100" align="center">顾客电话</td>
			<td colspan="2" width="100" align="center">房间号</td>
			<td colspan="2" width="100" align="center">入住时间</td>
			<td colspan="2" width="100" align="center">入住天数</td>
			
		</tr>
		<%
    	if(request.getAttribute("checkinorder")!=null){
    	ArrayList<CheckinOrder> orders = (ArrayList<CheckinOrder>)request.getAttribute("checkinorder");
    	
    	for(int i=0;i<orders.size();i++)
    	{
    		String str = "";
    		str += "<tr><td colspan=\"2' width=\"100\" align=\"center\">"+(i+1)+"</td>";
    		str += "<td colspan=\"2\" width=\"100\" align=\"center\">"+orders.get(i).getCustomerName()+"</td>";
    		str += "<td colspan=\"2\" width=\"100\" align=\"center\">"+orders.get(i).getCustomerPhoneNumber()+"</td>";
    		str += "<td colspan=\"2\" width=\"100\" align=\"center\">"+orders.get(i).getRoomId()+"</td>";
    		str += "<td colspan=\"2\" width=\"100\" align=\"center\">"+orders.get(i).getDate()+"</td>";
    		str += "<td colspan=\"2\" width=\"100\" align=\"center\">"+orders.get(i).getDays()+"</td></tr>";
    		out.println(str);
    	} 
    }
    else
    	out.print("无相应入住记录");	
  %>
	</table>
	
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