
<%@page import="com.portfolio.helper.factoryProvide"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    String code  = request.getParameter("code");
    
     if(code==null || !code.trim().equals("majidCode12345") ){
           response.sendRedirect("index.jsp");
    }
    
    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <%@include file="components/commonCSS.jsp" %>
        <%@include file="components/CSS-JS-admin-login-register.jsp" %>

        <title>Admin Login</title>
    </head>
    <body>
        
        <!--NAVBAR--> 
        <%@include file="components/navbar.jsp" %>


        <!--LOGIN & REGISTER PAGE START-->

        <div class="login-register">

            <!--message include--> 


            <%                 String m = (String) session.getAttribute("message");

                if (m != null && m.trim().equals("Registered Successfully")) {
            %>
            <%@include file="components/message.jsp" %>
            <%                 } else if (m != null && m.trim().equals("Logout Successfully")) {
                                   %>
                                    <%@include file="components/message.jsp" %>
                                   <%
            } else {
            %>
            <%@include file="components/error-message.jsp" %>
            <%                                }
            %>


            <!--mesaage include end-->

            <div class="container" id="container">


                <div class="form-container sign-up-container">
                    <form action="RegisterServlet"  method="post">
                        <h1>Create Account</h1>
                        <div class="social-container">
                            <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                            <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                        <span>or use your email for registration</span>
                        <input name="name" type="text" placeholder="Name" required/>
                        <input name="email" type="email" placeholder="Email" required/>
                        <input name="password" type="password" placeholder="Password" required/>
                        <button type="submit">Sign Up</button>
                    </form>
                </div>
                <div class="form-container sign-in-container">
                    <form action="LoginServlet">
                        <h1>Sign in</h1>
                        <div class="social-container">
                            <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                            <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                        <span>or use your account</span>
                        <input name="userEmail" type="email" placeholder="Email" required/>
                        <input name="userPassword" type="password" placeholder="Password" required/>
                        <a href="#">Forgot your password?</a>
                        <button type="submit">Sign In</button>
                    </form>
                </div>
                <div class="overlay-container">
                    <div class="overlay">
                        <div class="overlay-panel overlay-left">
                            <h1>Welcome Back!</h1>
                            <p>To keep connected with us please login with your personal info</p>
                            <button class="ghost" id="signIn">Sign In</button>
                        </div>
                        <div class="overlay-panel overlay-right">
                            <h1>Hello, Friend!</h1>
                            <p>Enter your personal details and start journey with us</p>
                            <button class="ghost" id="signUp">Sign Up</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!--LOGIN & REGISTER PAGE END-->

        <script>

            const signUpButton = document.getElementById('signUp');
            const signInButton = document.getElementById('signIn');
            const container = document.getElementById('container');

            signUpButton.addEventListener('click', () => {
                container.classList.add("right-panel-active");
            });

            signInButton.addEventListener('click', () => {
                container.classList.remove("right-panel-active");
            });

        </script>

    </body>
</html>
