const addPostBtn = document.querySelector('.add-post')
const postEditor = document.querySelector('.post-editor')
const postEditModals = document.querySelectorAll('.post-edit')
const editPostBtns = document.querySelectorAll('.edit-post')
const editProfileBtn = document.querySelector('.profile__edit-profile')
const profileWrap = document.querySelector('.profile__wrap')

if (addPostBtn) {
    addPostBtn.addEventListener('click', () => {
        postEditor.style.display = 'grid'
    })
}


if (postEditor) {
    postEditor.addEventListener('click', (e) => {
        return e.target !== e.currentTarget ? false : postEditor.style.display = 'none'
    })
}


if (editPostBtns) {
    for (let btn of editPostBtns) {
        btn.addEventListener('click', () => {
            const modalId = 'modal-window-' + btn.getAttribute('id')
            const modalWindow = document.getElementById(modalId).style.display = 'grid'
        })
    }
}
for (let modal of postEditModals) {
    modal.addEventListener('click', (e) => {
        return e.target !== e.currentTarget ? false : modal.style.display = 'none'
    })
}

if (editProfileBtn) {
    editProfileBtn.addEventListener('click', () => {
        profileWrap.style.display = 'grid'
    })
}

if (profileWrap) {
    profileWrap.addEventListener('click', (e) => {
        return e.target !== e.currentTarget ? false : profileWrap.style.display = 'none'
    })
}