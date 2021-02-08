<%--
  Created by IntelliJ IDEA.
  User: 10237
  Date: 2021/2/6
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询所有学生</title>
    <script type="application/javascript" src="js/jquery-3.4.1.js"></script>
    <script>
        $(function (){
            selectStudents();
            $("#btn").click(function (){
                selectStudents();
            })
        })

        function selectStudents(){
            $.ajax({
                url:"student/selectStudents.do",
                type:"post",
                dataType:"json",
                success:function (resp){
                    //清除旧数据
                    $("#info").html("");
                    $.each(resp,function (a,b){
                        $("#info").append("<tr>")
                        .append("<td>"+b.id+"</td>")
                        .append("<td>"+b.name+"</td>")
                        .append("<td>"+b.age+"</td>")
                    })
                }
                }
            )
        }
    </script>
</head>
<body>
<table align="center"><thead>
    <tr>
        <td>id</td>
        <td>姓名</td>
        <td>年龄</td>
    </tr>
        </thead>
        <tbody id="info">

        </tbody>
</table>
<div align="center"><input id="btn" type="button" value="刷新" > </div>
</body>
</html>
