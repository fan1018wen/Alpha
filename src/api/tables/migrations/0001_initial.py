# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-10-10 14:34
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Tables',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(default=django.utils.timezone.now, verbose_name='创建于')),
                ('updated_at', models.DateTimeField(auto_now=True, verbose_name='更新于')),
                ('name', models.CharField(max_length=128, null=True, verbose_name='名称')),
                ('description', models.CharField(max_length=256, null=True, verbose_name='描述')),
                ('type', models.SmallIntegerField(choices=[(0, 'LOCATION'), (1, 'HISTORY'), (2, 'SQL')], verbose_name='表格种类')),
                ('content', models.TextField(default='[]', verbose_name='内容')),
            ],
            options={
                'db_table': 'tables',
                'ordering': ['-id'],
            },
        ),
    ]