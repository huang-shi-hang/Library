# Generated by Django 3.2.9 on 2021-12-14 12:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0002_auto_20211214_2005'),
    ]

    operations = [
        migrations.AlterField(
            model_name='borrowinfo',
            name='oprator',
            field=models.CharField(max_length=32, verbose_name='录入人员'),
        ),
    ]