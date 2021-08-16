// -----------------------------
// search by name
// -----------------------------
async function searchByName() {
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
  
      console.log(parseResponse.data);
  
      userBoxEl.innerHTML = ""; // userBoxEl 안 html 태그 날리기     

      let items = parseResponse.data;

      items.forEach(users => {
        let userItem = document.createElement("tr");
        let temp = `
        
        <td>${users.id}</td>
        <td class="left"><a>${users.name}</a></td>
        <td><a>${users.email}</a></td>
        <td><a>${users.createDate}</a></td>
        <td>0</td>
        
      `;

      userItem.innerHTML = temp;
      userBoxEl.prepend(userItem);

      });

    } else if(parseResponse.code == -1) {
      alert("해당 이름의 사용자가 존재하지 않습니다.");
      location.reload();
    } else{
      alert("세션이 만료되었습니다. 다시 로그인해주세요.");
      location.href = "/auth/manager/loginform";
    }
  }
  
