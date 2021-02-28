let urlPath = window.location.href;
let pathUrl = urlPath.split("/");
url = "/";
for (let i = 0; i < pathUrl.length; i++) {
  if (i >= 4) {
    url += pathUrl[i];
    if (i < pathUrl.length - 1) {
      url += "/";
    }
  }
}

const templateBreadCrumber = (urlBreadCrumber, pathData) => {
  let template = "";

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
  let div = document.createElement("div");
  div.innerHTML = "";
  let urlBreadCrumber = url.split("/");
  let template = `${templateBreadCrumber(urlBreadCrumber, pathData)}`;
  div.innerHTML += template;
  return div;
};

const renderIntroduction = (arrTopicData) => {
  let template = "";

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
  let template = "";
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

async function renderTopic() {
  const pathResponse = await fetch(
    "http://localhost:8080/CourseOnline/client/api/v1/path"
  );

  const pathData = await pathResponse.json();

  const breadCrumber = document.querySelector(".breadcrumber");

  breadCrumber.innerHTML = "";

  breadCrumber.appendChild(renderBreadCrumber(url, pathData));

  const entryContent = document.querySelector(".entry-content");

  const topicRawResponse = await fetch(
    "http://localhost:8081/server/api/v1/course",
    {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ url: `${url}` }),
    }
  );

  const topicData = await topicRawResponse.json();

  let divIntroduction = document.createElement("div");
  divIntroduction.innerHTML = "";

  const introduction = renderIntroduction(topicData);
  divIntroduction.innerHTML += introduction;
  entryContent.appendChild(divIntroduction);

  let divArticle = document.createElement("div");
  divArticle.classList.add("review-cate", "two-column");
  divArticle.innerHTML = "";
  divArticle.innerHTML += renderArticle(topicData[0].children);
  entryContent.appendChild(divArticle);
}

renderTopic();
