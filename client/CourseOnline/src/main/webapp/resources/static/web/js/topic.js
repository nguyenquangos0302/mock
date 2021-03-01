let urlPath = window.location.href;
let pathUrl = urlPath.split('/');
let url = '/';
for (let i = 0; i < pathUrl.length; i++) {
  if (i >= 4) {
    url += pathUrl[i];
    if (i < pathUrl.length - 1) {
      url += '/';
    }
  }
}

url = url.split("?");
url = url[0];

let urlName = pathUrl[pathUrl.length - 1];
urlName = urlName.split("?");
urlName = urlName[0];

const templateBreadCrumber = (urlBreadCrumber, pathData) => {
  let template = '';

  for (let i = 0; i < urlBreadCrumber.length; i++) {
    if (i === 0) {
      template += `<span
                    itemprop="itemListElement"
                    itemscope=""
                    itemtype="https://schema.org/ListItem"
                  >
                    <a itemprop="item" href="${pathData.path}/" title="Trang chủ">
                      <span itemprop="name">Home</span>
                      <meta itemprop="position" content="1" />
                    </a>
                  </span>
                  >`;
    }
    if (i !== 0) {
      if (i === urlBreadCrumber.length - 1) {
        template += `<span itemprop="name">${urlBreadCrumber[i]}</span>`;
      } else {
        template += `<span
                    itemprop="itemListElement"
                    itemscope=""
                    itemtype="https://schema.org/ListItem"
                  >
                    <a
                      itemprop="item"
                      href="${pathData.path}/${urlBreadCrumber[i]}"
                      title="Programming"
                    >
                      <span itemprop="name">${urlBreadCrumber[i]}</span>
                
                      <meta itemprop="position" content="2" />
                    </a>
                  </span>
                  >`;
      }
    }
  }

  return template;
};

const renderBreadCrumber = (url, pathData) => {
  let div = document.createElement('div');
  div.innerHTML = '';
  let urlBreadCrumber = url.split('/');
  let template = `${templateBreadCrumber(urlBreadCrumber, pathData)}`;
  div.innerHTML += template;
  return div;
};

const renderIntroduction = (arrTopicData) => {
  let template = '';

  arrTopicData.forEach((element) => {
    template += `<p>Chuyên mục tổng hợp các chủ đề học ${element.name} miễn phí, bạn có
                    thể tham khảo và sử dụng tài liệu học ${element.name} mà tại đây.</p>
                  <p>Mình sẽ liên tục cập nhật các bài viết liên tục, bạn hãy
                    chọn một series phù hợp với mình nhé. Hoặc có thể bắt đầu bằng
                    series đầu tiên.</p>`;
  });

  return template;
};

const renderArticle = (arrTopicData) => {
  let template = '';
  arrTopicData.forEach((element) => {
    template += `<div class="item">
                  <a href="${element.url}"
                    title="Các hàm trong Java">
                    <i class="${element.icon}"></i>
                    ${element.name}
                  </a>
                </div>`;
  });
  return template;
};

const renderArticleHot = (data, pathData) => {
  template = "";
  data.forEach(element => {
    template += `<div
                    class="base-box blog-post default-blog-post bp-horizontal-share post type-post status-publish format-standard has-post-thumbnail category-money tag-momizat tag-ordpress tag-templates tag-themes tag-tutorial">
                    <div class="bp-entry">
                      <div class="bp-head">
                        <h2>
                          <a
                            href="${pathData.path}${element.url}"
                            title="Cách chuyển chữ hoa thành chữ thường trong Java">${element.name}</a>
                        </h2>

                      </div>
                      <div class="bp-details">
                        <div class="post-img">
                          <a
                            href="${pathData.path}${element.url}"
                            title="Cách chuyển chữ hoa thành chữ thường trong Java">
                            <img
                            src="${element.topicImage}"
                            width="220" height="140"
                            alt="Cách chuyển chữ hoa thành chữ thường trong Java">
                          </a>
                        </div>
                        <p>${element.shortDescription}</p>
                        <div class="clear"></div>
                      </div>
                    </div>
                    <div class="clear"></div>
                  </div>`;
  })
  return template;
}

async function renderTopic() {
  const pathResponse = await fetch(
    'http://localhost:8080/CourseOnline/client/api/v1/path'
  );

  const pathData = await pathResponse.json();

  const breadCrumber = document.querySelector('.breadcrumber');

  breadCrumber.innerHTML = '';

  breadCrumber.appendChild(renderBreadCrumber(url, pathData));

  const entryContent = document.querySelector('.entry-content');

  const topicRawResponse = await fetch(
    'http://localhost:8080/CourseOnline/client/api/v1/course',
    {
      method: 'POST',
      headers: {
        Accept: 'application/json',
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ url: `${url}` }),
    }
  );

  const topicData = await topicRawResponse.json();

  let divIntroduction = document.createElement('div');
  divIntroduction.innerHTML = '';

  const introduction = renderIntroduction(topicData);
  divIntroduction.innerHTML += introduction;
  entryContent.appendChild(divIntroduction);

  let divArticle = document.createElement('div');
  divArticle.classList.add('review-cate', 'two-column');
  divArticle.innerHTML = '';
  divArticle.innerHTML += renderArticle(topicData[0].children);
  entryContent.appendChild(divArticle);

  let pageUrl = new URL(urlPath);
  pageUrl = pageUrl.searchParams.get("page");

  if (!pageUrl) {
    fetchUrl = `http://localhost:8080/CourseOnline/client/api/v1/topic/pagination?page=1`;
  } else {
    fetchUrl = `http://localhost:8080/CourseOnline/client/api/v1/topic/pagination?page=${pageUrl}`;
  }

  const paginationResponse = await fetch(fetchUrl,
    {
      method: 'POST',
      headers: {
        Accept: 'application/json',
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ name: `${urlName}` }),
    });

  const paginationData = await paginationResponse.json();

  let startPage = !pageUrl ? 1 : parseInt(pageUrl);
  let totalPages = Math.ceil(paginationData.totalItems / 5);

  const articleHot = document.querySelector(".article-hot");

  const divArticleHot = document.createElement("div");
  divArticle.innerHTML = "";

  divArticle.innerHTML += renderArticleHot(paginationData.topic, pathData);
  articleHot.appendChild(divArticle);


  $('#pagination').twbsPagination('destroy');

  $('#pagination').twbsPagination({
    startPage: startPage,
    totalPages: totalPages,
    visiblePages: 5,
    next: 'Next',
    prev: 'Prev',
    onPageClick: function (event, page) {
      if (page !== startPage) {
        window.location.href = `http://localhost:8080/CourseOnline/course/java?page=${page}`;
      }
    }
  });

}

renderTopic();
