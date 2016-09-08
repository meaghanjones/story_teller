class SentencesController<ApplicationController
  def show
    @story = Story.find(params[:story_id])
    @sentence = Sentence.find(params[:id])
    render :show
  end

  def new
    @story = Story.find(params[:story_id])
    @sentence = @story.sentences.new
    render :new
  end

  def create
    @story = Story.find(params[:story_id])
    @sentence = @story.sentences.new(sentence_params)
    if @sentence.save
      flash[:notice] = "Sentence successfully added!"
      redirect_to story_path(@story)
    else
      render :new
    end
  end

  def edit
    @story = Story.find(params[:story_id])
    @sentence = Sentence.find(params[:id])
    render :edit
  end

  def update
    @story = Story.find(params[:story_id])
    @sentence = Sentence.find(params[:id])
    if @sentence.update(sentence_params)
      flash[:notice] = "Sentence successfully eddited!"
      redirect_to story_path(@story)
    else
      render :edit
    end
  end

  def destroy
    @story = Story.find(params[:story_id])
    @sentence = Sentence.find(params[:id])
    @sentence.destroy
    flash[:notice] = "Sentence successfully deleted!"
    redirect_to story_path(@story)

  end

  private
  def sentence_params
    params.require(:sentence).permit(:username, :content)
  end
end
