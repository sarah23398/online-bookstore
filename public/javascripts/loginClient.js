function login(type) {
    const email = document.getElementById('loginEmail').value;
    const password = document.getElementById('loginPassword').value;
    fetch(`/login/${type}`, {
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
          location.href=`/`;
        }
      })
      .catch((err)=>{
        console.error(err)
      })
};

document.getElementById('ownerLogin').addEventListener('click', () => { login('owner'); })
document.getElementById('customerLogin').addEventListener('click', () =>{ login('customer'); })