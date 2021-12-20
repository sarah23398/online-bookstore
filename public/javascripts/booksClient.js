let authors = [];
let genres = [];

// Add new book to database
function createBook(e) {
  e.preventDefault();
  if(authors.length == 0){
    alert('Please select at least one author');
    return;
  }
  if(genres.length == 0){
    alert('Please select at least one genre');
    return;
  }
    const title = document.getElementById('bookTitle').value;
    const isbn = document.getElementById('bookIsbn').value;
    const price = document.getElementById('bookPrice').value;
    const publisher = document.getElementById('bookPublisher').value;
    const publishDate = document.getElementById('bookPublishDate').value;
    const edition = document.getElementById('bookEdition').value;
    const description = document.getElementById('bookDescription').value;
    const printLength = document.getElementById('bookPages').value;
    const stock = document.getElementById('bookStock').value;
    const publisherFee = document.getElementById('bookPublisherFee').value;
    fetch('/books', {
        method: 'POST',
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
            'title': title, 
            'authors': authors, 
            'isbn': isbn, 
            'genres': genres, 
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

// Add badges for authors in add book form
function addAuthorSelection(){
  let el = document.getElementById('bookAuthor');
  if(!authors.includes(el.value)){
    authors.push(el.value);
    let span = document.createElement('span');
    span.classList.add('badge', 'badge-primary');
    span.textContent = el.options[el.selectedIndex].text;
    span.id = `author${el.value}`;
    span.setAttribute('author', el.value);
    span.addEventListener('click', ()=>{
      removeAuthor(span.getAttribute('author'));
    })
    document.getElementById('authors').appendChild(span);
  }
  el.value = -1;
};

// Add badges for genres in add book form
function addGenreSelection(){
  let el = document.getElementById('bookGenre');
  if(!genres.includes(el.value)){
    genres.push(el.value);
    let span = document.createElement('span');
    span.classList.add('badge', 'badge-success');
    span.textContent = el.options[el.selectedIndex].text;
    span.id = `genre${el.value}`;
    span.setAttribute('genre', el.value);
    span.addEventListener('click', ()=>{
      removeGenre(span.getAttribute('genre'));
    })
    document.getElementById('genres').appendChild(span);
  }
  el.value = -1;
};

// Remove badges for author in add book form
function removeAuthor(id){
  let ind = authors.indexOf(id);
  if(ind > -1){
    authors.splice(ind, 1);
    document.getElementById('authors').removeChild(document.getElementById(`author${id}`));
  }
}

// Remove badges for genre in add book form
function removeGenre(id){
  let ind = genres.indexOf(id);
  if(ind > -1){
    genres.splice(ind, 1);
    document.getElementById('genres').removeChild(document.getElementById(`genre${id}`));
  }
}

document.getElementById('addBook').addEventListener('click', createBook)
document.getElementById('bookAuthor').addEventListener('change', addAuthorSelection);
document.getElementById('bookGenre').addEventListener('change', addGenreSelection);