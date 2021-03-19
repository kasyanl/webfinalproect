<%@ page import="bean.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All students of school</title>
</head>
<body align="center">
<h1>This is list of school students.</h1>
<table class="table" align="center">
    <tr>
        <th><b>ID</b></th>
        <th><b>Firstname</b></th>
        <th><b>Lastname</b></th>
        <th><b>Age</b></th>
        <th><b></b></th>
        <th><b></b></th>
    </tr>
    <% List<Student> studentList = (List<Student>) request.getAttribute("studentList");
        for (Student student : studentList) {
            try {
                out.print("<tr>\n<td>" + student.getId() + "</td>" +
                        "<td>" + student.getFirstName() + "</td><td>" + student.getLastName() +
                        "</td><td>" + student.getAge() + "</td>" +
                        "<td><a href=\"/webproject-1.0-SNAPSHOT/deletestudent?id=" + student.getId() +
                        "\">Х</a></td>" + "<td><a href=\"/webproject-1.0-SNAPSHOT/editstudent?id=" + student.getId() +
                        "\">edit</a></td>" + "\n</tr>\n");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    %>
    <tr>
        <th><b>ID</b></th>
        <th><b>Firstname</b></th>
        <th><b>Lastname</b></th>
        <th><b>Age</b></th>
        <th><b></b></th>
        <th><b></b></th>
    </tr>
</table>
<a href="/webproject-1.0-SNAPSHOT">Back</a>
</body>
</html>