function createBook(e) {
  e.preventDefault();
    const title = document.getElementById('title').value;
    const author = document.getElementById('author').value;
    const isbn = document.getElementById('isbn').value;
    const genre = document.getElementById('genre').value;
    const price = document.getElementById('price').value;
    const publisher = document.getElementById('publisher').value;
    const publishDate = document.getElementById('publish-date').value;
    const edition = document.getElementById('edition').value;
    const description = document.getElementById('description').value;
    const printLength = document.getElementById('print-length').value;
    const stock = document.getElementById('stock').value;
    const publisherFee = document.getElementById('publisher-fee').value;
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
            'publisher-fee': publisherFee
        })
      })
      .then((response) => {
        if(response.status != 201){
          alert('Book could not be added.');
        }
        else{
          alert('Book added successfully.');
        }
      })
      .catch((err)=>{
        console.error(err)
      })
};

document.getElementById('addBook').addEventListener('click', createBook)