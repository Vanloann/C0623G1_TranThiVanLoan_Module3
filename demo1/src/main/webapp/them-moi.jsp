<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/12/2023
  Time: 9:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            overflow: hidden;
        }

        .header {
            display: grid;
            height: 70px;
            background-color: #2b287f;
            width: 100%;
            justify-items: center;
            align-items: center;
        }

        a {
            text-decoration: none;
        }
    </style>
    <title>Thêm mới</title>
</head>
<body>
<div class="header">
    <img src="https://cdn.codegym.vn/wp-content/uploads/2021/08/CodeGym-Logo.webp" alt="">
</div>
<div class="container mt-3">
    <form action="thuc-pham?action=themMoi" method="post">
        <div class="mb-3">
            <label for="tenHangThucPham" class="form-label">Tên thực phẩm</label>
            <input type="text" class="form-control" id="tenHangThucPham" name="tenHangThucPham" required>
        </div>
        <div class="mb-3">
            <label for="ngaySanXuat" class="form-label">Ngày sản xuất</label>
            <input type="date" class="form-control" id="ngaySanXuat" name="ngaySanXuat" required>
        </div>
        <div class="mb-3">
            <label for="ngayHetHan" class="form-label">Ngày hết hạn</label>
            <input type="date" class="form-control" id="ngayHetHan" name="ngayHetHan" required>
        </div>
        <div class="mb-3">
            <select name="maLoaiThucPham" id="maLoaiThucPham">Loại thực phẩm
                <c:forEach var="li" items="${danhSachLoaiThucPham}" >
                    <option value="${li.getMaLoaiThucPham()}"><c:out value=" ${li.getTenLoaiThucPham()}"></c:out></option>
                </c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label for="tenHangThucPham" class="form-label">Mô tả </label>
            <input type="text" class="form-control" id="moTaThem" name="moTaThem" required>
        </div>
        <button type="submit" class="btn btn-primary">Xác nhận</button>
    </form>
</div>
</body>
</html>
