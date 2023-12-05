<%

    String message = (String) session.getAttribute("error-message");
    if (message != null) {
%>

<div class="message" style="text-align:center;width: 768px;  max-width: 100%; height: auto; padding: 20px 0 20px 0; background:#0f0f0f; border-radius:10px 10px 0 0;box-shadow: rgba(1, 1, 1, 1) 1px 5px 15px;">
    <h3 style="color:red;"><%=message%></h3>
</div>

<%
        session.removeAttribute("error-message");
    }
%>