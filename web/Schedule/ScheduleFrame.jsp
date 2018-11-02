<%--
  Created by IntelliJ IDEA.
  User: Jim.Wu
  Date: 2018/11/2
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试清单</title>
    <link href="../CommonCSS/Common.css" rel="stylesheet" type="text/css">
    <link href="ScheduleFrame.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="SearchBar">
    <input type="text" name="SearchInput">
    <select name="SearchType" style="width: 125px;">
        <option></option>
    </select>
    <input type="button" value="Search" onclick="">
</div>
<div class="ScheduleSearchResult">
    <div class="SearchResultHeader">
        <div class="No">No</div>
        <div class="RequestID">RequestID</div>
        <div class="PD">PD</div>
        <div class="ProductName">Product Name</div>
        <div class="Task">Task</div>
        <div class="NPIStage">NPI Stage</div>
        <div class="Team">Team</div>
        <div class="Applicant">Applicant</div>
        <div class="ProjectController">ProjectController</div>
        <div class="PlanStartDate">Planning Start Date</div>
        <div class="PlanEndDate">Planning End Date</div>
        <div class="TSU">TSU</div>
        <div class="Schedule">Schedule</div>
        <div class="Status">Status</div>
    </div>


</div>
</body>
</html>
