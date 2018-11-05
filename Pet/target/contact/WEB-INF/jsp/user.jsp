<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>你好</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
</head>
<style>
    body {
        text-align: center
    }

    select {
        text-align: center;
        text-align-last: center;
    }

    input {
        text-align: center;
    }

    #addPage {
        position: absolute;
        width: 320px;
        height: 450px;
        top: 120px;
        left: 500px;
        background-color: #CEECF0;
        border: 1px solid black;
        padding: 30px;
        display: none;
    }

    #upPage {
        position: absolute;
        width: 300px;
        height: 360px;
        top: 120px;
        left: 500px;
        background-color: #CEECF0;
        border: 1px solid black;
        padding: 30px;
        display: none;
    }

    a {
        text-decoration: none;
        color: blue;
    }
</style>
<script>
    $(function () {
        $("#addPageBtn").click(function () {
            $("#addPage").slideDown(1000);
        });
        $("#cancelBtn").click(function () {
            $("#addPage").fadeOut(1000);
        });
        $(".upPageBtn").click(function () {
            upForm.user_id.value = this.parentElement.parentElement.firstElementChild.firstChild.textContent;
            upForm.user_name.value = this.parentElement.parentElement.firstElementChild.nextElementSibling.firstChild.textContent;
            upForm.first_name.value = this.parentElement.parentElement.firstElementChild.nextElementSibling.nextElementSibling.firstChild.textContent;
            upForm.last_name.value = this.parentElement.parentElement.firstElementChild.nextElementSibling.nextElementSibling.nextElementSibling.firstChild.textContent;
            upForm.user_email.value = this.parentElement.parentElement.firstElementChild.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.firstChild.textContent;
            upForm.user_password.value = this.parentElement.parentElement.firstElementChild.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.firstChild.textContent;
            upForm.user_phone.value = this.parentElement.parentElement.firstElementChild.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.firstChild.textContent;
            upForm.user_status.value = this.parentElement.parentElement.firstElementChild.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.firstChild.textContent;
            $("#upPage").slideDown(1000);
        });
        $("#cancelBtn1").click(function () {
            $("#upPage").fadeOut(1000);
        });
    });
</script>
<body>
<div>
    <h1 style="text-align: center">用户列表</h1>
    <button id="addPageBtn" style="left: 0px">新增</button>
    <table id="tab2" cellspacing="30" border="1" align="center"
           style="margin-top:25px;border-collapse:collapse;width:890px">
        <tr>
            <td>用户编号</td>
            <td>用户名</td>
            <td>姓氏</td>
            <td>名字</td>
            <td>邮箱</td>
            <td>密码</td>
            <td>电话</td>
            <td>状态</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${Users}" var="Users">
            <tr>
                <td>${Users.user_id}</td>
                <td>${Users.user_name}</td>
                <td>${Users.first_name}</td>
                <td>${Users.last_name}</td>
                <td>${Users.user_email}</td>
                <td>${Users.user_password}</td>
                <td>${Users.user_phone}</td>
                <td>${Users.user_status}</td>
                <td><a href="/user/del/${Users.user_name}">删除</a>/<a class="upPageBtn">修改</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
<div id="addPage">
    <h2 align="center">新增用户</h2>
    <form id="addForm" method="post" action="/user/add">
        用户编号：<input name="user_id" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;用户名：<input name="user_name" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓氏：<input name="first_name" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名字：<input name="last_name" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱：<input name="user_email" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码：<input name="user_password" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：<input name="user_phone" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;状态：<input name="user_status" type="text"/><br/><br/>
        <div align="center">
            <input id="addBtn" style="width: 100px" type="submit" value="新增"/>
            <input id="cancelBtn" style="width: 100px" type="button" value="取消"/>
        </div>
    </form>
</div>
<div id="upPage">
    <h2 align="center">修改用户</h2>
    <form id="upForm" method="get" action="/user/up">
        用户编号：<input name="user_id" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;用户名：<input name="user_name" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓氏：<input name="first_name" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名字：<input name="last_name" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱：<input name="user_email" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码：<input name="user_password" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：<input name="user_phone" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;状态：<input name="user_status" type="text"/><br/><br/>
        <div align="center">
            <input id="upBtn" style="width: 100px" type="submit" value="修改"/>
            <input id="cancelBtn1" style="width: 100px" type="button" value="取消"/>
        </div>
    </form>
</div>
</body>
</html>
