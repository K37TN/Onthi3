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
<form action="/phong/add" method="post">
    Tên Phòng : <input type="text" name="tenPhong" value="${list.tenPhong}"><br>
    Số Lượng Phòng : <input type="text" name="soLuongPhong" value="${list.soLuongPhong}"><br>
    Trạng thái : <input type="radio" name="trangThai" value="1" ${list.trangThai == "1"?"Checked":""}>Còn
    <input type="radio" name="trangThai" value="2" ${list.trangThai != "1"?"Checked":""}>Hết
    <br>
    Ghi Chú : <input type="text" name="ghiChu" value="${list.ghiChu}"><br>
    Loại Phòng : <select name="loaiPhong">
    <c:forEach items="${listLP}" var="x">
    <option value="${x.id}" label="${x.tenLoaiPhong}"${list.loaiPhong.id == loaiPhong.id ?"selected":""}></option>
    </c:forEach>
</select><br><br>
    <button type="submit">ADD</button>
</form>
<table>
    <thead>
    <tr>
        <th>Tên Phòng</th>
        <th>Số lượng</th>
        <th>Trạng thái</th>
        <th>Ghi chú</th>
        <th>Tên loại phòng</th>
        <th>Hành Động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="x" items="${listP}">
        <tr>
            <td>${x.tenPhong}</td>
            <td>${x.soLuongPhong}</td>
            <td>${x.trangThai =="1"?"Còn":"Hết"}</td>
            <td>${x.ghiChu}</td>
            <td>${x.loaiPhong.tenLoaiPhong}</td>
            <td><a href="/phong/detail?id=${x.id}">Detail</a> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>