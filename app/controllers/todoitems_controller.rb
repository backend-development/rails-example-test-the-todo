class TodoitemsController < ApplicationController
  # GET /todoitems
  # GET /todoitems.json
  def index
    @todoitems = Todoitem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @todoitems }
    end
  end

  # POST /todoitems
  # POST /todoitems.json
  def create
    @todoitem = Todoitem.new(params[:todoitem])

    respond_to do |format|
      if @todoitem.save
        format.html { redirect_to todolist_path(@todoitem.todolist), notice: 'Todoitem was successfully created.' }
        format.json { render json: @todoitem, status: :created, location: @todoitem }
      else
        format.html { redirect_to todolist_path( params[:todoitem][:todolist_id]  ), notice: 'Todoitem was NOT created.' }
        format.json { render json: @todoitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /todoitems/1
  # PUT /todoitems/1.json
  def update
    @todoitem = Todoitem.find(params[:id])

    respond_to do |format|
      if @todoitem.update_attributes(params[:todoitem])
        format.html { redirect_to @todoitem, notice: 'Todoitem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @todoitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todoitems/1
  # DELETE /todoitems/1.json
  def destroy
    @todoitem = Todoitem.find(params[:id])
    @todoitem.destroy

    respond_to do |format|
      format.html { redirect_to todoitems_url }
      format.json { head :no_content }
    end
  end
end
