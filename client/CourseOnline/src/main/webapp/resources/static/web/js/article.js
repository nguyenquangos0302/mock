let urlPath = window.location.href;
let pathUrl = urlPath.split('/');
pathUrl = "/" + pathUrl[pathUrl.length - 1];
let count = 0;

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
        body: JSON.stringify({ url: pathUrl })
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
        body: JSON.stringify({ name: data.name })
    });

    let articleData = await rawResponse.json();

    return articleData;
}

const templatePost = datas => {

    let teamplate = '';

    datas.forEach(data => {
        teamplate +=    `<div class="card">
                            <a href="${data.url}" style="display: inline-block"><img src="${data.postImage}" class="card-img-top" width="250px" height="250px"></a>
                            <div class="card-body">
                                <h5 class="card-title">
                                    <a href="${data.url}">${data.name}</a>
                                </h5>
                                <p class="card-text">${data.shortDescription}</p>
                                </div>
                        </div>`;
    })

    console.log(teamplate);

    return teamplate;
}

const templateArticle = async (article) => {

    let content = await contentByArticle(article);

    teamplate = `<div class="card" style="margin: 10px 0;">
                    <div class="card-header">${article.name}</div>
                    <div class="card-body">
                        <div class="slick-slider">
                            ${templatePost(content)}
                        </div>
                    </div>
                    <div class="card-footer text-center text-muted">
                        <a href="#" class="btn btn-link btn-sm">View more</a>
                    </div>
                </div>`;

    count++;

    return teamplate;
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

    await articleData.forEach(async article => {

        await article.children.forEach(async (element) => {
            const sectionArticle = document.createElement('section');
            const artitlePost = document.createElement('article');

            artitlePost.innerHTML = await templateArticle(element);
            sectionArticle.appendChild(artitlePost);

            section.appendChild(sectionArticle);

            if (count === article.children.length) {

                $(`.slick-slider`).slick({
                    centerMode: true,
                    slidesToShow: 3,
                    //dots: true,
                    arrows: true,
                    swipe: true,
                    swipeToSlide: true,
                    //adaptiveHeight: true,
                    infinite: true,
                    autoplay: true,
                    autoplaySpeed: 3000,
                    pauseOnFocus: true,
                    pauseOnHover: true,
                    cssEase: 'linear'
                });

                const slick_prev = document.querySelectorAll(".slick-prev");
                const slick_next = document.querySelectorAll(".slick-next");

                for (let i = 0; i < count; i++) {
                    slick_prev[i].innerHTML = "";
                    slick_next[i].innerHTML = "";
                }

            }

        })
    })

}

//success factory

getDataArticle();