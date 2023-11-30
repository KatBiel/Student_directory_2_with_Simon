from lib.cohort import *

def test_cohort_construct():
    cohort = Cohort(1, "Cohort name", "2023-09-01")
    assert cohort.id == 1
    assert cohort.name == "Cohort name"
    assert cohort.start_date == "2023-09-01"


def test_cohorts_format_nicely():
    cohort = Cohort(1, "cohort name", "2023-09-01")
    assert str(cohort) == "Cohort(1, cohort name, 2023-09-01)"
