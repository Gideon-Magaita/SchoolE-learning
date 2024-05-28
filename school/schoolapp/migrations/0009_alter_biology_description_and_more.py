# Generated by Django 4.2.3 on 2023-07-19 15:24

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0008_alter_biology_levels_alter_chemistry_levels_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='biology',
            name='description',
            field=ckeditor.fields.RichTextField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='chemistry',
            name='description',
            field=ckeditor.fields.RichTextField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='mathematics',
            name='description',
            field=ckeditor.fields.RichTextField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='physics',
            name='description',
            field=ckeditor.fields.RichTextField(blank=True, null=True),
        ),
    ]
