from django.db import models
from E_commerce.models import AdminProducts
from django.contrib.auth.models import User

# Create your models here.
class Cart(models.Model):

	class Meta():
		unique_together = ('user', 'product')     #using unique together do not create duplicate cart

	user = models.ForeignKey(User, on_delete=models.CASCADE)
	product = models.ForeignKey(AdminProducts, on_delete=models.CASCADE)
	

