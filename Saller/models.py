# from django.db import models
# from django.contrib.auth.models import User
# from E_commerce.models import AdminCategory


# class SallerProducts(models.Model):
# 	title = models.CharField(max_length=100)
# 	desc = models.CharField(max_length=200)
# 	price = models.DecimalField(max_digits=12, decimal_places=2)
# 	qty = models.IntegerField()
# 	pro_img = models.ImageField(upload_to='productimage', blank=True, null=True)
# 	category = models.ForeignKey(AdminCategory, on_delete=models.CASCADE)
# 	added_by = models.ForeignKey(User, on_delete=models.CASCADE)
# 	created = models.DateTimeField(auto_now_add=True)