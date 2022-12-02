from unicodedata import category
from django.shortcuts import render, redirect     #render use for returning HTML templates
from django.http import HttpResponse
from django.contrib.auth.models import User
from django.contrib.auth.hashers import make_password
from django.contrib.auth import authenticate, login, logout
from datetime import datetime
from django.contrib import messages
from django.core.mail import send_mail
# from .models import SallerProducts
from E_commerce.models import AdminCategory, AdminProducts


# function for Dashboard Features
def sallerDashboard(request):
    user_id =request.user.id
    count_product = AdminProducts.objects.filter(added_by=user_id).count()
    return render(request, 'Saller/dashboard.html',{'count_product':count_product})


# function for adding Category
def AddCategory(request):
    if request.method == "POST":
        cat_name = request.POST['catname']

        catobj = AdminCategory(catname=cat_name)
        catobj.save()
        messages.success(request, "Category Added Successfully.")
        return redirect('/business/saller_product/')
    else:
        
        return render(request, "saller/addcategory.html")





# function for adding Product
def AddProduct(request):
    caregory = AdminCategory.objects.all()
    if request.method == 'POST':
        proname = request.POST['pname']
        description = request.POST['desc']
        price = request.POST['price']
        lessprice = request.POST['real_price']
        discount = request.POST['discount']
        quantity = request.POST['qty']
        file = request.FILES['pro_img']
        catid = request.POST['catid']
        
        caregory = AdminCategory.objects.get(id=catid)
        print(caregory)
        uobj = User.objects.get(username=request.user)

        product = AdminProducts(title=proname,desc=description,price=price,real_price=lessprice,discount=discount,qty=quantity,pro_img=file, category=caregory, added_by=uobj)
        product.save()
        messages.success(request, "Product Created Successful!")
        return redirect('/business/saller_product/')
    
    return render(request, "saller/addproduct.html", {'caregory':caregory})

# # function for delete Product
def deleteProduct(request, id):
    del_category = AdminProducts.objects.get(id=id)
    del_category.delete()
    messages.success(request, "Product Deleted Successful!")
    return redirect('/business/saller_category/')

# function for update Product
def UpdateProduct(request, id):
    select_prod_id = AdminCategory.objects.all()
    print(select_prod_id)
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
        
        return redirect('/business/show_saller_products/')
    else:
        data = AdminProducts.objects.get(id=id)
        return render(request, "Saller/update_saller_product.html",{'data': data,'select_prod_id' : select_prod_id})
    
def Show_product(request):
    user_id =request.user.id
    cobjs = AdminProducts.objects.filter(added_by=user_id)
    show_product = AdminProducts.objects.all().count()
    return render(request, "saller/show_saller_product.html", {'cobjs':cobjs,'show_product':show_product})



# saller Registration function
def signup(request):
    if request.method == 'POST':
        name = request.POST['fname']
        lnm = request.POST['lname']
        email = request.POST['email']
        unm = request.POST['uname']
        pwd  = request.POST['password']
        date = datetime.now()
        

        user = User(first_name=name,last_name=lnm,email=email,username=unm,password=make_password(pwd),broker=True,date_joined=date)
        user.save()
        messages.success(request,"You has been Register successfully Check Mail")
        send_mail(
                'Response Mail',
                f'Hi {name} \nWeclcome to BankSathi Your Business Account Has been Created successfully.\nUsername: {unm}\nPassword: {pwd}',
                'techpanda.sr@gmail.com',
                [email],
                fail_silently=False,
            )
        return redirect('/business/registers/')    # return signup page
    else:
        return render(request, "saller/signup.html")


def logout(request):
	logout(request)
	return redirect('/login/')

