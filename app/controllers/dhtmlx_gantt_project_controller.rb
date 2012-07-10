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
    if params[:id]
      @project = Project.find(params[:id])
      projects = return_ids(@project.id)

      @issues = Issue.find_by_sql("select * from issues where project_id in (#{projects})")
    end
  end

  # return subprojects ID
  def subProjects(proj_id)
    Project.find_by_sql("select * from projects where parent_id = #{proj_id.to_i}")
  end

  # return an array with the project and subprojects IDs
  def return_ids(proj_id)
    array = Array.new
    array.push(proj_id)
    subprojects = subProjects(proj_id)
    subprojects.each do |proj|
      array.push(return_ids(proj.id))
    end

    return array.inspect.gsub("[","").gsub("]","").gsub("\\","").gsub("\"","")
  end
end
