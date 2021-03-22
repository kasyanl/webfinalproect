<%--
  Created by IntelliJ IDEA.
  User: tehpol3
  Date: 22.03.2021
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <%--    <!--[if lt IE 9]>--%>
    <%--    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>--%>
    <%--    <![endif]-->--%>
    <style>
        body { margin: 0; }
        header {
            display: block;
            background:url(/img/topImg.jpg) repeat-x;
            /* Градиент */
        }
        .header-bg {
            background: url(/img/topImg.jpg) repeat-x center bottom;
            /* Животные */
            height: 250px; /* Высота шапки */
            text-align: center; /* Выравнивание по центру */
        }
        .header-bg img {
            position: relative; /* Относительное позиционирование */
            top: 40px; /* Сдвигаем картинку вниз */
        }
    </style>
</head>
<body>
<header>
    <div class="header-bg"></div>
</header>
</body>
</html>