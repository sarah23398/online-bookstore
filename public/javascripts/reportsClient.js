// Create custom report with user inputted dates
function getCustomReport(e) {
    e.preventDefault();
    const type = document.getElementById('report').value;
    const start = document.getElementById('customReportStartDate').value;
    const end = document.getElementById('customReportEndDate').value;
    if (type == 'author') {
        location.href = `/reports/author?start=${start}&end=${end}`;
    } else if (type == 'expenditure') {
        location.href = `/reports/expenditures?start=${start}&end=${end}`;
    } else {
        location.href = `/reports/genre?start=${start}&end=${end}`;
    }
}

document.getElementById('generateCustomReport').addEventListener('click', getCustomReport);