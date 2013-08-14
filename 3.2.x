[buildout]
extends = 
    http://dist.plone.org/release/3.2.3/versions.cfg
    https://raw.github.com/pythonpackages/buildout-plone/master/base.cfg
parts = plone
versions = versions

[plone]
recipe = plone.recipe.zope2instance
eggs = 
    Pillow
    Plone
    Products.PloneHotfix20121106
products =
user = admin:admin
zope2-location = ${zope2:location}

[zope2]
recipe = plone.recipe.zope2install
url = ${versions:zope2-url}

[versions]
Pillow = 1.7.8
zc.buildout = 1.7.1
