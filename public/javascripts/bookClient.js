function deleteBook(e) {
    e.preventDefault();
      fetch('/books/:isbn/remove', {
          method: 'DELETE',
          headers: {
            "Content-Type": "application/json"
          }
        })
        .then((response) => {
          if(response.status == 201){
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