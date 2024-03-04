import random
from unicodedata import name

types = ['HÉV', 'Busz', 'Trolibusz', 'Metró', 'Villamos']
names = []

unique_combinations = set()

sql_statements = []
attempt = 0
max_attempts = 1000

while len(sql_statements) < 150:
    típus = random.choice(types)
    név = random.choice(names)

    combination = (név, típus)
    
    if combination not in unique_combinations:
        akadálymentes = random.choice([True, False])
        sql_statement = f"INSERT INTO Jármű (gyártási_év, típus, gyártmány, üzemeltető, akadálymentes) VALUES ('{gyártási_év}', '{típus}', '{gyártmány}', '{üzemeltető}', {akadálymentes});"
        sql_statements.append(sql_statement)
        unique_combinations.add(combination)
        attempt = 0
    else:
        attempt += 1
        if attempt >= max_attempts:
            break

with open("generated_data.sql", "w") as file:
    for statement in sql_statements:
        file.write(statement + "\n")
