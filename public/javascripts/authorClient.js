// Add a new author to the database
function createAuthor(e) {
    e.preventDefault();
      const name = document.getElementById('authorName').value;
      const email = document.getElementById('authorEmail').value;
      const bio = document.getElementById('authorBiography').value;
      const website = document.getElementById('authorWebsite').value;
      fetch('/authors', {
          method: 'POST',
          headers: {
            "Content-Type": "application/json"
          },
          body: JSON.stringify({
              'name': name,
              'email': email,
              'bio': bio, 
              'website': website
          })
        })
        .then((response) => {
          if(response.status == 201){
            alert('Author successfully added.');
            location.href = "/";
          }
          else{
            alert('Author could not be added.');
          }
        })
        .catch((err)=>{
          console.error(err)
        })
  };
  
  document.getElementById('addAuthor').addEventListener('click', createAuthor);