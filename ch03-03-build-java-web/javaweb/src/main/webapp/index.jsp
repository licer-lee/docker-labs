<%@page import="java.net.InetAddress"%>
<html>
<body>
<%

	String name = "";
	String ip = InetAddress.getLocalHost().getHostAddress();
        if (System.getenv("COMPUTERNAME") != null) {  
        	name = System.getenv("COMPUTERNAME");  
        } else {
       		name = (InetAddress.getLocalHost()).getHostName();  
        }  
%>
<h2>hostname:-<%=name + System.currentTimeMillis() %></h2>
<h3>ip:<%=ip %></h3>
</body>
</html>
