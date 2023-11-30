class Cohort:

    def __init__(self, id, name, start_date):
        self.id = id
        self.name = name
        self.start_date = start_date

    def __eq__(self, other):
        return self.__dict__ == other.__dict__

    def __repr__(self):
        return f"Cohort({self.id}, {self.name}, {self.start_date})"