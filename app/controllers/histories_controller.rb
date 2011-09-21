class HistoriesController < ApplicationController
  def index
    @a = params[:album_id]  
    if !@a.blank?
      if !Album.find(@a).access?(@current_user.id)
        render :text=>"Доступ запрещен!", :layout => 'application'
        return
      end
      @histories = History.where(:album_id => @a).order("created_at DESC").page(params[:page])      
    else
      @histories = History.all
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @histories }
    end
  end

def create
    @history = History.new(params[:history])
    respond_to do |format|
      if @history.save
        format.html { redirect_to(@history, :notice => 'History was successfully created.') }
        format.xml  { render :xml => @history, :status => :created, :location => @history }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @history.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @history = History.find(params[:id])

    respond_to do |format|
      if @history.update_attributes(params[:history])
        format.html { redirect_to(@history, :notice => 'History was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @history.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @history = History.find(params[:id])
    album = @history.album
    if !album.access?(@current_user.id)
         render :text=>"Чужой альбом редактировать нельзя!", :layout => 'application'
         return
    end
    @history.destroy

    respond_to do |format|
      format.html { redirect_to(album_histories_path(album)) }
      format.xml  { head :ok }
    end
  end
end
