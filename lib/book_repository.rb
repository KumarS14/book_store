class BookRepository
    def all
        result_set = DatabaseConnection.exec_params('SELECT id, title, author_name FROM books;' [] )
        books = []
        result_set.each do |a_book|
            book = Book.new
            book.id = a_book['id']
            book.title = a_book['title']
            book.author_name = a_book["author_name"]
            books << book

        end
        return books

    end
end