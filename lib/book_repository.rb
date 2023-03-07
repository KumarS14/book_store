require 'book'

class BookRepository
    def all
        result_set = DatabaseConnection.exec_params('SELECT id, title, author_name FROM books;', [] )
        books = []
        result_set.each do |a_book|
            p a_book
            book = Book.new
            book.id = a_book['id']
            book.title = a_book['title']
            book.author_name = a_book['author_name']
            books << book

        end
        return books

    end
end
#review our command line e.g pwd, cd etc
#learn which directory is for what purpose
#look at ruby files and line by line check you understand what there doing