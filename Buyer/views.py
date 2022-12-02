from django.shortcuts import render, redirect     #render use for returning HTML templates
from django.http import HttpResponse
from django.contrib.auth.models import User
from django.contrib.auth.hashers import make_password
from django.contrib.auth import authenticate, login, logout
from datetime import datetime
from django.contrib import messages
# from E_commerce.models import Contact
from E_commerce.models import Contact, AdminProducts
from django.core.mail import send_mail
from django.db.models import Q
from .models import Cart


# show today's add product 
today = datetime.today()
year = today.year
month = today.month
day = today.day
def buyer_home(request):
    get_products = AdminProducts.objects.all().order_by('id').reverse()
#     newproduct = AdminProducts.objects.filter(created__year=year, 
# created__month=month, created__day=day).values()
    newproduct1 = AdminProducts.objects.all().order_by('discount').reverse()
    newproduct = newproduct1[:6]      #only 6 product continue slide
    
    print(newproduct[:6])
    # data = newproduct.values()[1]
    # print(data)
    # saler_product = SallerProducts.objects.all()
    # print(saler_product)
    current_user = User.objects.get(username=request.user)
    count_cart = Cart.objects.filter(user_id=current_user.id).count()
    # return render(request, 'buyer/index.html', {'get_product':get_products,'saler_product':saler_product})
    return render(request, 'buyer/index.html', {'get_product':get_products,'newproduct':newproduct,'count_cart':count_cart})




def signup(request):
    if request.method == 'POST':
        name = request.POST['fname']
        lnm = request.POST['lname']
        email = request.POST['email']
        unm = request.POST['uname']
        pwd  = request.POST['password']
        date = datetime.now()
        # su = 0
        # staff = 0
        # brk = 0

        # if role == "admin":
        #     su = 1
        # elif role == "buyer":
        #     staff = 1
        # elif role == "broker":
        #     brk = 1


        user = User(first_name=name,last_name=lnm,email=email,username=unm,password=make_password(pwd),is_staff=True,date_joined=date)
        user.save()
        messages.success(request,"Your account has been create Successfully!")
        send_mail(
                'Response Mail',
                f'Hi {name} \nWeclcome to Buy Fashion Your User Account Has been Created successfully.\nUsername: {unm}\nPassword:  {pwd}',
                'techpanda.sr@gmail.com',
                [email],
                fail_silently=False,
            )
        return redirect('/useraccount/register/')    # return signup page
    else:
        return render(request, "Buyer/signup.html")


def logout(request):
	logout(request)
	return redirect('/login/')

def shop(request):
    return render(request, "Buyer/shop.html")



# Admin product 
def ProductDetail(request, id, uid):
    # uobj = propertyType.objects.get(create_by=uid)
    # print(uobj)
    obj = AdminProducts.objects.get(id=id,added_by=uid)
    # print(obj)
    return render(request, "buyer/detail.html", {'obj' : obj})


def postcart(request,id,uid):
    # product = request.POST.get('product')
    obj = AdminProducts.objects.get(id=id,added_by=uid)
    
    


# def AddToCart(request, id, uid):
#     user = request.user.id
#     obj = AdminProducts.objects.get(id=id,added_by=uid)
#     print(obj)
#     return render(request, "buyer/detail.html", {'obj' : obj})



# ''' added by '''
# def AddToCart(request, id, uid):
#     user = User.objects.get(username=request.user)
#     print(user)
#     obj = AdminProducts.objects.get(id=id,added_by=uid)

#     print(obj)
#     return render(request, "buyer/detail.html", {'obj' : obj})

def AddToCart(request, id):
    user = User.objects.get(username=request.user)    #current user access anywhere
    obj = AdminProducts.objects.get(id=id)
    # print(user)
    # print(obj)
    try:
        c = Cart(user=user, product=obj)
        c.save()
        messages.success(request, "Product added to cart successfully...  ")
        return redirect('/useraccount/userhome/')
    except:
        messages.success(request, "Product Already added to cart.")
        return redirect('/useraccount/userhome/')



def show_cartproduct(request):
    # crt_count = Cart.objects.all()
    # print(crt_count.values())
    # return render(request, "buyer/cartproduct.html", {'crt_count':crt_count})
    objs=User.objects.get(id=request.user.id)
    crt_objects = Cart.objects.filter(user_id=objs.id).order_by('id').reverse()
    # print(crt_objects)
    items = []
    for i in crt_objects:          #using product_id we will send data all product 
        items.append(AdminProducts.objects.get(id=i.product_id))     #getting product objects for showing web page
    # print(items)
    return render(request, "buyer/cartproduct.html", {'items':items})


def cartcalculate(request):
    pqtys = request.POST.getlist("pqty") #[2, 1]   #pqty is name atribute     #getlist use bcoz same name return multiple objects 1 or more then one product qty
    prices = request.POST.getlist("price") #[2000, 30000]
    pids = request.POST.getlist("pid")   #[1,2]
   
    amt = 0
    for i in range(len(pqtys)):
        amt = amt + (float(prices[i])*int(pqtys[i])) #2*2000 =4000          #form data come from string type that's we would change into type cast
        
        pobj = AdminProducts.objects.filter(id=pids[i])
        updateQTY = pobj[0].qty - int(pqtys[i])
        pobj.update(qty=updateQTY)
        # print("data comming...")
    return render(request, "buyer/OrderUpdate.html", {'amt' : amt})


def deletecart(request, id):
    # objs=User.objects.get(id=request.user.id)
    # cobj = Cart.objects.get(user_id=objs.id)
    cobj = Cart.objects.get(product_id=id)
    cobj.delete()
    print("Successfully deleted")
    messages.success(request,"Cart Deleted!")
    return redirect('/useraccount/show_cartproduct/')



def checkout(request):
    return render(request, "Buyer/checkout.html")

def contact(request):
    if request.method == "POST":
        name = request.POST['fname']
        email = request.POST['email']
        subject = request.POST['subject']
        message = request.POST['message']

        user = Contact(name=name,email=email,subject=subject,message=message)
        user.save()
        print(user)
        messages.success(request, "Thank you! to contact us we will contact you soon")
        send_mail(
                'Response Mail',
                f'Hi {name} \nWeclcome to Buy Fashion You has been Successfully Register',
                'techpanda.sr@gmail.com',
                [email],
                fail_silently=False,
            )
        return redirect('/useraccount/contact/')
         

    return render(request, "Buyer/contact.html")

# show today's add product 
# today = datetime.today()
# year = today.year
# month = today.month
# day = today.day
# def current_date(request):
#     newproduct = AdminProducts.objects.filter(created__year=year, 
# created__month=month, created__day=day).values()
#     print(newproduct)
#     # data = newproduct.values()[1]
#     # print(data)
#     return render(request, "dashboard.html", {'newproduct':newproduct})

def BestDeals(request):
    if 'q' in request.GET:
        q = request.GET['q']
        # print(q)
        # data = Data.objects.filter(last_name__icontains=q)
        multiple_q = Q(Q(title__icontains=q) | Q(price__icontains=q) | Q(discount__icontains=q))
        best = AdminProducts.objects.filter(multiple_q)
    else:
        best = AdminProducts.objects.filter(discount=20)
    return render(request, "Buyer/bestdeal.html", {"best":best})


def likeItem(request, id):
    user = User.objects.get(username=request.user)    #current user access anywhere
    obj = AdminProducts.objects.get(id=id)
    # print(user)
    # print(obj)
    try:
        c = Cart(user=user, product=obj)
        c.save()
        messages.success(request, f"{c[0]}")
        return redirect('/useraccount/userhome/')
    except:
        messages.success(request, "Product Already added to cart.")
        return redirect('/useraccount/userhome/')