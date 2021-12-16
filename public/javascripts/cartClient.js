document.querySelectorAll('.remove').forEach((e)=>{
    // console.log('here')
    e.addEventListener('click', ()=>{
        let conf = confirm('Are you sure you would like to remove this from your cart?');
        if(conf)
            fetch(`/cart/${e.id}`,{
                'method': 'DELETE'
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