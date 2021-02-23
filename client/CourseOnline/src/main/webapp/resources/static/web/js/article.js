let urlPath = window.location.href;
let pathUrl = urlPath.split('/');
pathUrl = "/" + pathUrl[pathUrl.length - 1];

const renderBreadCrumb = (data, path) => {
    let urlData = splitUrlData(data);
    console.log(urlData);
    let template = `<a href=${path.path}>Home</a>`
    urlData.forEach((element, index) => {
        if (index > 0) {
            template += '>';
            template += `<a href=${path.path}/${element}>${element}</a>`
        }
    });
    return template;
}

const splitUrlData = data => {
    return data.url.split("/");
}

async function getBreadCrumb(pathData) {

    const breadcrumb = document.querySelector(".breadcrumb");
    breadcrumb.innerHTML = '';

    const rawResponse = await fetch('http://localhost:8080/CourseOnline/client/api/v1/breadcrumb', {
        method: 'POST',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({url: pathUrl})
    });

    let breadcrumbData = await rawResponse.json();

    breadcrumb.innerHTML = renderBreadCrumb(breadcrumbData, pathData);
}

async function getDataArticle() {
    const articleResponse = await fetch('http://localhost:8080/CourseOnline/client/api/v1/java');
    const articleData = await articleResponse.json();

    const pathResponse = await fetch('http://localhost:8080/CourseOnline/client/api/v1/path');
    const pathData = await pathResponse.json();

    getBreadCrumb(pathData);

}

getDataArticle();