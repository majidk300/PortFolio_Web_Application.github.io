<%@page import="com.portfolio.entities.ResumePicEntities"%>
<%@page import="com.portfolio.dao.myResumeDao"%>
<%@page import="com.portfolio.entities.myResume"%>
<%@page import="com.portfolio.entities.myYoutubeVideos"%>
<%@page import="com.portfolio.dao.myYoutubeVideoDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.portfolio.helper.factoryProvide"%>
<%@page import="com.portfolio.entities.Details"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
//    Fetch Projects
    myProjectDao mProjectsD = new myProjectDao(factoryProvide.getFactory());
    List<myProjects> projectList = mProjectsD.getallProjects();
    
//   Fetch youtube videos 
     myYoutubeVideoDao YTDao = new myYoutubeVideoDao(factoryProvide.getFactory());
     List<myYoutubeVideos> YTdao = YTDao.getAllVideos();
     
//    Fetch Resume
      myResumeDao resumeDao = new myResumeDao(factoryProvide.getFactory());
      myResume mResume = resumeDao.getResume();
      
//     Fetch  Resume Pic
       ResumePicEntities resumePic = resumeDao.getResumPic();
     
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>home page</title>

        <%@include file="components/commonCSS.jsp" %>

    </head>
    <body>

        <!--NAVBAR--> 
        <%@include file="components/navbar.jsp" %>
        <%@include file="components/message.jsp" %>

        <!--....................................................................................................................................................................................-->
        <!--....................................................................................................................................................................................-->

    <!--welcome to my profile start-->
    <div class="main">
        <div class="sub-main" >

            <!--left aprt start-->
            <div class="profile-welcome">

                <!--welcome-->
                <div class="welcome"><p>welcome to my profile page</p></div>

                <!--intro-->
                <div class="intro">
                    <h1>Hi, I'm <span class="common-color"><%=(UserDetails != null) ? UserDetails.getName() : " Your Name"%></span></h1>
                    <h2>a <%=(UserDetails != null) ? UserDetails.getProfession() : " Web Developer "%>.|</h2>
                </div>

                <!--about--> 
                <div class="about">
                    <p><%=(UserDetails != null) ? UserDetails.getBio() : " about yourself"%></p>
                </div>

                <!--find with me and best skill start-->
                <div class="find-skill">
                    <!--find with me start--> 
                    <div class="find">
                        <p>FIND WITH ME</p>
                        <div class="social-icon">
                            <a href="<%=(UserDetails != null) ? UserDetails.getFacebook() : " "%>" target="blank"><i class="fa-brands fa-facebook-f" ></i></a>
                            <a href="<%=(UserDetails != null) ? UserDetails.getInstagram() : " "%>" target="bank"><i class="fa-brands fa-instagram" ></i></a>
                            <a href="<%=(UserDetails != null) ? UserDetails.getLinkdin() : " "%>" target="blanlk"><i class="fa-brands fa-linkedin-in" ></i></a>
                        </div>
                    </div>
                    <!--find with me end--> 

                    <!--best skill start-->
                    <div class="skill">
                        <p>BEST SKILL ON</p>

                        <div class="social-icon">
                            <a><i class="fa-brands fa-html5" style="color:#fb5607;" ></i></a>
                            <a><i class="fa-brands fa-css3-alt" style="color:#4361ee;"></i></a>
                            <a><i class="fa-brands fa-bootstrap" style="color:#7209b7;"></i></a>
                            <a><i class="fa-brands fa-java" style="color:#ae2012;"></i></a>
                        </div>
                    </div>
                    <!--best skill end-->
                </div>
                <!--find with me and best skill end-->

            </div>
            <!--left aprt end-->

            <!--right part start-->
            <div class="profile-pic">

                <div class="pic">
                    <img src="components/img/<%=(UserDetails != null) ? UserDetails.getPhoto() : "profile-icon-png.png"%>">
                </div>
            </div>
            <!--right part end-->

        </div>   
    </div>
    <!--welcome to my profile end-->

    <!--....................................................................................................................................................................................-->
    <!--....................................................................................................................................................................................-->
    <!--....................................................................................................................................................................................-->
    <!--....................................................................................................................................................................................-->

    <!--features start-->
    <div class="container" id="features">
        <div class="sub-container">

            <p class="common-color">FEATURES</p>
            <h1>WHAT I DO</h1>

            <div class="features">

                <div class="div-">
                    <i class="fa-solid fa-bars common-color"></i>
                    <h3>Business Stratagy</h3>
                    <span>Develop a focused business strategy with a clear mission, 
                        SMART goals, market analysis, and competitive differentiation. 
                        Allocate resources wisely, manage risks, and establish KPIs for 
                        continuous monitoring. Communicate and adapt the strategy to
                        ensure long-term success in a dynamic business environment.
                    </span>
                </div>

                <div class="div-">
                    <i class="fa-solid fa-book-open common-color"></i>
                    <h3>App Development</h3>
                    <span>Develop a successful app by ideating, 
                        researching, and targeting the right audience. 
                        Prioritize intuitive design, efficient development, 
                        and rigorous testing. Plan a strategic launch, 
                        implement effective marketing, gather user feedback for
                        continuous improvement, and ensure robust security measures.</span>
                </div>

                <div class="div-">
                    <i class="fa-brands fa-dev common-color"></i>
                    <h3>Web Development</h3>
                    <span>Create a successful website with strategic planning. 
                        Define goals, understand the target audience, choose reliable
                        technologies, and prioritize user experience. Develop, test rigorously, 
                        and implement effective design. Regularly update content, optimize for 
                        performance, and ensure strong security measures for a seamless online presence.</span>
                </div>

                <div class="div- setthreeSize">
                    <i class="fa-solid fa-mobile-screen-button common-color"></i>
                    <h3>Mobile App</h3>
                    <span>Develop a standout mobile app by ideating a unique concept, 
                        researching market demand, and defining the target audience. Design 
                        a user-friendly interface, utilize reliable development tools, conduct thorough 
                        testing, and implement effective marketing. Continuously gather user feedback
                        for improvements, and prioritize security measures for user trust.</span>
                </div>

                <div class="div- setthreeSize">
                    <i class="fa-solid fa-chart-simple common-color"></i>
                    <h3>Marketing</h3>
                    <span>Drive business growth through strategic marketing. 
                        Define target audiences, craft compelling messages, and
                        choose effective channels. Utilize digital platforms, analyze 
                        data for insights, and adapt campaigns accordingly. Foster customer
                        engagement, build brand loyalty, and measure performance to refine strategies 
                        for lasting success.span>
                </div>

                <div class="div- setthreeSize">
                    <i class="fa-solid fa-person-dress-burst common-color"></i>
                    <h3>Personal Portfolio</h3>
                    <span>Create a compelling personal portfolio to showcase
                        your skills and achievements. Include a professional bio, work 
                        samples, and testimonials. Ensure a clean, user-friendly design
                        that reflects your brand and expertise. Regularly update content to 
                        demonstrate ongoing growth and relevance.</span>
                </div>

            </div>

        </div>

    </div>

    <!--features end-->

    <!--....................................................................................................................................................................................-->
    <!--....................................................................................................................................................................................-->
    <!--....................................................................................................................................................................................-->
    <!--....................................................................................................................................................................................-->

    <!--MY PROJECTS START-->
    <div class="container">
        <div class="sub-container">

            <p class="common-color" style="text-align:center;">Visit my projects and keep your suggestion</p>
            <h1 style="text-align:center; font-size:40px;">My Projects</h1>

            <div class="features">


                <%
                    for (myProjects projects : projectList) {
                %>
                <!--project image-->
                <a href="<%=projects.getProjectLink()%>" target="blank">
                   <div class="pDiv">
                        <div class="img">
                            <img src="components/img/myProjectsIMG<%=projects.getPic()%>">
                        </div>
                        <span class="common-color"><%=projects.getTopic()%></span>
                        <h2><%=projects.getTitle()%></h2>
                    </div>
            </a>
                <%
                    }
                %>

            </div>

        </div>

    </div>
    <!--MY PROJECTS END-->
    <!--.......................................................................................................................................................................-->
    <!--.......................................................................................................................................................................-->
    <!--.......................................................................................................................................................................-->
    <!--.......................................................................................................................................................................-->

    <!--MY RESUME START-->

    <div class="container">
        <div class="sub-container">

            <p class="common-color" style="text-align:center;">2+ years experience</p>
            <h1 style="text-align:center; font-size:40px;">My Resume</h1>

            <div class="features resume-features">

                <div class="Education">
                    <h2>RESUME</h2>

                    <div class="pDiv">
                        
                        <div class="resumeBio">
                            <!--download resume pic icon-->
                            <a class="resumeDowload" href="components/img<%=resumePic.getResumePic()%>" download>
                                <i class="fa fa-download" aria-hidden="true">
                                    
                                </i>
</a>
                            <img src="components/img<%=resumePic.getResumePic()%>">
                        </div>
                        
                    </div>

                </div>

                <div class="skills">
                    <h2>SKILLS</h2>

                    <div class="pDiv">

                        <div class="resume-skill">
                            <h4 class="common-color">SKILLS I HAVE</h4>
                            <br>
                            <li><span style="color:#ffffff; font-size: 16px; font-weight:bold; margin-left: 5px;"> Programming Languages :</span>  <%=mResume.getProgrammingLanguage()%></li>
                            <br>
                            <li><span style="color:#ffffff; font-size: 16px; font-weight:bold; margin-left: 5px;">  Web Technologies :</span>  <%=mResume.getWebTechnology()%></li>
                            <br>
                            <li><span style="color:#ffffff; font-size: 16px; font-weight:bold; margin-left: 5px;"> Database :</span>  <%=mResume.getDatabase()%></li>
                            <br>
                            <li><span style="color:#ffffff; font-size: 16px; font-weight:bold; margin-left: 5px;"> Frameworks :</span> <%=mResume.getFrameWorks()%></li>
                            <br>
                            <li><span style="color:#ffffff; font-size: 16px; font-weight:bold; margin-left: 5px;"> Development Tools :</span> <%=mResume.getDevelopmetTools()%></li>
                            <br>
                            <li><span style="color:#ffffff; font-size: 16px; font-weight:bold; margin-left: 5px;"> Other Skills :</span> <%=mResume.getOtherSkills()%></li>
                           
                        </div>

                    </div>


                </div>

            </div>

        </div>
    </div>
    <!--MY RESUME END-->

    <!--.......................................................................................................................................................................-->
    <!--.......................................................................................................................................................................-->
    <!--.......................................................................................................................................................................-->
    <!--.......................................................................................................................................................................-->

    <!--MY VIDEOS START-->
    <div class="container">
        <div class="sub-container">

            <p class="common-color" style="text-align:center;">Visit my channel and and do subscibe</p>
            <h1 style="text-align:center; font-size:40px;">My Youtube Videos</h1>

            <div class="features">

                <%
                    for(myYoutubeVideos v:YTdao)
                    {
                    %>
                    <a href="<%=v.getVideoLink()%>" target="blank">
                <div class="pDiv">
                    <!--project image-->
                    <div class="img">
                        <img src="components/img/videosPics<%=v.getVideoPic()%>"/>
                    </div>
                    <span class="common-color"><%=v.getVideoTopic()%></span>
                    <h2><%=v.getVideoTitle()%></h2>
                </div>
                    </a>
                    <%
                        }
                    %>
            </div>

        </div>

    </div>
    <!--MY VIDEOS END-->
    <!--.......................................................................................................................................................................-->
    <!--.......................................................................................................................................................................-->
    <!--.......................................................................................................................................................................-->
    <!--.......................................................................................................................................................................-->

    <!--CONTACT WITH ME START-->

    <div class="container">
        <div class="sub-container">

            <p class="common-color" style="text-align:center;">contact</p>
            <h1 style="text-align:center; font-size:38px; margin-bottom:20px;">Contact With Me</h1>

            <div class="contact-with-me">

                <div class="contact-address">
                    <div class="img">
                        <img src="components/img/contact.png">
                    </div>

                    <h2><%=(UserDetails != null) ? UserDetails.getName() : " Your name"%></h2>

                    <p><%=(UserDetails != null) ? UserDetails.getProfession() : " Web Developemt"%></p>

                    <p>I am available for freelance work. Connect with me via and call into my account.</p>

                    <p>Phone : <span>+91 <%=(UserDetails != null) ? UserDetails.getPhone() : " "%></span></p>
                    <p>Email : <span style="text-transform: lowercase"><%=(UserDetails != null) ? UserDetails.getEmail() : " demo123@gmail.com"%></span></p>

                    <div class="icons">
                        <div class="find">
                            <p>FIND WITH ME</p>
                            <div class="social-icon">
                                <a href="<%=(UserDetails != null) ? UserDetails.getFacebook() : " "%>"><i class="fa-brands fa-facebook-f" ></i></a>
                                <a href="<%=(UserDetails != null) ? UserDetails.getInstagram() : " "%>"><i class="fa-brands fa-instagram" ></i></a>
                                <a href="<%=(UserDetails != null) ? UserDetails.getLinkdin() : " "%>"><i class="fa-brands fa-linkedin-in" ></i></a>
                            </div>
                        </div>
                    </div>

                </div>


                <div class="contact-message">

                    <form action="GmailServlet" method="post">
                        <!--name and phone start-->
                        <div class="name-phone-number">
                            <div class="name-phone">
                                <div class="name">
                                    <p>YOUR NAME</p>
                                    <input name="name" type="text" class="my-name" size="50"/>
                                </div>
                                <div class="phone name">
                                    <p>PHONE NUMBER</p>
                                    <input name="phone" type="text" class="my-name" size="50"/>
                                </div>


                            </div>

                            <div class="phone name">
                                <p class="head">EMAIL</p>
                                <input name="email" type="email" class="my-name" size="100"/>
                            </div>

                            <div class="phone name">
                                <p class="head">SUBJECT</p>
                                <input name="subject" type="text" class="my-name" size="100" required/>
                            </div>

                            <div class="phone name">
                                <p class="head">YOUR MESSAGE</p>
                                <textarea name="msg" class="my-name" size="100" style="height:200px;" required></textarea>
                            </div>

                        </div>
                       
                        <!--name and phone end-->
                        <button type="submit" class="btn common-color">SEND MESSAGE</button>

                    </form>
                </div>

            </div>
        </div>
    </div>

    <!--CONTACT WITH ME END-->
    <!--.......................................................................................................................................................................-->
    <!--.......................................................................................................................................................................-->
    <!--.......................................................................................................................................................................-->
    <!--.......................................................................................................................................................................-->

    <!--FOOTER START-->
    <footer class="footer">
        <p>
            Created with <i class="fa fa-heart"></i> by
            <a><%=(UserDetails != null) ? UserDetails.getName() : " your name"%></a>
            - © 2023.All rights reserved by <%=(UserDetails != null) ? UserDetails.getName() : " Your name"%>
        </p>
    </footer>
    <!--FOOTER END-->


    <h1>

    </h1>

</body>
</html>
