const templateSimple = (data, path) => {
  return `<a class="nav__link" href="${path.path}${data.url}"><i class="${data.icon}"></i>${data.name}</a>`;
};

const templateSub = (data, path) => {
  let name = getNameFromUrl(data);
  return `<li class="nav__submenu-li nav__li nav__${name}">
      <a href="${path.path}${data.url}" class="nav__submenu-link">
        ${data.name}
      </a>
    </li>`;
};

const getNameFromUrl = (data) => {
  let name = data.url.split('/');
  name = name[name.length - 1];
  return name;
};

const renderMenu = (datas, ulParent, path) => {
  ulParent.innerHTML = '';
  datas.forEach((data) => {
    if (data.parentId === 0) {
      let li = document.createElement('li');
      li.classList.add('nav__li', `nav__${data.name}`);
      let templateData = templateSimple(data, path);
      li.innerHTML = templateData;
      ulParent.appendChild(li);
    }

    let children = datas.filter((child) => {
      if (child.parentId > 0) {
        if (child.parentId === data.id) {
          return child;
        }
      }
    });

    if (children.length > 0) {
      let parent = datas.find((data) => data.id === children[0].parentId);
      let name = getNameFromUrl(parent);
      const liHtml = document.querySelector(`.nav__ul .nav__li.nav__${name}`);
      let divSub = document.createElement('div');
      divSub.classList.add('nav__submenu');
      let ulSub = document.createElement('ul');
      ulSub.classList.add('nav__ul');
      ulSub.innerHTML = '';
      for (let i = 0; i < children.length; ++i) {
        let templateSubData = templateSub(children[i], path);
        ulSub.innerHTML += templateSubData;
      }
      divSub.appendChild(ulSub);
      liHtml.appendChild(divSub);
    }
  });
};

async function getData() {
  // dom
  const ulParent = document.querySelector('.nav__ul');

  // get data
  const responseNavigation = await fetch(
    'http://localhost:8080/CourseOnline/client/api/v1/navigation'
  );
  const navigation = await responseNavigation.json();

  const responsePath = await fetch(
    'http://localhost:8080/CourseOnline/client/api/v1/path'
  );
  const path = await responsePath.json();

  // template
  if (navigation.length > 0) {
    renderMenu(navigation, ulParent, path);
  } else {
    ulParent.innerHTML = '';
  }
}

getData();
