/**
 * Created by ASUS on 2016/5/25.
 */

//变量初始化
var rand            =       Math.floor(Math.random() * 5 ) + 1,
    body            =       $('body'),
    login           =       $('#login'),
    loginAccounts   =       $('#login-accounts'),
    loginPassword   =       $('#login-password');

//随机背景
body.css('background', 'url(' + ThinkPHP['IMG'] + '/bg' + rand + '.jpg) no-repeat center center fixed')
    .css('background-size', 'cover');

//浏览器改变大小时触发
$(window).resize(function () {
    login.dialog('center');
});

//登录面板
login.dialog({
    title : '登录后台',
    width: 370,
    height: 260,
    iconCls : 'icon-lock',
    closed: false,
    modal : false,
    maximizable : false,
    closable : false,
    draggable : false,
    buttons:[
    {
        text : '登录',
        id : 'login-btn',
        size : 'large',
        iconCls : 'icon-go',
        handler : function ()
        {

        }
    }],
    onOpen : function ()
    {
        $(function ()
        {
            $('#login-btn').parent().css('text-align', 'center');
        });

    }
});

/*表单字段区域*/

//登录帐号
loginAccounts.textbox({
    width : 220,
    height : 32,
    iconCls : 'icon-man',
    required : true,
    validType : 'length[2,20]',
    missingMessage : '请输入登录帐号',
    invalidMessage : '登录帐号2-20位之间'
});

//登录密码
loginPassword.textbox({
    width : 220,
    height : 32,
    iconCls : 'icon-lock2',
    validType : 'length[6,30]',
    required : true,
    missingMessage : '请输入登录密码',
    invalidMessage : '登录密码6-30位之间'
});