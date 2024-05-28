from django import forms
from django.forms import ModelForm
from .models import *
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User



#user registration
class CreateUserForm(UserCreationForm):

    class Meta:
        model = User
        fields = ['username','email','password1','password2']
        
    username = forms.CharField(widget=forms.TextInput(attrs={'class':'form-control','placeholder':'Enter your user name'}))
    email = forms.EmailField(widget=forms.EmailInput(attrs={'class':'form-control','placeholder':'Enter your email'}))
    password1 = forms.CharField(widget=forms.PasswordInput(attrs={'class':'form-control','placeholder':'Enter your password'}))
    password2 = forms.CharField(widget=forms.PasswordInput(attrs={'class':'form-control','placeholder':'Re-enter your password'}))
      


class BiologyForm(ModelForm):
    class Meta:
        model = Biology

        fields=['publisher','title','description','image','pdf_file','status','levels']

        widgets={
            'publisher':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter publisher name','required':'required'}),
            'title':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter topic title','required':'required'}),
            'description':forms.Textarea(attrs={'class':'form-control','placeholder':'Write some notes','required':'required'}),
            'image':forms.FileInput(attrs={'class':'form-control'}),
            'pdf_file':forms.FileInput(attrs={'class':'form-control'}),            
            'status':forms.Select(attrs={'class':'form-control', 'required':'required'}),
            'levels':forms.Select(attrs={'class':'form-control', 'required':'required'}),
        }



class ChemistryForm(ModelForm):
    class Meta:
        model = Chemistry

        fields=['publisher','title','description','image','pdf_file','status','levels']

        widgets={
            'publisher':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter publisher name','required':'required'}),
            'title':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter topic title','required':'required'}),
            'description':forms.Textarea(attrs={'class':'form-control','placeholder':'Write some notes','required':'required'}),
            'image':forms.FileInput(attrs={'class':'form-control'}),
            'pdf_file':forms.FileInput(attrs={'class':'form-control'}),            
            'status':forms.Select(attrs={'class':'form-control', 'required':'required'}),
            'levels':forms.Select(attrs={'class':'form-control', 'required':'required'}),
        }


class PhysicsForm(ModelForm):
    class Meta:
        model = Physics

        fields=['publisher','title','description','image','pdf_file','status','levels']

        widgets={
            'publisher':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter publisher name','required':'required'}),
            'title':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter topic title','required':'required'}),
            'description':forms.Textarea(attrs={'class':'form-control','placeholder':'Write some notes','required':'required'}),
            'image':forms.FileInput(attrs={'class':'form-control'}),
            'pdf_file':forms.FileInput(attrs={'class':'form-control'}),            
            'status':forms.Select(attrs={'class':'form-control', 'required':'required'}),
            'levels':forms.Select(attrs={'class':'form-control', 'required':'required'}),
        }


class MathematicsForm(ModelForm):
    class Meta:
        model = Mathematics

        fields=['publisher','title','description','image','pdf_file','status','levels']

        widgets={
            'publisher':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter publisher name','required':'required'}),
            'title':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter topic title','required':'required'}),
            'description':forms.Textarea(attrs={'class':'form-control','placeholder':'Write some notes','required':'required'}),
            'image':forms.FileInput(attrs={'class':'form-control'}),
            'pdf_file':forms.FileInput(attrs={'class':'form-control'}),            
            'status':forms.Select(attrs={'class':'form-control', 'required':'required'}),
            'levels':forms.Select(attrs={'class':'form-control', 'required':'required'}),
        }


class PastPaperForm(ModelForm):
    class Meta:
        model = PastPaper
        fields = ['file_name','paper_file']

        widgets = {
            'file_name': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Enter past paper name', 'required':'required'}),
            'paper_file': forms.FileInput(attrs={'class':'form-control', 'required':'required'}),
        }