class Admin::LabelsController < ApplicationController
  def index
    @labels = Label.page(params[:page]).reverse_order
  end

  def new
  	@label = Label.new
  end

  def create
    @label = Label.new(label_params)
    if @label.save
      flash[:notice] = "レーベルを追加しました"
      redirect_to admin_labels_path
    else
      render :new
    end
  end

  def edit
    @label = Label.find(params[:id])
  end

  def update
    @label = Label.find(params[:id])
    if @label.update(label_params)
      flash[:notice] = "レーベル名を更新しました"
      redirect_to admin_labels_path
    else
      render :edit
    end
  end

  private

  def label_params
    params.require(:label).permit(:label_name)
  end

end
