import * as utils from './functions.js';

const actionBtns = document.querySelectorAll('.action-btn');


actionBtns.forEach(btn => {
    btn.addEventListener('click', () => {
        utils.callBtnStyle(btn);
        utils.chooseWindow(btn);
    });
});
utils.courseSelector();


 
document.querySelector(".tutor-form").addEventListener('click', () => {
       utils.prepareCourses();
});
utils.searchCourse("hi");