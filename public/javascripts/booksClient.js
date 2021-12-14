function createBook(e) {
  e.preventDefault();
    const title = document.getElementById('bookTitle').value;
    const author = document.getElementById('bookAuthor').value;
    const isbn = document.getElementById('bookIsbn').value;
    const genre = document.getElementById('bookGenre').value;
    const price = document.getElementById('bookPrice').value;
    const publisher = document.getElementById('bookPublisher').value;
    const publishDate = document.getElementById('bookPublishDate').value;
    const edition = document.getElementById('bookEdition').value;
    const description = document.getElementById('bookDescription').value;
    const printLength = document.getElementById('bookPages').value;
    const stock = document.getElementById('bookStock').value;
    const publisherFee = document.getElementById('bookPublisherFee').value;
    fetch('/books/add', {
        method: 'POST',
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
            'title': title, 
            'author': author, 
            'isbn': isbn, 
            'genre': genre, 
            'price': price,
            'publisher': publisher,
            'publishDate': publishDate,
            'edition': edition, 
            'description': description, 
            'printLength': printLength,
            'stock': stock,
            'publisherFee': publisherFee
        })
      })
      .then((response) => {
        if(response.status == 201){
          alert('Book added successfully.');
          location.href='/books';
        }
        else{
          alert('Book could not be added.');
        }
      })
      .catch((err)=>{
        console.error(err)
      })
};

document.getElementById('addBook').addEventListener('click', createBook)