from django.db import models
class Score(models.Model):
    id = models.BigAutoField(primary_key=True)
    thing_name = models.CharField(max_length=100, blank=True, null=True)
    course_name = models.CharField(max_length=100, blank=True, null=True)
    create_time = models.DateTimeField(auto_now_add=True, null=True)
    score = models.IntegerField()

    class Meta:
        db_table = "b_score"