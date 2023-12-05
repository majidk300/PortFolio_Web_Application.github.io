
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.portfolio.entities.UserRegister"%>

<%
    UserRegister user = (UserRegister) session.getAttribute("user-admin");

    if (user == null) {
        response.sendRedirect("admin-login.jsp");
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <%@include file="components/commonCSS.jsp" %>

        <title>myProjects</title>
    </head>
    <body>

        <!--NAVBAR--> 
        <%@include file="components/navbar.jsp" %>
        <!--....................................................................................................................................................................................-->
        <!--....................................................................................................................................................................................-->


        
        
        <%@include file="components/message.jsp"%>

        <div class="formUsersDetails">

            <div class="userDetails">
                <div class="title">Video Details</div>
                <form action="myYoutubeVideosServlet" method="post" enctype="multipart/form-data">
                    <div class="user__details">
                        <div class="input__box">
                            <span class="details">Video Title</span>
                            <input name="videoName" type="text" placeholder="Enter your project title name" required>
                        </div>

                        <div class="input__box">
                            <span class="details">Video Type</span>
                            <input name="videoType" type="text" placeholder="Enter project type" required>
                        </div>
                        
                        <div class="input__box">
                            <span class="details">Video Link</span>
                            <input name="videoLink" type="text" placeholder="Enter project link" required>
                        </div>

                        <div class="input__box">
                            <span class="details">Video thumbnail</span>
                            <input name="projectthumbnail" type="file" placeholder="Upload profile picture" required>
                        </div>

                    </div>

                    <div class="button">
                        <input type="submit" value="Upload Video">
                    </div>
                </form>
            </div>


        </div>

    <style>
        

        /* all */

        :root {
            --main-blue: #71b7e6;
            --main-purple: #9b59b6;
            --main-grey: #ccc;
            --sub-grey: #d9d9d9;
        }

        .formUsersDetails {
            display: flex;
            max-width: 768px;
            height:auto;
            justify-content: center; /*center vertically */
            align-items: center; /* center horizontally */
            padding: 10px;
            margin: auto;
        }
        /* container and form */
        .userDetails {
            max-width: 768px;
            width: 100%;
            height:auto;
            background: 0f0f0f;
            padding: 25px 30px;
            border-radius: 5px;
            box-shadow: rgba(1, 1, 1, 1) 1px 5px 15px;
            color:white;
        }
        .userDetails .title {
            font-size: 25px;
            font-weight: 500;
            position: relative;
        }

        .userDetails .title::before {
            content: "";
            position: absolute;
            height: 3.5px;
            width: 30px;
            background: linear-gradient(135deg, #ff006e, #ff006e);
            left: 0;
            bottom: 0;
        }

        .userDetails form .user__details {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 20px 0 12px 0;
        }
        /* inside the form user details */
        form .user__details .input__box {
            width: calc(100% / 2 - 20px);
            margin-bottom: 15px;
        }

        .user__details .input__box .details {
            font-weight: 500;
            margin-bottom: 5px;
            display: block;
        }
        .user__details .input__box input {
            height: 45px;
            width: 100%;
            outline: none;
            border-radius: 5px;
            border: 1px solid var(--main-grey);
            padding-left: 15px;
            font-size: 16px;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        }

        .user__details .input__box input:focus, .textarea:focus,
        .user__details .input__box input:valid, .textarea:focus{
            border-color:#ff006e;
        }

        /* inside the form gender details */

        form .gender__details .gender__title {
            font-size: 20px;
            font-weight: 500;
        }

        form .gender__details .category {
            display: flex;
            width: 80%;
            margin: 15px 0;
            justify-content: space-between;
        }

        .gender__details .category label {
            display: flex;
            align-items: center;
        }

        #dot-1:checked ~ .category .one,
        #dot-2:checked ~ .category .two,
        #dot-3:checked ~ .category .three {
            border-color: var(--sub-grey);
            background: var(--main-purple);
        }



        /* submit button */
        form .button {
            height: 45px;
            margin: 25px 0 10px 0;
        }

        form .button input {
            height: 100%;
            width: 100%;
            outline: none;
            color: #fff;
            border: none;
            font-size: 18px;
            font-weight: 500;
            border-radius: 5px;
            background:#0f0f0f;
            transition: all 0.3s ease;
            box-shadow: rgba(0, 0, 0, 0.4) 1px 2px 5px;
        }

        form .button input:hover {
            background: #ff006e;
        }

        @media only screen and (max-width: 584px) {
            .userDetails {
                max-width: 100%;
            }

            form .user__details .input__box {
                margin-bottom: 15px;
                width: 100%;
            }

            form .gender__details .category {
                width: 100%;
            }


            .user__details::-webkit-scrollbar {
                width: 0;
            }
        }
        
        </style>
        
        </body>
</html>
