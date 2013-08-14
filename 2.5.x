[buildout]
extends = https://raw.github.com/pythonpackages/buildout-plone/master/base.cfg
parts =
    instance
    plone
    zope2
versions = versions

[instance]
recipe = plone.recipe.zope2instance
eggs = 
    Pillow
    Products.PloneHotfix20110531
    Products.PloneHotfix20110720
    Products.PloneHotfix20121106
products = ${plone:location}
user = admin:admin
zope2-location = ${zope2:location}

[plone]
recipe = plone.recipe.distros
urls = http://launchpad.net/plone/2.5/2.5.5/+download/Plone-2.5.5.tar.gz
nested-packages = Plone-2.5.5.tar.gz
version-suffix-packages = Plone-2.5.5.tar.gz

[zope2]
recipe = plone.recipe.zope2install
url = http://www.zope.org/Products/Zope/2.9.12/Zope-2.9.12-final.tgz

[versions]
Pillow = 1.7.8
plone.recipe.zope2install = 3.3
plone.recipe.zope2instance = 3.10
zc.buildout = 1.7.1
