<!doctype html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <title>CRM客户关系管理系统</title>
    <link rel="stylesheet" href="__EASYUI__/themes/bootstrap/easyui.css">
    <link rel="stylesheet" href="__EASYUI__/themes/icon.css">
    <link rel="stylesheet" href="__CSS__/login.css">
    <script type="text/javascript">
        var ThinkPHP = {
            'MODULE' : '__MODULE__',
            'IMG' : '__PUBLIC__/img'
        };
    </script>
</head>
<body>


<!--登录面板-->
<form id="login" class="easyui-dialog">
    <table class="form-table" style="max-width: 420px;">
        <tbody>
            <tr>
                <td class="label" style="width: 83px;">
                    <label for="login-accounts" class="form-label">帐号：</label>
                </td>
                <td class="input">
                    <input type="text" id="login-accounts" class="easyui-textbox">
                </td>
            </tr>
            <tr>
                <td class="label" style="width: 83px;">
                    <label for="login-password" class="form-label">密码：</label>
                </td>
                <td class="input">
                    <input type="password" id="login-password"  class="easyui-textbox">
                </td>
            </tr>
            <tr>
                <td colspan="2" class="register">没有业务帐号？<a href="javascript:void(0)" class="btn-register">「快速申请」</a></td>
            </tr>
        </tbody>
    </table>
</form>




<script type="text/javascript" src="__EASYUI__/jquery.min.js"></script>
<script type="text/javascript" src="__EASYUI__/jquery.easyui.min.js"></script>
<script type="text/javascript" src="__EASYUI__/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="__JS__/login.js"></script>
</body>
</html>