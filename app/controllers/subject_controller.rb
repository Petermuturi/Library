class SubjectController < ApplicationController
	before_action :set_subject, only: [:show, :update, :edit, :delete, :show_books, :add_book]
	before_action :set_subjects, only: [:list, :show]
	before_action :create_subject, only: [:new, :create]
 
 	def create
	 	if @subject.update_attributes(subject_params)
	    redirect_to :action => 'list'
	 	else
	    render :action => 'new'
	 	end
 	end
	 
	def update
		if @subject.update_attributes(subject_params)
		  redirect_to :action => 'show', :id => @subject
		else
		  render :action => 'edit'
		end
	end
	 
 	def delete
 		@subject.destroy
 		redirect_to :action => 'list'
 	end

 	def show_books
 		@books = @subject.books
 		@book = @subject.book.new
 		render 'book/list'
 	end

 	def add_book
 		@book = @book.update_attributes(book_params)
 		render 'show'
 	end

	private

	def subject_params
 		params.require(:subject).permit(:name)
	end

	def book_params
  	params.require(:book).permit(:title, :price, :subject_id, :description)
	end

	def create_subject
		@subject = Subject.new
	end

	def set_subject
		@subject = Subject.find(params[:id])
	end

	def set_subjects
		@subjects = Subject.all
	end
end
