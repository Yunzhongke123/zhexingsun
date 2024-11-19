from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
class CustomUser(AbstractUser):
    role = models.CharField(max_length=10, choices=[('admin', 'Admin'), ('teacher', 'Teacher'), ('student', 'Student')],
                            default='student')


class Student(models.Model):
    student_id = models.CharField(verbose_name='学号',max_length=20, primary_key=True)
    student_name = models.CharField(verbose_name='姓名',max_length=100)
    address = models.CharField(verbose_name='住址',max_length=255, blank=True, null=True)
    major = models.CharField(verbose_name='专业',max_length=100, blank=True, null=True)
    college = models.CharField(verbose_name='院系',max_length=100, blank=True, null=True)
    telephone_num = models.CharField(verbose_name='电话',max_length=20, blank=True, null=True)

    def __str__(self):
        return self.student_id

class Teacher(models.Model):
    teacher_id = models.AutoField(verbose_name='工号',primary_key=True)
    name = models.CharField(verbose_name='姓名',max_length=100)

    def __str__(self):
        return self.name


class Course(models.Model):
    course_id = models.AutoField(verbose_name='课程号',primary_key=True)
    course_name = models.CharField(verbose_name='课程名称',max_length=100)
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)

    def __str__(self):
        return self.course_name

class Score(models.Model):
    score_id = models.AutoField(primary_key=True)
    student = models.ForeignKey(Student, on_delete=models.CASCADE)
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    score = models.DecimalField(verbose_name='成绩',max_digits=5, decimal_places=2)
