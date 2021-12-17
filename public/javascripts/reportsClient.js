function getCustomReport(e) {
    e.preventDefault();
    const type = document.getElementById('report').value;
    const start = document.getElementById('customReportStartDate').value;
    const end = document.getElementById('customReportEndDate').value;
    if (type == 'author') {
        fetch('/reports/custom/author', {
            method: 'POST',
            headers: {
                "Content-Type": "application/json",
                "Accept": "text/html"
            },
            body: JSON.stringify({
                'start': start,
                'end': end
            })
        })
        .then((response) => {
            if(response.status != 200) {
                alert("Invalid dates.");
            }
        })
        .catch((err) => {
            console.error(err);
        });
    } else if (type == 'expenditure') {
        fetch('/reports/custom/expenditures', {
            method: 'POST',
            headers: {
                "Content-Type": "application/json",
                "Accept": "text/html"
            },
            body: JSON.stringify({
                'start': start,
                'end': end
            })
        })
        .then((response) => {
            if(response.status != 200) {
                alert("Invalid dates.");
            }
        })
        .catch((err) => {
            console.error(err);
        });
    } else {
        fetch('/reports/custom/genre', {
            method: 'POST',
            headers: {
                "Content-Type": "application/json",
                "Accept": "text/html"
            },
            body: JSON.stringify({
                'start': start,
                'end': end
            })
        })
        .then((response) => {
            if(response.status != 200) {
                alert("Invalid dates.");
            }
        })
        .catch((err) => {
            console.error(err);
        });
    }
}

document.getElementById('generateCustomReport').addEventListener('click', getCustomReport);