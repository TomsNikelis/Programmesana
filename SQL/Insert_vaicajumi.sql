/*Tabulas 'lietotajs' insert vaicajumu ievadisana*/

INSERT INTO `lietotajs` (`lietotajs_id`, `vards`, `uzvards`, `parole`, `epasts`, `telefons`, `dzim_datums`, `adrese`) VALUES 
(NULL, 'Janis', 'Kalnins', 'Kalnins1', 'janiskalnins@mail.com', '27765424', '1997-11-11', 'Brivibas iela 54, 31'), 
(NULL, 'Francis', 'Jaunzems', 'Jaunzems1', 'franisjaunzems@mail.com', '24421234', '1993-12-21', 'Pasta iela 03, 12'), 
(NULL, 'Peteris', 'Liepa', 'Liepa1', 'peterisliepa@mail.com', '27789999', '2003-09-01', 'Liepajas iela 19, 14'), 
(NULL, 'Gunars', 'Halvijs', 'Halvijs1', 'gunarshalvijs@mail.com', '23331222', '1988-10-18', 'Kungu iela 25, 3'), 
(NULL, 'Evelina', 'Lapsa', 'Lapsa1', 'evelinalapsa@mail.com', '23312422', '1996-12-31', 'Rigas iela 4, 18'),
(NULL, 'Reinis', 'Salins', 'Salins1', 'reinissalins@mail.com', '25542123', '2004-12-02', 'Maskavas, bld. 273/2'), 
(NULL, 'Roberts', 'Raivis', 'Raivis1', 'robertsraivis@mail.com', '27765666', '1996-12-12', 'Katolu, bld. 33'), 
(NULL, 'Rudolfs', 'Jauceklis', 'Jauceklis1', 'rudolfsjauceklis@mail.com', '25567777', '1993-08-10', 'Virsu, bld. 4'), 
(NULL, 'Rudis', 'Otrups', 'Otrups1', 'rudisotrups@mail.com', '29981928', '1994-06-06', 'Vecmilgravja, bld. 6'), 
(NULL, 'Eduards', 'Guldis', 'Guldis1', 'eduardsguldis@mail.com', '2556777', '1998-10-05', 'Malienas, bld. 21'), 
(NULL, 'Janis', 'Lietuvis', 'Lietuvis1', 'janislietuvis@mail.com', '2665666', '1998-12-07', 'Raunas, bld. 62'), 
(NULL, 'Mareks', 'Handis', 'Handis1', 'marekshandis@mail.com', '23312899', '1995-12-07', 'Margrietas, bld. 6');


/*Tabulas 'grupas' insert vaicajumu ievadisana*/

INSERT INTO `grupas` (`grupas_id`, `nosaukums`) VALUES 
(NULL, 'Programmetajs(Front-End)'), 
(NULL, 'Programmetajs(Back-End)'), 
(NULL, 'Programmetajs(Full-Stack)'), 
(NULL, 'HR'), 
(NULL, 'Datoru atbalsts'), 
(NULL, 'Programmatūras izstrādātājs'), 
(NULL, 'Informācijas drošība'), 
(NULL, 'Testeris');

/*Tabulas 'darbinieki' insert vaicajumu ievadisana*/

INSERT INTO `darbinieki` (`darbinieki_id`, `vards`, `uzvards`, `epasts`, `telefons`, `alga`, `adrese`, `id_grupa`) VALUES 
(NULL, 'Uldis', 'Igaunis', 'uldisigaunis@mail.com', '23238828', '900', 'Anninmuizas Bulv, bld. 62', '5'), 
(NULL, 'Juris', 'Kalns', 'juriskalns@mail.com', '23330424', '900', 'Ziemelblazmas, bld. 42', '5'), 
(NULL, 'Olafs', 'Ziemelis', 'olafsziemelis@mail.com', '23234743', '1500', 'Aglonas, bld. 31', '4'), 
(NULL, 'Inguss', 'Markers', 'ingussmarkers@mail.com', '23333833', '1444', 'Malienas, bld. 1', '1'), 
(NULL, 'Sofia', 'Lieta', 'sofialieta@mail.com', '23312888', '3000', 'Draudzibas, bld. 26', '8'), 
(NULL, 'Edvins', 'Auceklis', 'edvinsauceklis@mail.com', '23312345', '2000', 'Stabu, bld. 15', '2'), 
(NULL, 'Niklavs', 'Talismans', 'niklavstalismans@mail.com', '23312348', '3000', 'Maskavas, bld. 273/2', '3'), 
(NULL, 'Toms', 'Pavils', 'tomspavils@mail.com', '27765444', '1200', 'Katolu, bld. 33', '6'), 
(NULL, 'Kristers', 'Lapa', 'kristerslapa@mail.com', '28854312', '800', 'Virsu, bld. 4', '1');

/*Tabulas 'administracija' insert vaicajumu ievadisana*/

INSERT INTO `administracija` (`administracija_id`, `lietotajvards`, `parole`, `epasts`, `darbinieki_id`) VALUES 
(NULL, 'Toms', 'Parole1', 'toms@itatbalsts.com', '8'), 
(NULL, 'Uldis', 'UldisA1', 'uldisa@itatbalsts.com', '1'), 
(NULL, 'Sofia', 'SofiaA1', 'sofiaa@itatbalsts.com', '5'), 
(NULL, 'Niklavs', 'NiklavsA1', 'niklavsa@itatbalsts.com', '7'), 
(NULL, 'Kristers', 'KristersA1', 'kristersa@itatbalsts.com', '9');

/*Tabulas 'grupas' insert vaicajumu ievadisana*/



/*Tabulas 'grupas' insert vaicajumu ievadisana*/



/*Tabulas 'grupas' insert vaicajumu ievadisana*/