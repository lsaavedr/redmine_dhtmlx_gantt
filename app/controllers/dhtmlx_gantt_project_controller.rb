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
class DhtmlxGanttProjectController < ApplicationController
  unloadable

  before_filter :find_project, :authorize, :only => :index

  def index
    @milista = [7,8,9,0]
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end
end
