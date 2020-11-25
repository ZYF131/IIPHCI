<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import= "java.net.URLEncoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>dataEEGManger</title>
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
<table id="dg" title="脑电EEG数据管理" class="easyui-datagrid" pagination="true"
       rownumbers="true" fit="true" data-options="pageSize:10"
       url="${pageContext.request.contextPath}/api/tResource/listHoutai" toolbar="#tb">
    <thead data-options="frozen:true">
    <tr>
        <th field="cb" checkbox="true" align="center"></th>
        <th field="id" width="10%" align="center" hidden="true">编号</th>
        <th field="title" width="200" align="center">标题</th>
        <th field="subjectid" width="150" align="center">被试者编号</th>
        <th field="datetime" width="150" align="center">添加时间</th>
        <th field="url" width="250" align="center">文件地址</th>

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
                                "${pageContext.request.contextPath}/api/tResource/delete",
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


        $("#dlg2").dialog("open").dialog("setTitle", "添加EEG数据信息");

        var d = new Date(),str = '';
        str += d.getFullYear() + '-'; //获取当前年份
        str += d.getMonth() + 1 + '-'; //获取当前月份（0——11）
        str += d.getDate() + ' ';
        str += d.getHours() + ':';
        str += d.getMinutes() + ':';
        str += d.getSeconds();
        $("#datetime").val(str);

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
            url: "${cx}/api/tResource/save",
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


    function check() {

        var crowd_file = $('#wenjian')[0].files[0];

        if (crowd_file.length == 0|| crowd_file == "") {
            alert(" 请选择上传文件");
            return false;
        }
             return true;

    }


    function saveWenjian() {

        var crowd_file = $('#wenjian')[0].files[0];

        if (crowd_file.length == 0) {
            alert(" 请选择上传文件");
            return false;
        }

        var date = new Date();
        var dateYear = date.getFullYear();             //获取年
        var dateMonth = date.getMonth()+1;               //获取月
        var dateDate = date.getDate();

        var FileExt=""+dateYear+""+dateMonth+""+dateDate+"/"+crowd_file.name;

        $('#url').val(FileExt);

        var formData = new FormData();
        formData.append('uploadfile', $('#wenjian')[0].files[0]);

        $.ajax({
            url:'${cx}/fileUpload/',
            dataType:'json',
            type:'POST',
            async: false,
            data: formData,
            processData : false, // 使数据不做处理
            contentType : false, // 不要设置Content-Type请求头
            success: function(data){
                console.log(data);
                if (data == 'ok') {
                    alert('上传成功！');
                }
            },
            error:function(response){
                console.log(response);
            }
        });
    }
</script>

<div id="dlg2" class="easyui-dialog"
     style="width: 680px;height:420px;padding: 10px 20px" closed="true"
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
                <td><input type="text" id="subjectid" name="subjectid"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>EEG数据文件:<input id= "wenjian" type="file" name="uploadfile" multiple="multiple" /></td>
                <td>
                    <a href="javascript:saveWenjian()" class="easyui-linkbutton" iconCls="icon-ok">保存文件</a> &nbsp;<font
                        color="red">*</font>
                </td>
            </tr>

            <tr>
                <td>标题：</td>
                <td><input type="text" id="title" name="title"
                           class="easyui-validatebox" required="true" />&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>添加时间：</td>
                <td><input type="text" id="datetime" name="datetime"
                           class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>url：</td>
                <td><input type="text" id="url" name="url"
                           class="easyui-validatebox" required="true" /><font
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