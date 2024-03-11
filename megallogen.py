import random
from unicodedata import name

names = ["Vörösmarty tér", "Deák Ferenc tér", "Bajcsy-Zsilinszky út", "Opera", "Oktogon", "Vörösmarty utca", "Kodály körönd", "Bajza utca", "Hősök tere", "Széchenyi fürdő", "Mexikói út", "Déli pályaudvar", "Széll Kálmán tér", "Batthyány tér", "Astoria", "Blaha Lujza tér", "Keleti pályaudvar", "Puskás Ferenc stadion", "Pillangó utca", "Örs vezér tere", "Kőbánya-Kispest", "Határ út", "Pöttyös utca", "Ecseri út", "Népliget", "Nagyvárad tér", "Semmelweis Klinikák", "Corvin-negyed", "Kálvin tér", "Ferenciek tere", "Arany János utca", "Nyugati pályaudvar", "Lehel tér", "Dózsa György út", "Göncz Árpád városközpont", "Forgách utca", "Gyöngyösi utca", "Újpest-Városkapu", "Újpest-Központ", "Kelenföld vasútállomás", "Bikás park", "Újbuda-központ", "Móricz Zsigmond körtér", "Szent Gellért tér - Műegyetem", "Fővám tér", "Rákóczi tér", "II. János Pál pápa tér", "Batthyány tér", "Margit híd, budai hídfő", "Szépvölgyi út", "Tímár utca", "Szentlélek tér","Filatorigát","Kaszásdűlő","Aquincum","Rómaifürdő","Csillaghegy", "Békásmegyer", "Budakalász", "Budakalász, Lenfonó", "Szentistvántelep", "Pomáz", "Pannóniatelep", "Szentendre", "Boráros tér", "Müpa – Nemzeti Színház ", "Szabadkikötő", "Szent Imre tér", "Karácsony Sándor utca", "Csepel", "Cinkota", "Cinkota alsó", "Árpádföld", "Szabadságtelep", "Csömör", "Örs vezér tere", "Rákosfalva", "Nagyicce", "Sashalom", "Mátyásföld, repülőtér", "Mátyásföld, Imre utca", "Mátyásföld alsó", "Ilonatelep", "Kistarcsa, kórház", "Kistarcsa", "Zsófialiget", "Kerepes", "Szilasliget", "Mogyoród", "Szentjakab", "Gödöllő, Erzsébet park", "Gödöllő, Szabadság tér", "Gödöllő, Palotakert", "Gödöllő", "Közvágóhíd", "Kén utca", "Pesterzsébet felső","Rákospalota",  "Kossuth utca", "Pasaréti tér", "Móricz Zsigmond körtér M", "Széll Kálmán tér M", "Újpalota, Nyírpalota út", "Albertfalva vasútállomás", "Újpalota, Nyírpalota út", "Blaha Lujza tér M", "Cinkotai autóbuszgarázs", "Újpalota, Nyírpalota út", "Kelenföld vasútállomás M", "Gazdagréti tér", "Újpalota, Nyírpalota út", "Kőbánya alsó vasútállomás", "Óbuda, Bogdáni út", "Örs vezér tere M+H", "Hungexpo", "Örs vezér tere M+H", "Nagybányai út", "Batthyány tér M+H", "Diósd, Búzavirág utca", "Budatétény vasútállomás (Campona)", "Diósd, Sashegyi út", "Budatétény vasútállomás (Campona)", "Gyöngyösi utca M", "Boráros tér H", "Széll Kálmán tér", "Deák Ferenc tér M", "Széll Kálmán tér M", "Dísz tér", "Káposztásmegyer, Szilas-patak", "Keleti pályaudvar M", "Normafa", "Széll Kálmán tér M", "Svábhegy", "Széll Kálmán tér M", "Budakeszi, Tesco áruház", "Széll Kálmán tér M", "Budakeszi, Dózsa György tér", "Széll Kálmán tér M", "Mexikói út M", "Újpest-központ M", "Mexikói út M", "Göncz Árpád városközpont M", "Margitsziget", "Nyugati pályaudvar M", "Móricz Zsigmond körtér M", "Sánc utca", "Hűvösvölgy", "Szentlélek tér H", "Káposztásmegyer, Mogyoródi-patak", "Keleti pályaudvar M", "Megyer, Szondi utca", "Keleti pályaudvar M", "Örs vezér tere M+H", "Árpádföld", "Örs vezér tere M+H", "Örs vezér tere M+H", "Göncz Árpád városközpont M", "Nagytétény-Diósd vasútállomás", "Móricz Zsigmond körtér M", "Móricz Zsigmond körtér M", "Építész utca", "Békásmegyer, Újmegyeri tér", "Göncz Árpád városközpont M", "Szentlőrinci úti lakótelep", "Csepel, Csillagtelep", "Pestszentlőrinc vasútállomás", "Csepel, Csillagtelep", "Csepel, Szent Imre tér", "Szigetszentmiklós, városháza", "Szebeni utca", "Csepel, Szent Imre tér", "Lakihegy, Cseresznyés utca", "Csepel, Szent Imre tér", "Batthyány tér M+H", "Kissvábhegy", "Batthyány tér M+H", "Budaörsi lakótelep", "Kelenföld vasútállomás M", "Budaörsi lakótelep", "Kelenföld vasútállomás M", "Budaörsi lakótelep", "Kelenföld vasútállomás M", "Örs vezér tere M+H", "Centenáriumi lakótelep", "Örs vezér tere M+H", "Örs vezér tere M+H", "Cinkota, Lassú utca", "Örs vezér tere M+H", "Újpalota, Nyírpalota út", "Rákoskeresztúr", "Újpalota, Nyírpalota út", "Mindszenty József bíboros tér", "Újbuda-központ M", "Boráros tér H", "Pestszentimre", "Péterimajor", "Boráros tér H", "Gyál", "Vecsési út"]
unique_combinations = set()

sql_statements = []
attempt = 0
max_attempts = 1000

while len(sql_statements) < 150:
    név = random.choice(names)

    combination = (név)
    
    if combination not in unique_combinations:
        akadálymentes = random.choice([True, False])
        sql_statement = f"INSERT INTO Megálló (név, akadalymentesitett) VALUES ('{név}', {akadálymentes});"
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

