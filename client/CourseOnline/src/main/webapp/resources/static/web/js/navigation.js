const templateSimple = (data, path) => {
  return `<a class="nav__link" href="${path.path}${data.url}"><i class="${data.icon}"></i>${data.name}</a>`;
};

const renderMenu = (datas, ulParent, path) => {
  ulParent.innerHTML = "";
  datas.forEach((data) => {
    if (data.parentId === 0) {
      let li = document.createElement("li");
      li.classList.add("nav__li");
      let templateData = templateSimple(data, path);
      li.innerHTML = templateData;
      ulParent.appendChild(li);
    } else {
      let layer = 1;
      let parent = data; // parent
      let dataCurrent = data; // current
      while (true) {
        console.log(dataCurrent.id + " - " + parent.parentId);
        if (parent.parentId !== 0) {
          parent = datas.find((data) => data.id === parent.parentId); // lay len
          dataCurrent = datas.find((data) => data.id === parent.id); // thang tren no 1 bac
        } else {
          break;
        }
      }

      const liHtml = document.querySelectorAll(".nav__ul .nav__li");
      let divSub = document.createElement("ul");

      liHtml[data.parentId - 1].textContent += data.name;
    }
  });
};

async function getData() {
  // dom
  const ulParent = document.querySelector(".nav__ul");

  // get data
  const responseNavigation = await fetch(
    "http://localhost:8080/CourseOnline/client/api/v1/navigation"
  );
  const navigation = await responseNavigation.json();

  const responsePath = await fetch(
    "http://localhost:8080/CourseOnline/client/api/v1/path"
  );
  const path = await responsePath.json();

  // template
  if (navigation.length > 0) {
    renderMenu(navigation, ulParent, path);
  } else {
    ulParent.innerHTML = "";
  }
}

getData();
