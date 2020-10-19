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
            src="${pageContext.request.contextPath}/resource/ueditor/ueditor.config.js">

    </script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resource/ueditor/ueditor.all.min.js">

    </script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/resource/js/common.js"></script>

</head>
<body style="margin:1px;" id="ff">
<table id="dg" title="受试者信息管理" class="easyui-datagrid" pagination="true"
       rownumbers="true" fit="true" data-options="pageSize:10"
       url="${pageContext.request.contextPath}/api/subjectinfo/listHoutai" toolbar="#tb">
    <thead data-options="frozen:true">
    <tr>
        <th field="cb" checkbox="true" align="center"></th>

        <th field="id" width="10%" align="center" hidden="true">id</th>
        <th field="subid" width="200" align="center">编号</th>
        <th field="subname" width="150" align="center">英文缩写</th>
        <th field="enabname" width="150" align="center">真实姓名</th>

        <th field="tel" width="10%" align="center" hidden="true">联系电话</th>
        <th field="workplace" width="200" align="center">工作单位</th>
        <th field="birth" width="150" align="center">出生年月</th>
        <th field="sex" width="150" align="center">性别</th>

<%--        <th field="content" width="70" align="center"--%>
<%--            formatter="formatHref">操作--%>
<%--        </th>--%>


    </tr>
    </thead>
</table>
<div id="tb">
    <div>
        <a href="javascript:openBeiShiZheAddDialog()" class="easyui-linkbutton"
           iconCls="icon-add" plain="true">添加</a> <a
            href="javascript:openBeiShiZheModifyDialog()"
            class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a> <a
            href="javascript:deleteBeiShiZhe()" class="easyui-linkbutton"
            iconCls="icon-remove" plain="true">删除</a>
    </div>
    <div>
        &nbsp;真实姓名：&nbsp;<input type="text" id="subname" size="20"
                              onkeydown="if(event.keyCode==13) searchBeiShiZhe()"/>&nbsp; <a
            href="javascript:searchBeiShiZhe()" class="easyui-linkbutton"
            iconCls="icon-search" plain="true">搜索</a>
    </div>
</div>



<script type="text/javascript">
    var url;
    function ResetEditor() {
        UE.getEditor('myEditor', {
            initialFrameHeight: 480,
            initialFrameWidth: 660,
            enableAutoSave: false,
            elementPathEnabled: false,
            wordCount: false,
            /*  toolbars: [
             [
             'fontfamily', 'fontsize', 'forecolor', 'backcolor', 'bold', 'italic', 'underline', '|',
             'link', '|',
             ]
             ]  */
        });
    }
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


        $("#dlg2").dialog("open").dialog("setTitle", "添加受试者信息");
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
        ResetEditor();
    }

    function closeBeiShiZheDialog() {
        $("#dlg2").dialog("close");
        resetValue();
    }

    function saveBeiShiZhe() {
        $("#fm2").form("submit", {
            url: "${pageContext.request.contextPath}/api/subjectinfo/save",
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
     style="width: 620px;height:420px;padding: 10px 20px" closed="true"
     buttons="#dlg-buttons2">
    <form id="fm2" method="post">
        <table cellspacing="8px">
            <tr>
                <td>被试者id：</td>
                <td><input type="text" id="id" name="id"
                           class="easyui-validatebox" required="true"  />&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>被试者编号：</td>
                <td><input type="text" id="subid" name="subid"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>英文缩写姓名：</td>
                <td><input type="text" id="enabname" name="enabname"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>真实姓名：</td>
                <td><input type="text" id="subname2" name="subname"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>邮件：</td>
                <td><input type="text" id="email" name="email"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>tel：</td>
                <td><input type="text" id="tel" name="tel"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>工作单位：</td>
                <td><input type="text" id="workplace" name="workplace"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input type="text" id="sex" name="sex"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>出生年月：</td>
                <td><input type="text" id="birth" name="birth"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
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