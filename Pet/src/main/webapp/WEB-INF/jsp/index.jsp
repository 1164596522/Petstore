<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>你好啊！</title>
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
        width: 300px;
        height: 360px;
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
            upForm.pet_id.value = this.parentElement.parentElement.firstElementChild.firstChild.textContent;
            upForm.pet_category.value=this.parentElement.parentElement.firstElementChild.nextElementSibling.firstChild.textContent;
            upForm.pet_name.value=this.parentElement.parentElement.firstElementChild.nextElementSibling.nextElementSibling.firstChild.textContent;
            upForm.pet_tags.value=this.parentElement.parentElement.firstElementChild.nextElementSibling.nextElementSibling.nextElementSibling.firstChild.textContent;
            upForm.pet_status.value=this.parentElement.parentElement.firstElementChild.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.firstChild.textContent;
            $("#upPage").slideDown(1000);
        });
        $("#cancelBtn1").click(function () {
            $("#upPage").fadeOut(1000);
        });
    });
</script>
<body>
<div>
    <h1 style="text-align: center">宠物列表</h1>
    <button id="addPageBtn" style="left: 0px">新增</button>
    <table id="tab2" cellspacing="30" border="1" align="center"
           style="margin-top:25px;border-collapse:collapse;width:890px">
        <tr>
            <td>宠物编号</td>
            <td>宠物类别</td>
            <td>宠物名称</td>
            <td>宠物标签</td>
            <td>状态</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${Pets}" var="Pets">
            <tr>
                <td>${Pets.pet_id}</td>
                <td>${Pets.pet_category}</td>
                <td>${Pets.pet_name}</td>
                <td>${Pets.pet_tags}</td>
                <td>${Pets.pet_status}</td>
                <td><a href="/pet/${Pets.pet_id}">删除</a>/<a class="upPageBtn">修改</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
<div id="addPage">
    <h2 align="center">新增宠物</h2>
    <form id="addForm" method="post" action="/pet">
        宠物编号：<input name="pet_id" type="text"/><br/><br/>
        宠物类别：<input name="pet_category" type="text"/><br/><br/>
        宠物名称：<input name="pet_name" type="text"/><br/><br/>
        宠物标签：<input name="pet_tags" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;状态：<input name="pet_status" type="text"/><br/><br/>
        <div align="center">
            <input id="addBtn" style="width: 100px" type="submit" value="新增"/>
            <input id="cancelBtn" style="width: 100px" type="button" value="取消"/>
        </div>
    </form>
</div>
<div id="upPage">
    <h2 align="center">修改宠物</h2>
    <form id="upForm" method="get" action="/up">
        宠物编号：<input name="pet_id" type="text"/><br/><br/>
        宠物类别：<input name="pet_category" type="text"/><br/><br/>
        宠物名称：<input name="pet_name" type="text"/><br/><br/>
        宠物标签：<input name="pet_tags" type="text"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;状态：<input name="pet_status" type="text"/><br/><br/>
        <div>
            <input id="upBtn" style="width: 100px" type="submit" value="修改"/>
            <input id="cancelBtn1" style="width: 100px" type="button" value="取消"/>
        </div>
    </form>
</div>
</body>
</html>
