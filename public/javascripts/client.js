function loginOwner(e) {
  e.preventDefault();
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
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

document.getElementById('ownerLogin').addEventListener('click', loginOwner)