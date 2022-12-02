from django.urls import path
from . import views
urlpatterns = [
    path('registers/', views.signup),
    path('saller_dashboard/', views.sallerDashboard),
    path('saller_category/', views.AddCategory),
    path('saller_product/', views.AddProduct),
    path('delete_product/<int:id>/', views.deleteProduct, name="del_cat"),
    path('update_product/<int:id>/', views.UpdateProduct, name="update_cat"),
    path('show_saller_products/', views.Show_product),
    path('logout/', views.logout),
]