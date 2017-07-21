<%--
  Created by IntelliJ IDEA.
  User: MAHE
  Date: 7/19/2017
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.ttn.linksharing.model.User" %>
<% User user = (User) session.getAttribute("UserDetails");%>

<!DOCTYPE html>
<html lang="en">
<head>

    <!--For css, import:-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/core/css/dashboard.css"/>

    <!--For bootstrap, import:-->
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!--For icons, import:-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  </head>

<body>

<!--Top part of page-->
<div class="top-box-border">
    <%@include file="dashboardheader.jsp" %>
</div>


<br>
<br>


<!--Bototm part of page-->
<div class="bottom-part">

    <div class="row">
        <div class="col-md-6">

            <div class="panel panel-default" style="border-color:black">

                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-3">
                            <%if(user.getPhoto()!= null && user.getPhoto().length!=0){ %>
                            <img class="pic-class" id="dp" src="/getPhoto">
                            <% }
                            else {%>
                            <img class="pic-class" src="http://weekendwarriors.se/assets/img/defaultavatar.jpg">
                            <% } %>
                        </div>

                        <div class="col-md-7">
                            <strong style="font-size: x-large"><%=user.getFirstName()+" "+user.getLastName()%> </strong>
                            <table>
                                <tr>
                                    <td>
                                        <font size=2px class="text-muted">@<%=user.getUsername()%></font>
                                    </td>
                                </tr>
                                <tr><td><br/></td></tr>
                                    <td>
                                        <font size=2px> Subscriptions</font>
                                    </td>
                                    <td>&nbsp;&nbsp;</td>
                                    <td>
                                        <font size=2px> Topics</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <font size=2px style="color:blue"> 0 </font>
                                    </td>
                                    <td>&nbsp;&nbsp;</td>

                                    <%if(user.getTopicList()!= null && user.getTopicList().size()!=0){ %>
                                    <td>
                                        <font size=2px style="color:blue"> <%=user.getTopicList().size()%> </font>
                                    </td>
                                    <% }
                                    else {%>
                                    <td>
                                        <font size=2px style="color:blue"> 0 </font>
                                    </td>
                                    <% } %>


                                </tr>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
            <!--Coding for "Subscriptions" panel here-->
            <div class="panel panel-default" style="border-color:black">
                <div class="panel-heading" style="border-color:black">
                    Subscriptions

                    <a href="#" style="float:right">View All</a>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="http://weekendwarriors.se/assets/img/defaultavatar.jpg";>
                        </div>

                        <div class="col-md-10">
                            <a href="#"> Grails</a>
                            <table style="border-spacing:5%;">
                                <tr>
                                    <td>
                                        <font size=2px class="text-muted"> @uday</font>
                                    </td>

                                    <td>
                                        <font size=2px> Subscriptions</font>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <font size=2px> Posts</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><font size=2px style="color:blue"> Unsubscribe</font></a>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue"> 50</font>
                                    </td>
                                    <td>&nbsp;&nbsp;</td>
                                    <td>
                                        <font size=2px style="color:blue"> 30</font>
                                    </td>
                                </tr>
                            </table>
                            <br>
                            <select>
                                <option>Serious</option>
                            </select>
                            &nbsp;&nbsp;
                            <select>
                                <option>Private</option>
                                <option>Delete</option>
                                <option>Edit</option>
                            </select>
                            &nbsp;&nbsp;
                            <span class="glyphicon glyphicon-envelope"></span>
                            &nbsp;&nbsp;
                            <span class="glyphicon glyphicon-edit"></span>
                            &nbsp;&nbsp;
                            <span class="glyphicon glyphicon-trash"></span>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="http://weekendwarriors.se/assets/img/defaultavatar.jpg";>
                        </div>

                        <div class="col-md-10">
                            <a href="#"> Grails</a>
                            <table style="border-spacing:5%;">
                                <tr>
                                    <td>
                                        <font size=2px class="text-muted"> @uday </font>
                                    </td>

                                    <td>
                                        <font size=2px> Subscriptions</font>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <font size=2px> Posts</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><font size=2px style="color:blue"> Unsubscribe</font></a>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue"> 50</font>
                                    </td>
                                    <td>&nbsp;&nbsp;</td>
                                    <td>
                                        <font size=2px style="color:blue"> 30</font>
                                    </td>
                                </tr>
                            </table>
                            <br>
                            <select>
                                <option>Serious</option>
                            </select>
                            &nbsp;&nbsp;
                            <a class="glyphicon glyphicon-envelope" data-toggle="modal" data-target="#emailModal"></a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Coding for Trending Topics -->
            <div class="panel panel-default" style="border-color:black">
                <div class="panel-heading" style="border-color:black">
                    Trending Topics
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="http://weekendwarriors.se/assets/img/defaultavatar.jpg";>
                        </div>

                        <div class="col-md-10">
                            <a href="#"> Grails</a>
                            <table style="border-spacing: 5%;">
                                <tr>
                                    <td>
                                        <font size=2px class="text-muted"> @uday</font>
                                    </td>

                                    <td>
                                        <font size=2px> Subscriptions</font>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <font size=2px> Posts</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><font size=2px style="color:blue"> Unsubscribe</font></a>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue"> 50</font>
                                    </td>
                                    <td>&nbsp;&nbsp;</td>
                                    <td>
                                        <font size=2px style="color:blue"> 30</font>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="http://weekendwarriors.se/assets/img/defaultavatar.jpg">
                        </div>

                        <div class="col-md-10">
                            <input type="text" placeholder="Grails">
                            <button type="submit">Save</button>
                            <button type="reset">Cancel</button>
                            <br><br>
                            <table style="border-spacing:5%;">
                                <tr>
                                    <td>
                                        <font size=2px class="text-muted"> @uday</font>
                                    </td>

                                    <td>
                                        <font size=2px> Subscriptions</font>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <font size=2px> Posts</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><font size=2px style="color:blue"> Unsubscribe</font></a>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue"> 50</font>
                                    </td>
                                    <td>&nbsp;&nbsp;</td>
                                    <td>
                                        <font size=2px style="color:blue"> 30</font>
                                    </td>
                                </tr>
                            </table>
                            <br>
                            <select>
                                <option>Serious</option>
                            </select>
                            &nbsp;&nbsp;
                            <select>
                                <option>Private</option>
                                <option>Delete</option>
                                <option>Edit</option>
                            </select>
                            &nbsp;&nbsp;
                            <span class="glyphicon glyphicon-envelope"></span>
                            &nbsp;&nbsp;
                            <span class="glyphicon glyphicon-edit"></span>
                            &nbsp;&nbsp;
                            <span class="glyphicon glyphicon-trash"></span>
                        </div>
                    </div>
                </div>
            </div>
            <!--Coding for "Top posts" panel here-->
            <%--send invitation--%>
            <div class="modal fade" id="myModal2" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Send Invitation</h4>
                        </div>
                        <div class="modal-body">
                            Email:* <input type="text" placeholder="Email" style="position:relative;margin-left:40%;" required>
                            <br><br>
                            Topic:* <select style="position:relative;margin-left:40%;" required>
                            <option>Topic</option>
                            <option>Topic 1</option>
                        </select>
                            <br><br>
                            <button type="submit" style="position:relative; margin-left:48%;">Invite</button>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>

        </div>

        <div class="col-md-6">
            <!--Coding for the panel "Recent shares" from here-->
            <div class="panel panel-default" style="border-color:black">
                <div class="panel-heading" style="border-color:black">
                    Inbox
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="http://weekendwarriors.se/assets/img/defaultavatar.jpg";>
                        </div>

                        <div class="col-md-10">
                            <font size=2px>Uday Pratap Singh </font>
                            <font size=2px class="text-muted"> @uday </font>
                            <p>
                                To group many panels together, wrap a with class .panel-group a
                                round them. The .panel-group class clears the bottom-margin of each
                                panel: To group many panels together, wrap a with class
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
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="#">Download</a>&nbsp;
                            <a href="#">View Full Site</a>&nbsp;
                            <a href="#">Mark as read</a>&nbsp;
                            <a href="#">View Post</a>
                        </div>

                    </div>
                </div>
                <br>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="http://weekendwarriors.se/assets/img/defaultavatar.jpg";>
                        </div>

                        <div class="col-md-10">
                            <font size=2px>Uday Pratap Singh </font>
                            <font size=2px class="text-muted"> @uday 5 min</font>
                            <p>
                                To group many panels together, wrap a with class .panel-group a
                                round them. The .panel-group class clears the bottom-margin of each
                                panel: To group many panels together, wrap a with class
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
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="#">Download</a>&nbsp;
                            <a href="#">View Full Site</a>&nbsp;
                            <a href="#">Mark as read</a>&nbsp;
                            <a href="#">View Post</a>
                        </div>

                    </div>
                </div>
            </div>

            <!--Coding for "Share link" panel here-->
            <!--Coding for "Share link" panel here-->
            <div class="modal fade" id="myModal3" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Share Link</h4>
                        </div>
                        <div class="modal-body">
                            Link:* <input type="text" placeholder="Email" style="position:relative;margin-left:40%;" required>
                            <br><br>
                            Description:* <textarea cols="22" rows=3  placeholder="Description" style="position:relative;margin-left:32%;" required></textarea>
                            <br><br>
                            Topic:* <select style="position:relative;margin-left:40%;" required>
                            <option>Topic</option>
                            <option>Topic 1</option>
                        </select>
                            <br><br>
                            <button type="submit" style="position:relative; margin-left:48%;">Share</button>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>
            <!--Coding for "Share document" panel here-->
            <!--Coding for "Share document" panel here-->
            <div class="modal fade" id="myModal4" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Share Document</h4>
                        </div>
                        <div class="modal-body">
                            Document:* <input type="file" style="position:relative;margin-left:40%;" required>
                            <br><br>
                            Description:* <textarea cols="22" rows=3  placeholder="Description" style="position:relative;margin-left:32%;" required></textarea>
                            <br><br>
                            Topic:* <select style="position:relative;margin-left:40%;" required>
                            <option>Topic</option>
                            <option>Topic 1</option>
                        </select>
                            <br><br>
                            <button type="submit" style="position:relative; margin-left:48%;">Share</button>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>

            <!--Coding for "Create Topic" panel here-->
            <div class="modal fade" id="myModal1" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Create Topic</h4>
                        </div>
                        <div class="modal-body">
                            <form method="post" action="/createtopic">
                                Name:* <input type="text" placeholder="Name" name="name" style="position:relative;margin-left:40%;" required >
                                <br><br>
                                Visibility:* <select style="position:relative;margin-left:40%;" name="visibility" required>
                                <option>PUBLIC</option>
                                <option>PRIVATE</option>
                            </select>
                                <br><br>
                                <button type="submit" style="position:relative; margin-left:48%;">Save</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>


<!-- Modal -->
<%--<div class="modal fade" id="emailModal" role="dialog">--%>
    <%--<div class="modal-dialog">--%>

        <%--<!-- Modal content-->--%>
        <%--<div class="modal-content">--%>
            <%--<div class="modal-header">--%>
                <%--<button type="button" class="close" data-dismiss="modal">&times;</button>--%>
                <%--<h4 class="modal-title">Email</h4>--%>
            <%--</div>--%>
            <%--<div class="modal-body">--%>
                <%--<p>Some text in the email.</p>--%>
            <%--</div>--%>
            <%--<div class="modal-footer">--%>
                <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>



