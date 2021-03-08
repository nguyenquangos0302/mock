let urlPath = window.location.href;
let pathUrl = urlPath.split("/");
let nameQuery = pathUrl[pathUrl.length - 1].replace("-", " ");
console.log(nameQuery);
let url = "";
for (let i = 0; i < pathUrl.length; i++) {
  if (i >= 4) {
    if (i < pathUrl.length - 1) {
      url += "/";
    }
    if (i === pathUrl.length - 1) {
      url = url + "/" + pathUrl[i].replace("-", " ");
    } else {
      url += pathUrl[i];
    }
  }
}

const templateBreadCrumber = (urlBreadCrumber, pathData) => {
  let template = '';

  let href = "";

  for (let i = 0; i < urlBreadCrumber.length; i++) {
    if (i === 0) {
      href = `${pathData.path}`;
    } else {
      href = href + "/" + `${urlBreadCrumber[i]}`;
    }

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
                      href="${href}"
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
  console.log(url);
  let urlBreadCrumber = url.split('/');
  let template = `${templateBreadCrumber(urlBreadCrumber, pathData)}`;
  div.innerHTML += template;
  return div;
};

const renderArticle = (data, pathData) => {
  let template = "";
  template = `<td><a
              href="${pathData.path}${data.url}"
              title="${data.name}">${data.name}</a></td>`;
  return template;
}

async function renderAllTopic() {
  const pathResponse = await fetch(
    "http://localhost:8080/CourseOnline/client/api/v1/path"
  );

  const pathData = await pathResponse.json();

  const breadCrumber = document.querySelector(".breadcrumber");

  breadCrumber.innerHTML = "";

  breadCrumber.appendChild(renderBreadCrumber(url, pathData));

  const articleResponse = await fetch("http://localhost:8080/CourseOnline/client/api/v1/topic",
  {
      method: 'POST',
      headers: {
        Accept: 'application/json',
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ name: `${nameQuery}` }),
  });

  const articleData = await articleResponse.json();

  console.log(articleData);

  const tbody = document.querySelector(".tbody");

  for (let i = 0; i < articleData.length; i++) {
    let tr = document.createElement("tr");
    tr.innerHTML = "";
    let template = renderArticle(articleData[i], pathData);
    tr.innerHTML += template;
    tbody.appendChild(tr);
  }

}

renderAllTopic();
