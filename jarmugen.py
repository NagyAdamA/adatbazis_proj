import random
from datetime import datetime, timedelta

types = ['HÉV', 'Busz', 'Trolibusz', 'Metró', 'Villamos']
operators = ['MÁV-HÉV', 'BKK']
gyártmány_options = {
    'HÉV': ['Siemens', 'Bombardier', 'Alstom'],
    'Busz': ['MAN', 'Mercedes', 'Solaris', 'Ikarus'],
    'Trolibusz': ['Solaris', 'Ikarus'],
    'Metró': ['Ganz', 'Alstom', 'Metrovagonmas'],
    'Villamos': ['Siemens', 'Caf']
}

unique_combinations = set()

sql_statements = []
attempt = 0
max_attempts = 1000

def random_date(start_date, end_date):
    delta = end_date - start_date
    random_days = random.randint(0, delta.days)
    return start_date + timedelta(days=random_days)

while len(sql_statements) < 150:
    típus = random.choice(types)
    if típus == 'HÉV':
        üzemeltető = 'MÁV-HÉV'
    else:
        üzemeltető = 'BKK'
    gyártmány = random.choice(gyártmány_options.get(típus))
    gyártási_év = random_date(datetime(2024, 1, 1), datetime(2024, 12, 31))

    combination = (gyártási_év, típus, üzemeltető, gyártmány)
    
    if combination not in unique_combinations:
        akadálymentes = random.choice([True, False])
        sql_statement = f"INSERT INTO Jármű (gyártási_év, típus, gyártmány, üzemeltető, akadalymentesitett) VALUES ('{gyártási_év}', '{típus}', '{gyártmány}', '{üzemeltető}', {akadálymentes});"
        sql_statements.append(sql_statement)
        unique_combinations.add(combination)
        attempt = 0
    else:
        attempt += 1
        if attempt >= max_attempts:
            break

with open("generalt_jarmu.sql", "w") as file:
    for statement in sql_statements:
        file.write(statement + "\n")
