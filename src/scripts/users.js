const editUserBtns = document.querySelectorAll('.card__edit-btn')
const profileEditModals = document.querySelectorAll('.profile__wrap')

for (let btn of editUserBtns) {
    btn.addEventListener('click', () => {
        const modalId = 'modal-window-' + btn.getAttribute('id')
        const modalWindow = document.getElementById(modalId).style.display = 'grid'
    })
}

for (let modal of profileEditModals) {
    modal.addEventListener('click', (e) => {
        return e.target !== e.currentTarget ? false : modal.style.display = 'none'
    })
}
