<?php
namespace Home\Controller;
use Think\Controller;

class PostController extends Controller
{

    //加载主页面
    public function index()
    {
        $this->display();
    }

    //加载数据列表
    public function getList()
    {
        if (IS_AJAX)
        {
            $Post = D('Post');
            $this->ajaxReturn($Post->getList(I('post.page'), I('post.rows'), I('post.sort'), I('post.order'),
                                             I('post.keywords'), I('post.dateType'), I('post.dateFrom'), I('post.dateTo')));
        } else {
            $this->error('非法操作！');
        }
    }

    //新增操作
    public function register()
    {
        if (IS_AJAX)
        {
            $Post = D('Post');
            echo $Post->register(I('post.name'));
        } else {
            $this->error('非法操作！');
        }
    }

    //根据ID获取一条记录
    public function getOne()
    {
        if (IS_AJAX)
        {
            $Post = D('Post');
            $this->ajaxReturn($Post->getOne(I('post.id')));
        } else {
            $this->error('非法操作！');
        }
    }

    //根据ID修改一条记录
    public function update()
    {
        if (IS_AJAX)
        {
            $Post = D('Post');
            echo $Post->update(I('post.id'), I('post.name'));
        } else {
            $this->error('非法操作！');
        }
    }

    //根据ID集合删除记录
    public function remove()
    {
        if (IS_AJAX)
        {
            $Post = D('Post');
            echo $Post->remove(I('post.ids'));
        } else {
            $this->error('非法操作！');
        }
    }

}