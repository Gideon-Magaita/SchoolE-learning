from django.shortcuts import render,redirect
from .forms import *
from .models import *
from django.contrib import messages
from django.core.paginator import Paginator
from django.http import JsonResponse
#auth imports
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import Group
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from .admindecorator import unauthenticated_user,allowed_users,admin_only

@unauthenticated_user
def login_admin(request):
    if request.method == "POST":
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request,username=username,password=password)
        if user is not None:
            login(request,user)
            return redirect('home_admin')
        else:
            messages.error(request,'username or password is incorrect,try again!')

    return render(request,'Auth/admin_login.html')


def logoutAdmin(request):
    logout(request)
    return redirect('login_admin')




@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def home_admin(request):
    count_biology = Biology.objects.all().count()
    count_chemistry = Chemistry.objects.all().count()
    context = {
        'count_biology':count_biology,
        'count_chemistry':count_chemistry,
    }
    return render(request,'admins/pages/index.html',context)

#add biology contents
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def add_biology(request):
    biology = Biology.objects.all()
    if request.method == 'POST':
        form = BiologyForm(request.POST or None, request.FILES or None )
        if form.is_valid():
            form.save()
            form = BiologyForm()
            messages.success(request,'Biology contents added successfully')
        else:            
            messages.error(request,'Something went wrong')
        return redirect('add_biology')
    else:
        form = BiologyForm()
    context={
        'form':form,
        'biology':biology
    }  
    return render(request,'admins/pages/biology/add-biology.html',context)

#edit biology contents
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def edit_biology(request,id):
  bios = Biology.objects.get(id=id)
  form = BiologyForm(request.POST or None,request.FILES or None, instance=bios)
  if form.is_valid():
    form.save()
    form = BiologyForm()
    messages.success(request,'Biology contents updated successfully')
    return redirect('add_biology')

  context={
    'form':form,
    }  
  return render(request,'admins/pages/biology/edit-biology.html',context)  



#view biology contents
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def biology_view(request,id):
    my_bios = Biology.objects.get(id=id)
    context={
        'my_bios':my_bios,
    }
    return render(request,'admins/pages/biology/view-biology.html',context)


#deleting biology content using ajax
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def delete_biology(request, bio_id):
    try:
        # Retrieve the Biology object
        bio = Biology.objects.get(pk=bio_id)
        # Perform the delete operation
        bio.delete()
        return JsonResponse({'message': 'Biology content deleted successfully.'}, status=200)
    except Biology.DoesNotExist:
        return JsonResponse({'message': 'Biology content not found.'}, status=404)
    except Exception as e:
        return JsonResponse({'message': str(e)}, status=500)



#chemistry functions
#add chemistry  contents
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def add_chemistry (request):
    chemistry  = Chemistry.objects.all()
    if request.method == 'POST':
        form = ChemistryForm(request.POST or None, request.FILES or None )
        if form.is_valid():
            form.save()
            form = ChemistryForm()
            messages.success(request,'Chemistry contents added successfully')
        else:            
            messages.error(request,'Something went wrong')
        return redirect('add_chemistry')
    else:
        form = ChemistryForm()
    context={
        'form':form,
        'chemistry':chemistry 
    }  
    return render(request,'admins/pages/chemistry/add-chemistry.html',context)


#edit chemistry  contents
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def edit_chemistry(request,id):
  bios = Chemistry.objects.get(id=id)
  form = ChemistryForm(request.POST or None,request.FILES or None, instance=bios)
  if form.is_valid():
    form.save()
    form = ChemistryForm()
    messages.success(request,'Chemistry contents updated successfully')
    return redirect('add_chemistry')

  context={
    'form':form,
    }  
  return render(request,'admins/pages/chemistry/edit-chemistry.html',context)  



#view chemistry  contents
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def chemistry_view(request,id):
    my_bios = Chemistry.objects.get(id=id)
    context={
        'my_bios':my_bios,
    }
    return render(request,'admins/pages/chemistry/view-chemistry.html',context)


#deleting chemistry  content using ajax
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def delete_chemistry(request, bio_id):
    try:
        # Retrieve the Chemistry object
        bio = Chemistry.objects.get(pk=bio_id)
        # Perform the delete operation
        bio.delete()
        return JsonResponse({'message': 'Chemistry content deleted successfully.'}, status=200)
    except Chemistry.DoesNotExist:
        return JsonResponse({'message': 'Chemistry content not found.'}, status=404)
    except Exception as e:
        return JsonResponse({'message': str(e)}, status=500)

#-------------------------------------------------------------

#physics functions
#add physics  contents
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def add_physics (request):
    physics  = Physics.objects.all()
    if request.method == 'POST':
        form = PhysicsForm(request.POST or None, request.FILES or None )
        if form.is_valid():
            form.save()
            form = PhysicsForm()
            messages.success(request,'Physics contents added successfully')
        else:            
            messages.error(request,'Something went wrong')
        return redirect('add_physics')
    else:
        form = PhysicsForm()
    context={
        'form':form,
        'physics':physics 
    }  
    return render(request,'admins/pages/physics/add-physics.html',context)


#edit physics  contents
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def edit_physics(request,id):
  bios = Physics.objects.get(id=id)
  form = PhysicsForm(request.POST or None,request.FILES or None, instance=bios)
  if form.is_valid():
    form.save()
    form = PhysicsForm()
    messages.success(request,'Physics contents updated successfully')
    return redirect('add_physics')

  context={
    'form':form,
    }  
  return render(request,'admins/pages/physics/edit-physics.html',context)  



#view physics  contents
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def physics_view(request,id):
    my_physics = Physics.objects.get(id=id)
    context={
        'my_physics':my_physics,
    }
    return render(request,'admins/pages/physics/view-physics.html',context)


#deleting physics  content using ajax
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def delete_physics(request, bio_id):
    try:
        # Retrieve the physics object
        bio = Physics.objects.get(pk=bio_id)
        # Perform the delete operation
        bio.delete()
        return JsonResponse({'message': 'Physics content deleted successfully.'}, status=200)
    except Physics.DoesNotExist:
        return JsonResponse({'message': 'Physics content not found.'}, status=404)
    except Exception as e:
        return JsonResponse({'message': str(e)}, status=500)

#-------------------------------------------------------------

#mathematics functions
#add mathematics  contents
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def add_mathematics (request):
    mathematics  = Mathematics.objects.all()
    if request.method == 'POST':
        form = MathematicsForm(request.POST or None, request.FILES or None )
        if form.is_valid():
            form.save()
            form = MathematicsForm()
            messages.success(request,'Mathematics contents added successfully')
        else:            
            messages.error(request,'Something went wrong')
        return redirect('add_mathematics')
    else:
        form = MathematicsForm()
    context={
        'form':form,
        'mathematics':mathematics, 
    }  
    return render(request,'admins/pages/mathematics/add-mathematics.html',context)


#edit add_mathematics  contents
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def edit_mathematics(request,id):
  bios = Mathematics.objects.get(id=id)
  form = MathematicsForm(request.POST or None,request.FILES or None, instance=bios)
  if form.is_valid():
    form.save()
    form = MathematicsForm()
    messages.success(request,'Mathematics contents updated successfully')
    return redirect('add_mathematics')

  context={
    'form':form,
    }  
  return render(request,'admins/pages/mathematics/edit-mathematics.html',context)  



#view mathematics  contents
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def mathematics_view(request,id):
    my_mathematics = Mathematics.objects.get(id=id)
    context={
        'my_mathematics':my_mathematics,
    }
    return render(request,'admins/pages/mathematics/view-mathematics.html',context)


#deleting mathematics  content using ajax
@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def delete_mathematics(request, bio_id):
    try:
        # Retrieve the mathematics object
        bio = Mathematics.objects.get(pk=bio_id)
        # Perform the delete operation
        bio.delete()
        return JsonResponse({'message': 'Mathematics content deleted successfully.'}, status=200)
    except Mathematics.DoesNotExist:
        return JsonResponse({'message': 'Mathematics content not found.'}, status=404)
    except Exception as e:
        return JsonResponse({'message': str(e)}, status=500)


@login_required(login_url='login_admin')
@allowed_users(allowed_roles=['admin'])
def paper(request):
    papers = PastPaper.objects.all()
    if request.method == 'POST':
        form = PastPaperForm(request.POST or None, request.FILES or None)
        if form.is_valid():
            form.save()
            messages.success(request,'content saved successfully')
        else:
            messages.error(request,'something went wrong')
        return redirect('paper')
    else:
        form = PastPaperForm()
        context={
            'form': form,
            'papers':papers,
        }
    
    return render(request,'admins/pages/papers/paper.html',context)
