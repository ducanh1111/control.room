<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Tables</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <link href="../css/styles.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="../homepage/header.jsp"></jsp:include>
            <div id="layoutSidenav">
            <jsp:include page="../homepage/left.jsp"></jsp:include>
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <h2 class="mt-4">Tables</h2>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item"><a href="../student/list">Student</a></li>
                                <li class="breadcrumb-item active">Update Student</li>
                            </ol>
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-table me-1"></i>
                                    Student Table Update
                                </div>
                                <div class="card-body">
                                    <form action="../student/update" method="post" >
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Gender</th>
                                                    <th>Dob</th>
                                                    <th>PhoneNumber</th>
                                                    <th>CardNumber</th>
                                                    <th>Address</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <input type="hidden" name="sid" value="${requestScope.student.id}">
                                                <td><input value="${requestScope.student.name}" placeholder="Enter Student Name" type="text" name="sname" required></td>
                                                <td><input ${(requestScope.student.gender)?"checked=\"checked\"":""} type="radio" checked="checked" name="gender" value="male">M<br>
                                                    <input ${!(requestScope.student.gender)?"checked=\"checked\"":""} type="radio" name="gender" value="female">F
                                                </td>
                                                <td><input value="${requestScope.student.dob}" type="date" name="dob" required></td>
                                                <td><input value="${requestScope.student.phonenumber}" placeholder="Enter Student Phone" type="text" name="phonenumber" required></td>
                                                <td><input value="${requestScope.student.cardnumber}" placeholder="Enter Student Cardnumber" type="text" name="cardnumber" required></td>
                                                <td><input value="${requestScope.student.address}" placeholder="Enter Student Address" type="text" name="address" required></td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr style="text-align: right">
                                                <td>
                                                    <a type="button" class="btn btn-default" href="../student/list">Back</a>
                                                    <button type="submit" class="btn btn-primary">Update</button>
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>

                                </form>

                            </div>

                        </div>
                    </div>
                </main>
                <jsp:include page="../homepage/footer.jsp"></jsp:include>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
            <script src="../js/scripts.js" type="text/javascript"></script>
            <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
            <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
