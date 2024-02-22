import random

# Define lists of possible values
types = ['HÉV', 'Busz', 'Trolibusz', 'Metró', 'Villamos']
operators = ['MÁV-HÉV', 'BKK']
gyártmány_options = {
    'HÉV': ['LEW', 'BHÉV'],
    'Busz': ['Volvo', 'Mercedes-Benz', 'Solaris', 'Ikarus', 'Modulo', 'Karsan', 'Van Hool'],
    'Trolibusz': ['Ganz-Solaris', 'Ikarus', 'Solaris-Škoda'],
    'Metró': ['Ganz', 'Alstom', 'Metrovagonmas'],
    'Villamos': ['Ganz', 'Tátra', 'SIEMENS', 'CAF', 'Alstom']
}

# Generate SQL insert statements
sql_statements = []
for _ in range(150):
    # Ensure constraints
    típus = random.choice(types)
    if típus == 'HÉV':
        üzemeltető = 'MÁV-HÉV'
    else:
        üzemeltető = 'BKK';
    gyártmány = random.choice(gyártmány_options.get(típus))
    akadálymentes = random.choice([True, False])
    sql_statement = f"INSERT INTO Jármű (típus, gyártmány, üzemeltető, akadálymentes) VALUES ('{típus}', '{gyártmány}', '{üzemeltető}', {akadálymentes});"
    sql_statements.append(sql_statement)

# Write SQL insert statements to a file
with open("jarmugeneralt.txt", "w") as file:
    file.write("-- Generated 150 lines of random data\n")
    file.write("BEGIN;\n")
    for statement in sql_statements:
        file.write(statement + "\n")
    file.write("END;\n")
