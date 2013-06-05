Redmine dhtmlxGantt plugin
==========================

Redmine 2.x plugin to provide Gantt view replacement using the [dhtmlxGantt javascript API](http://dhtmlx.com/docs/products/dhtmlxGantt/index.shtml).

Tested with Redmine
-------------------

- 2.3

Install
-------

```bash
cd /opt/redmine/plugins
git clone git://github.com/loispuig/redmine_dhtmlx_gantt.git
cd redmine_dhtmlx_gantt/vendor
wget http://dhtmlx.com/docs/products/dhtmlxGantt/download/dhtmlxGantt.zip
unzip dhtmlxGantt.zip && rm dhtmlxGantt.zip
cd /opt/redmine
bundle install --without development test postgresql sqlite
```

- Restart your Redmine instance
- Go to 'Redmine > Administration > Roles permissions' to set new permissions.

![](https://github.com/loispuig/redmine_dhtmlx_gantt/raw/master/doc/permissions.png)

- Go to 'Project settings > Modules'
- Enable the dhtmlxGantt module

You should have a new 'dhtmlxGantt' project menu.

Known issues
------------

- Modifications on issues are not saved to database
