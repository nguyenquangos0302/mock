const renderOldArticle = (data, pathData) => {
    template = ""
    data.forEach((element, index) => {
        if (index >= 1) {
            template += `<li><a
                            href="${pathData.path}${element.url}"
                            title="ngay quoc te thieu nhi 3499 html"><img
                                src="${element.topicImage}"
                                alt="Còn bao nhiêu ngày nữa đến ngày quốc tế thiếu nhi?"></a>
                            <div class="details has-feature-image">
                                <h4>
                                    <a
                                        href="${pathData.path}${element.url}"
                                        title="ngay quoc te thieu nhi 3499 html">${element.name}</a>
                                </h4>

                            </div>
                        </li>`
        }
    });
    return template;
}

const renderArticle = (data, pathData) => {
    return `<div class="nb-content">
                <div class="recent-news">
                    <article
                        class="post-198 post type-post status-publish format-standard has-post-thumbnail category-sports category-world tag-design tag-momizat tag-templates tag-themes tag-tutorial tag-wordpress"
                        title="no title">
                        <div class="news-image">
                            <a
                                href="${pathData.path}${data[0].url}"
                                title="loi bai hat tinh anh dinh dung 3573 html"><img
                                src="${data[0].topicImage}"
                                alt="Lời bài hát Tình Anh - Đình Dũng" width="284"
                                height="180"></a>
                        </div>
                        <div class="news-summary">
                            <h3>
                                <a
                                    href="${pathData.path}${data[0].url}"
                                    title="loi bai hat tinh anh dinh dung 3573 html">${data[0].name}</a>
                            </h3>

                            <p>${data[0].shortDescription}</p>
                        </div>
                    </article>
                </div>
                <div class="older-articles">
                    <ul>
                        ${renderOldArticle(data, pathData)}
                    </ul>

                </div>
            </div>`;
}

const renderRandomArticle = (data, pathData) => {
    return `<div class="news-box  base-box nb-style3">
                <header class="nb-header">
                    <h2 class="nb-title">
                        <span>${data.name}</span>
                    </h2>
                </header>
                <!--nb header-->
                ${renderArticle(data.topic, pathData)}
                <footer class="nb-footer">
                    <a href="${pathData.path}${data.url}" class="show-more-ajax"
                        title="Khám phá">Xem thêm <i
                        class="fa-icon-long-arrow-right"></i>
                    </a>
                </footer>
            </div>`;
}

async function renderTopicArticle() {

    const pathResponse = await fetch(
        "http://localhost:8080/CourseOnline/client/api/v1/path"
      );
    
    const pathData = await pathResponse.json();

    let menuParentIsNullResponse = await fetch("http://localhost:8080/CourseOnline/client/api/v1/menu/index");

    let menuParentIsNullData = await menuParentIsNullResponse.json();

    const mainContainer = document.querySelector("#main_container");
    mainContainer.innerHTML = "";

    for (let i = 0; i < menuParentIsNullData.length; i++) {
        mainContainer.innerHTML += renderRandomArticle(menuParentIsNullData[i], pathData);
    }

}

renderTopicArticle();