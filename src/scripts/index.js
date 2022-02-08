const addPostBtn = document.querySelector('.add-post')
const postEditor = document.querySelector('.post-editor')
const postEdit = document.querySelector('.post-edit')
const editPostBtn = document.querySelector('.edit-post')

addPostBtn.addEventListener('click', () => {
    postEditor.style.display = 'grid'
})

postEditor.addEventListener('click', (e) => {
    return e.target !== e.currentTarget ? false : postEditor.style.display = 'none'
})

editPostBtn.addEventListener('click', () => {
    postEdit.style.display = 'grid'
})

postEdit.addEventListener('click', (e) => {
    return e.target !== e.currentTarget ? false : postEdit.style.display = 'none'
})
