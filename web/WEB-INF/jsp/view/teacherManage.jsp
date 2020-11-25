<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>articleManger</title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resource/jquery-easyui-1.3.3/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resource/jquery-easyui-1.3.3/themes/icon.css">
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resource/jquery-easyui-1.3.3/jquery.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resource/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resource/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resource/js/common.js"></script>

</head>
<body style="margin:1px;" id="ff">
<table id="dg" title="教师信息管理" class="easyui-datagrid" pagination="true"
       rownumbers="true" fit="true" data-options="pageSize:10"
       url="${pageContext.request.contextPath}/api/teacher/listHoutai" toolbar="#tb">
    <thead data-options="frozen:true">
    <tr>
        <th field="cb" checkbox="true" align="center"></th>

        <th field="t_id" width="10%" align="center" hidden="true">id</th>
        <th field="tname" width="200" align="center">姓名</th>
        <th field="tsex" width="150" align="center">性别</th>
        <th field="tbirthday" width="150" align="center">出生年月</th>

        <th field="learningExperience" width="10%" align="center" hidden="true">学习经历</th>
        <th field="jobtitle" width="200" align="center">职称</th>
        <th field="email" width="150" align="center">邮箱</th>
<%--        <th field="researchDirection" width="150" align="center">研究方向</th>--%>
<%--        <th field="researchDirection" width="150" align="center">研究方向</th>--%>

<%--        <th field="content" width="70" align="center"--%>
<%--            formatter="formatHref">操作--%>
<%--        </th>--%>


    </tr>
    </thead>
</table>
<div id="tb">
<%--    <div>--%>
<%--        <a href="javascript:openBeiShiZheAddDialog()" class="easyui-linkbutton"--%>
<%--&lt;%&ndash;           iconCls="icon-add" plain="true">添加</a> <a&ndash;%&gt;--%>
<%--&lt;%&ndash;            href="javascript:openBeiShiZheModifyDialog()"&ndash;%&gt;--%>
<%--&lt;%&ndash;            class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a> <a&ndash;%&gt;--%>
<%--&lt;%&ndash;            href="javascript:deleteBeiShiZhe()" class="easyui-linkbutton"&ndash;%&gt;--%>
<%--&lt;%&ndash;            iconCls="icon-remove" plain="true">删除</a>&ndash;%&gt;--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        &nbsp;真实姓名：&nbsp;<input type="text" id="subname" size="20"--%>
<%--                              onkeydown="if(event.keyCode==13) searchBeiShiZhe()"/>&nbsp; <a--%>
<%--            href="javascript:searchBeiShiZhe()" class="easyui-linkbutton"--%>
<%--            iconCls="icon-search" plain="true">搜索</a>--%>
<%--    </div>--%>
</div>



<script type="text/javascript">
    var url;

    function searchBeiShiZhe() {
        $("#dg").datagrid('load', {
            "subname": $("#subname").val(),
        });
    }

    function deleteBeiShiZhe() {
        var selectedRows = $("#dg").datagrid('getSelections');
        if (selectedRows.length == 0) {
            $.messager.alert("系统提示", "请选择要删除的数据！");
            return;
        }
        var strIds = [];
        for (var i = 0; i < selectedRows.length; i++) {
            strIds.push(selectedRows[i].id);
        }
        var ids = strIds.join(",");
        $.messager
            .confirm(
                "系统提示",
                "您确认要删除这<font color=red>" + selectedRows.length
                + "</font>条数据吗？",
                function (r) {
                    if (r) {
                        $.post(
                                "${pageContext.request.contextPath}/api/subjectinfo/delete",
                                {
                                    ids: ids
                                },
                                function (result) {
                                    if (result.success) {
                                        $.messager.alert(
                                            "系统提示",
                                            "数据已成功删除！");
                                        $("#dg").datagrid(
                                            "reload");
                                    } else {
                                        $.messager.alert(
                                            "系统提示",
                                            "数据删除失败！");
                                    }
                                }, "json");
                    }
                });

    }

    function openBeiShiZheAddDialog() {
        // var html = '<div id="myEditor" name="articleContent"></div>';
        // $('#editor').append(html);
        // ResetEditor(editor);
        // var ue = UE.getEditor('myEditor');
        // ue.setContent("");


        $("#dlg2").dialog("open").dialog("setTitle", "添加老师信息");
        $("#id").attr("disabled",true);
    }


    function openBeiShiZheModifyDialog() {
        var selectedRows = $("#dg").datagrid('getSelections');
        if (selectedRows.length != 1) {
            $.messager.alert("系统提示", "请选择一条要编辑的数据！");
            return;
        }


        var row = selectedRows[0];
        $("#dlg2").dialog("open").dialog("setTitle", "修改信息");
        $("#id").attr("disabled",false);
        $('#fm2').form('load', row);
       // var html = '<div id="myEditor" name="articleContent"></div>';
        ////$('#editor').append(html);
       // ResetEditor(editor);
       // var ue = UE.getEditor('myEditor');
        //ue.setContent(row.articleContent);
        url = "${pageContext.request.contextPath}/api/subjectinfo/save?id="
            + row.id;
    }

    function formatHref(val, row) {
        return "<a href='${pageContext.request.contextPath}/article/infoByid/" + row.id + "' target='_blank'>查看详情</a>";
    }

    function resetValue() {
        $("#title").val("");
        $("#addName").val("");
        $("#container").val("");
        // ResetEditor();
    }

    function closeBeiShiZheDialog() {
        $("#dlg2").dialog("close");
        resetValue();
    }

    function saveBeiShiZhe() {
        $("#fm2").form("submit", {
            url: "${pageContext.request.contextPath}/api/teacher/save",
            onSubmit: function () {
                return $(this).form("validate");
            },
            success: function (result) {
                $.messager.alert("系统提示", "保存成功");
                resetValue();
                $("#dlg2").dialog("close");
                $("#dg").datagrid("reload");
            }
        });
    }
</script>

<div id="dlg2" class="easyui-dialog"
     style="width: 820px;height:560px;padding: 10px 20px" closed="true"
     buttons="#dlg-buttons2">
    <form id="fm2" method="post">
        <table >
            <tr>
                <td>教师id：</td>
                <td><input type="text" id="t_id" name="t_id" disabled="false"
                           class="easyui-validatebox" required="true"  />&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>教师姓名：</td>
                <td><input type="text" id="tname" name="tname"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input type="text" id="tsex" name="tsex"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>出生日期：</td>
                <td><input type="Date" id="tbirthday" name="tbirthday"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>学习经历：</td>
                <td>
                <textarea rows="6" cols="80"  id="learningexperience" name="learningexperience"  class="easyui-validatebox"></textarea>
                </td>
            </tr>
            <tr>
                <td>职称：</td>
                <td><input type="text" id="jobtitle" name="jobtitle"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>邮箱：</td>
                <td><input type="text" id="email" name="email"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>研究方向：</td>
                <td>
                <textarea rows="6" cols="80"  id="researchdirection" name="researchdirection"  class="easyui-validatebox"></textarea>
                </td>
            </tr>
            <tr>
                <td>个人简历：</td>
                <td>
                <textarea rows="6" cols="80"  id="resume" name="resume"  class="easyui-validatebox"></textarea>
                </td>
            </tr>

            <tr>
                <td>获奖情况：</td>
                <td>
                <textarea rows="6" cols="80"  id="awarded" name="awarded"  class="easyui-validatebox"></textarea>
                </td>
            </tr>
            <tr>
                <td>代表性论文：</td>
                <td>
                <textarea rows="6" cols="80"  id="repersentativepapers" name="repersentativepapers"  class="easyui-validatebox"></textarea>
                </td>
            </tr>

            <tr>
                <td>主持的课题名称：</td>
                <td>
                <textarea rows="6" cols="80"  id="subjectname" name="subjectname"  class="easyui-validatebox"></textarea>
                </td>
            </tr>

            <tr>
                <td>授权专利：</td>
                <td>
                <textarea rows="6" cols="80"  id="patent" name="patent"  class="easyui-validatebox"></textarea>
                </td>
            </tr>

            <tr>
                <td>在研项目：</td>
                <td >
                    <textarea rows="6" cols="80"  id="researchingproject" name="researchingproject"  class="easyui-validatebox"></textarea>
                </td>
            </tr>

        </table>
    </form>
</div>

<div id="dlg-buttons2">
    <a href="javascript:saveBeiShiZhe()" class="easyui-linkbutton"
       iconCls="icon-ok">保存</a> <a href="javascript:closeBeiShiZheDialog()"
                                   class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
</div>
</body>
</html>