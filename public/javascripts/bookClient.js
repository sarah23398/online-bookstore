let isbn = document.getElementById('isbn').innerHTML;

// Remove book from database
function deleteBook(e) {
  e.preventDefault();
    fetch('/books/' + isbn, {
        method: 'DELETE',
        headers: {
          "Content-Type": "application/json"
        }
      })
      .then((response) => {
        if(response.status == 204){
          alert('Book removed successfully.');
          location.href = '/books';
        }
        else{
          alert('Book could not be removed.');
        }
      })
      .catch((err)=>{
        console.error(err)
      })
};

// Add book to shopping cart
function addToCart(){
  let qtBox = document.getElementById('quantity');
  let max = qtBox.getAttribute('max');
  if(parseInt(qtBox.value.trim()) > parseInt(max.trim()) || parseInt(qtBox.value.trim()) < 0){
    alert(`Please enter a quantity between 0 and ${max}`);
  }
  else{
    fetch('/cart', {
      method: 'POST',
      body: JSON.stringify({
        "isbn": isbn,
        "quantity": qtBox.value
      }),
      headers: {
        "Content-Type": "application/json"
      }
    })
    .then((response) => {
      if(response.status == 200){
        location.reload();
      }
      else{
        alert('Error adding to cart');
      }
    })
    .catch((err)=>{
      console.error(err)
    })
  }
}

// Add review to book
function addRating(){
  let rating = document.getElementById('rating');
  if(parseInt(rating.value.trim()) > 5 || parseInt(rating.value.trim()) < 0){
    alert(`Please enter a rating between 0 and 5`);
  }
  else{
    fetch(`/books/${isbn}/ratings`, {
      method: 'POST',
      body: JSON.stringify({
        "isbn": isbn,
        "rating": rating.value,
        "review": document.getElementById('review').value
      }),
      headers: {
        "Content-Type": "application/json"
      }
    })
    .then((response) => {
      if(response.status == 201){
        alert('Thank you for reviewing! Your review was added!')
        location.reload();
      }
      else{
        alert('Error adding review');
      }
    })
    .catch((err)=>{
      console.error(err)
    })
  }
}

if(document.getElementById('removeBook'))
  document.getElementById('removeBook').addEventListener('click', deleteBook)
if(document.getElementById('addToCart'))
  document.getElementById('addToCart').addEventListener('click', addToCart)
if(document.getElementById('addRating'))
  document.getElementById('addRating').addEventListener('click', addRating)