const renderCourseChildren = (courseChildren, pathData) => {
  let template = "";
  courseChildren.forEach((children) => {
    template += `<div class="item" style="float: none;">
                  <a href="${pathData.path}${children.url}"
                    title="Python căn bản">
                    <i class="${children.icon}"></i>
                    ${children.name}
                  </a>
                </div>`;
  });
  return template;
};
const renderFindAllCourse = (courseData, pathData) => {
  let template = "";
  let i = 0;
  courseData.forEach((course) => {
    template += `<h2 style="border: none; margin-bottom: 0px;" data-stt="${i}"
                id="goto-h2-${i}"><i class="${course.icon}"></i>${course.name}</h2>`;
    if (course.children.length > 0) {
      template += `<div class="review-cate two-column">
                    ${renderCourseChildren(course.children, pathData)}
                  </div>`;
    }
    i++;
  });
  return template;
};
async function findAllCourse() {
  const courseResponse = await fetch(
    "http://localhost:8080/CourseOnline/client/api/v1/course"
  );
  const courseData = await courseResponse.json();
  const pathResponse = await fetch(
    "http://localhost:8080/CourseOnline/client/api/v1/path"
  );
  const pathData = await pathResponse.json();
  const entryContent = document.querySelector(".entry-content");
  let divWrap = document.createElement("div");
  divWrap.innerHTML = "";
  divWrap.innerHTML = renderFindAllCourse(courseData, pathData);
  entryContent.appendChild(divWrap);
}

findAllCourse();
