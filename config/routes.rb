# encoding: utf-8
#
# Redmine dhtmlxGantt plugin           
# Copyright (C) 2012  Luis Saavedra     
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'dhtmlxGantt/:action', :to => 'dhtmlx_gantt'
get 'projects/:project_id/dhtmlxGantt/:action', :to => 'dhtmlx_gantt_project'
