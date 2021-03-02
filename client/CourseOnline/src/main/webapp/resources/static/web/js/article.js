let urlPath = window.location.href;
let pathUrl = urlPath.split("/");
let nameQuery = pathUrl[pathUrl.length - 1].replace("-", " ");
console.log(nameQuery);
let url = "/";
for (let i = 0; i < pathUrl.length; i++) {
  if (i >= 4) {
    url += pathUrl[i];
    if (i < pathUrl.length - 1) {
      url += "/";
    }
    if (i === pathUrl.length - 1) {
      url = url + "/" + pathUrl[i].replace("-", " ");
    }
  }
}

const renderBreadCrumber = (url, path) => {};

async function renderAllTopic() {
  const pathResponse = await fetch(
    "http://localhost:8080/CourseOnline/client/api/v1/path"
  );

  const pathData = await pathResponse.json();

  const breadCrumber = document.querySelector(".breadcrumber");

  breadCrumber.innerHTML = "";

  breadCrumber.appendChild(renderBreadCrumber(url, pathData));
}

renderAllTopic();
