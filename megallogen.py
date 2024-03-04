import random
from unicodedata import name

names = ["Vörösmarty tér", "Deák Ferenc tér", "Bajcsy-Zsilinszky út", "Opera", "Oktogon", "Vörösmarty utca", "Kodály körönd", "Bajza utca", "Hősök tere", "Széchenyi fürdő", "Mexikói út", "Déli pályaudvar", "Széll Kálmán tér", "Batthyány tér", "Astoria", "Blaha Lujza tér", "Keleti pályaudvar", "Puskás Ferenc stadion", "Pillangó utca", "Örs vezér tere", "Kőbánya-Kispest", "Határ út", "Pöttyös utca", "Ecseri út", "Népliget", "Nagyvárad tér", "Semmelweis Klinikák", "Corvin-negyed", "Kálvin tér", "Ferenciek tere", "Arany János utca", "Nyugati pályaudvar", "Lehel tér", "Dózsa György út", "Göncz Árpád városközpont", "Forgách utca", "Gyöngyösi utca", "Újpest-Városkapu", "Újpest-Központ", "Kelenföld vasútállomás", "Bikás park", "Újbuda-központ", "Móricz Zsigmond körtér", "Szent Gellért tér - Műegyetem", "Fővám tér", "Rákóczi tér", "II. János Pál pápa tér"]

unique_combinations = set()

sql_statements = []
attempt = 0
max_attempts = 1000

while len(sql_statements) < 150:
    név = random.choice(names)

    combination = (név)
    
    if combination not in unique_combinations:
        akadálymentes = random.choice([True, False])
        sql_statement = f"INSERT INTO Jármű (név, akadálymentes) VALUES ('{név}', {akadálymentes});"
        sql_statements.append(sql_statement)
        unique_combinations.add(combination)
        attempt = 0
    else:
        attempt += 1
        if attempt >= max_attempts:
            break

with open("generalt_megallo.sql", "w") as file:
    for statement in sql_statements:
        file.write(statement + "\n")

