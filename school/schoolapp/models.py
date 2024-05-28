from django.db import models
from datetime import datetime
# from ckeditor.fields import RichTextField
# Create your models here.


class Chemistry(models.Model):
    STATUS=(
        ('publish','publish'),
        ('unpublish','unpublish'),
    )
    LEVELS={
        ('O-Level','O-Level'),
        ('A-Level','A-Level'),
    }
    publisher = models.CharField(max_length=200, blank=True,null=True)
    title = models.CharField(max_length=200, blank=True,null=True)
    description = models.TextField(blank=True,null=True)
    image = models.ImageField(upload_to='images/',blank=True,null=True)
    pdf_file = models.FileField(upload_to='images/',blank=True,null=True)
    status = models.CharField(max_length=200, choices=STATUS,default='unpublish')
    levels = models.CharField(max_length=50, choices=LEVELS, default='O-Level')
    time = models.DateTimeField(default=datetime.now)

    def __str__(self):
      return self.title



class Physics(models.Model):
    STATUS=(
        ('publish','publish'),
        ('unpublish','unpublish'),
    )
    LEVELS={
        ('O-Level','O-Level'),
        ('A-Level','A-Level'),
    }
    publisher = models.CharField(max_length=200, blank=True,null=True)
    title = models.CharField(max_length=200, blank=True,null=True)
    description = models.TextField(blank=True,null=True)
    image = models.ImageField(upload_to='images/',blank=True,null=True)
    pdf_file = models.FileField(upload_to='images/',blank=True,null=True)
    status = models.CharField(max_length=200, choices=STATUS,default='unpublish')
    levels = models.CharField(max_length=50, choices=LEVELS, default='O-Level')
    time = models.DateTimeField(default=datetime.now)

    def __str__(self):
      return self.title



class Biology(models.Model):
    STATUS=(
        ('publish','publish'),
        ('unpublish','unpublish'),
    )
    LEVELS={
        ('O-Level','O-Level'),
        ('A-Level','A-Level'),
    }
    publisher = models.CharField(max_length=200, blank=True,null=True)
    title = models.CharField(max_length=200, blank=True,null=True)
    description = models.TextField(blank=True,null=True)
    image = models.ImageField(upload_to='images/',blank=True,null=True)
    pdf_file = models.FileField(upload_to='images/',blank=True,null=True)
    status = models.CharField(max_length=200, choices=STATUS,default='unpublish')
    levels = models.CharField(max_length=50, choices=LEVELS, default='O-Level')
    time = models.DateTimeField(default=datetime.now)

    def __str__(self):
      return self.title



class Mathematics(models.Model):
    STATUS=(
        ('publish','publish'),
        ('unpublish','unpublish'),
    )
    LEVELS={
        ('O-Level','O-Level'),
        ('A-Level','A-Level'),
    }
    publisher = models.CharField(max_length=200, blank=True,null=True)
    title = models.CharField(max_length=200, blank=True,null=True)
    description = models.TextField(blank=True,null=True)
    image = models.ImageField(upload_to='images/',blank=True,null=True)
    pdf_file = models.FileField(upload_to='images/',blank=True,null=True)
    status = models.CharField(max_length=200, choices=STATUS,default='unpublish')
    levels = models.CharField(max_length=50, choices=LEVELS, default='O-Level')
    time = models.DateTimeField(default=datetime.now)

    def __str__(self):
      return self.title


class Feedback(models.Model):
   email = models.EmailField(max_length=200)
   feedback = models.TextField()

   def __str__(self):
      return self.email

class PastPaper(models.Model):
   file_name = models.CharField(max_length=200,blank=True,null=True)
   paper_file = models.FileField(upload_to='images', blank=True, null=True)

   def __str__(self):
      return self.file_name
   