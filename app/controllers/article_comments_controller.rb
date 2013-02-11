class ArticleCommentsController < ApplicationController

  before_filter :authenticate_admin!, :except => [:new]

  # GET /article_comments
  # GET /article_comments.json
  def index
    @article_comments = ArticleComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @article_comments }
    end
  end

  # GET /article_comments/1
  # GET /article_comments/1.json
  def show
    @article_comment = ArticleComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article_comment }
    end
  end

  # GET /article_comments/new
  # GET /article_comments/new.json
  def new
    @article_comment = ArticleComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article_comment }
    end
  end

  # GET /article_comments/1/edit
  def edit
    @article_comment = ArticleComment.find(params[:id])
  end

  # POST /article_comments
  # POST /article_comments.json
  def create
    @article_comment = ArticleComment.new(params[:article_comment])

    respond_to do |format|
      if @article_comment.save
        format.html { redirect_to @article_comment, notice: 'Article comment was successfully created.' }
        format.json { render json: @article_comment, status: :created, location: @article_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @article_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /article_comments/1
  # PUT /article_comments/1.json
  def update
    @article_comment = ArticleComment.find(params[:id])

    respond_to do |format|
      if @article_comment.update_attributes(params[:article_comment])
        format.html { redirect_to @article_comment, notice: 'Article comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @article_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_comments/1
  # DELETE /article_comments/1.json
  def destroy
    @article_comment = ArticleComment.find(params[:id])
    @article_comment.destroy

    respond_to do |format|
      format.html { redirect_to article_comments_url }
      format.json { head :no_content }
    end
  end
end
