class VoteItemsController < ApplicationController
  before_action :set_vote_item, only: [:show, :edit, :update, :destroy]

  # GET /vote_items
  # GET /vote_items.json
  def index
    @vote_items = VoteItem.all
  end

  # GET /vote_items/1
  # GET /vote_items/1.json
  def show
  end

  # GET /vote_items/new
  def new
    @vote_item = VoteItem.new
  end

  # GET /vote_items/1/edit
  def edit
  end

  # POST /vote_items
  # POST /vote_items.json
  def create
    @vote_item = VoteItem.new(vote_item_params)

    respond_to do |format|
      if @vote_item.save
        format.html { redirect_to @vote_item, notice: 'Vote item was successfully created.' }
        format.json { render :show, status: :created, location: @vote_item }
      else
        format.html { render :new }
        format.json { render json: @vote_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vote_items/1
  # PATCH/PUT /vote_items/1.json
  def update
    respond_to do |format|
      if @vote_item.update(vote_item_params)
        format.html { redirect_to @vote_item, notice: 'Vote item was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote_item }
      else
        format.html { render :edit }
        format.json { render json: @vote_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_items/1
  # DELETE /vote_items/1.json
  def destroy
    @vote_item.destroy
    respond_to do |format|
      format.html { redirect_to vote_items_url, notice: 'Vote item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote_item
      @vote_item = VoteItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_item_params
      params.require(:vote_item).permit(:topic_id, :project_id, :vote_id)
    end
end
