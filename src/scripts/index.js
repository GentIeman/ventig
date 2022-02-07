const addPostBtn = document.querySelector('.add-post')
const postEditor = document.querySelector('.post-editor')

addPostBtn.addEventListener('click', () => {
    postEditor.style.display = 'grid'
})

postEditor.addEventListener('click', (e) => {
    return e.target !== e.currentTarget ? false : postEditor.style.display = 'none'
})