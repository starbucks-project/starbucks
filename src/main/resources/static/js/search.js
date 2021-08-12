// -----------------------------
// search by name
// -----------------------------
async function searchByName() {
    alert("sTop");
    event.preventDefault();
  
    let searchReqDto = {
      name: document.querySelector("#name").value,
      // userId: userId,
    };
  
    console.log(JSON.stringify(searchReqDto));
  
    let response = await fetch("/manager/searchname", {
      method: "post",
      body: JSON.stringify(searchReqDto),
      headers: {
        "Content-Type": "application/json; charset=utf-8",
      },
    });
  
    let parseResponse = await response.json();
    console.log(parseResponse);
  
    if (parseResponse.code === 1) {
      let userBoxEl = document.querySelector("#notice");
      let userItem = document.createElement("tr");
      // userItem.id = "user-" + parseResponse.data.id;
  
      console.log(parseResponse.data);
  
      let temp = `
        
        <td>${parseResponse.data.id}</td>
        <td class="left"><a>${parseResponse.data.name}</a></td>
        <td><a>${parseResponse.data.email}</a></td>
        <td><a>${parseResponse.data.createDate}</a></td>
        <td>0</td>
        
      `;
      userItem.innerHTML = temp;
  
      userBoxEl.innerHTML = ""; // userBoxEl 안 html 태그 날리기
  
      userBoxEl.prepend(userItem);
    } else {
      alert("해당 이름의 사용자가 존재하지 않습니다.");
      location.reload();
    }
  }