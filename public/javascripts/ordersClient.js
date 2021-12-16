function trackOrder(e) {
    e.preventDefault();
    let id = document.getElementById('orderId').value;
    fetch('/orders/track/' + id, {
        method: 'GET'
    })
    .then((response) => {
        if (response.status == 200) {
            location.href = '/orders/' + id;
        } else {
            alert('Order ID not found.');
        }
    })
    .catch((err) => {
        console.log(err);
    });
};

document.getElementById('trackOrder').addEventListener('click', trackOrder);