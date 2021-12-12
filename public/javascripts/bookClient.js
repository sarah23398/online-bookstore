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
          }
          else{
            alert('Book could not be removed.');
          }
        })
        .catch((err)=>{
          console.error(err)
        })
  };
  
  document.getElementById('removeBook').addEventListener('click', deleteBook)