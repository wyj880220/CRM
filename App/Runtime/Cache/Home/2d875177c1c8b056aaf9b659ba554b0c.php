<?php if (!defined('THINK_PATH')) exit();?><!--数据列表-->
<table id="post"></table>

<!--工具条-->
<form id="post-tool" style="padding: 5px;">
    <div class="tool-opt">
        <a href="javascript:void(0)" class="easyui-linkbutton" plain="true" iconCls="icon-add" onclick="postOpt.add()">新增</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" plain="true" iconCls="icon-edit" onclick="postOpt.edit()">编辑</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" plain="true" iconCls="icon-remove" onclick="postOpt.remove()">删除</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" plain="true" iconCls="icon-reload" onclick="postOpt.reload()">刷新表</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" plain="true" iconCls="icon-redo" onclick="postOpt.redo()">取消选定</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" plain="true" iconCls="icon-undo" onclick="postOpt.reset()">重置查询</a>
    </div>
    <div class="tool-search">
        <label for="post-search-keywords">关键字：</label>
        <input type="text" id="post-search-keywords">
        <input type="text" id="post-search-date-type">
        <input type="text" id="post-search-date-from">
        <label for="post-search-date-to">-</label>
        <input type="text" id="post-search-date-to">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-search" onclick="postOpt.search()">查询</a>
    </div>
</form>


<!--新增面板-->
<form id="post-add">
    <table class="form-table" style="max-width: 420px;">
        <tbody>
            <tr>
                <td class="label">
                    <label for="post-add-name" class="form-label">职位名称：</label>
                </td>
                <td class="input">
                    <input type="text" id="post-add-name">
                </td>
            </tr>
        </tbody>
    </table>
</form>

<!--修改面板-->
<form id="post-edit">
    <input type="hidden" id="post-edit-id" name="id">
    <table class="form-table" style="max-width: 420px;">
        <tbody>
        <tr>
            <td class="label">
                <label for="post-edit-name" class="form-label">职位名称：</label>
            </td>
            <td class="input">
                <input type="text" id="post-edit-name" name="name">
            </td>
        </tr>
        </tbody>
    </table>
</form>


<!--JS-->
<script type="text/javascript" src="/CRM/Public/js/post.js"></script>