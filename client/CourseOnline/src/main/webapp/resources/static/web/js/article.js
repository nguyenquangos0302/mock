let urlPath = window.location.href;
let pathUrl = urlPath.split('/');
pathUrl = "/" + pathUrl[pathUrl.length - 1];

const convertTimeStampToData = (data) => {
    return new Date((data / 1000 + 25200) * 1000)
      .toISOString()
      .slice(0, 19)
      .replace('T', ' ');
};

const renderBreadCrumb = (data, path) => {
    let urlData = splitUrlData(data);
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

const contentByArticle = async data => {

    const rawResponse = await fetch('http://localhost:8080/CourseOnline/client/api/v1/post', {
        method: 'POST',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({name: data.name})
    });

    let articleData = await rawResponse.json();
}

const templateArticle = async article => {

    let content = await contentByArticle(article);

    return `<div class="card" style="margin: 10px 0;">
                <div class="card-header">${article.name}</div>
                <div class="card-body">
                    <h5 class="card-title">loream</h5>
                    <p class="card-text">With supporting text below as a natural
                        lead-in to additional content.</p>
                    
                </div>
                <div class="card-footer text-center text-muted">
                    <a href="#" class="btn btn-link btn-sm">View more</a>
                </div>
                
            </div>`;
}

const getTitleArticle = data => {

    return `<div class="card-header"><i class="${data.icon}"></i>${data.name}</div>
            <div class="introduction" style="padding: 0rem 1rem">
                <h4>Learn ${data.name} free</h4>
                <p>Post By: ${data.modifiedBy}</p>
            </div>`;

}

async function getDataArticle() {
    const articleResponse = await fetch(`http://localhost:8080/CourseOnline/client/api/v1${pathUrl}`);
    const articleData = await articleResponse.json();

    const pathResponse = await fetch('http://localhost:8080/CourseOnline/client/api/v1/path');
    const pathData = await pathResponse.json();

    await getBreadCrumb(pathData);

    const section = document.querySelector('.section');
    section.innerHTML = '';

    const cardTitle = document.querySelector('.card__title');
    cardTitle.innerHTML = '';

    cardTitle.innerHTML = getTitleArticle(articleData[0]);
    
    articleData.forEach(article => {

        article.children.forEach(async element => {
            const sectionArticle = document.createElement('section');
            const artitlePost = document.createElement('article');

            artitlePost.innerHTML = await templateArticle(element);
            sectionArticle.appendChild(artitlePost);

            section.appendChild(sectionArticle);
        })

    })
}

getDataArticle();