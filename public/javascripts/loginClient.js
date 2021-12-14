function loginOwner() {
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
          location.href="/owner-home";
        }
      })
      .catch((err)=>{
        console.error(err)
      })
};

function loginCustomer() {
  const email = document.getElementById('loginEmail').value;
  const password = document.getElementById('loginPassword').value;
  fetch('/login/customer', {
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
        location.href="/user-home";
      }
    })
    .catch((err)=>{
      console.error(err)
    })
};

document.getElementById('ownerLogin').addEventListener('click', loginOwner)
document.getElementById('customerLogin').addEventListener('click', loginCustomer)