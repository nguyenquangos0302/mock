const menuTree = (data) => {
  let divSub = document.createElement("div");
  let ulSub = document.createElement("ul");
  let liSub = document.createElement("li");

  divSub.innerHTML = "";
  ulSub.innerHTML = "";
  liSub.innerHTML = "";

  return `<a href="#">${data.name}</a>`;
};

async function renderMenu() {
  const responseMenu = await fetch(
    "http://localhost:8080/CourseOnline/client/api/v1/menu"
  );
  const dataMenu = await responseMenu.json();

  const responsePath = await fetch(
    "http://localhost:8080/CourseOnline/client/api/v1/path"
  );
  const dataPath = await responsePath.json();

  let ul = document.querySelector(".nav__ul");
  ul.innerHTML = "";

  dataMenu.forEach((element) => {
    let divSub = document.createElement("div");
    divSub.classList.add("nav__div");
    let ulSub = document.createElement("ul");
    ulSub.classList.add("nav__ul");
    let li = document.createElement("li");
    li.classList.add("nav__li");
    //li.innerHTML = menuTree(element);

    li.innerHTML = `<a href="${dataPath.path}${element.url}"><i class="${element.icon}" style="margin-right: 5px;"></i>${element.name}</a>`;
    if (element.children.length > 0) {
      element.children.forEach((el) => {
        let liSub = document.createElement("li");
        liSub.classList.add("nav__li");
        liSub.innerHTML = "";
        liSub.innerHTML = `<a href="${dataPath.path}${el.url}"><i class="${el.icon}" style="margin-right: 5px;"></i>${el.name}</a>`;
        ulSub.appendChild(liSub);
        divSub.appendChild(ulSub);
      });
    }
    li.appendChild(divSub);

    ul.appendChild(li);
  });
}

renderMenu();
