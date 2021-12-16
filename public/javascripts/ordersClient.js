function trackOrder(e) {
    e.preventDefault();
    let id = document.getElementById('orderId').value;
    fetch('/' + id, {
        method: 'GET'
    })
    .then((response) => {
        if (response.status == 500) {
            alert('Order ID does not exist.');
        }
    })
    .catch((err) => {
        console.log(err);
    });
};