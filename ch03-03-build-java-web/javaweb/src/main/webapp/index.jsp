<%@page import="java.net.InetAddress"%>
<html>
<body>
<%

	String name = "";

        if (System.getenv("COMPUTERNAME") != null) {  
        	name = System.getenv("COMPUTERNAME");  
        } else {
       		name = (InetAddress.getLocalHost()).getHostName();  
        }  
%>
<h2>Hello World!-<%=name + System.currentTimeMillis() %></h2>
</body>
</html>
