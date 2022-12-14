class FrienddbsController < ApplicationController
  before_action :set_frienddb, only: %i[ show edit update destroy ]
  before_action:authenticate_user!,expect:[:index,:show]
  # GET /frienddbs or /frienddbs.json
  def index
    @frienddbs = Frienddb.all
  end

  # GET /frienddbs/1 or /frienddbs/1.json
  def show
  end

  # GET /frienddbs/new
  def new
    @frienddb = Frienddb.new
  end

  # GET /frienddbs/1/edit
  def edit
  end

  # POST /frienddbs or /frienddbs.json
  def create
    @frienddb = Frienddb.new(frienddb_params)

    respond_to do |format|
      if @frienddb.save
        format.html { redirect_to frienddb_url(@frienddb), notice: "Frienddb was successfully created." }
        format.json { render :show, status: :created, location: @frienddb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frienddb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frienddbs/1 or /frienddbs/1.json
  def update
    respond_to do |format|
      if @frienddb.update(frienddb_params)
        format.html { redirect_to frienddb_url(@frienddb), notice: "Frienddb was successfully updated." }
        format.json { render :show, status: :ok, location: @frienddb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frienddb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frienddbs/1 or /frienddbs/1.json
  def destroy
    @frienddb.destroy

    respond_to do |format|
      format.html { redirect_to frienddbs_url, notice: "Frienddb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frienddb
      @frienddb = Frienddb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frienddb_params
      params.require(:frienddb).permit(:first_name, :last_name, :email, :twitter,:user_id)
    end
end
