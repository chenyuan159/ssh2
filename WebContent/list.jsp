<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>       
    <title>List</title>    
    
    <script type="text/javascript">
    function del(){
    
    	if(confirm("你真的想删除该记录吗？")){
    		return true;
    	}
    	return false;
    	
    }
    	
    </script>
    
  </head>
  
  <body>
  <center>
  	<h1><font color="red">User List</font></h1>
  </center>
  	<table border="1" width="80%" align="center">
  		<tr>
  			<td>序号
  			</td>
  			
  			<td>姓
  			</td>
  			
  			<td>名
  			</td>
  			
  			<td>年龄
  			</td>
  		
  			<td>删除
  			</td>
  			
  			<td>更新
  			</td>
  		</tr>
  		
  		<s:iterator value="#request.list" id="us">
  		<tr>
  			<td><s:property value="#us.id"/>
  			</td>
  		
  			<td><s:property value="#us.firstname"/>
  			</td>
  		
  			<td><s:property value="#us.lastname"/>
  			</td>
  		
  			<td><s:property value="#us.age"/>
  			</td>
  		
  			<td><s:a href="deleteUser.action?user.id=%{#us.id}" onclick="return del();">delete</s:a>
  			</td>
  			
  			<td><s:a href="updatePUser.action?user.id=%{#us.id}">update</s:a>
  			</td>
  		</tr>
  		</s:iterator>
  	</table>
  	  		
  	<s:a href="index.jsp">HomePage</s:a><br><br>
  	<s:a href="generateExcel.action">生成excel</s:a>
  </body>
</html>
