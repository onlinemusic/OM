<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OnlineMusic-用户列表</title>

    <!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">

    <!-- Styles -->
    <link href="/resources/assets/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/assets/css/lib/themify-icons.css" rel="stylesheet">
    <link href="/resources/assets/css/lib/data-table/buttons.bootstrap.min.css" rel="stylesheet" />
    <link href="/resources/assets/css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="/resources/assets/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/assets/css/lib/helper.css" rel="stylesheet">
    <link href="/resources/assets/css/style.css" rel="stylesheet">

    <script src="/js/userInfoList.js" ></script>
</head>

<body>

                <%@ include file="../common/sidebar.jsp"%>
        <%--<jsp:include page="sidebar.jsp"></jsp:include>--%>




    <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <h1> <span>用户列表</span></h1>
                            </div>
                        </div>
                    </div>

                    <!-- /# column -->
                </div>
                <!-- /# row -->
                <section id="main-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="bootstrap-data-table-panel">
                                    <div class="table-responsive">
                                        <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>用户名</th>
                                                    <th>密码</th>
                                                    <th>状态</th>
                                                    <th>操作</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${uList}" var="userItem" varStatus="st">
                                                <tr>
                                                    <td>${userItem.name}</td>
                                                    <td>${userItem.password}</td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${userItem.state == 1}">启用</c:when>
                                                            <c:otherwise>禁用</c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td  style="text-align:center;">
                                                        <a href ="javascript:void(0);" onclick ="toUpdatePassword('${userItem.id}')">编辑</a>
                                                        <a href ="javascript:void(0);" onclick ="toDelete('${userItem.id}')">删除</a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- /# card -->
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="footer">
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>







    
    <!-- jquery vendor -->
    <script src="/resources/assets/js/lib/jquery.min.js"></script>
    <script src="/resources/assets/js/lib/jquery.nanoscroller.min.js"></script>
    <!-- nano scroller -->
    <script src="/resources/assets/js/lib/menubar/sidebar.js"></script>
    <script src="/resources/assets/js/lib/preloader/pace.min.js"></script>
    <!-- sidebar -->
    
    <!-- bootstrap -->

    <script src="/resources/assets/js/lib/bootstrap.min.js"></script><script src="/resources/assets/js/scripts.js"></script>
    <!-- scripit init-->
    <script src="/resources/assets/js/lib/data-table/datatables.min.js"></script>
    <script src="/resources/assets/js/lib/data-table/buttons.dataTables.min.js"></script>
    <script src="/resources/assets/js/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="/resources/assets/js/lib/data-table/buttons.flash.min.js"></script>
    <script src="/resources/assets/js/lib/data-table/jszip.min.js"></script>
    <script src="/resources/assets/js/lib/data-table/pdfmake.min.js"></script>
    <script src="/resources/assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="/resources/assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="/resources/assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="/resources/assets/js/lib/data-table/datatables-init.js"></script>










</body>

</html>