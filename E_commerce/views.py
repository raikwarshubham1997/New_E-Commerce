

from django.shortcuts import render, redirect     #render use for returning HTML templates
from django.http import HttpResponse
from django.contrib.auth.models import User
from django.contrib.auth.hashers import make_password
from django.contrib.auth import authenticate, login, logout
from datetime import datetime
from django.contrib import messages
from .models import AdminCategory, AdminProducts

# from Saller.models import SallerProducts


def welcomepage(request):
    return render(request, 'welcome.html')

def signin(request):
    if request.method == 'POST':
        username = request.POST['uname']
        password = request.POST['password']
       

        # if username != username:
        #     messages.warning(request, 'Username not match')
        #     return redirect('/login/')
        # elif password != password:
        #     messages.warning(request, "Password doesn't match")
        #     return redirect('/login/')


        user = authenticate(username=username, password=password)
        # print(user.date_joined)

        if user:
            login(request, user)
            if user.is_superuser:
                return redirect('/adminpanel/')
            elif user.is_staff:
                return redirect('/useraccount/userhome/')
            elif user.broker:
                return redirect('/business/saller_dashboard/')

        else:
            messages.warning(request, "Login credentials wrong!")
            return redirect('/login/')

    return render(request, "signin.html")


def logout(request):
	logout(request)
	return redirect('/login/')


def admin_home(request):
    count_caregory = AdminCategory.objects.all().count()
    count_product = AdminProducts.objects.all().count()
    count_user = User.objects.all().count()
    count_product = AdminProducts.objects.all().count()
    context ={
        'count_caregory':count_caregory,
        'count_product': count_product,
        'count_user': count_user
    }

    return render(request, 'dashboard.html', context)

def add_category(request):
    if request.method == "POST":
        name = request.POST['catname']

        catobj = AdminCategory(catname=name)
        catobj.save()
        messages.success(request, "Category Added Successfully!!!!")
    return render(request, 'addcategory.html')

def add_product(request):
    cobj = AdminCategory.objects.all()
    if request.method == "POST":
        title = request.POST['pname']
        desc = request.POST['desc']
        pr = request.POST['price']
        lessprice = request.POST['real_price']
        discount = request.POST['discount']
        qty = request.POST['qty']
        pimg = request.FILES['pro_img']
        catid = request.POST['catid']

        cobj = AdminCategory.objects.get(id=catid)
        print(cobj)
        uobj = User.objects.get(username=request.user)
        print(uobj)
        p = AdminProducts(title=title, desc=desc, price=pr, qty=qty, real_price=lessprice,discount=discount,pro_img=pimg, category=cobj, added_by=uobj)
        p.save()
        messages.success(request, "Product Added Successfully!")
        return redirect('/addproduct/')

    return render(request, "addproduct.html", {'catobjs' : cobj})

def get_product(request):
    obj=User.objects.get(id=request.user.id)
    print(obj)
    all_product = AdminProducts.objects.filter(added_by= obj.id)
    # print(obj.id)
    return render(request, "show_admin_product.html", {'all_product':all_product})
    # all_product = AdminProducts.objects.all()
    # return render(request, "show_admin_product.html", {'all_product':all_product,})

# function for Admin product delete
def Admin_product_delete(request, id):
    get_product_delete = AdminProducts.objects.get(id=id)
    get_product_delete.delete()
    # print(get_product_delete)
    messages.success(request,f"{get_product_delete.title} Deleted from Database!")
    return redirect('/show_products/')

    

def Admin_product_update(request, id):
    cobj = AdminCategory.objects.all()
    if request.method == 'POST':
        title = request.POST['pname']
        desc = request.POST['desc']
        pr = request.POST['price']
        lessprice = request.POST['real_price']
        discount = request.POST['discount']
        qty = request.POST['qty']
        # pimg = request.FILES['pro_img']
        catid = request.POST['catid']

        update_pro = AdminProducts.objects.filter(id=id)
        update_pro.update(title=title,desc=desc,price=pr,real_price=lessprice,discount=discount,qty=qty,category=catid)
        messages.success(request, "Product Updated Successful!!!!")
        return redirect('/show_products/')
    else:
        data = AdminProducts.objects.get(id=id)
        return render(request, "update_product.html",{'data': data,'catobjs' : cobj})

# Show Saller Products
def get_saller_product(request):
    saller_product = AdminProducts.objects.all()
    return render(request, "show_saller_product.html", {'saller_product':saller_product})


def createCart(request):
    pass


# show today's add product Best selling product
today = datetime.today()
year = today.year
month = today.month
day = today.day
def current_date(request):
    newproduct = AdminProducts.objects.filter(created__year=year, 
created__month=month, created__day=day).values()
    print(newproduct)
    # data = newproduct.values()[1]
    # print(data)
    return render(request, "dashboard.html", {'newproduct':newproduct})


