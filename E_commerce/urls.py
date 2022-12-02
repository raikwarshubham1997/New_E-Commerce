"""E_commerce URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from . import views
from django.conf import settings  
from django.conf.urls.static import static

app_name = "Saller"
app_name = "Buyer"
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.welcomepage),
    path('adminpanel/', views.admin_home),
    path('login/', views.signin),
    path('addcategory/', views.add_category),
    path('addproduct/', views.add_product),
    path('show_products/', views.get_product),
    path('update_product/<int:id>/', views.Admin_product_update, name="update"),
    path('delete_product/<int:id>/', views.Admin_product_delete, name="delete"),
    path('useraccount/', include("Buyer.urls")),
    path('business/', include("Saller.urls")),
    path('saller_product/', views.get_saller_product),
    path('logout/', views.logout),
    # path('newproduct/', views.current_date),
    
]

if settings.DEBUG:  
        urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT) 
