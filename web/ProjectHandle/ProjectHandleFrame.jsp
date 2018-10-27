<%--
  Created by IntelliJ IDEA.
  User: Jim.Wu
  Date: 2018/10/17
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link href="ProjectHandle.css" type="text/css" rel="stylesheet">
    <script src="../jquery-3.3.1.js"></script>
    <script>
        $(
            function () {
                $("#ProjectHandleTable tr:odd").css("background", "#F5FAFF");
            }
        )
    </script>
</head>
<body>

<%--TODO 这里显示填单人信息--%>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tbody>
    <tr>
        <td style="text-align: left;width: 33%">Fill Single:</td>
        <td style="text-align: left;width: 33%">EXT:</td>
        <td style="text-align: left;width: 33%">Department:</td>
    </tr>
    </tbody>
</table>

<%--TODO 这里是提单的表单--%>
<form name="ProjectHandleForm" id="ProjectHandleForm" method="post" action="">
    <table id="ProjectHandleTable" width="100%" border="0" cellpadding="2" cellspacing="0">
        <tbody>
        <th colspan="2" class="ProjectHandleTh">ProjectHandleForm</th>
        <tr>
            <td class="tdleft" align="right">Request ID:</td>
            <td><input type="text" name="RequestID" id="RequestID"></td>
        </tr>
        <tr>
            <td class="tdleft">Product Type:</td>
            <td><input type="text" name="ProductType" id="ProductType"></td>
        </tr>
        <tr>
            <td class="tdleft">Product Name:</td>
            <td><input type="text" name="ProductName" id="ProductName"></td>
        </tr>
        <tr>
            <td class="tdleft">Work Department:</td>
            <%--TODO 这里的WorkDepartment应该是需要改--%>
            <td><input type="checkbox" name="WorkDepartment" id="WorkDepartment" checked="checked">ACN_LAB</td>
        </tr>
        <%--<tr onclick="">--%>
        <%--&lt;%&ndash;TODO 这里需要写一个ACN_LAB Work Item的折叠选项&ndash;%&gt;--%>
        <%--<td class="tdleft"></td>--%>
        <%--<td>ACN_LAB Work Item</td>--%>
        <%--</tr>--%>
        <tr>
            <td class="tdleft">Cost Department:</td>
            <td><input type="text" name="CostDepartment" id="CostDepartment"></td>
        </tr>
        <tr>
            <td class="tdleft">Sample Quantity:</td>
            <td><input type="text" name="SampleQuantity" id="SampleQuantity"></td>
        </tr>
        <tr>
            <td class="tdleft">MB/BP Name:</td>
            <td><input type="text" name="MBBPName" id="MBBPName"></td>
        </tr>
        <tr>
            <td class="tdleft">NPI Stage:</td>
            <td>
                <input type="radio" name="NPIStage">Plan
                <input type="radio" name="NPIStage">EVT
                <input type="radio" name="NPIStage">DVT
                <input type="radio" name="NPIStage">PVT
                <input type="radio" name="NPIStage">MP

            </td>
        </tr>
        <tr>
            <td class="tdleft">Task Description/Purpose:</td>
            <td><textarea rows="4" cols="32" name="TaskDescription" id="TaskDescription"></textarea></td>
        </tr>
        <tr>
            <td class="tdleft">Attachment:</td>
            <td><input type="text" name="Attachment" id="Attachment"></td>
        </tr>
        <tr>
            <td class="tdleft">Team Leader:</td>
            <td><select name="TeamLeader" id="TeamLeader">
                <option></option>
            </select></td>
        </tr>
        <tr>
            <td class="tdleft">Project Controller:</td>
            <td><input type="text" name="ProjectController" id="ProjectController"><img src="Icon_search.gif"></td>
        </tr>
        <tr>
            <td class="tdleft">Planning Start Date:</td>
            <td><input type="text" name="PlanStartDate" id="PlanStartDate"></td>
        </tr>
        <tr>
            <td class="tdleft">Planning End Date:</td>
            <td><input type="text" name="PlanEndDate" id="PlanEndDate"></td>
        </tr>
        <tr>
            <td class="tdleft">Sample/Data Arrive Date:</td>
            <td><input type="text" name="SampleDataArriveDate" id="SampleDataArriveDate"></td>
        </tr>
        <tr>
            <td class="tdleft">Actual Start Date:</td>
            <td><input type="text" name="ActualStartDate" id="ActualStartDate"></td>
        </tr>
        <tr>
            <td class="tdleft">Actual End Date:</td>
            <td><input type="text" name="ActualEndDate" id="ActualEndDate"></td>
        </tr>
        <tr>
            <td class="tdleft">Project Controller Comment:</td>
            <td><textarea rows="4" cols="32" name="ProjectControllerComment" id="ProjectControllerComment"></textarea>
            </td>
        </tr>
        <tr>
            <td class="tdleft">Work Report:</td>
            <td><img src="edit.gif"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="button" name="AddItem" value="Add Item">
                <input type="button" name="Close" value="Close">
                <input type="button" name="Update" value="Update"></td>
        </tr>
        </tbody>
    </table>

</form>

<br>
<br>
<%--TODO 这里是提单的进程显示--%>
<table id="HandleProcess" width="100%" cellspacing="0" cellpadding="0" border="0">
    <tbody>
    <th colspan="6" align="center" class="ProjectHandleTh">HandleProcess</th>
    <tr>
        <td class="HandleProcessTh" width="2%">No.</td>
        <td class="HandleProcessTh" width="4%">Step Name</td>
        <td class="HandleProcessTh" width="5%">Signee</td>
        <td class="HandleProcessTh" width="5%">DateTime</td>
        <td class="HandleProcessTh" width="3%">command</td>
        <td class="HandleProcessTh" width="8%">Remarks</td>
    </tr>
    <tr>
        <td>1</td>
        <td>Applicant</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>2</td>
        <td>Applicant Leader</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>3</td>
        <td>ACN_LAB Team Leader</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>4</td>
        <td>ACN_LAB Project Controller</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>
</body>
</html>
