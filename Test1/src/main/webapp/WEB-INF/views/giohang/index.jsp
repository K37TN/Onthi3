<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="container">
<form action="/gio-hang/search" method="get">
    Ma gio hang: <input type="text" name="maGioHang"> <br>
    Ten nguoi nhan: <input type="text" name="tenNguoiNhan"> <br>
    <button>Search</button>
</form>
<br>
<form action="/giohang/add" method="post">
    Ma gio hang: <input type="text" name="maGioHang"> <br>
    Ngay tao: <input type="date" name="ngayTao"> <br>
    Ten nguoi nhan: <input type="text" name="tenNguoiNhan"> <br>
    Dia chi: <input type="text" name="diaChi"> <br>
    Sdt: <input type="text" name="sdt"> <br>
    Khach hang:
    <select name="khachHang">
        <c:forEach items="${listKH}" var="khachHang">
            <option value="${khachHang.id}" label="${khachHang.tenKH}"></option>
        </c:forEach>
    </select>
    <button>Add</button>
</form>
<table class="table table-striped">
    <thead>
    <tr>
        <th>Mã</th>
        <th>Ngày Tạo</th>
        <th>Tên Người Nhận</th>
        <th>Địa Chỉ</th>
        <th>SĐT</th>
        <th>Mã Khách Hàng</th>
        <th>Tên Khách Hàng</th>
        <th>Hành Động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listGH}" var="x">
        <tr>
            <td>${x.maGH}</td>
            <td>${x.ngayTao}</td>
            <td>${x.tenNguoiNhan}</td>
            <td>${x.diaChi}</td>
            <td>${x.sdt}</td>
            <td>${x.khachHang.maKH}</td>
            <td>${x.khachHang.tenKH}</td>
            <td><a href="/giohang/showupdate?id=${x.id}" type="button" class="btn btn-warning">Update</a></td>
            <td><a href="/giohang/delete?id=${x.id}" type="button" class="btn btn-danger">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>