[addon]
packages =
    plonetheme.diazo_sunburst
    zope2_bootstrap
zcml = 
    zope2_bootstrap

[buildout]
extends = 
# The order matters
    https://raw.github.com/pythonpackages/buildout-plone/master/4.3.1-versions.cfg
    https://raw.github.com/pythonpackages/buildout-plone/master/base.cfg

[plone]
eggs = 
    ${base:packages}
    ${addon:packages}

zcml =
    ${base:zcml}
    ${addon:zcml}
