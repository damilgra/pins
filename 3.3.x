[buildout]
extends = 
    http://dist.plone.org/release/3.3.6/versions.cfg
    https://raw.github.com/pythonpackages/buildout-plone/master/base.cfg
parts = plone
versions = versions

[plone]
recipe = plone.recipe.zope2instance
zope2-location = ${zope2:location}

[zope2]
recipe = plone.recipe.zope2install
url = ${versions:zope2-url}

[versions]
Pillow = 1.7.8
plone.recipe.zope2install = 3.3
plone.recipe.zope2instance = 3.10
zc.buildout = 1.7.1
