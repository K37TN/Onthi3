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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<body class="container">
<form action="/giohang/update" method="post">
    <div class="mb-3">
        <label  class="form-label">ID</label>
        <input type="text" class="form-control"  name="id" value="${list.id}" readonly>
    </div>
    <div class="mb-3">
        <label  class="form-label">Mã</label>
        <input type="text" class="form-control"  name="maGH" value="${list.maGH}" >
    </div>
    <div class="mb-3">
        <label  class="form-label">Ngày Tạo</label>
        <input type="date" class="form-control"  name="ngayTao" value="${list.ngayTao}">
    </div>
    <div class="mb-3">
        <label class="form-label">Tên Người Nhận</label>
        <input type="text" class="form-control"  name="tenNguoiNhan" value="${list.tenNguoiNhan}">
    </div>
    <div class="mb-3">
        <label class="form-label">Địa Chỉ</label>
        <input type="text" class="form-control"  name="diaChi" value="${list.diaChi}">
    </div>
    <div class="mb-3">
        <label class="form-label">SĐT</label>
        <input type="text" class="form-control"  name="sdt" value="${list.sdt}">
    </div>
    <select class="form-select" aria-label="Default select example" name="khachHang">
        <c:forEach items="${listKH}" var="x">
        <option value="${x.id}" label="${x.tenKH}"${gioHang.khachHang.id == khachHang.id ? "selected" : ""}></option>
        </c:forEach>
    </select>
    <br>
    <button type="submit" class="btn btn-warning">Update</button>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>