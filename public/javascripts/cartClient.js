document.querySelectorAll('.remove').forEach((e)=>{
    e.addEventListener('click', ()=>{
        let conf = confirm('Are you sure you would like to remove this from your cart?');
        if(conf)
            fetch(`/cart/${e.id}`,{
                method: 'DELETE'
            }).then((resp)=>{
                if(resp.status == 204){
                    location.reload();
                }
                else{
                    alert('There was an error removing that from your cart.');
                }
            })
    })
})

document.getElementById('placeOrder').addEventListener('click', ()=>{
    let conf = confirm('Is this order confirmed?');
    if(conf){
        fetch(`/orders`, {
            method: 'post',
            headers: {
                "Content-Type": "application/json"
              },
            body: JSON.stringify({
                'credit_card': document.getElementById('cartCreditCardNumber').value,
                'billing_address':document.getElementById('cartBillingAddress').value,
                'destination':document.getElementById('cartDestinationAddress').value,
            })
        }).then((resp)=>{
            if(resp.status == 201){
                return resp.text().then((data)=>{
                    alert(`Order created with ID ${data}! Thank you for shopping with Nook! Please keep this order ID for your records.`);
                    location.href='/orders';
                });
            }
            else{
                alert('Something happened, and your order was not created!');
            }
        })
    }
})