from django.contrib import admin
from django.urls import path, include
from . import views

app_name = "saller"
app_name = "Buyer"
urlpatterns = [
    path('register/', views.signup),
    path('userhome/', views.buyer_home),
    path('shop/', views.shop),
    path('logout/', views.logout),
    path('description/<int:id>/<int:uid>/', views.ProductDetail, name="details"),
    # path('addtocart/<int:id>/<int:uid>/', views.AddToCart, name="addcart"),  # add cart with added by
    path('addtocart/<int:id>/', views.AddToCart, name="addcart"),     # add cart without added by
    path('show_cartproduct/',views.show_cartproduct, name="show_cartproduct"),
    path('deletecart/<int:id>',views.deletecart, name="deletecart"),
    path('cartcalculate/',views.cartcalculate, name="cartcalculate"),
    path('likeproduct/',views.likeItem, name="likeproduct"),
    path('contact/',views.contact),
    path('checkout/',views.checkout),
    path('postcart/<int:id>/<int:uid>/', views.postcart),
    # path('userhome/', views.current_date),
    path('bestdeal/', views.BestDeals),
]
