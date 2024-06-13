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
</head>
<body class="container">
<table>
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
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>