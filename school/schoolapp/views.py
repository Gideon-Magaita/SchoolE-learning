from django.shortcuts import render,redirect
from .forms import *
from .models import *
from django.core.paginator import Paginator
from django.http import JsonResponse
from django.contrib import messages
#auth imports
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import Group
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from .decorators import unauthenticated_user,allowed_users,admin_only


#authentication functions
@unauthenticated_user
def register(request):
    form = CreateUserForm()
    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            user = form.save()
            username = form.cleaned_data.get('username')
            group = Group.objects.get(name='user')
            user.groups.add(group)
            messages.success(request,'Account was created for' + username)
            return redirect('login_user')
    else:
        form = CreateUserForm()
    return render(request,'Auth/register.html',{'form':form})



@unauthenticated_user
def login_user(request):
    if request.method == "POST":
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request,username=username,password=password)
        if user is not None:
            login(request,user)
            return redirect('home')
        else:
            messages.error(request,'username or password is incorrect,try again!')

    return render(request,'Auth/login.html')


def logoutUser(request):
    logout(request)
    return redirect('login_user')





#endauth functions




# Create your views here.

def home(request):
    return render(request,'pages/home.html')

#O-level chemistry contents
def chemistry(request):
    # Retrieve all Chemistry objects
    chem_objects = Chemistry.objects.filter(status='publish', levels='O-Level')

    # Pagination
    paginator = Paginator(chem_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
    }
    return render(request, 'pages/chemistry/chemistry.html', context)


def view_chemistry(request,id):
    chemist=Chemistry.objects.get(id=id)
    # Retrieve all Chemistry objects
    chem_objects = Chemistry.objects.filter(status='publish', levels='O-Level')

    # Pagination
    paginator = Paginator(chem_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
        'chemist':chemist,
    }
   
    return render(request,'pages/chemistry/chemistry.html', context)
#O-level chemistry contents ends here

#A-level chemistry contents
def alevel_chemistry(request):
    # Retrieve all Chemistry objects
    chem_objects = Chemistry.objects.filter(status='publish', levels='A-Level')

    # Pagination
    paginator = Paginator(chem_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
    }
    return render(request, 'pages/chemistry/chemistryA.html', context)


def view_chemistry_alevel(request,id):
    chemist=Chemistry.objects.get(id=id)
    # Retrieve all Chemistry objects
    chem_objects = Chemistry.objects.filter(status='publish', levels='A-Level')

    # Pagination
    paginator = Paginator(chem_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
        'chemist':chemist,
    }
   
    return render(request,'pages/chemistry/chemistryA.html', context)
#A-level chemistry contents ends here




#Physics O-level contents
def physics(request):
    # Retrieve all physics objects
    physic_objects = Physics.objects.filter(status='publish',levels='O-Level')

    # Pagination
    paginator = Paginator(physic_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
    }
    print(page_obj)
    return render(request,'pages/physics/physics.html', context)



def view_physics(request,id):
    phys=Physics.objects.get(id=id)
    # Retrieve all physics objects
    physic_objects = Physics.objects.filter(status='publish',levels='O-Level')

    # Pagination
    paginator = Paginator(physic_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
        'phys':phys,
    }
    return render(request,'pages/physics/physics.html', context)
#endO-Level physics



#A-level chemistry contents
def alevel_physics(request):
    # Retrieve all physics objects
    phys_objects = Physics.objects.filter(status='publish', levels='A-Level')

    # Pagination
    paginator = Paginator(phys_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
    }
    return render(request, 'pages/physics/physicsA.html', context)


def view_physics_alevel(request,id):
    physic=Physics.objects.get(id=id)
    # Retrieve all Physics objects
    chem_objects = Physics.objects.filter(status='publish', levels='A-Level')

    # Pagination
    paginator = Paginator(chem_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
        'physic':physic,
    }
   
    return render(request,'pages/physics/physicsA.html', context)
#A-level physics contents ends here








#o-level biology
def biology(request):
    # Retrieve all biology objects
    biology_objects = Biology.objects.filter(status='publish',levels='O-Level')

    # Pagination
    paginator = Paginator(biology_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination
    context = {
        'page_obj': page_obj,
    }
    print(page_obj)
    return render(request,'pages/biology/biology.html', context)




def view_biology(request,id):
    biology=Biology.objects.get(id=id)
    # Retrieve all biology objects
    bios_objects = Biology.objects.filter(status='publish',levels='O-Level')

    # Pagination
    paginator = Paginator(bios_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
        'biology':biology,
    }
    return render(request,'pages/biology/biology.html', context)
#end o-level biology


#A-level chemistry contents
def alevel_biology(request):
    # Retrieve all biology objects
    biology_objects = Biology.objects.filter(status='publish', levels='A-Level')

    # Pagination
    paginator = Paginator(biology_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
    }
    return render(request, 'pages/biology/biologyA.html', context)


def view_biology_alevel(request,id):
    bios=Biology.objects.get(id=id)
    # Retrieve all Biology objects
    biology = Biology.objects.filter(status='publish', levels='A-Level')

    # Pagination
    paginator = Paginator(biology, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
        'bios':bios,
    }
   
    return render(request,'pages/biology/biologyA.html', context)
#A-level biology contents ends here












#o-level mathematics
def mathematics(request):
    # Retrieve all mathematics objects
    mathe_objects = Mathematics.objects.filter(status='publish',levels='O-Level')

    # Pagination
    paginator = Paginator(mathe_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
    }
    print(page_obj)
    return render(request,'pages/mathematics/mathematics.html', context)




def view_mathematics(request,id):
    mathe=Mathematics.objects.get(id=id)
    # Retrieve all mathematics objects
    maths_objects = Mathematics.objects.filter(status='publish',levels='O-Level')

    # Pagination
    paginator = Paginator(maths_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
        'mathe':mathe,
    }
    return render(request,'pages/mathematics/mathematics.html', context)
#end o-level mathematics



#A-level mathematics contents
def alevel_mathematics(request):
    # Retrieve all mathematics objects
    math_objects = Mathematics.objects.filter(status='publish', levels='A-Level')

    # Pagination
    paginator = Paginator(math_objects, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
    }
    return render(request, 'pages/mathematics/mathematicsA.html', context)


def view_mathematics_alevel(request,id):
    mathe=Mathematics.objects.get(id=id)
    # Retrieve all Mathematics objects
    mathematics = Mathematics.objects.filter(status='publish', levels='A-Level')

    # Pagination
    paginator = Paginator(mathematics, 2)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # End Pagination

    context = {
        'page_obj': page_obj,
        'mathe':mathe,
    }
   
    return render(request,'pages/mathematics/mathematicsA.html', context)
#A-level mathematics contents ends here



def papers(request):
    papers = PastPaper.objects.all()
    context={
        'papers':papers,
    }
    return render(request,'pages/pastpapers.html',context)


def feed(request):
    return render(request,'pages/feedbacks.html')


def feedbacks(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        feedback = request.POST.get('feedback')

        # Save the data to the database
        feedback_obj = Feedback(email=email, feedback=feedback)
        feedback_obj.save()
        return JsonResponse({'success': True})
    else:
        return JsonResponse({'success': False})    

    #     return JsonResponse({'success': True, 'redirect_url': '/feedbacks/'})
    # else:
    #     return render(request, 'pages/feedbacks.html')