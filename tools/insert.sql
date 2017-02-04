use node_dev;


INSERT INTO questions(id, text)
VALUES (1, 'Šta su funkcionalni programski jezici?');
  INSERT INTO answers
  VALUES (default, 'Jezici kod kojih se zadaci rešavaju isključivo putem izračunavanja izraza.', True, 1);
  INSERT INTO answers
  VALUES (default, 'Jezici kod kojih se zadaci rešavaju isključivo putem pozivanja funckija.', False, 1);
  INSERT INTO answers
  VALUES (default, 'Jezici kod kojih postoje pokazivači na funkcije.', False, 1);
  INSERT INTO answers
  VALUES (default, 'Jezici kod kojih su funkcije "Građani prvog reda".', False, 1);

INSERT INTO questions(id, text)
VALUES (2, 'Ako je imperativna paradigma odgovor na pitanje "Kako?", onda je funkcionalna paradigma...');
  INSERT INTO answers
  VALUES (default, 'Odgovor na pitanje "Šta?"', True, 2);
  INSERT INTO answers
  VALUES (default, 'Odgovor na pitanja "Koliko?"', False, 2);
  INSERT INTO answers
  VALUES (default, 'Odgovor na pitanje "Zašto?"', False, 2);

INSERT INTO questions(id, text)
VALUES (3, 'Programi koji su pisani na funkcionalnom jeziku se...');
  INSERT INTO answers
  VALUES (default, 'Lakše proveravaju i lakše paralelizuju.', True, 3);
  INSERT INTO answers
  VALUES (default, 'Lakše proveravaju, ali teže paralelizuju.', False, 3);
  INSERT INTO answers
  VALUES (default, 'Teže proveravaju, ali lakše paralelizuju.', False, 3);
  INSERT INTO answers
  VALUES (default, 'Teže proveravaju i teže paralelizuju, ali rade brže.', False, 3);

INSERT INTO questions(id, text)
VALUES (4, '"Čist" funkcionalni jezik je...');
  INSERT INTO answers
  VALUES (default, 'Jezik u kome je omogućeno samo čisto funckionalno programiranje.', True, 4);
  INSERT INTO answers
  VALUES (default, 'Jezik koji ima lepu sintaksu deklarisanja funckija.', False, 4);
  INSERT INTO answers
  VALUES (default, 'Jezik koji ne koristi Microsoftove i Apple tehnologije u pozadini.', False, 4);
  INSERT INTO answers
  VALUES (default, 'Jezik koji nije nastao iz nijednog drugog jezika, već je samostalan.', False, 4);

INSERT INTO questions(id, text)
VALUES (5, 'Lambda račun je razvio...');
  INSERT INTO answers
  VALUES (default, 'Alonzo Church', True, 5);
  INSERT INTO answers
  VALUES (default, 'Lord Lambda od Birmingema ', False, 5);
  INSERT INTO answers
  VALUES (default, 'Haskell Curry', False, 5);
  INSERT INTO answers
  VALUES (default, 'Alan Turing', False, 5);

INSERT INTO questions(id, text)
VALUES (6, 'Čisto funkcionalni programski jezik može da se posmatra i kao...');
  INSERT INTO answers
  VALUES (default, 'Matematička formalizacija algoritma.', True, 6);
  INSERT INTO answers
  VALUES (default, 'Objektno orijentisani programski jezik u kome nema klasa.', False, 6);
  INSERT INTO answers
  VALUES (default, 'Procesno orijentisani programski jezik u kome nema petlji.', False, 6);
  INSERT INTO answers
  VALUES (default, 'Objektno orijentisani jezik sa pokazivačima na funkcije.', False, 6);

INSERT INTO questions(id, text)
VALUES (7, 'Lambda račun je...');
  INSERT INTO answers
  VALUES (default, 'Apstraktna formalizacija pojma algoritma', True, 7);
  INSERT INTO answers
  VALUES (default, 'Račun u kojem koristimo konstantu "Lambda"', False, 7);
  INSERT INTO answers
  VALUES (default, 'Račun sa specijalnim Lambda operatorima za manipulisanje matricama', False, 7);

INSERT INTO questions(id, text)
VALUES (8, 'Lisp nije čisto funkcionalni jezik jer podržava...');
  INSERT INTO answers
  VALUES (default, 'Promenljive koje čuvaju stanja.', True, 8);
  INSERT INTO answers
  VALUES (default, 'Petlje.', False, 8);
  INSERT INTO answers
  VALUES (default, 'Neanonimne funkcije', False, 8);
  INSERT INTO answers
  VALUES (default, 'Pisanje previše zagrada, a to nije čisto.', False, 8);

INSERT INTO questions(id, text)
VALUES (9, 'Haskell je dobio ime po...');
  INSERT INTO answers
  VALUES (default, 'Haskell Curry-u', True, 9);
  INSERT INTO answers
  VALUES (default, 'Haskell Terry-u', False, 9);
  INSERT INTO answers
  VALUES (default, 'Haskell Murray-u', False, 9);
  INSERT INTO answers
  VALUES (default, 'James Haskell', False, 9);

INSERT INTO questions(id, text)
VALUES (10, 'U čisto funkcionalnom jeziku jedina vrsta potprograma su...');
  INSERT INTO answers
  VALUES (default, 'Funkcije.', True, 10);
  INSERT INTO answers
  VALUES (default, 'Metode.', False, 10);
  INSERT INTO answers
  VALUES (default, 'Procedure.', False, 10);
  INSERT INTO answers
  VALUES (default, 'Moduli.', False, 10);

INSERT INTO questions(id, text)
VALUES (11, 'Petlje u čisto funkcionalnim jezicima se ostvaruju pomoću...');
  INSERT INTO answers
  VALUES (default, 'Rekurzije.', True, 11);
  INSERT INTO answers
  VALUES (default, 'Specijalne "Loop" funkcije.', False, 11);
  INSERT INTO answers
  VALUES (default, 'Naredbe "go to"', False, 11);
  INSERT INTO answers
  VALUES (default, 'Isključivo while naredbom.', False, 11);

INSERT INTO questions(id, text)
VALUES (12, 'Osnovni tip kolekcije podataka u funkcionalnim programskim jezicima je...');
  INSERT INTO answers
  VALUES (default, 'Lista.', True, 12);
  INSERT INTO answers
  VALUES (default, 'Niz.', False, 12);
  INSERT INTO answers
  VALUES (default, 'Stablo.', False, 12);
  INSERT INTO answers
  VALUES (default, 'Hash Mapa.', False, 12);

INSERT INTO questions(id, text)
VALUES (13, 'Referencijalna transparentnost podrazumeva da...');
  INSERT INTO answers
  VALUES (default, 'Isti podizraz uvek ima istu vrednost.', True, 13);
  INSERT INTO answers
  VALUES (default, 'Svaka funkcija je vidljiva globalno.', False, 13);
  INSERT INTO answers
  VALUES (default, 'Svakom objektu može se pristupi preko reference.', False, 13);
  INSERT INTO answers
  VALUES (default, 'Funckija roditelj može pristupati promenljivoj u opsegu funkcije deteta.', False, 13);

INSERT INTO questions(id, text)
VALUES (14, 'U funkcionalnim jezicima promenljiva je...');
  INSERT INTO answers
  VALUES (default, 'Referenca na vrednost.', True, 14);
  INSERT INTO answers
  VALUES (default, 'Referenca na prostor za zapisivanje vrednosti.', False, 14);
  INSERT INTO answers
  VALUES (default, 'Vrednost.', False, 14);
  INSERT INTO answers
  VALUES (default, 'Konstanta.', False, 14);

INSERT INTO questions(id, text)
VALUES (15, 'Aplikativni redosled izračunavanja podrazumeva da se...');
  INSERT INTO answers
  VALUES (default, 'Prvo računaju svi argumenti pa se poziva funkcija.', True, 15);
  INSERT INTO answers
  VALUES (default, 'Prvo pozove funkcija sa "placeholder" vrednostima, a nakon izračunavanja se one zamene pravim.', False, 15);
  INSERT INTO answers
  VALUES (default, 'Računa proizvoljnim redosledom.', False, 15);
  INSERT INTO answers
  VALUES (default, 'Računaju prvo jednostavnije funkcije, a zatim kompleksnije.', False, 15);

INSERT INTO questions(id, text)
VALUES (16, 'Normalni redosled izračunavanja podrazumeva da se...');
  INSERT INTO answers
  VALUES (default, 'Funkcija poziva, a da se argumenti ne izračunavaju unapred.', True, 16);
  INSERT INTO answers
  VALUES (default, 'Redosled definiše u fajlu ".normal".', False, 16);
  INSERT INTO answers
  VALUES (default, 'Računa proizvoljnim redosledom.', False, 16);
  INSERT INTO answers
  VALUES (default, 'Računaju prvo jednostavnije funkcije, a zatim kompleksnije.', False, 16);

INSERT INTO questions(id, text)
VALUES (17, 'Lenjo izračunavnaje podrazumeva da...');
  INSERT INTO answers
  VALUES (default, 'Postoje mehanizmi jezika koji omogućavaju da se svaki izraz računa najviše jedanput.', True, 17);
  INSERT INTO answers
  VALUES (default, 'Računar može sam da odluči da li će nešto da nam izračuna ili ne.', False, 17);
  INSERT INTO answers
  VALUES (default, 'Računar može sam da smanji preciznost računanja radi efikasnosti.', False, 17);
  INSERT INTO answers
  VALUES (default, 'Je moguće samo nagovestiti šta želimo da se izračuna, a kompajler sam može dopuniti izraz.', False, 17);

INSERT INTO questions(id, text)
VALUES (18, 'Funkcije višeg reda su...');
  INSERT INTO answers
  VALUES (default, 'Funkcije čiji argumenti su funkcije.', True, 18);
  INSERT INTO answers
  VALUES (default, 'Funkcije koje su komplikovane.', False, 18);
  INSERT INTO answers
  VALUES (default, 'Funkcije koje rade sa redovima i listama.', False, 18);
  INSERT INTO answers
  VALUES (default, 'Funkcije koje daju više rezultata (Tuple)', False, 18);

INSERT INTO questions(id, text)
VALUES (19, 'Šta je Karijeva funkcija?');
  INSERT INTO answers
  VALUES (default, 'Funkcija više promenljivih koja se posmatra kao funkcija jedne promenljive čiji je rezultat funkcija od preostalih promenljivih sa vezanom prvom vrednošću.', True, 19);
  INSERT INTO answers
  VALUES (default, 'Funkcija koja pravi "zatvorenje".', False, 19);
  INSERT INTO answers
  VALUES (default, 'Funkcija koja nema ime.', False, 19);
  INSERT INTO answers
  VALUES (default, 'Funkcija iz standardne biblioteke.', False, 19);

INSERT INTO questions(id, text)
VALUES (20, 'Nedeterminističke funkcije su...');
  INSERT INTO answers
  VALUES (default, 'One funkcije čiji rezultat nije unapred predvidiv.', True, 20);
  INSERT INTO answers
  VALUES (default, 'One funkcije koje ne vraćaju Bool tip kao rezultat.', False, 20);
  INSERT INTO answers
  VALUES (default, 'One funkcije čiji rezultati još uvek nisu keširani u memoriji.', False, 20);
  INSERT INTO answers
  VALUES (default, 'Funkcije iz biblioteke "Undetermined"', False, 20);

insert into scores values(default, 'Curry', 10);
insert into scores values(default, 'Curry', 10);
insert into scores values(default, 'Alonzo', 9);
insert into scores values(default, 'Alan', 9.5);
insert into scores values(default, 'David', 8);
insert into scores values(default, 'Martin', 7);
insert into scores values(default, 'Slavoljub', -5);


