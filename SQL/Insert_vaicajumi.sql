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

/*Tabulas 'problema' insert vaicajumu ievadisana*/

INSERT INTO `problema` (`problema_id`, `apraksts`, `status`, `id_lietotajs`, `id_darbinieki`) VALUES 
(NULL, 'Es nevaru nekur pieteikties, visur rādās, ka ir nepareizas paroles!', 'Pabeigts', '2', '4'), 
(NULL, 'Ieslēdzot datoru, man rādās zils ekrāns un pēc dažām sekundēm dators pats izslēdzas.', 'Pabeigts', '10', '4'), 
(NULL, 'Mūsu uzņēmumā ir ļoti slikta interneta drošība, ir vajadzīga paroļu uzlikšana un drošības draudu noteikšana.', 'Pabeigts', '1', '5'), 
(NULL, 'Man ir vajadzīga mājaslapas izstrāde manam topošajam restorānam iekš, kuras parādīs mūsu ēdienkarti un kontaktinformāciju.', 'Pabeigts', '5', '7'), 
(NULL, 'Mūsu uzņēmumā pārāk daudz darbiniekiem ir piekļuves sensitīviem datiem un informācijai, mums ir vajadzīgi serveri un datubāzes, lai tikai konkrēti darbinieki var piekļut konkrētām lietām un informācijai.', 'Pabeigts', '5', '7'), 
(NULL, 'Man datoram neiet internets, lai gan rādās, ka vads ir iesprausts.', 'Pabeigts', '5', '3'), 
(NULL, 'Manam biznesam ir ļoti daudz svarīgu datu un tapēc man ir nepieciešams backup serveru izveide.', 'Nav pabeigts', '4', '9'), 
(NULL, 'Man ir nepieciešama logo izstrāde priekš mana kafijas veikala.', 'Nav pabeigts', '5', '8'), 
(NULL, 'Nepieciešama grafiskā palīdzība, lai uzlabotu esošo logo priekš mana uzņēmuma.', 'Nav pabeigts', '4', '8'), 
(NULL, 'Ir vajadzīga ātra mājas lapas izveide priekš mana uzņēmuma.', 'Nav pabeigts', '3', '3'), 
(NULL, 'Man ir tāda aizdoma, ka manam datoram ir vīrus. Vai ir iespēja to noņemt un pie reizes iztīrīt datoru no putekļiem?', 'Nav pabeigts', '3', '1'), 
(NULL, 'Viens no mūsu darbiniekiem izdzēsa ļoti svarīgus failus, vai ir iespēja tos atgūt?', 'Pabeigts', '4', '5'), 
(NULL, 'Mūsu uzņēmums ir nepieciešama aplikācija, līdzīga watsapp, lai mēs varētu savsarpēji sazināties ar darbiniekiem.', 'Pabeigts', '2', '4');

/*Tabulas 'premijas' insert vaicajumu ievadisana*/

INSERT INTO `premijas` (`premijas_id`, `premija`, `status`, `id_darbinieki`) VALUES 
(NULL, '200', 'Izdota', '6'), 
(NULL, '400', 'Izdota', '7'), 
(NULL, '300', 'Izdota', '3'), 
(NULL, '800', 'Nav izdota', '8'), 
(NULL, '50', 'Izdota', '1'), 
(NULL, '80', 'Izdota', '2'), 
(NULL, '70', 'Izdota', '3'), 
(NULL, '140', 'Nav izdota', '8'), 
(NULL, '144', 'Izdota', '2'),
(NULL, '20', 'Nav izdota', '4'), 
(NULL, '90', 'Izdota', '4'), 
(NULL, '40', 'Nav izdota', '8'), 
(NULL, '40', 'Nav izdota', '5'), 
(NULL, '200', 'Izdota', '5'), 
(NULL, '150', 'Izdota', '6'), 
(NULL, '30', 'Nav izdota', '3'), 
(NULL, '40', 'Izdota', '9'), 
(NULL, '70', 'Izdota', '4');

/*Tabulas 'atvalinajumi' insert vaicajumu ievadisana*/

INSERT INTO `atvalinajumi` (`atvalinajumi_id`, `sakuma_datums`, `beigu_datums`, `atmaksats`, `id_darbinieki`) VALUES 
(NULL, '2022-11-14', '2022-12-01', 'Ne', '6'), 
(NULL, '2022-09-13', '2022-10-06', 'Ne', '4'), 
(NULL, '2022-09-12', '2022-11-14', 'Ja', '4'), 
(NULL, '2019-02-06', '2020-09-08', 'Ne', '1'), 
(NULL, '2022-10-04', '2022-11-16', 'Ja', '5'), 
(NULL, '2020-11-10', '2020-12-01', 'Ja', '4'), 
(NULL, '2022-08-15', '2022-10-10', 'Ja', '3'), 
(NULL, '2022-07-11', '2022-09-12', 'Ne', '2'), 
(NULL, '2022-03-14', '2022-04-20', 'Ne', '7'), 
(NULL, '2022-11-01', '2022-11-08', 'Ne', '1'), 
(NULL, '2022-11-07', '2022-11-14', 'Ja', '2'), 
(NULL, '2022-10-02', '2022-10-16', 'Ne', '4'), 
(NULL, '2022-08-08', '2022-09-13', 'Ne', '8'), 
(NULL, '2022-07-08', '2022-10-13', 'Ne', '9'), 
(NULL, '2022-11-23', '2022-11-30', 'Ne', '8'), 
(NULL, '2022-11-03', '2022-11-08', 'Ja', '4'), 
(NULL, '2022-11-16', '2022-11-22', 'Ja', '3');