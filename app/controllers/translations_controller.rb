class TranslationsController < ApplicationController
  def index
    @translations = Translation.all
  end

  def new
    @translation = Translation.new
  end

  def create
    @translation = Translation.new secure_params
    if @translation.save
      redirect_to translations_path(locale: I18n.locale)
    else
      render :new
    end
  end

  def edit
    @translation = Translation.find params[:id]
  end

  def update
    @translation = Translation.find params[:id]
    if @translation.update secure_params
      redirect_to translations_path(locale: I18n.locale)
    else
      render :edit
    end
  end

  def destroy
    @translation = Translation.find params[:id]
    @translation.destroy
    redirect_to translations_path(locale: I18n.locale)
  end

  private

  def secure_params
    params.require(:translation).permit(:key, :value, :image, :remove_image)
  end
end
