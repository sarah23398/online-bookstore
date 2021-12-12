function createPublisher(e) {
    e.preventDefault();
      const name = document.getElementById('publisherName').value;
      const email = document.getElementById('publisherEmail').value;
      const phone = document.getElementById('publisherPhone').value;
      const address = document.getElementById('publisherAddress').value;
      const bankAccount = document.getElementById('publisherBankAccount').value;
      fetch('/authors/add', {
          method: 'POST',
          headers: {
            "Content-Type": "application/json"
          },
          body: JSON.stringify({
              'name': name,
              'email': email,
              'phone': phone, 
              'address': address,
              'bankAccount': bankAccount
          })
        })
        .then((response) => {
          if(response.status == 201){
            alert('Publisher successfully added.');
          }
          else{
            alert('Publisher could not be added.');
          }
        })
        .catch((err)=>{
          console.error(err)
        })
  };
  
  document.getElementById('addPublisher').addEventListener('click', createPublisher);