class DictionariesController < ApplicationController
  # GET /dictionaries
  # GET /dictionaries.xml
  before_filter :require_user
  def index
    @dictionaries = current_user.dictionaries.paginate :page => params[:page], :per_page => 10

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dictionaries }
    end
  end

  # GET /dictionaries/1
  # GET /dictionaries/1.xml
  def show
    @dictionary = current_user.dictionaries.find(params[:id])
    @words = @dictionary.words.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 10

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dictionary }
    end
  end

  # GET /dictionaries/new
  # GET /dictionaries/new.xml
  def new
    @dictionary = current_user.dictionaries.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dictionary }
    end
  end

  # GET /dictionaries/1/edit
  def edit
    @dictionary = current_user.dictionaries.find(params[:id])
  end

  # POST /dictionaries
  # POST /dictionaries.xml
  def create
    @dictionary = current_user.dictionaries.new(params[:dictionary])

    respond_to do |format|
      if @dictionary.save
        format.html { redirect_to(@dictionary, :notice => 'Dictionary was successfully created.') }
        format.xml  { render :xml => @dictionary, :status => :created, :location => @dictionary }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dictionary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dictionaries/1
  # PUT /dictionaries/1.xml
  def update
    @dictionary = current_user.dictionaries.find(params[:id])

    respond_to do |format|
      if @dictionary.update_attributes(params[:dictionary])
        format.html { redirect_to(@dictionary, :notice => 'Dictionary was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dictionary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dictionaries/1
  # DELETE /dictionaries/1.xml
  def destroy
    @dictionary = current_user.dictionaries.find(params[:id])
    @dictionary.destroy

    respond_to do |format|
      format.html { redirect_to(dictionaries_url) }
      format.xml  { head :ok }
    end
  end
end
