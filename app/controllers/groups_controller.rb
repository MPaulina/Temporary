class GroupsController < ApplicationController
  before_filter :check_if_logged
  
  def new
    @groups = Group.order('created_at').paginate(:page => params[:page])
    @group = Group.new
  end

  def create
    @group = Group.new(group_parameters)
    if @group.save
      redirect_to new_group_path, notice: "You successfully created group."
    else
      render action: 'new'
    end
  end

  def edit
    @groups = Group.order('created_at').paginate(:page => params[:page])
    @group = Group.find(params[:id])
  end

  def update
    debugger
    @group = Group.find(params[:id])
    if @group.update_attributes(group_parameters)
      redirect_to :back, notice: "You successfully edited group."
    else
      render action: 'edit'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_path, notice: "You successfully deleted group."
  end

  private
  def group_parameters
    params.require(:group).permit(:name)
  end
end
