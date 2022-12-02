from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class AdminCategory(models.Model):
	catname = models.CharField(max_length=50)


class AdminProducts(models.Model):
	title = models.CharField(max_length=100)
	desc = models.CharField(max_length=200)
	price = models.DecimalField(max_digits=12, decimal_places=2)
	real_price = models.DecimalField(max_digits=12, decimal_places=2, null=True)
	discount = models.DecimalField(max_digits=12, decimal_places=2, blank=True, null=True)
	qty = models.IntegerField()
	pro_img = models.ImageField(upload_to='productimage', blank=True, null=True)
	category = models.ForeignKey(AdminCategory, on_delete=models.CASCADE)
	added_by = models.ForeignKey(User, on_delete=models.CASCADE)
	created = models.DateTimeField(auto_now_add=True)


class Contact(models.Model):
	name = models.CharField(max_length=50)
	email = models.EmailField(max_length=50)
	subject = models.CharField(max_length=50)
	message = models.CharField(max_length=300)
	

