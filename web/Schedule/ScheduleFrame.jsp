<%--
  Created by IntelliJ IDEA.
  User: Jim.Wu
  Date: 2018/11/2
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
       style="border-spacing: 1px 0px;" bgcolor="#CCCCCC">
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
    <tr class="ScheduleItem" onclick="ClickForDetails(this);" id="" bgcolor="white">
        <td class="aa">
            <img name="ReqDetail_pic" src="add.gif">
            <img name="ReqDetail_pic" src="minus.gif" style="display: none;">
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
    <tr name="ReqDetail_lab" bgcolor="white">
        <td colspan="16" align="center">
            <div class="ScheduleItemDetails">
                <div class="menubox tabborder">
                    <ul>
                        <li onclick="setTab(this,0,8)">Cover Page</li>
                        <li onclick="setTab(this,1,8)">DQA Work</li>
                        <li onclick="setTab(this,2,8)">Bug List</li>
                        <li onclick="setTab(this,3,8)">Attachments</li>
                    </ul>
                </div>
                <div class="contentbox tabborder" style="display: block;">
                    <div style="display: block;">
                        <table width="90%">
                            <tbody>
                            <tr>
                                <td>
                                    <table class="mainborder" width="100%" style="margin-top: 15px;" cellpadding="2"
                                           cellspacing="1" align="center">
                                        <tbody>
                                        <tr>
                                            <td width="180px" class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif"> Application Date:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393">2018-05-09</td>
                                        </tr>
                                        <tr>
                                            <td width="180px" class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif"> Demand Start Date:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393">2018-05-09</td>
                                        </tr>
                                        <tr>
                                            <td width="180px" class="aa">
                                                <img src="icon1.gif"> Demand End Date:
                                            </td>
                                            <td class="aa">2018-05-09</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td rowspan="4">
                                    <table class="mainborder" cellpadding="3" style="margin:-2px 0 0 10px; "
                                           cellspacing="1">
                                        <tbody>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif" style="margin-left: 2px;"> BU:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;"> ACG</td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif" style="margin-left: 2px;"> Project Code:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;"> ND1400217002</td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif" style="margin-left: 2px;"> Model Name:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;"> DMS-SA20</td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif" style="margin-left: 2px;"> Product Type:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;"> System Level</td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif" style="margin-left: 2px;"> Platform:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;"> other</td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif" style="margin-left: 2px;"> Product Name:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;"> DMS-SA20</td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif" style="margin-left: 2px;"> Cost Department:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;"></td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif" style="margin-left: 2px;"> PCB Name:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;"> DMS-SA20
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif" style="margin-left: 2px;"> PCB Version:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;"> A101-4
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif" style="margin-left: 2px;"> PCB Part No:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px solid #939393;"> 19A5SA2003-02
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa">
                                                <img src="icon1.gif" style="margin-left: 2px;"> 2nd Source Part Change
                                                Type:
                                            </td>
                                            <td class="aa"> Non-Change</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="mainborder" cellpadding="2" width="100%" cellspacing="1">
                                        <tbody>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;" width="180px">
                                                <img src="icon1.gif"> Planning Start Date:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;"></td>
                                        </tr>
                                        <tr>
                                            <td class="aa">
                                                <img src="icon1.gif"> Planning End Date:
                                            </td>
                                            <td class="aa"></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="mainborder" cellspacing="1" cellpadding="2" width="100%">
                                        <tbody>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;" width="180px">
                                                <img src="icon1.gif"> Sample/Data Arrive Date:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif"> Actual Start Date:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa">
                                                <img src="icon1.gif"> Actual End Date:
                                            </td>
                                            <td class="aa">
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table class="mainborder" cellpadding="2" cellspacing="1" width="100%">
                                        <tbody>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393">
                                                <img src="icon1.gif" alt=""> Task Description/Purpose: SKU7: SA20 MB+
                                                Panel：E000156/Y4ASA19001 + new scalar FW
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393">
                                                <img src="icon1.gif" alt=""> Team Leader:  Sophie.Song@advantech.com.cn
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393">
                                                <img src="icon1.gif" alt="">Team Leader Comments:
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393">
                                                <img src="icon1.gif" alt=""> Project Controller:
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393">
                                                <img src="icon1.gif" alt=""> Execute Engineers:
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393">
                                                <img src="icon1.gif" alt=""> Note:
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393">
                                                <img src="icon1.gif" alt=""> Project Controller Comments:
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393">
                                                <img src="icon1.gif" alt=""> Latest Sign Off Comments:
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa">
                                                <img src="icon1.gif" alt=""> Reason of No Report:
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table class="mainborder" cellpadding="2" cellspacing="1" width="100%">
                                        <tbody>
                                        <tr>
                                            <td class="aa"style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif" > RD Name:
                                            </td>
                                            <td class="aa"style="border-bottom: 1px dashed #939393;">
                                                洪偉庭 (Ext: )
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif"> RD Mail:
                                            </td>
                                            <td class="aa"style="border-bottom: 1px dashed #939393;">
                                                winston.hong@advantech.com.tw
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif" > PM:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                陳逸靜 (Ext: 8099)
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif"> PM Mail:
                                            </td>
                                            <td class="aa"style="border-bottom: 1px dashed #939393;">
                                                Carrie.Chen@advantech.com.tw
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif" > RD Manager:
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                王俊傑 (Ext: 1105)
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                <img src="icon1.gif"> RD Manager Mail;
                                            </td>
                                            <td class="aa" style="border-bottom: 1px dashed #939393;">
                                                Elton.Wang@advantech.com.tw
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="aa">
                                                <img src="icon1.gif" > Applicant Leader:
                                            </td>
                                            <td class="aa">
                                                (Ext:)
                                            </td>
                                            <td class="aa">
                                                <img src="icon1.gif"> Applicant Leader Mail:
                                            </td>
                                            <td class="aa">

                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            </tbody>

                        </table>
                    </div>
                    <div style="display: none;">
                        <table cellspacing="1" cellpadding="2" width="100%">
                            <tbody>
                            <tr>
                                <td bgcolor="#3a90c9" class="aa" align="center">No.</td>
                                <td bgcolor="#3a90c9" class="aa" align="center">Work Item</td>
                                <td bgcolor="#3a90c9" class="aa" align="center">TestQTY</td>
                                <td bgcolor="#3a90c9" class="aa" align="center">Engineer</td>
                                <td bgcolor="#3a90c9" class="aa" align="center">Start Time</td>
                                <td bgcolor="#3a90c9" class="aa" align="center">Update Time</td>
                                <td bgcolor="#3a90c9" class="aa" align="center">Work State</td>
                                <td bgcolor="#3a90c9" class="aa" align="center">Result</td>
                                <td bgcolor="#3a90c9" class="aa" align="center">Progress</td>
                                <td bgcolor="#3a90c9" class="aa" align="center">Comment</td>
                                <td bgcolor="#3a90c9" class="aa" align="center">TaskHr</td>
                                <td bgcolor="#3a90c9" class="aa" align="center">BugHr</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div style="display: none;">
                        <table cellpadding="3" cellspacing="1" width="100%">
                            <tbody>
                            <tr>
                                <td align="center" bgcolor="#3a90c9" class="aa">Bug ID</td>
                                <td align="center" bgcolor="#3a90c9" class="aa">Issue</td>
                                <td align="center" bgcolor="#3a90c9" class="aa">Issue Type</td>
                                <td align="center" bgcolor="#3a90c9" class="aa">RequestID</td>
                                <td align="center" bgcolor="#3a90c9" class="aa">Solution</td>
                                <td align="center" bgcolor="#3a90c9" class="aa">Assign To</td>
                                <td align="center" bgcolor="#3a90c9" class="aa">Status</td>
                                <td align="center" bgcolor="#3a90c9" class="aa">Update_Date</td>
                                <td align="center" bgcolor="#3a90c9" class="aa">Idle_Day</td>
                                <td align="center" bgcolor="#3a90c9" class="aa">RedmineAssignee</td>
                            </tr>
                            <tr></tr>
                            </tbody>
                        </table>
                    </div>
                    <div style="display:none"></div>
                </div>

            </div>
        </td>

    </tr>
    </tbody>
</table>
<script src="ScheduleFrame.js"></script>
</body>
</html>
