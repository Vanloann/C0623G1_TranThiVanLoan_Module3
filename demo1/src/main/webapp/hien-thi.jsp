<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/12/2023
  Time: 8:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
    <title>DEMO</title>
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
</head>
<body>
<%--HEADER--%>
<div class="header">
    <img src="https://cdn.codegym.vn/wp-content/uploads/2021/08/CodeGym-Logo.webp" alt="">
</div>


<%--BODY--%>
<div class="container mt-3 mb-3">
    <table class="table table-hover" id="mytable">
        <thead>
        <tr>
            <th>Mã thực phẩm</th>
            <th>Tên thực phâm</th>
            <th>Ngày sản xuất</th>
            <th>Ngày hết hạn</th>
            <th>Loại thực phẩm</th>
            <th>Mô tả</th>
            <th>Chức năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="tp" items="${danhSach}">
            <tr>
                <td>TP-00${tp.getMaHangThucPham()}</td>
                <td>${tp.getTenHangThucPham()}</td>
                <td>${tp.getNgaySanXuat()}</td>
                <td>${tp.getNgayHetHan()}</td>
                <td>${tp.getTenLoaiThucPham()}</td>
                <td>${tp.getMoTaThem()}</td>
                <td>
                    <button type="button" class="btn btn-outline-warning" data-bs-toggle="modal"
                            data-bs-target="#exampleModal"
                            onclick="guiThongTin('${tp.getMaHangThucPham()}','${tp.getTenHangThucPham()}')">
                        Xóa
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="container mt-3 mb-3">
    <button type="button" class="btn btn-outline-primary"><a href="/thuc-pham?action=hienThiThemMoi">Thêm mới sản
        phẩm</a></button>
</div>
<div class="container mt-3 mb-3">
    <button type="button" class="btn btn-outline-primary"><a href="/thuc-pham?action=hienThiHetHan">Danh sách sản phẩm
        quá hạn</a></button>
</div>


<%--Modal--%>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="/thuc-pham?action=xoa" method="post">
            <div class="modal-content">
                <div class="modal-header" style="background-color: orangered; color:#000; font-size: 1.2rem">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Xác nhận xóa</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <input type="hidden" name="maHangThucPham" id="maHangThucPham">
                <div class="modal-body">
                    Bạn có muốn xóa thực phẩm "<span id="tenThucPham"></span>" hay không?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Không</button>
                    <button type="submit" class="btn btn-primary">Xóa</button>
                </div>
            </div>
        </form>
    </div>
</div>


<%--JS--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#mytable').DataTable({
            language: {
                "decimal": ",",
                "thousands": ".",
                "sEmptyTable": "Không có dữ liệu",
                "sInfo": "Đang hiển thị _START_ đến _END_ của tổng số _TOTAL_ mục",
                "sInfoEmpty": "Đang hiển thị 0 đến 0 của tổng số 0 mục",
                "sInfoFiltered": "(được lọc từ tổng số _MAX_ mục)",
                "sInfoPostFix": "",
                "sInfoThousands": ",",
                "sLengthMenu": "Hiển thị _MENU_ mục",
                "sLoadingRecords": "Đang tải...",
                "sProcessing": "Đang xử lý...",
                "sSearch": "Tìm kiếm:",
                "Show:": "",
                "entries": "",
                "oPaginate": {
                    "sFirst": "Đầu",
                    "sLast": "Cuối",
                    "sNext": "Tiếp",
                    "sPrevious": "Trước"
                },

            },
            color: {
                "oPaginate": {
                    "sFirst": "blue",
                    "sLast": "green",
                    "sNext": "green",
                    "sPrevious": "blue"
                },
            }
        });
    });
</script>
<script>
    function guiThongTin(maHangThucPham, tenThucPham) {
        document.getElementById("maHangThucPham").value = maHangThucPham;
        document.getElementById("tenThucPham").innerText = tenThucPham;
    }
</script>
</body>
</html>
