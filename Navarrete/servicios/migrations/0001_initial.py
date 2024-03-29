# Generated by Django 5.0 on 2023-12-14 20:11

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Item',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo_item', models.CharField(max_length=255)),
                ('descripcion_item', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Servicio',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('icono', models.ImageField(upload_to='services/')),
                ('titulo', models.CharField(max_length=255)),
                ('descripcion', models.TextField()),
                ('items', models.ManyToManyField(to='servicios.item')),
            ],
        ),
    ]
