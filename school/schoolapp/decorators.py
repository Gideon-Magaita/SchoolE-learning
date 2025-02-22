from django.http import HttpResponse
from django.shortcuts import redirect

def unauthenticated_user(view_func):
    def wrapper_func(request,*args, **kwargs):
        if request.user.is_authenticated:
            if request.user.groups.all()[0].name=='user':
                return redirect('home')
            elif request.user.groups.all()[0].name=='admin':
                return redirect('home_admin')
            else:
                return view_func(request,*args, **kwargs)
        else: 
            return view_func(request,*args, **kwargs)
    return wrapper_func   

def allowed_users(allowed_roles=[]):
    def decorator(view_func):
        def wrapper_func(request, *args, **kwargs):
            
            group = None
            if request.user.groups.exists():
               group = request.user.groups.all()[0].name

            if group in allowed_roles:
               return view_func(request, *args, **kwargs)
            else:
                return HttpResponse('You are not authorized to view this page')   
        return wrapper_func
    return decorator 

def admin_only(view_func):
    def wrapper_func(request,*args, **kwargs):
        group = None
        if request.user.groups.exists():
            group = request.user.groups.all()[0].name
        if group == 'admin':
            return redirect('home_admin')
        if group == 'user':
            return view_func(request,*args, **kwargs)
    return wrapper_func        

