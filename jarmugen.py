import random

jarmuvek = ['HÉV', 'Busz', 'Trolibusz', 'Metró', 'Villamos']
tipusok = {
    'HÉV': ['Siemens', 'Bombardier', 'Alstom'],
    'Busz': ['MAN', 'Mercedes', 'Solaris', 'Ikarus'],
    'Trolibusz': ['Solaris', 'Ikarus'],
    'Metró': ['Ganz', 'Alstom', 'Metrovagonmas'],
    'Villamos': ['Siemens', 'Caf']
}

unique_sors = set()

sql_statements = []

while len(sql_statements) < 150:
    jarmu_tipus = random.choice(jarmuvek)
    if jarmu_tipus == 'HÉV':
        uzemelteto = 'MÁV-HÉV'
    else:
        uzemelteto = 'BKK'
    gyarto = random.choice(tipusok.get(jarmu_tipus))
    gyartasi_ev = random.randint(1920, 2017)

    sor = (gyartasi_ev, jarmu_tipus, uzemelteto, gyarto)
    
    if sor not in unique_sors:
        akadálymentes = random.choice([True, False])
        sql_statement = f"INSERT INTO Jármű (gyartasi_ev, jarmu_tipus, gyarto, uzemelteto, akadalymentesitett) VALUES ('{gyartasi_ev}', '{jarmu_tipus}', '{gyarto}', '{uzemelteto}', {akadálymentes});"
        sql_statements.append(sql_statement)
        unique_sors.add(sor)

# Fajlbairas
with open("generalt_jarmu.sql", "w") as file:
    for statement in sql_statements:
        file.write(statement + "\n")
