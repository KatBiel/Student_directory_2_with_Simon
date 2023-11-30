from lib.student import Student

def test_student_construct():
    student = Student(1, "Student name", "Cohort")
    assert student.id == 1
    assert student.name == "Student name"
    assert student.cohort_id == "Cohort"


def test_students_format_nicely():
    student = Student(1, "Student name", "Cohort")
    assert str(student) == "Student(1, Student name, Cohort)"


