document.addEventListener("DOMContentLoaded", function() {
    console.log("페이지가 로드되었습니다!");

    const writeButton = document.querySelector(".write-button");
    if (writeButton) {
        writeButton.addEventListener("click", function() {
            alert("새 글 작성 페이지로 이동합니다.");
        });
    }

    const form = document.querySelector("form");
    if (form) {
        form.addEventListener("submit", validateForm);
    }

    const deleteButtons = document.querySelectorAll(".delete-button");
    deleteButtons.forEach(function(button) {
        button.addEventListener("click", function(event) {
            const confirmDelete = confirm("정말로 삭제하시겠습니까?");
            if (!confirmDelete) {
                event.preventDefault();
            }
        });
    });
});

function validateForm(event) {
    const title = document.querySelector("#title");
    const author = document.querySelector("#author");
    const content = document.querySelector("#content");

    if (title && title.value.trim() === "") {
        alert("제목을 입력해 주세요.");
        event.preventDefault();
        return false;
    }

    if (author && author.value.trim() === "") {
        alert("작성자를 입력해 주세요.");
        event.preventDefault();
        return false;
    }

    if (content && content.value.trim() === "") {
        alert("내용을 입력해 주세요.");
        event.preventDefault();
        return false;
    }

    return true;
}