[buildout]
extends = 
    http://dist.plone.org/release/4.1.6/versions.cfg
    https://raw.github.com/pythonpackages/buildout-plone/master/base.cfg
parts = plone
versions = versions

[plone]
recipe = plone.recipe.zope2instance
eggs =
    Pillow
    Plone
    Products.PloneHotfix20121106
user = admin:admin
