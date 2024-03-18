import random
from datetime import datetime, timedelta


def random_date(start_date, end_date):
    delta = end_date - start_date
    random_days = random.randint(0, delta.days)
    return start_date + timedelta(days=random_days)

def random_time():
    return "{:02d}:{:02d}".format(random.randint(0, 23), random.randint(0, 59))

def random_indul(érkezik):
    érkezik_hours, érkezik_minutes = map(int, érkezik.split(':'))
    érkezik_time = érkezik_hours * 60 + érkezik_minutes
    indul_time = érkezik_time + random.randint(1, 10)
    hours, minutes = divmod(indul_time, 60)
    return "{:02d}:{:02d}".format(hours, minutes)

with open('generalt_menetrend.sql', 'w') as f:
    for i in range(100):
        járatszam = random.randint(1,999)
        járműId = random.randint(1, 150)
        megállóId = random.randint(1, 150)
        dátum = random_date(datetime(2024, 1, 1), datetime(2024, 12, 31))
        érkezik = random_time()
        indul = random_indul(érkezik)

        f.write("INSERT INTO Menetrend (járatszam, jármű_id, megálló_id, dátum, indul, érkezik, menetidő) VALUES ('{}', {}, {}, '{}', '{}', '{}', {});\n".format(járatszam,
            járműId, megállóId, dátum.strftime('%Y-%m-%d'), indul, érkezik, random.randint(0,150)))
