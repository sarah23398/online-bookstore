function getCustomReport(e) {
    e.preventDefault();
    const type = document.getElementById('report').value;
    const start = document.getElementById('customReportStartDate').value;
    const end = document.getElementById('customeReportEndDate').value;
    if (type == 'author') {
        fetch('/reports/custom/author', {
            method: 'POST',
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                'start': start,
                'end': end
            })
        })
        .then((response) => {
            if(response.status != 201) {
                alert("Invalid dates.");
            }
        })
        .catch((err) => {
            console.error(err);
        });
    }
}