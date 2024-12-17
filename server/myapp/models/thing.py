from django.db import models
from .classification import  Classification

class Thing(models.Model):
    STATUS_CHOICES = (
        ('0', '上架'),
        ('1', '下架'),
    )
    id = models.BigAutoField(primary_key=True)
    courseinfo = models.TextField(blank=True, null=True)
    classification = models.ForeignKey(Classification, on_delete=models.CASCADE, blank=True, null=True,
                                       related_name='classification_thing')
    xuehao = models.CharField(max_length=20, blank=True, null=True)
    name = models.CharField(max_length=20, blank=True, null=True)
    sex = models.CharField(max_length=20, blank=True, null=True)
    birthday = models.CharField(max_length=20, blank=True, null=True)
    jiguan = models.CharField(max_length=20, blank=True, null=True)
    sfz = models.CharField(max_length=20, blank=True, null=True)
    minzu = models.CharField(max_length=20, blank=True, null=True)
    remark = models.CharField(max_length=30, blank=True, null=True)
    cover = models.ImageField(upload_to='cover/', null=True)
    status = models.CharField(max_length=1, choices=STATUS_CHOICES, default='0')
    create_time = models.DateTimeField(auto_now_add=True, null=True)

    class Meta:
        db_table = "b_thing"