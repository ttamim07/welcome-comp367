<html>
<head>
    <title>Greeting</title>
</head>
<body>
<%
    java.util.Calendar calendar = java.util.Calendar.getInstance();
    int hour = calendar.get(java.util.Calendar.HOUR_OF_DAY);
    String greeting = (hour < 12) ? "Good morning" : "Good afternoon";
%>
<h1><%= greeting %>, Tahmim Ahmed Tamim, Welcome to COMP367</h1>
</body>
</html>
