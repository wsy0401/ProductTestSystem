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
<%--<div class="ScheduleSearchResult">--%>
<%--<div class="SearchResultHeader">--%>
<%--<div class="No">No</div>--%>
<%--<div class="RequestID">RequestID</div>--%>
<%--<div class="PD">PD</div>--%>
<%--<div class="ProductName">Product Name</div>--%>
<%--<div class="Task">Task</div>--%>
<%--<div class="NPIStage">NPI Stage</div>--%>
<%--<div class="Team">Team</div>--%>
<%--<div class="Applicant">Applicant</div>--%>
<%--<div class="ProjectController">ProjectController</div>--%>
<%--<div class="PlanStartDate">Planning Start Date</div>--%>
<%--<div class="PlanEndDate">Planning End Date</div>--%>
<%--<div class="TSU">TSU</div>--%>
<%--<div class="Schedule">Schedule</div>--%>
<%--<div class="Status">Status</div>--%>
<%--</div>--%>


<%--</div>--%>

<table border="0" cellpadding="3" cellspacing="0" width="100%" align="center" id="t1"
       style="border-spacing: 1px 0px;">
    <tbody>
    <tr>
        <td align="left" bgcolor="#4071A0" class="aa">
            <span style="color: white;">Code</span>
            <br>
            <img id="ShowAll" src="add2.jpg" onclick="ToggleAllDetails()" height="16" width="16"
                 style="cursor:pointer;">
            <img id="HideAll" src="minus2.jpg" onclick="ToggleAllDetails()" height="16" width="16"
                 style="display: none;">
        </td>
        <td align="left" bgcolor="#4071A0" class="aa">
            <a class="btna">Request ID</a>
        </td>
        <td align="left" bgcolor="#4071A0" class="aa">
            <a class="btna">PD</a>
            <br>
            <select id="sel_ADV_PD" name="ADV_PD" class="titleFilter" style="width: 90px;" onchange="OnTitleFilter()">
                <option selected>All</option>
            </select>
        </td>
        <td align="left" bgcolor="#4071A0" class="aa">
            <a class="btna" href="">Product Name</a>
        </td>
        <td align="left" bgcolor="#4071A0" class="aa">
            <a class="btna" href="">Task</a>
            <br>
            <select id="sel_ADV_Task" name="ADV_Task" class="titleFilter" style="width: 100px;"
                    onchange="OnTitleFilter()">
                <option selected>All</option>
            </select>
        </td>
        <td align="left" bgcolor="#4071A0" class="aa">
            <a class="btna" href="">NPI Stage</a>
            <br>
            <select id="sel_ADV_Test_Request" class="titleFilter" style="width:85px;" onchange="OnTitleFilter()">
                <option selected>All</option>
            </select>
        </td>
        <td align="left" bgcolor="#4071A0" class="aa">
            <a class="btna" href="">Team</a>
            <br>
            <select id="sel_ADV_Unit" class="titleFilter" style="width: 145px;" onchange="OnTitleFilter()">
                <option selected>All</option>
            </select>
        </td>
        <td align="left" bgcolor="#4071A0" class="aa">
            <a class="btna" href="">Applicant</a>
        </td>
        <td align="left" bgcolor="#4071A0" class="aa">
            <a class="btna">Project Controller</a>
        </td>
        <td align="left" bgcolor="#4071A0" class="aa">
            <a class="btna" href="">Planning Start Date</a>
            <input id="txt_ADV_ESTTestSTDate" name="ADV_ESTTestSTDate" type="text" style="width: 68px;"
                   readonly="readonly" onclick="" onfocus="">
        </td>
        <td align="left" bgcolor="#4071A0" class="aa">
            <a class="btna" href="">Planning End Date</a>
            <input id="txt_ADV_ESTTestEDDate" name="ADV_ESTTestEDDate" type="text" style="width: 68px;"
                   readonly="readonly" onclick="" onfocus="">
        </td>
        <td align="left" bgcolor="#4071A0" class="aa">
            <a class="btna" href="">TSU</a><br>
            <select id="sel_ADV_TSU" name="ADV_TSU" class="titleFilter" style="width: 80px;" onchange="">
                <option selected>All</option>
            </select>
        </td>
        <td align="left" bgcolor="#4071A0" class="aa">
            <span style="color: white;">Schedule</span>
            <br>
            <select id="sel_ADV_Schedule" name="ADV_Schedule" class="titleFilter" style="width:80px;" onchange="">
                <option selected>All</option>
            </select>
        </td>
        <td align="left" bgcolor="#4071A0" class="aa" colspan="2">
            <a class="btna" href="">Status</a>
            <br>
            <select id="sel_ADV_Status" name="ADV_Status" class="titleFilter" style="width:110px;"
                    onchange="OnTitleFilter();">
                <option selected>All</option>
            </select>
        </td>
        <td></td>
    </tr>
    <tr class="ScheduleItem" onclick="ClickForDetails(this);" id="">
        <td class="aa">
            <img id="picAdd" name="ReqDetail_pic" src="add.gif">
            <img id="picMinus" name="ReqDetail_pic" src="minus.gif" style="display: none;">
            &nbsp;1
        </td>
        <td class="aa">
            0661-335
        </td>
        <td class="aa">
            AC-Embedded System
        </td>
        <td class="aa">
            DMS-SA20
        </td>
        <td class="aa">
            DQA Test
        </td>
        <td class="aa">MP</td>
        <td class="aa">AplusTC_DQA</td>
        <td class="aa">ying.xiong</td>
        <td class="aa"></td>
        <td class="aa"></td>
        <td class="aa"></td>
        <td class="aa">Standard</td>
        <td class="aa">
            <div class="graph">
                <strong class="bar" style="width:50%; padding-left: 0px; background-color: #b1d632;"></strong>
            </div>
        </td>
        <td class="aa">
            <span style="color: #0000ff">Waiting Approve</span>
        </td>
        <td class="aa" align="center">
            <img src="CurrentStatus.gif" width="20" height="20" title="Item Fail: 0/0
Bug Close: 0/0">
        </td>
    </tr>
    </tbody>
</table>
<script src="ScheduleFrame.js"></script>
</body>
</html>
