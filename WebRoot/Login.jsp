<%@ page contentType="text/html; charset=GBK"  pageEncoding="GBK"%>
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
	function login(){
		if( document.myForm.uname.value =="" && document.myForm.upass.value == ""){
			alert("�û������벻��Ϊ��");
			return false;
		}
		 else if( document.myForm.uname.value =="123" && document.myForm.upass.value =="123" && document.myForm.person.value=="����")
			   { document.location.href="showRoom.jsp";
			  return false;}
else if( document.myForm.uname.value =="123" && document.myForm.upass.value =="123" && document.myForm.person.value=="ǰ̨�ͷ�")
			  { document.location.href="Room.jsp";
			  return false;}
		    else{alert("�˺��������");
			return true;}
			}
-->
</script>

</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>

<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="5">
  <EMBED 
            style="WIDTH:780;HEIGHT:213" align=center 
            src=1.swf type=application/octet-stream 
            wmode="transparent" quality="high"> </EMBED>
  </td></tr>
  <tr>
    <td colspan="5"><img src="images/middle1.jpg" width="780" height="47"></td>
  </tr>
  <tr>
    <td width="38" background="images/middle2.jpg">&nbsp;</td>
    <td width="172" valign="top">
    <%
           if (session.getAttribute("login") != null) {
    %>

	 <form action="loginAction" method="post" name="myForm" onsubmit="return login()">
        <table align="center"> 
		<tr>
			<td colspan="2">�û�����</td>
		</tr>
		<tr>
		  <td colspan="2"><input type="text" name="userName" size=10" class="editbox"></td>
		</tr>
		<tr>
			<td colspan="2">��&nbsp;&nbsp;�룺</td>
			</tr>
		<tr>
		  <td colspan="2"><input type="password" name="userPassword" size=10"  class='editbox'></td>
		  </tr>
		  <tr>
		   <td colspan="2"><select name="position">
		     <option value="Receptionist">ǰ̨�ͷ�</option>
		     <option value="Manager" selected="selected">����</option>
		  </select>
		  </td>
		  </tr>
		<tr>
			<td>
				<input type="hidden" name="sign" value="login"/>
				<input type="submit" value="��¼" class='btn'>
				<input type="reset" value="����" class='btn'>
			</td>
		</tr>
		<tr>
		  
	</tr>
	  </table>
	  </form>

	
<%
} else {
%>
	 <form action="loginAction" method="post" name="myForm" onsubmit="return login()">
        <table align="center"> 
		<tr>
			<td colspan="2">�û�����</td>
		</tr>
		<tr>
		  <td colspan="2"><input type="text" name="userName" size=10" class="editbox"></td>
		</tr>
		<tr>
			<td colspan="2">��&nbsp;&nbsp;�룺</td>
			</tr>
		<tr>
		  <td colspan="2"><input type="password" name="userPassword" size=10"  class='editbox'></td>
		  </tr>
		  <tr>
		   <td colspan="2"><select name="position">
		     <option value="Receptionist">ǰ̨�ͷ�</option>
		     <option value="Manager" selected="selected">����</option>
		  </select>
		  </td>
		  </tr>
		<tr>
			<td>
				<input type="hidden" name="sign" value="login"/>
				<input type="submit" value="��¼" class='btn'>
				<input type="reset" value="����" class='btn'>
			</td>
		</tr>
		<tr>
		  
	</tr>
	  </table>
	  </form>
<%
}
%>
	
    
    </td>
    <td width="35" background="images/layout_24.gif">&nbsp;</td>
    <td width="495">
	<table align="center">
		
		<tr>
			<td colspan="2" align="center"><h2>����</h2><br></td>
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