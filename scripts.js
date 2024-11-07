document.getElementById("addStudentForm").addEventListener("submit", function(event) {
    event.preventDefault();
    addStudent();
});

let students = [];

function addStudent() {
    const studentId = document.getElementById("studentId").value;
    const name = document.getElementById("name").value;
    const age = document.getElementById("age").value;
    
    const student = { id: studentId, name: name, age: age };
    students.push(student);
    displayStudents(students);
}

function deleteStudent(id) {
    students = students.filter(student => student.id !== id);
    displayStudents(students);
}

function searchStudent() {
    const query = document.getElementById("search").value.toLowerCase();
    const results = students.filter(student => 
        student.id.includes(query) || student.name.toLowerCase().includes(query)
    );
    displayStudents(results);
}

function showAllStudents() {
    displayStudents(students);
}

function displayStudents(studentList) {
    const studentListElement = document.getElementById("studentList");
    studentListElement.innerHTML = "";
    studentList.forEach(student => {
        const row = `<tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.age}</td>
            <td>
                <button onclick="deleteStudent('${student.id}')">删除</button>
                <button onclick="editStudent('${student.id}')">修改</button>
            </td>
        </tr>`;
        studentListElement.insertAdjacentHTML("beforeend", row);
    });
}

function editStudent(id) {
    const student = students.find(s => s.id === id);
    if (student) {
        document.getElementById("studentId").value = student.id;
        document.getElementById("name").value = student.name;
        document.getElementById("age").value = student.age;
        deleteStudent(id);
    }
}
