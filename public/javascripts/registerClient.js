document.getElementById('registerForm').addEventListener('submit', (e)=>{
    e.preventDefault();
    let data = new URLSearchParams(new FormData(document.getElementById('registerForm')));
    fetch('/customers', {
        method: 'POST',
        body: data
      })
      .then((response) => {
        if(response.status == 201){
          location.href="/";
        }
        else{
          alert('There was an error registering you :(');
        }
      })
      .catch((err)=>{
        console.error(err)
      })
})