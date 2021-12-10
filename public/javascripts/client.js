function loginOwner() {
    const email = document.getElementById('email');
    const password = document.getElementById('password');
    console.log('hello')
    fetch('/login/owner', {
        method: 'post',
        headers: {
          "Content-type": "application/x-www-form-urlencoded; charset=UTF-8"
        },
        body: {
            email: email,
            password: password
        }
      })
      .then((response) => {
          console.log(response);
      })};