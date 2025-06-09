document.addEventListener("DOMContentLoaded", () => {
  const posts = [
    { id: 1, title: "İlk Yazım", content: "Bu benim ilk blog yazım!" },
    { id: 2, title: "İkinci Yazı", content: "API ile nasıl veri alırız?" }
  ];

  const postsDiv = document.getElementById("posts");

  posts.forEach(post => {
    const div = document.createElement("div");
    div.className = "post";
    div.innerHTML = `<h2>${post.title}</h2><p>${post.content}</p>`;
    postsDiv.appendChild(div);
  });
});
