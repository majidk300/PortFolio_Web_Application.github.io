<%@page import="com.portfolio.dao.userDetailDao"%>
<%@page import="java.util.List"%>
<%@page import="com.portfolio.entities.myProjects"%>
<%@page import="com.portfolio.helper.factoryProvide"%>
<%@page import="com.portfolio.dao.myProjectDao"%>
<%@page import="com.portfolio.entities.Details"%>
<%@page import="com.portfolio.entities.UserRegister"%>
<<script src="components/js/navabar-js-res.js"></script>
<%

    UserRegister user1 = (UserRegister) session.getAttribute("user-admin");
     
//    Fetch User Details
     userDetailDao uDetails = new  userDetailDao(factoryProvide.getFactory());
     Details UserDetails = uDetails.getUserDetails();
     
%>

<!--navbar start-->
<div class="navbar">

    <!--title-->
    <div class="title">
        <a href="#"><%=(UserDetails!=null)?UserDetails.getName():"Title"%></a>
    </div>

    <div class="home-features">

        <ul>
            <li><a href="index.jsp"class="common-colorhover">home</a></li>
                <%                        if (user1 == null) {
                %>
            <li><a href="#features" class="common-colorhover" >featues</a></li>
            <li><a href="#">Projects</a></li>
            <li><a href="#">resume</a></li>
            <li><a href="#">Tutorials</a></li>
            <li><a href="#">Contact</a></li>
            
           
            <!--contact-->
            <div class="contact"><a href="checkUserVarification.jsp" class="common-color">Login</a></div>
            <%
            } else {
            %>
            <li><a href="#" class="common-colorhover">featues</a></li>
            <li><a href="myProjects.jsp">Projects</a></li>
            <li><a href="resumePic.jsp">resume Photo</a></li>
            <li><a href="myResume.jsp">resume</a></li>
            <li><a href="myYoutubeVideos.jsp">Tutorials</a></li>
            <li><a href="admin-page.jsp"><%=user1.getName()%></a></li>
            
            <div class="contact"><a href="Logout" class="common-color">Logout</a></div>
            
            
            <%
                }
            %>
        </ul>
   

    </div>

        <i  class="fa fa-bars bars-icon-res" onclick="toggleMenu()"></i>
       
</div>
        
<!--navbar end-->
