# Create your views here.
from django.db.models import Q
from rest_framework.decorators import api_view, authentication_classes

from myapp.auth.authentication import AdminTokenAuthtication
from myapp.handler import APIResponse
from myapp.models import CourseInfo
from myapp.permission.permission import isDemoAdminUser
from myapp.serializers import CourseInfoSerializer


@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':
        keyword = request.GET.get("keyword", '')
        courseInfos = CourseInfo.objects.filter(course_name__contains=keyword).order_by('-create_time')
        serializer = CourseInfoSerializer(courseInfos, many=True)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)


@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def create(request):
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    courseInfo = CourseInfo.objects.filter(course_name=request.data['course_name'])
    if len(courseInfo) > 0:
        return APIResponse(code=1, msg='该课程名称已存在')

    serializer = CourseInfoSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='创建成功', data=serializer.data)

    return APIResponse(code=1, msg='创建失败')


@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def update(request):
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        pk = request.GET.get('id', -1)
        print(pk)
        courseInfo = CourseInfo.objects.get(pk=pk)
    except courseInfo.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    serializer = CourseInfoSerializer(courseInfo, data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='更新成功', data=serializer.data)

    return APIResponse(code=1, msg='更新失败')


@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def delete(request):
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        ids = request.GET.get('ids')
        ids_arr = ids.split(',')
        # 删除自身和自身的子孩子
        CourseInfo.objects.filter(Q(id__in=ids_arr)).delete()
    except CourseInfo.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')
    return APIResponse(code=0, msg='删除成功')
