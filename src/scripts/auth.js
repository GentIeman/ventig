const btnsActiveTransform = document.querySelectorAll('.btn_slide')
const partition = document.querySelector('.partition')
const circles = document.querySelectorAll('.partition__circle')

for (let btn of btnsActiveTransform) {
    btn.addEventListener('click', () => {
        partition.classList.toggle('partition_slide')
        circles[0].classList.toggle('partition__circle_left')
        circles[1].classList.toggle('partition__circle_right')
    })
}