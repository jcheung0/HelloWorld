# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-03-25 04:14
from __future__ import unicode_literals

import datetime
from django.db import migrations, models
import django.db.models.deletion
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('chatting', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(max_length=50)),
                ('last_name', models.CharField(max_length=50)),
                ('username', models.EmailField(max_length=254)),
                ('password', models.CharField(max_length=100)),
            ],
        ),
        migrations.AddField(
            model_name='message',
            name='body',
            field=models.TextField(default=''),
        ),
        migrations.AddField(
            model_name='message',
            name='room',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='chatting.Room'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='message',
            name='submitted',
            field=models.DateTimeField(default=datetime.datetime(2016, 3, 25, 4, 14, 3, 168875, tzinfo=utc)),
        ),
        migrations.AddField(
            model_name='room',
            name='name',
            field=models.CharField(default='', max_length=50),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='message',
            name='sender',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='chatting.User'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='room',
            name='members',
            field=models.ManyToManyField(null=True, to='chatting.User'),
        ),
    ]
