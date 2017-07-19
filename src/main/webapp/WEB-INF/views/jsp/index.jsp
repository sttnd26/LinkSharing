<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

    <!--For css, import:-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/core/css/homepage.css"/>                 <!--??-->

    <!--For bootstrap, import:-->
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!--For icons, import:-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        .error {
            color: red; font-style: italic;
        }
    </style>

</head>
<body>

<!--Top part of page-->
<div class="top-box-border">
    <nav class="navbar" style="border: 2px solid; border-radius: 10px;">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="www.google.co.in">Link Sharing</a>
            </div>

            <ul class="navbar-form navbar-right">
                <div class="input-group">
                    <em>
                        <input type="text" class="form-control" placeholder="Search" style="border-color:black">
                        <div class="input-group-btn">
                            <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
                        </div>
                    </em>
                </div>
            </ul>
        </div>
    </nav>
</div>


<br>
<br>


<!--Bottom part of page-->
<div class="bottom-part" style="margin-top:2em">

    <div class="row">
        <div class="col-md-8">

            <!--Coding for the panel "Recent shares"-->
            <div class="panel panel-default" style="width:800px; border-color: #333;">
                <div class="panel-heading" style="border-color:black">
                    Recent shares

                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="resources/images/default-img.png">
                        </div>

                        <div class="col-md-10">
                            <a href="#">Uday Pratap Singh </a>
                            <font size=2px class="text-muted"> @uday 5 min</font>
                            <a href="#" style="float: right; padding-right: 15px;">Grails</a>

                            <p>
                                To group many panels together, wrap a with class .panel-group a
                                round them. The .panel-group class clears the bottom-margin of each
                                panel: To group many panels together, wrap a with class .panel-group
                                around them. The .panel-group class clears the bottom.
                            </p>
                            <a href="www.facebook.com">
                                <i class="fa fa-facebook-square" style="font-size:20px"></i>
                            </a>
                            <a href="www.twitter.com">
                                <i class="fa fa-twitter" style="font-size:20px"></i>
                            </a>
                            <a href="www.plus.google.com">
                                <i class="fa fa-google-plus" style="font-size:20px" ></i>
                            </a>
                            <a href="#" style="float: right; padding-right:5%;">View Post</a>
                        </div>

                    </div>
                </div>
                <br>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="resources/images/default-img.png">
                        </div>

                        <div class="col-md-10">
                            <a href="#">Uday Pratap Singh </a>
                            <font size=2px class="text-muted"> @uday 10 min</font>
                            <a href="#" style="float: right; padding-right: 15px;">Grails</a>

                            <p>
                                To group many panels together, wrap a with class .panel-group a
                                round them. The .panel-group class clears the bottom-margin of each
                                panel: To group many panels together, wrap a with class .panel-group
                                around them. The .panel-group class clears the bottom.
                            </p>
                            <a href="www.facebook.com">
                                <i class="fa fa-facebook-square" style="font-size:20px"></i>
                            </a>
                            <a href="www.twitter.com">
                                <i class="fa fa-twitter" style="font-size:20px"></i>
                            </a>
                            <a href="www.plus.google.com">
                                <i class="fa fa-google-plus" style="font-size:20px" ></i>
                            </a>
                            <a href="#" style="float: right; padding-right:5%;">View Post</a>
                        </div>

                    </div>
                </div>

            </div>
            <!--Coding for the panel "Top posts"-->
            <div class="panel panel-default" style="width:800px; border-color: #333;">
                <div class="panel-heading" style="border-color:black">
                    Top posts

                    <!--Coding for dropdown list-->
                    <div class="dropdown">
                        <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="border-color:black">
                            Today
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li><a href="#" >Today</a></li>
                            <li><a href="#" >1 Week</a></li>
                            <li><a href="#" >1 Month</a></li>
                            <li><a href="#" >1 Year</a></li>
                        </ul>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="resources/images/default-img.png";>
                        </div>

                        <div class="col-md-10">
                            <a href="#">Uday Pratap Singh </a>
                            <font size=2px class="text-muted"> @uday 21 Jul 2014</font>
                            <a href="#" style="float: right; padding-right: 15px;">Grails</a>

                            <p>
                                To group many panels together, wrap a with class .panel-group a
                                round them. The .panel-group class clears the bottom-margin of each
                                panel: To group many panels together, wrap a with class .panel-group
                                around them. The .panel-group class clears the bottom.
                            </p>
                            <a href="www.facebook.com">
                                <i class="fa fa-facebook-square" style="font-size:20px"></i>
                            </a>
                            <a href="www.twitter.com">
                                <i class="fa fa-twitter" style="font-size:20px"></i>
                            </a>
                            <a href="www.plus.google.com">
                                <i class="fa fa-google-plus" style="font-size:20px" ></i>
                            </a>
                            <a href="#" style="float: right; padding-right:5%;">View Post</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">

            <!--Coding for "Login" panel-->
            <div class="panel panel-default" style="width:400px; border-color: #333;">
                <div class="panel-heading" style="border-color:black">
                    Login
                </div>

                <div class="panel-body">
                    <form method="get" action="/login">
                        <div class="form-group">
                            <label for="usrlogin">Email/Userame:*</label>
                            <input type="text" class="form-control" id="usrlogin" style="border-color:black">
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="pwdlogin">Password:*</label>
                            <input type="password" class="form-control" id="pwdlogin" style="border-color:black">
                        </div>

                        <a href="www.gmail.com">Forgot Password</a>
                        <input type="submit" class="btn" style="border-color: #333;" value="Login"/>
                    </form>
                </div>
            </div>

            <!--Coding for "Register" panel-->
            <div class="panel panel-default" style="width:400px; border-color: #333;">
                <div class="panel-heading" style="border-color:black">
                    Register
                </div>

                <div class="panel-body">
                    <form:form method="post" action="/register" enctype="multipart/form-data" modelAttribute="user">
                        <div class="form-group">
                            <label>First Name:*</label>
                            <input type="text" class="form-control" name="firstName" style="border-color:black">
                            <form:errors path="firstName" cssClass="error"/>
                        </div>
                        <br>
                        <div class="form-group">
                            <label>Last Name:*</label>
                            <input type="text" class="form-control" name="lastName" style="border-color:black">
                            <form:errors path="lastName" cssClass="error"/>
                        </div>
                        <br>
                        <div class="form-group">
                            <label>Email:*</label>
                            <input type="text" class="form-control" name="email" style="border-color:black">
                            <form:errors path="email" cssClass="error"/>
                        </div>
                        <br>
                        <div class="form-group">
                            <label>Username:*</label>
                            <input type="text" class="form-control" name="username" style="border-color:black">
                            <form:errors path="username" cssClass="error"/>
                        </div>
                        <br>
                        <div class="form-group">
                            <label>Password:*</label>
                            <form:password path="password" class="form-control" name="password" style="border-color:black"/>
                            <form:errors path="password" cssClass="error"/>
                        </div>
                        <br>
                        <div class="form-group">
                            <label>Confirm Password:*</label>
                            <input type="password" class="form-control" name="confirmpwd" style="border-color:black">
                        </div>
                        <br>
                        <div class="form-group">
                            <label>Photo:</label>

                            <%--<span class="input-group-btn">--%>
                            <%--<button class="browse btn" type="button" style="border-color:black">--%>
                            <%--Browse</button>--%>
                        <input type="file" name="file" class="form-control" style="border-color:black">
                        </div>
                        <input type="submit" class="btn" style="border-color: #333;" value="Register"/>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

