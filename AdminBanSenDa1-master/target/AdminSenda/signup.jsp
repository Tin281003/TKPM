<!DOCTYPE html>
<%@ page contentType="text/html;charsetUTF-8" language="java" pageEncoding="utf-8"%>
<html lang="xzz">
<meta http-equiv="Content-Type" charset="UTF-8">

<head>
    <meta charset="utf-8">
    <title>Tiệm sen đá| Sign up</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-fluid position-relative d-flex p-0">

        <% String error = (String) request.getAttribute("Error");%>
        <!-- Sign Up Start -->
        <div class="container-fluid bg_signin_signup">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <div class="bg-pink rounded p-4 p-sm-5 my-4 mx-3" action="Signup" method="post">
                        <h2 class="title-sg">Đăng ký</h2>
                        <div class="form-floating mb-3">
                            <input id="name" type="text" class="form-control"  placeholder="jhondoe">
                            <label for="name">Tạo tên đăng nhập</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input  id="email" type="email"  class="form-control"  placeholder="name@example.com">
                            <label for="email">Địa chỉ email</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input id="pass" type="password" class="form-control"  placeholder="Password">
                            <label for="pass">Tạo mật khẩu</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input id="repass" type="password" class="form-control" id="floatingPassword1" placeholder="Password">
                            <label for="repass">Nhập lại mật khẩu</label>
                        </div>
                        <span id="insertTextHere"><%= error != null ? error:""%></span>
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <div class="form-check">
                                <input id="save-login" type="checkbox" class="form-check-input" >
                                <label class="form-check-label" for="save-login">Lưu đăng nhập</label>
                            </div>

                        </div>
                        <button onclick="check()" class="btn btn-primary py-3 w-100 mb-4">Đăng ký</button>
                        <p class="text-center mb-0">Bạn đã có tài khoản? <a href="signin.jsp">Đăng nhập</a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sign Up End -->
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script src="js/admin.js"></script>
</body>

</html>