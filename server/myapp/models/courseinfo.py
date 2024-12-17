from django.db import models

class CourseInfo(models.Model):
    id = models.BigAutoField(primary_key=True)
    course_name = models.CharField(max_length=100, blank=True, null=True)
    course_description = models.TextField(blank=True, null=True)
    teacher_name = models.CharField(max_length=100, blank=True, null=True)
    create_time = models.DateTimeField(auto_now_add=True, null=True)

    class Meta:
        db_table = "b_course_info"