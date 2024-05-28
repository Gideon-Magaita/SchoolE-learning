from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from .import views
from .import admins

urlpatterns=[
      path('',views.home,name='home'),
      #admin url
      #biology subject
      path('home_admin',admins.home_admin,name='home_admin'),
      path('add_biology',admins.add_biology,name='add_biology'),
      path('delete_biology/<int:bio_id>',admins.delete_biology,name='delete_biology'),
      path('edit_biology/<int:id>',admins.edit_biology,name='edit_biology'),
      path('biology_view/<int:id>',admins.biology_view,name='biology_view'),

      #admin url
      #chemistry subject
      path('add_chemistry',admins.add_chemistry,name='add_chemistry'),
      path('delete_chemistry/<int:bio_id>',admins.delete_chemistry,name='delete_chemistry'),
      path('edit_chemistry/<int:id>',admins.edit_chemistry,name='edit_chemistry'),
      path('chemistry_view/<int:id>',admins.chemistry_view,name='chemistry_view'),

      #admin url
      #physics subject
      path('add_physics',admins.add_physics,name='add_physics'),
      path('delete_physics/<int:bio_id>',admins.delete_physics,name='delete_physics'),
      path('edit_physics/<int:id>',admins.edit_physics,name='edit_physics'),
      path('physics_view/<int:id>',admins.physics_view,name='physics_view'),

      #admin url
      #mathematics subject
      path('add_mathematics',admins.add_mathematics,name='add_mathematics'),
      path('delete_mathematics/<int:bio_id>',admins.delete_mathematics,name='delete_mathematics'),
      path('edit_mathematics/<int:id>',admins.edit_mathematics,name='edit_mathematics'),
      path('mathematics_view/<int:id>',admins.mathematics_view,name='mathematics_view'),



      #chemistry url
      path('chemistry', views.chemistry,name='chemistry'),
      path('view_chemisrty/<int:id>',views.view_chemistry,name='view_chemistry'),
      path('alevel_chemistry',views.alevel_chemistry,name='alevel_chemistry'),
      path('view_chemistry_alevel/<int:id>',views.view_chemistry_alevel,name='view_chemistry_alevel'),
      #physics urls
      path('physics',views.physics,name='physics'),
      path('view_physics/<int:id>',views.view_physics,name='view_physics'),
      path('alevel_physics',views.alevel_physics,name='alevel_physics'),
      path('view_physics_alevel/<int:id>',views.view_physics_alevel,name='view_physics_alevel'),
      
      #biology urls
      path('biology',views.biology,name='biology'),
      path('view_biology/<int:id>',views.view_biology,name='view_biology'),
      path('alevel_biology',views.alevel_biology,name='alevel_biology'),
      path('view_biology_alevel/<int:id>',views.view_biology_alevel,name='view_biology_alevel'),
      #mathematics urls
      path('mathematics',views.mathematics,name='mathematics'),
      path('view_mathematics/<int:id>',views.view_mathematics,name='view_mathematics'),
      path('alevel_mathematics',views.alevel_mathematics,name='alevel_mathematics'),
      path('view_mathematics_alevel/<int:id>',views.view_mathematics_alevel,name='view_mathematics_alevel'),



      path('papers',views.papers,name='papers'),
      path('paper',admins.paper,name='paper'),
      
      path('feed',views.feed,name='feed'),
      path('feedbacks/',views.feedbacks,name='feedbacks'),

      #authentication urls
      path('register',views.register,name='register'),
      path('logoutUser',views.logoutUser,name='logoutUser'),
      path('logoutAdmin',admins.logoutAdmin,name='logoutAdmin'),
      path('login_user',views.login_user,name='login_user'),
      path('login_admin',admins.login_admin,name='login_admin'),


]
urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT) 
