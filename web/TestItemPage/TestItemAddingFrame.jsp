<%--
  Created by IntelliJ IDEA.
  User: Jim.Wu
  Date: 2018/10/24
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试项选择与添加</title>
    <link href="../CommonCSS/style.css" type="text/css" rel="stylesheet">
    <link href="TestItemAddingFrame.css" type="text/css" rel="stylesheet">
</head>
<body>
<form action="" name="TestItemAddForm">
    <div id="filter">PD:
        <select id="pd_select" class="select">
            <option>common</option>
        </select>
        Type:

        <select id="" class="select">
            <option>common</option>
        </select>
    </div>
    <div id="TestItemTable" class="">
        <div class="thead">
            <div class="item-checkbox horizontal-center">
                <input type="checkbox" onclick="reverseCheckbox('item-checkbox[]')" id="checkbox">
                <label for="checkbox">全选</label>
            </div>
            <div class="itemNo" style="padding-left: 30px;">
                TestItem No
            </div>
            <div class="itemDescription horizontal-center">
                TestItem Description
            </div>
        </div>
        <div class="row">
            <div class="item-checkbox horizontal-center">
                <input type="checkbox" name="item-checkbox[]">
            </div>
            <div class="itemNo">
                <input type="text" value="1.01" size="10">
            </div>
            <div class="itemDescription">
                Temperature Test
            </div>
        </div>

        <div>
            <input type="button" value="Add">
            <input type="button" value="Del">
        </div>
        <div style="text-align: center">
            <input type="button" value="Reset">
            <input type="button" value="Submit">
            <input type="checkbox" name="">Default Assign
        </div>
    </div>
</form>
<script src="TestItemAddingFrame.js"></script>
</body>
</html>
