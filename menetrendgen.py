import random
from datetime import datetime, timedelta

# Function to generate random date
def random_date(start_date, end_date):
    delta = end_date - start_date
    random_days = random.randint(0, delta.days)
    return start_date + timedelta(days=random_days)

# Function to generate random time
def random_time():
    return "{:02d}:{:02d}".format(random.randint(0, 23), random.randint(0, 59))

# Function to generate random time for "indul" greater than "érkezik" by 1 to 10 minutes
def random_indul(érkezik):
    érkezik_hours, érkezik_minutes = map(int, érkezik.split(':'))
    érkezik_time = érkezik_hours * 60 + érkezik_minutes
    # Add random value between 1 and 10 minutes to érkezik time
    indul_time = érkezik_time + random.randint(1, 10)
    hours, minutes = divmod(indul_time, 60)
    return "{:02d}:{:02d}".format(hours, minutes)

# Open a file for writing SQL insert statements
with open('generalt_menetrend.sql', 'w') as f:
    # Populate Menetrend table with random data
    for i in range(100):  # Adjust the number of rows as needed
        járműId = random.randint(1, 150)  # Assuming járműId range from 1 to 10
        megállóId = random.randint(1, 150)  # Assuming megállóId range from 1 to 20
        dátum = random_date(datetime(2024, 1, 1), datetime(2024, 12, 31))
        érkezik = random_time()
        indul = random_indul(érkezik)

        # Write insert statement to file
        f.write("INSERT INTO Menetrend (járműId, megállóId, dátum, indul, érkezik) VALUES ({}, {}, '{}', '{}', '{}');\n".format(
            járműId, megállóId, dátum.strftime('%Y-%m-%d'), indul, érkezik))
