from django.urls import path

from myapp import views

app_name = 'myapp'
urlpatterns = [
    # api
    path('admin/thing/list', views.admin.thing.list_api),
    path('admin/thing/detail', views.admin.thing.detail),
    path('admin/thing/create', views.admin.thing.create),
    path('admin/thing/update', views.admin.thing.update),
    path('admin/thing/delete', views.admin.thing.delete),
    path('admin/classification/list', views.admin.classification.list_api),
    path('admin/classification/create', views.admin.classification.create),
    path('admin/classification/update', views.admin.classification.update),
    path('admin/classification/delete', views.admin.classification.delete),
    path('admin/loginLog/list', views.admin.loginLog.list_api),
    path('admin/loginLog/create', views.admin.loginLog.create),
    path('admin/loginLog/update', views.admin.loginLog.update),
    path('admin/loginLog/delete', views.admin.loginLog.delete),
    path('admin/opLog/list', views.admin.opLog.list_api),
    path('admin/errorLog/list', views.admin.errorLog.list_api),
    path('admin/user/list', views.admin.user.list_api),
    path('admin/user/create', views.admin.user.create),
    path('admin/user/register', views.admin.user.register),
    path('admin/user/update', views.admin.user.update),
    path('admin/user/updatePwd', views.admin.user.updatePwd),
    path('admin/user/delete', views.admin.user.delete),
    path('admin/user/info', views.admin.user.info),
    path('admin/adminLogin', views.admin.user.admin_login),

    path('admin/courseinfo/list', views.admin.courseinfo.list_api),
    path('admin/courseinfo/create', views.admin.courseinfo.create),
    path('admin/courseinfo/update', views.admin.courseinfo.update),
    path('admin/courseinfo/delete', views.admin.courseinfo.delete),

    path('admin/score/list', views.admin.score.list_api),
    path('admin/score/create', views.admin.score.create),
    path('admin/score/update', views.admin.score.update),
    path('admin/score/delete', views.admin.score.delete),

    path('admin/active/list', views.admin.active.list_api),
    path('admin/active/create', views.admin.active.create),
    path('admin/active/update', views.admin.active.update),
    path('admin/active/delete', views.admin.active.delete),

]
