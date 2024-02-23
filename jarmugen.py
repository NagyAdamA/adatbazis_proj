import random

# Define lists of possible values
types = ['HÉV', 'Busz', 'Trolibusz', 'Metró', 'Villamos']
operators = ['MÁV-HÉV', 'BKK']
gyártmány_options = {
    'HÉV': ['Siemens', 'Bombardier', 'Alstom'],
    'Busz': ['MAN', 'Mercedes', 'Solaris', 'Ikarus'],
    'Trolibusz': ['Solaris', 'Ikarus'],
    'Metró': ['Ganz', 'Alstom', 'Metrovagonmas'],
    'Villamos': ['Siemens', 'Caf']
}

# Generate unique combinations
unique_combinations = set()

# Generate SQL insert statements
sql_statements = []
attempt = 0
max_attempts = 1000  # Maximum attempts to generate unique combinations

while len(sql_statements) < 150:
    # Ensure constraints
    típus = random.choice(types)
    if típus == 'HÉV':
        üzemeltető = 'MÁV-HÉV'
    else:
        üzemeltető = 'BKK'
    gyártmány = random.choice(gyártmány_options.get(típus))
    gyártási_év = random.randint(1920, 2020)

    # Create combination tuple
    combination = (gyártási_év, típus, üzemeltető, gyártmány)
    
    # Check if combination is unique
    if combination not in unique_combinations:
        akadálymentes = random.choice([True, False])
        sql_statement = f"INSERT INTO Jármű (gyártási_év, típus, gyártmány, üzemeltető, akadálymentes) VALUES ('{gyártási_év}', '{típus}', '{gyártmány}', '{üzemeltető}', {akadálymentes});"
        sql_statements.append(sql_statement)
        unique_combinations.add(combination)
        attempt = 0
    else:
        attempt += 1
        if attempt >= max_attempts:
            break  # Exit loop if too many attempts have been made

# Write SQL insert statements to a file
with open("generated_data.sql", "w") as file:
    file.write("-- Generated 150 lines of random data\n")
    file.write("BEGIN;\n")
    for statement in sql_statements:
        file.write(statement + "\n")
    file.write("END;\n")
