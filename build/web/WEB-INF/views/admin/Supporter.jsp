<%-- 
    Document   : layout
    Created on : Oct 19, 2016, 1:01:57 AM
    Author     : tuong
--%>

<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib  prefix="co" tagdir="/WEB-INF/tags" %>
<co:layout>
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">SB Admin v2.0</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifendresource/froala_editor_2.3.4.</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifendresource/froala_editor_2.3.4.</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifendresource/froala_editor_2.3.4.</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Searchresource/froala_editor_2.3.4.">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="index.html"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html">Flot Charts</a>
                                </li>
                                <li>
                                    <a href="morris.html">Morris.js Charts</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="tables.html"><i class="fa fa-table fa-fw"></i> Tables</a>
                        </li>
                        <li>
                            <a href="forms.html"><i class="fa fa-edit fa-fw"></i> Forms</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="panels-wells.html">Panels and Wells</a>
                                </li>
                                <li>
                                    <a href="buttons.html">Buttons</a>
                                </li>
                                <li>
                                    <a href="notifications.html">Notifications</a>
                                </li>
                                <li>
                                    <a href="typography.html">Typography</a>
                                </li>
                                <li>
                                    <a href="icons.html"> Icons</a>
                                </li>
                                <li>
                                    <a href="grid.html">Grid</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li class="active">
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a class="active" href="blank.html">Blank Page</a>
                                </li>
                                <li>
                                    <a href="login.html">Login Page</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Supporter</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <!-- /.panel-heading -->
                            <div class="panel-body" style="align-content: center; margin-left: auto; margin-right: auto">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#home" data-toggle="tab">TẠO TIN TỨC</a>
                                    </li>
                                    <li><a href="#profile" data-toggle="tab">TT ĐÃ ĐẰNG</a>
                                    </li>
                                    <li><a href="#messages" data-toggle="tab">TT CHỜ DUYỆT </a>
                                    </li>
                                    <li><a href="#settings" data-toggle="tab">Settings</a>
                                    </li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content" style="min-height: 600px; padding-top: 40px">
                                    <div class="tab-pane fade in active" id="home" style="min-width: 800px;">
                                        <form method="post" action="http://localhost:8084/baitap/support">
                                            <div class="form-group">
                                                <label style="font-size:  15pt; align-content: center;">Tiêu Đề</label>
                                                <input class="form-control" name="title" type="text" style="text-align: center;font-size: 15pt;width: 600px">
                                            </div><br>
                                            <div class="form-group">
                                                <label for="Header">Mô Tả</label><br>
                                                <textarea class="form-control" name="description" rows="3" style="width: 600px"></textarea>
                                            </div><br>
                                            <div class="form-group">
                                                <label for="Header">Nội Dung</label><br>
                                                <textarea class="myTextarea" name="contents"></textarea>
                                            </div><br>
                                            <div class="form-group">
                                                <label style="font-size:  15pt; align-content: center;">Author</label>
                                                <input class="form-control" name="author" type="text" style="text-align: center;font-size: 15pt;width: 200px">
                                            </div><br>
                                            <div style="left: 650px; position: absolute;top: 120px; width: 300px">
                                                <div style="">
                                                    <label>Ngày Tạo</label> : <input style="margin-left: 19px" type="date" name="create_at"/><br>
                                                    <label>Ngày Sửa</label>: <input style="margin-left: 22px" type="date" name="update_at"/><br><br>
                                                    <label>Thể Loại</label> : 
                                                    <select style="margin-left: 22px" name="id_category">
                                                        <option value="1">Sự Kiện</option>
                                                        <option value="2">Thông Báo</option>
                                                    </select><br>
                                                    <label>Trạng Thái</label> : 
                                                    <select style="margin-left: 10px" name="status">
                                                        <option value="2">Đợi Duyệt</option>
                                                    </select><br>
                                                </div>
                                                <br>
                                                <input style="margin-left: 95px" type="submit" value="Tạo Thông Báo"/>
                                            </div>
                                        </form>

                                    </div>
                                    <div class="tab-pane fade" id="profile">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h3>Post</h3>
                                            </div>
                                            <div class="panel-body">
                                                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                    <thead>
                                                        <tr>
                                                            <th style="text-align: center">ID</th>
                                                            <th style="text-align: center">TITLE</th>
                                                            <th style="text-align: center">DESCRIPTION</th>
                                                            <th style="text-align: center">CONTENT</th>
                                                            <th style="text-align: center">AUTHOR</th>
                                                            <th style="text-align: center">CREATE_AT</th>
                                                            <th style="text-align: center">UPDATE_AT</th>
                                                            <th style="text-align: center">STATUS</th>
                                                            <th style="text-align: center" >EDIT</th>
                                                            <th style="text-align: center" >DELETE</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${requestScope.news}" var="ns">
                                                            <tr id="${ns.id}" class="odd gradeX">
                                                                <td><c:out value="${ns.id}"/></td>
                                                                <td><c:out value="${ns.title}"/></td>
                                                                <td><c:out value="${ns.description}"/></td>
                                                                <td><c:out escapeXml="false" value="${ns.contents}"/></td>
                                                                <td><c:out value="${ns.author}"/></td>
                                                                <td><c:out value="${ns.create_at}"/></td>
                                                                <td><c:out value="${ns.update_at}"/></td>
                                                                <td><c:out value="${ns.status}"/></td>
                                                                <td><a href="support/<c:out value="${ns.id}"/>">Edit</a></td>
                                                                <td><input class="deleteRow" type="submit" data-id="${ns.id}" value="DELETE"></td>

                                                            </tr>
                                                        </c:forEach>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="messages">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h3>waiting</h3>
                                            </div>
                                            <div class="panel-body">
                                                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                    <thead>
                                                        <tr>
                                                            <th style="text-align: center">ID</th>
                                                            <th style="text-align: center">TITLE</th>
                                                            <th style="text-align: center">DESCRIPTION</th>
                                                            <th style="text-align: center">CONTENT</th>
                                                            <th style="text-align: center">AUTHOR</th>
                                                            <th style="text-align: center">CREATE_AT</th>
                                                            <th style="text-align: center">UPDATE_AT</th>
                                                            <th style="text-align: center">STATUS</th>
                                                            <th style="text-align: center" >EDIT</th>
                                                            <th style="text-align: center" >DELETE</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${requestScope.news_wait}" var="ns">
                                                            <tr id="${ns.id}" class="odd gradeX">
                                                                <td><c:out value="${ns.id}"/></td>
                                                                <td><c:out value="${ns.title}"/></td>
                                                                <td><c:out escapeXml="false" value="${ns.description}"/></td>
                                                                <td><c:out escapeXml="false" value="${ns.contents}"/></td>
                                                                <td><c:out value="${ns.author}"/></td>
                                                                <td><c:out value="${ns.create_at}"/></td>
                                                                <td><c:out value="${ns.update_at}"/></td>
                                                                <td><c:out value="${ns.status}"/></td>
                                                                <td><a href="support/<c:out value="${ns.id}"/>">Edit</a></td>
                                                                <td><input class="deleteRow" type="submit" data-id="${ns.id}" value="DELETE"></td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="settings">
                                        <form method="post" action="http://localhost:8084/baitap/support">
                                            <div class="form-group">
                                                <label style="font-size:  15pt; align-content: center;">Tên</label>
                                                <input class="form-control" name="nameRec" type="text" style="text-align: center;font-size: 15pt;width: 600px">
                                            </div><br>
                                            <div class="form-group">
                                                <label for="Header">Mô Tả</label><br>
                                                <textarea class="myTextarea" name="descriptionRec"></textarea>
                                            </div><br>
                                            <div class="form-group">
                                                <label for="Header">Yêu cầu</label><br>
                                                <textarea class="myTextarea" name="requirementRec"></textarea>
                                            </div><br>
                                            <div class="form-group">
                                                <label for="Header">Quyền lợi</label><br>
                                                <textarea class="myTextarea" name="interestRec"></textarea>
                                            </div><br>
                                            <div class="form-group">
                                                <label style="font-size:  15pt; align-content: center;">Địa Chỉ</label>
                                                <input class="form-control" name="addressRec" type="text" style="text-align: center;font-size: 15pt;width: 600px">
                                            </div><br>
                                            <div style="left: 650px; position: absolute;top: 120px; width: 300px">
                                                <div>
                                                    <label>Ngày Tạo</label> : <input style="margin-left: 19px" type="date" name="create_atRc"/><br>
                                                    <label>Ngày Nhận</label>: <input style="margin-left: 22px" type="date" name="start_recruitmentRec"/><br><br>
                                                    <label>Kết Thúc</label>: <input style="margin-left: 22px" type="date" name="end_recruitmentRec"/><br><br>
                                                    <label>Trạng Thái</label> : 
                                                    <select style="margin-left: 10px" name="statusRec">
                                                        <option value="2">Đợi Duyệt</option>
                                                    </select><br>
                                                </div>
                                                <br>
                                                <input style="margin-left: 95px" type="submit" value="Tạo Thông Báo"/>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.panel -->
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
    <!-- /#wrapper -->

</co:layout>
<script>
    $(".deleteRow").click(function () {
        var id = $(this).attr("data-id");
        $.ajax({
            url: "delete",
            type: "post",
            data: {id: id},
            beforSend: function () {
//                    $(".img-detail").html('<p>waitting......</p>')
            },
            success: function (data) {
                $("#" + id).remove();
            }
        });
    });
</script>