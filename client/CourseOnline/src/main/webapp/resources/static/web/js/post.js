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

let urlName = pathUrl[pathUrl.length - 1];

const getComment = document.querySelector("#getcomment");
const comment_content = document.querySelector("#comment_content");

getComment.addEventListener("click", async function(event) {
    const yourName = document.querySelector("#yourName");
    const yourEmail = document.querySelector('#yourEmail');
    event.preventDefault();
    let data = CKEDITOR.instances.comment_content.getData();
    let comment = {
        name: yourName.value,
        content: data,
        email: yourEmail.value,
        urlArticle: urlName
    }

    const rawResponse = await fetch("http://localhost:8080/CourseOnline/client/api/v1/comment/addition",
    {
        method: 'POST',
        headers: {
          Accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(comment),  
    });

    const rawData = await rawResponse.json();
    if (rawData.result === "success") {
        alert("Comment success");
        await renderComment();
    } else {
        alert("Comment failed");
    }

})

const convertTimeStampToData = (data) => {
    return new Date((data / 1000 + 25200) * 1000)
      .toISOString()
      .slice(0, 19)
      .replace('T', ' ');
  };
  

const templateComment = commentData => {

    let template = "";

    commentData.forEach(element => {
        template += `<li><div class="comment-wrap base-box"
                            style="display: flex;">
                            <img src="http://dummyimage.com/100x100.png/dddddd/000000"
                                class="avatar user-65-avatar avatar-60 photo" alt="" style="margin-right: 10px">
                            <div class="comment-content">
                                <h4 class="comment-author fn">${element.modifiedBy}</h4>
                                <span class="comment-meta commentmetadata ">${convertTimeStampToData(element.modifiedDate)}</span>
                                <div class="comment-text">
                                    ${element.content}
                                </div>
                            </div>
                        </div>
                    </li>`
    });

    return template;
}

async function renderComment() {

    const mainCommentList = document.querySelector("#main_comment_list");
    mainCommentList.innerHTML = "";
    
    const commentResponse = await fetch("http://localhost:8080/CourseOnline/client/api/v1/comment",
    {
        method: 'POST',
        headers: {
          Accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ url: `${urlName}` }),
    });

    const commentData = await commentResponse.json();

    let ulComment = document.createElement("ul");
    ulComment.innerHTML = "";

    ulComment.innerHTML += templateComment(commentData);
    
    mainCommentList.appendChild(ulComment);

}

renderComment();
