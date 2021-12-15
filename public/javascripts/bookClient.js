function deleteBook(e) {
    const isbn = document.getElementById('isbn').innerHTML;
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
  function addToCart(){
    let qtBox = document.getElementById('quantity');
    let max = qtBox.getAttribute('max');
    if(qtBox.value > max || qtBox.value < 0){
      alert(`Please enter a value between 0 and ${max}`);
    }
    else{

    }

  }
  if(document.getElementById('removeBook'))
    document.getElementById('removeBook').addEventListener('click', deleteBook)
  if(document.getElementById('addToCart'))
    document.getElementById('addToCart').addEventListener('click', addToCart)