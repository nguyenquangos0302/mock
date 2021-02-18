async function getData() {
  // dom
  const ulParent = document.querySelector('.nav__ul');

  // get data
  const response = await fetch(
    'http://localhost:8080/CourseOnline/client/api/v1/navigation'
  );
  const data = await response.json();

  // template

  for (let i = 0; i < data.length; ++i) {
    if (!data[i].parentId) {
      console.log(data[i].name);
    }
  }
}

getData();
