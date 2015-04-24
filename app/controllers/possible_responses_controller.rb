class PossibleResponsesController < ApplicationController
  before_action :set_possible_response, only: [:show, :edit, :update, :destroy]

  # GET /possible_responses
  # GET /possible_responses.json
  def index
    @possible_responses = PossibleResponse.all
  end

  # GET /possible_responses/1
  # GET /possible_responses/1.json
  def show
  end

  # GET /possible_responses/new
  def new
    @possible_response = PossibleResponse.new
    @possible_response.question_id = params[:question_id]
  end

  # GET /possible_responses/1/edit
  def edit
  end

  # POST /possible_responses
  # POST /possible_responses.json
  def create
    @possible_response = PossibleResponse.new(possible_response_params)

    respond_to do |format|
      if @possible_response.save
        format.html { redirect_to @possible_response, notice: 'Possible response was successfully created.' }
        format.json { render :show, status: :created, location: @possible_response }
      else
        format.html { render :new }
        format.json { render json: @possible_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /possible_responses/1
  # PATCH/PUT /possible_responses/1.json
  def update
    respond_to do |format|
      if @possible_response.update(possible_response_params)
        format.html { redirect_to @possible_response, notice: 'Possible response was successfully updated.' }
        format.json { render :show, status: :ok, location: @possible_response }
      else
        format.html { render :edit }
        format.json { render json: @possible_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /possible_responses/1
  # DELETE /possible_responses/1.json
  def destroy
    @possible_response.destroy
    respond_to do |format|
      format.html { redirect_to possible_responses_url, notice: 'Possible response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_possible_response
      @possible_response = PossibleResponse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def possible_response_params
      params.require(:possible_response).permit(:value, :colour, :label, :icon_id, :question_id)
    end
end
