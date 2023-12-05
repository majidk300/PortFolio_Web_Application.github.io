
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>usercodeVarifiaction</title>

        <%@include file="components/commonCSS.jsp" %>
    </head>
    <body>
        <!--NAVBAR--> 
        <%@include file="components/navbar.jsp" %>
        <%@include file="components/message.jsp" %>

        <!--....................................................................................................................................................................................-->
        <!--....................................................................................................................................................................................-->


        <form action="admin-login.jsp" method="post">
            <fieldset>
                <div>

                    <!-- Email Confirmation -->
                    <li>
                        <div>
                            <input id="email2" maxlength="250" name="code" placeholder="Enter code" required="" type="text" value="">
                        </div>
                    </li>
                    <!-- Submit Button -->
                </div>
                <input id="submit_button" name="submit" type="submit" value="Submit">
            </fieldset>
        </form>



        <style>
            form {
                position:absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                width: 100%;
            }
            fieldset{
                border:solid 0px;
            }
            fieldset li {
                text-align: left;
                margin: 0 10px 5px 0;
            }
            .checkbox-lab{
                padding-top:2px;
            }
            input[type="checkbox"]{
                cursor: pointer;
                float: left;
                margin-right: 6px;
            }
            input[type="text"],
            input[type="email"]{
                border: 1px solid #888;
                padding: 7px 5px;
                margin: 2px 0;
                font-size: 13px;
                transition: background-color 0.2s;
                -moz-transition: background-color 0.2s;
                /* Firefox 4 */
                -webkit-transition: background-color 0.2s;
                /* Safari and Chrome */
                -o-transition: background-color 0.2s;
                /* Opera */
                border-radius: 2px;
                -moz-border-radius: 2px;
                -webkit-border-radius: 2px;
                -moz-box-sizing: border-box !important;
                -webkit-box-sizing: border-box !important;
                box-sizing: border-box !important;
            }
            .form-field{
                padding-left: 40px;
                padding-right: 40px;
            }
            li {
                list-style-type: none;
            }
            li input[type="text"],
            li input[type="email"] {
                background-color: #ffffff;
                border-color: #cccccc;
                border-radius: 1px;
                border-width: 2px;
                border-style: solid;
                color: #243544;
                font-family: Arial, Helvetica, sans-serif;
                font-weight: normal;
                letter-spacing: 0em;
                line-height: 1;
                text-align: center;
                padding-bottom: 5px !important;
                padding-left: 0px !important;
                padding-right: 0px !important;
                padding-top: 5px !important;
                margin-top:5px;
                margin-bottom:8px;
                width:40%;
                height:40px;
                max-width:300px;
                border-radius:0.235rem;
                position:relative;
                left:50%;
                transform:translate(-50%);
            }
            input[type="submit"] {
                box-shadow: none;
                text-shadow: none;
                background-color: #12a45f;
                border-color: #5d943e;
                border-radius: 5px;
                border-width: 1px;
                border-style: solid;
                color: #ffffff;
                height: 42px;
                font-family: Arial, Helvetica, sans-serif;
                font-size: 18px;
                font-weight: bold;
                letter-spacing: 0em;
                line-height: 1;
                text-transform: capitalize;
                margin-bottom: 10px;
                margin-top: 10px;
                padding-left: 35px !important;
                padding-right: 35px !important;
                padding-top: 5px !important;
                padding-bottom: 5px !important;
                cursor: pointer;
                position:relative;
                transform:translate(-50%);
                left:50%;
            }
        </style>

    </body>
</html>
