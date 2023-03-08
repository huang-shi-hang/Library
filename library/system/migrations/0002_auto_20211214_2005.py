# Generated by Django 3.2.9 on 2021-12-14 12:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='borrowinfo',
            name='author',
        ),
        migrations.RemoveField(
            model_name='borrowinfo',
            name='price',
        ),
        migrations.AddField(
            model_name='borrowinfo',
            name='oprator',
            field=models.CharField(max_length=32, null=True, verbose_name='录入人员'),
        ),
        migrations.AlterField(
            model_name='bookinfo',
            name='remarks',
            field=models.CharField(blank=True, max_length=32, null=True, verbose_name='书籍名'),
        ),
    ]
