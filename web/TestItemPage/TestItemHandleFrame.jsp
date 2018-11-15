<%--
  Created by IntelliJ IDEA.
  User: Jim.Wu
  Date: 2018/10/23
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <title>测试项列表</title>
    <link type="text/css" rel="stylesheet" href="TestItemHandleFrame.css">
    <script>
        function selectAll(){

        }
    </script>
</head>
<body>
<div>
    Import Excel: <input name="file" type="file">
    <input type="button" value="Submit" onclick="">
    <a href="">Download Sample Excel</a>
    <a href=""></a>
</div>
<form action="" name="" id="">
    <table width="100%" cellpadding="0" cellspacing="0" style="color: black; width: 1500px;">
        <thead>
            <tr>
                <th>Del <input type="checkbox" onclick="selectAll()"></th>
                <th>No.</th>
                <th>Work Item</th>
                <th>ItemInfo</th>
                <th>Test QTY</th>
                <th>Engineer</th>
                <th>Equipment</th>
                <th>Start Time</th>
                <th>Work State</th>
                <th>Result</th>
                <th>Comment</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><input type="checkbox"></td>
                <td><input type="text" value="1.01" readonly="readonly" size="3"></td>
                <td align="left"><textarea rows="1" style="overflow: auto;width: 95%;" title="Low Temperature Operation Test" rows="1" value="Low Temperature Operation Test">Low Temperature Operation Test</textarea> </td>
                <td><input type="text" size="15"></td>
                <td><input type="text" value="1" style="width: 25px;"></td>
                <td style="white-space: nowrap"><input type="text" readonly="readonly" value="liang.cheng@Advantech.com.cn" size="20">
                    <img src="Icon_search.gif" onclick="" alt="Select Engineer" style="cursor: hand;">
                </td>
                <td>
                    <select name="" style="width: 150px">
                        <option></option>
                    </select>
                </td>
                <td>
                    <input type="text" readonly="readonly" size="6" maxlength="20" onclick="">
                </td>
                <td>
                    <select style="width:100px;">
                        <option></option>
                    </select>
                </td>
                <td>
                    <select style="width: 75px;" onclick="">
                        <option></option>
                    </select>
                </td>
                <td>
                    <textarea style="width: 220px;" rows="1"></textarea>
                </td>
            </tr>
        </tbody>
    </table>
    <div>
        <input type="button" value="Add Item" onclick="">
        <input type="button" value="Del Item" onclick="">
        <input type="button" value="Return" onclick="">
        <input type="submit" value="Update">
    </div>
</form>

</body>
</html>
