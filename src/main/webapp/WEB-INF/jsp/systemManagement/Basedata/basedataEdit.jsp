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
    <title>OnlineMusic-音乐列表</title>

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

    <script src="/js/basedata.js"></script>
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
                                <h1> <span>音乐列表</span></h1>
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
                                <form action="updateBasedata.do" method="post">
                                    <input type="hidden" id="bid" name="id" value="${basedata.id}"/>
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <span class="userLabel"><label>歌手：</label></span>
                                            <input class="userInput" id="singer" name="singer" type="text" value="${basedata.singer}"  maxLength="50"/>
                                        </li>
                                        <li class="list-group-item">
                                            <span class="userLabel"><label>专辑：</label></span>
                                            <input class="userInput" id="albumName" name="albumName" type="text" value="${basedata.albumName}"  maxLength="50"/>
                                        </li>
                                        <li class="list-group-item">
                                            <span class="userLabel"><label>歌曲：</label></span>
                                            <input class="userInput" id="songName" name="songName" type="text" value="${basedata.songName}"  maxLength="50"/>
                                        </li>
                                        <li class="list-group-item">
                                            <span class="userLabel"><label>时长：</label></span>
                                            <input class="userInput" id="songTime" name="songTime" type="text" value="${basedata.songTime}"  maxLength="50"/>
                                        </li>
                                        <li class="list-group-item">
                                            <span class="userLabel"><label>专辑封面：</label></span>
                                            <img id="edit_cover" class="edit_cover" src="${basedata.albumPic}">
                                            <input name="fileupload" type="file" onchange="showImg()" id="auto-id-input2" class="uploadfile">
                                        </li>
                                    </ul>
                                    <div class="ytweb-form-btn">
                                        <input type="button" class="btn btn-default" value="保存" onclick="save('/updateBasedata.do')"/>
                                        <input type="button" class="btn btn-default" value="取消" onclick="javascript:history.back(-1);"/>
                                    </div>
                                </form>
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