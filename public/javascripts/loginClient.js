function loginOwner(e) {
  e.preventDefault();
    const email = document.getElementById('loginEmail').value;
    const password = document.getElementById('loginPassword').value;
    fetch('/login/owner', {
        method: 'POST',
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
            'email': email,
            'password': password
        })
      })
      .then((response) => {
        if(response.status == 401){
          alert('Invalid email and/or password');
        }
        else{
          location.href="/books";
        }
      })
      .catch((err)=>{
        console.error(err)
      })
};

function addBook(e) {
  e.preventDefault();
    const title = document.getElementById('title').value;
    const author = document.getElementById('author').value;
    const isbn = document.getElementById('isbn').value;
    const genre = document.getElementById('genre').value;
    const price = document.getElementById('price').value;
    const publisher = document.getElementById('publisher').value;
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
            'publisher': publisher
        })
      })
      .then((response) => {
        if(response.status == 401){
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

document.getElementById('ownerLogin').addEventListener('click', loginOwner)
document.getElementById('addBook').addEventListener('click', addBook)