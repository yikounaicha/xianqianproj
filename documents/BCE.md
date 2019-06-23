# 架构设计、详细设计（BCE方法）到应用程序框架映射指南

## 逻辑架构
逻辑架构由三层模型（表示层、业务层、持久化层）构成

---
## 详细架构
src:
```
├─src
│  ├─action
│  ├─dao
│  ├─orm
│  ├─service
│  └─util
```
webroot:
```
─WebRoot
    ├─admin
    │  ├─catelog
    │  ├─gonggao
    │  ├─renwu
    │  ├─user
    │  ├─userinfo
    │  └─xinwen
    ├─auser
    ├─common
    ├─css
    ├─fckeditor
    │  ├─editor
    │  │  ├─css
    │  │  │  ├─behaviors
    │  │  │  └─images
    │  │  ├─dialog
    │  │  │  ├─common
    │  │  │  │  └─images
    │  │  │  ├─fck_about
    │  │  │  │  └─sponsors
    │  │  │  ├─fck_docprops
    │  │  │  ├─fck_flash
    │  │  │  ├─fck_image
    │  │  │  ├─fck_link
    │  │  │  ├─fck_select
    │  │  │  ├─fck_spellerpages
    │  │  │  │  └─spellerpages
    │  │  │  │      └─server-scripts
    │  │  │  └─fck_template
    │  │  │      └─images
    │  │  ├─dtd
    │  │  ├─filemanager
    │  │  │  ├─browser
    │  │  │  │  └─default
    │  │  │  │      ├─images
    │  │  │  │      │  └─icons
    │  │  │  │      │      └─32
    │  │  │  │      └─js
    │  │  │  └─connectors
    │  │  │      ├─asp
    │  │  │      ├─aspx
    │  │  │      ├─cfm
    │  │  │      ├─lasso
    │  │  │      ├─perl
    │  │  │      ├─php
    │  │  │      └─py
    │  │  ├─img
    │  │  │  └─smiley
    │  │  │      └─msn
    │  │  ├─js
    │  │  ├─lang
    │  │  ├─plugins
    │  │  │  ├─autogrow
    │  │  │  ├─bbcode
    │  │  │  │  └─_sample
    │  │  │  ├─dragresizetable
    │  │  │  ├─placeholder
    │  │  │  │  └─lang
    │  │  │  ├─simplecommands
    │  │  │  └─tablecommands
    │  │  ├─skins
    │  │  │  ├─default
    │  │  │  │  └─images
    │  │  │  ├─office2003
    │  │  │  │  └─images
    │  │  │  └─silver
    │  │  │      └─images
    │  │  └─_source
    │  │      ├─classes
    │  │      ├─commandclasses
    │  │      └─internals
    │  └─_samples
    │      ├─adobeair
    │      │  └─icons
    │      ├─afp
    │      ├─asp
    │      ├─cfm
    │      ├─html
    │      │  └─assets
    │      ├─lasso
    │      ├─perl
    │      ├─php
    │      ├─py
    │      └─_plugins
    │          ├─findreplace
    │          │  └─lang
    │          └─samples
    ├─images
    ├─img
    ├─js
    ├─META-INF
    ├─qiantai
    │  ├─gonggao
    │  ├─liuyan
    │  ├─renwu
    │  ├─user
    │  └─xinwen
    ├─updown
    ├─upload
    └─WEB-INF
        ├─classes
        │  ├─action
        │  ├─dao
        │  ├─orm
        │  ├─service
        │  └─util
        └─lib
```
## BCE

Entity：代表系统数据，如：用户、任务等</br>
Boundary：与用户的接口，如：界面、网关、代理等</br>
Controller：连接 Boundary 和 Entity 的媒介，编排来自 Boundary 的命令的执行</br>
