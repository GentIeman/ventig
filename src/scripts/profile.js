const addPostBtn = document.querySelector('.add-post')
const postEditor = document.querySelector('.post-editor')
const postEdit = document.querySelector('.post-edit')
const editPostBtn = document.querySelector('.edit-post')
const editProfileBtn = document.querySelector('.profile__edit-profile')
const profileWrap = document.querySelector('.profile__wrap')


addPostBtn.addEventListener('click', () => {
    postEditor.style.display = 'grid'
})

postEditor.addEventListener('click', (e) => {
    return e.target !== e.currentTarget ? false : postEditor.style.display = 'none'
})

if (editPostBtn) {
    editPostBtn.addEventListener('click', () => {
        postEdit.style.display = 'grid'
    })
}

postEdit.addEventListener('click', (e) => {
    return e.target !== e.currentTarget ? false : postEdit.style.display = 'none'
})


editProfileBtn.addEventListener('click', () => {
    profileWrap.style.display = 'grid'
})

profileWrap.addEventListener('click', (e) => {
    return e.target !== e.currentTarget ? false : profileWrap.style.display = 'none'
})

