import {universityData} from "./universityData.js";
const majorsDiv = document.getElementById('majors');
const coursesDiv = document.getElementById('courses');
const schoolsDiv = document.getElementById('schools');

export  function callBtnStyle(btn){
    const styles = getComputedStyle(btn);
    const bgColor = styles.backgroundColor;
    const color = styles.color;
    btn.style.backgroundColor = color;
    btn.style.color = bgColor;
    btn.style.border = `2px solid ${bgColor}`;

}
export function chooseWindow(btn){
     window.location.href =
            btn.classList.contains('tutor-btn') ? 'add_tutors.php' :
            btn.classList.contains('request-btn') ? 'add_request.php' :
            btn.classList.contains('find-btn') ? 'search.php' : '#';
}

export function courseSelector(){
    for (let school in universityData) {
        const label = document.createElement("label");
        const radio = document.createElement("input");
        radio.type = "radio";
        radio.name = "school";
        radio.value = school;
        radio.addEventListener("change", () => {
            selectSchool(school);
        });
        const span = document.createElement('span');
        span.textContent = school;
        label.appendChild(radio);
        label.appendChild(span);
        schoolsDiv.appendChild(label);
    }
}

export function selectSchool(school) {
    document.getElementById("schoolInput").value = school;
    majorsDiv.innerHTML = "";
    coursesDiv.innerHTML = "";

    for (let major in universityData[school]) {
      const label = document.createElement("label");

      const radio = document.createElement("input");
      radio.type = "radio";
      radio.name = "major";

      radio.addEventListener("change", () => {
        selectMajor(school, major);
      });

      const span = document.createElement('span');
      span.textContent = major;
      label.appendChild(radio);
      label.appendChild(span);

      majorsDiv.appendChild(label);
      
    }
  }


  export function selectMajor(school, major) {
    document.getElementById('majorInput').value = major;
    coursesDiv.innerHTML = "";

    universityData[school][major].forEach(course => {
      const label = document.createElement("label");
      const checkbox = document.createElement("input");
      checkbox.type = "checkbox";
      checkbox.name = "courses[]";
      checkbox.value = course;

      label.appendChild(checkbox);
      label.append(" " + course);

      coursesDiv.appendChild(label);
    });
  }


export function prepareCourses() {
    const selectedCourses = [];
    document.querySelectorAll("#courses input[type='checkbox']").forEach(cb =>{
        if(cb.checked) selectedCourses.push(cb.value);
    });
    document.getElementById("coursesJson").value = JSON.stringify(selectedCourses);
}