let index = 1;

const renderTopic = (data) => {
  const arrBg = ["primary"];

  let template = "";

  data.forEach((element) => {
    console.log(element.status);
    console.log(typeof element.status);
    template += `<div style="margin-bottom: 10px">
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary"
                            data-bs-toggle="modal" data-bs-target="#staticBackdrop-${index}">
                            <i class="${
                              element.icon
                            }" style="margin-right: 10px;"></i>${
      element.name
    }</button>

                            <span class="_status" style="margin-top: -8px; background-color: ${
                              element.status === 1 ? "#16a085" : "#c0392b"
                            }; width:15px;
                            display: inline-block; position: absolute; height: 15px; border-radius: 100rem;
                            transform: translate(-15px, 0px); box-shadow: white 0px 0px 0px 2px;"
                            "></span>

                        <!-- Modal -->
                        <div class="modal fade" id="staticBackdrop-${index}"
                            data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                            aria-labelledby="staticBackdropLabel-${index}" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel-${index}">${
      element.name
    }</h5>
                                        <button type="button" class="btn-close"
                                            data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">...</div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Save</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>`;
    index++;
  });

  return template;
};

const renderTemplateMenuAdmin = (menuData) => {
  let template = "";
  menuData.forEach((element) => {
    template += `<div class="col-md-6">
                        <!-- Project Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary"><i class="${
                                  element.icon
                                }" style="margin-right: 10px;"></i>${
      element.name
    }</h6>
                            </div>
                            <div class="card-body">
                                Topic: 
                                <div class="d-flex p-2 justify-content-between">
                                    ${
                                      element.children.length <= 0
                                        ? "<div class='alert alert-primary'>No topic</div>"
                                        : renderTopic(element.children)
                                    }
                                </div>
                            </div>
                        </div>
                    </div>`;
  });
  return template;
};

async function renderParentOpiton() {
  const parentResponse = await fetch(
    "http://localhost:8080/CourseOnline/client/admin/api/v1/menu/parentgreaterthanone"
  );

  const parentData = await parentResponse.json();

  const selectMenu = document.querySelector("#select__menu");

  let template = "";

  let index = 0;

  parentData.forEach((element) => {
    if (index === 0) {
      template += `<option value="0" name="not parent">Not Parent</option>`;
    }
    template += `<option value="${element.id}" name="${element.name}">${element.name}</option>`;
    index++;
  });

  selectMenu.innerHTML = template;
}

async function renderMenuAdmin() {
  const menuResponse = await fetch(
    "http://localhost:8080/CourseOnline/client/admin/api/v1/menu/allparentgreaterthanone"
  );
  const menuData = await menuResponse.json();
  const adminCategoryRow = document.querySelector("#admin__category-row");
  adminCategoryRow.innerHTML = "";
  let divRow = document.createElement("div");
  divRow.classList.add("row");
  divRow.innerHTML = "";
  divRow.innerHTML += renderTemplateMenuAdmin(menuData);
  adminCategoryRow.appendChild(divRow);
}

renderMenuAdmin();

const inputName = document.querySelector("#inputName");
const createMenu = document.querySelector("#create");
const inputSlug = document.querySelector("#inputSlug");

function string_to_slug(str) {
  str = str.replace(/^\s+|\s+$/g, ""); // trim
  str = str.toLowerCase();

  // remove accents, swap ñ for n, etc
  var from = "àáäâèéëêìíïîòóöôùúüûñç·/_,:;";
  var to = "aaaaeeeeiiiioooouuuunc------";
  for (var i = 0, l = from.length; i < l; i++) {
    str = str.replace(new RegExp(from.charAt(i), "g"), to.charAt(i));
  }

  str = str
    .replace(/[^a-z0-9 -]/g, "") // remove invalid chars
    .replace(/\s+/g, "-") // collapse whitespace and replace by -
    .replace(/-+/g, "-"); // collapse dashes

  return str;
}

renderParentOpiton();

inputName.addEventListener("keyup", function (event) {
  inputSlug.value = string_to_slug(inputName.value);
});

function findSelection(field) {
  var test = document.getElementsByName(field);
  var sizes = test.length;
  for (i = 0; i < sizes; i++) {
    if (test[i].checked == true) {
      return test[i].value;
    }
  }
}

createMenu.addEventListener("click", async function (event) {
  const selectMenu = document.querySelector("#select__menu");
  const inputIcon = document.querySelector("#inputIcon");

  let arraIndex = [];

  for (let i = 0; i < inputIcon.value.length; i++) {
    if (inputIcon.value[i] === `"`) {
      arraIndex.push(i);
    }
  }

  let iconNeed = inputIcon.value.substring(arraIndex[0] + 1, arraIndex[1]);

  let optional = findSelection("inlineRadioOptions");
  let selectMenuUrl = selectMenu.options[selectMenu.selectedIndex].text;
  let objMenu = {};
  if (selectMenu.value <= 0) {
    objMenu = {
      name: inputName.value,
      status: optional,
      icon: iconNeed,
      url: `/course/${inputSlug.value}`,
    };
  } else {
    objMenu = {
      name: inputName.value,
      status: optional,
      icon: iconNeed,
      url: `/course/${selectMenuUrl}/${inputSlug.value}`,
      parent_id: selectMenu.value,
    };
  }

  const rawResponse = await fetch(
    "http://localhost:8080/CourseOnline/client/admin/api/v1/menu/addition",
    {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      body: JSON.stringify(objMenu),
    }
  );

  const rawData = await rawResponse.json();
  if (rawData.result === "success") {
    await renderMenuAdmin();
    await renderParentOpiton();
    alert("add success");
  } else {
    alert("add fail");
  }
});
