drop table if exists Galerie, Photo ;

create table Galerie (
	id integer primary key auto_increment,
	nom varchar(50),
	date Date,
	type varchar(30),
	constraint check_type check (type in ('classique', 'exposition', 'stage'))
);

insert into Galerie (id, type, nom, date) values
	(1, 'classique', 'Bouquets libres', ''),
	(2, 'classique', 'Galerie des Elèves', ''),

	(3, 'exposition', '150ème anniversaire', '2008-10-09'),
	(4, 'exposition', 'Cellier de Clairvaux', '2012-09-01'),
	(5, 'exposition', 'Notre-Dame', '2013-12-01'),
	(6, 'exposition', 'Sainte-Bernadette', '2014-01-01'),

	(7, 'stage', 'Maître Fukushima', '2008-06-01'),
	(8, 'stage', 'Nouvel An', '2010-01-01'),
	(9, 'stage', 'Fêtes de fin d''année', '2011-01-01'),
	(10, 'stage', 'Eté', '2012-07-01'),
	(11, 'stage', 'Pâques', '2013-04-01')
;

create table Photo (
	id integer primary key auto_increment,
	source varchar(100),
	sourceMiniature varchar(100),
	alt varchar(50),
	titre varchar(50),
	ordre integer,
	idGalerie integer references Galerie(id)
);

insert into Photo (idGalerie, ordre, source, sourceMiniature, alt, titre) values
	(1, 1, 'photos/bouquets_libres/ikebana1.jpg', 'photos/bouquets_libres/ikebana1_detail.jpg', 'Ikebana1', 'Club Photo UAICF Dijon'),
	(1, 2, 'photos/bouquets_libres/ikebana2.jpg', 'photos/bouquets_libres/ikebana2_detail.jpg', 'Ikebana2', 'Club Photo UAICF Dijon'),
	(1, 3, 'photos/bouquets_libres/ikebana3.jpg', 'photos/bouquets_libres/ikebana3_detail.jpg', 'Ikebana3', 'Club Photo UAICF Dijon'),
	(1, 4, 'photos/bouquets_libres/ikebana4.jpg', 'photos/bouquets_libres/ikebana4_detail.jpg', 'Ikebana4', 'Club Photo UAICF Dijon'),
	(1, 5, 'photos/bouquets_libres/ikebana5.jpg', 'photos/bouquets_libres/ikebana5_detail.jpg', 'Ikebana5', 'Club Photo UAICF Dijon'),
	(1, 6, 'photos/bouquets_libres/ikebana6.jpg', 'photos/bouquets_libres/ikebana6_detail.jpg', 'Ikebana6', 'Club Photo UAICF Dijon'),
	(1, 7, 'photos/bouquets_libres/ikebana7.jpg', 'photos/bouquets_libres/ikebana7_detail.jpg', 'Ikebana7', 'Club Photo UAICF Dijon'),
	(1, 8, 'photos/bouquets_libres/ikebana8.jpg', 'photos/bouquets_libres/ikebana8_detail.jpg', 'Ikebana8', 'Club Photo UAICF Dijon'),
	(1, 9, 'photos/bouquets_libres/ikebana9.jpg', 'photos/bouquets_libres/ikebana9_detail.jpg', 'Ikebana9', 'Club Photo UAICF Dijon'),
	(1, 10, 'photos/bouquets_libres/ikebana10.jpg', 'photos/bouquets_libres/ikebana10_detail.jpg', 'Ikebana10', 'Club Photo UAICF Dijon'),
	(1, 11, 'photos/bouquets_libres/ikebana11.jpg', 'photos/bouquets_libres/ikebana11_detail.jpg', 'Ikebana11', 'Club Photo UAICF Dijon'),
	(1, 12, 'photos/bouquets_libres/ikebana12.jpg', 'photos/bouquets_libres/ikebana12_detail.jpg', 'Ikebana12', 'Club Photo UAICF Dijon'),
	(1, 13, 'photos/bouquets_libres/ikebana13.jpg', 'photos/bouquets_libres/ikebana13_detail.jpg', 'Ikebana13', 'Club Photo UAICF Dijon'),
	(1, 14, 'photos/bouquets_libres/ikebana14.jpg', 'photos/bouquets_libres/ikebana14_detail.jpg', 'Ikebana14', 'Club Photo Quétigny'),
	(1, 15, 'photos/bouquets_libres/ikebana15.jpg', 'photos/bouquets_libres/ikebana15_detail.jpg', 'Ikebana15', 'Club Photo UAICF Dijon'),
	(1, 16, 'photos/bouquets_libres/ikebana16.jpg', 'photos/bouquets_libres/ikebana16_detail.jpg', 'Ikebana16', 'Club Photo Quétigny'),
	(1, 17, 'photos/bouquets_libres/ikebana17.jpg', 'photos/bouquets_libres/ikebana17_detail.jpg', 'Ikebana17', 'Club Photo UAICF Dijon'),
	(1, 18, 'photos/bouquets_libres/ikebana18.jpg', 'photos/bouquets_libres/ikebana18_detail.jpg', 'Ikebana18', 'Club Photo UAICF Dijon'),
	(1, 19, 'photos/bouquets_libres/ikebana19.jpg', 'photos/bouquets_libres/ikebana19_detail.jpg', 'Ikebana19', 'Club Photo UAICF Dijon'),
	(1, 20, 'photos/bouquets_libres/ikebana20.jpg', 'photos/bouquets_libres/ikebana20_detail.jpg', 'Ikebana20', 'Club Photo UAICF Dijon'),
	(1, 21, 'photos/bouquets_libres/ikebana21.jpg', 'photos/bouquets_libres/ikebana21_detail.jpg', 'Ikebana21', 'Club Photo UAICF Dijon'),
	(1, 22, 'photos/bouquets_libres/ikebana22.jpg', 'photos/bouquets_libres/ikebana22_detail.jpg', 'Ikebana22', 'Club Photo UAICF Dijon'),
	(1, 23, 'photos/bouquets_libres/ikebana23.jpg', 'photos/bouquets_libres/ikebana23_detail.jpg', 'Ikebana23', 'Club Photo UAICF Dijon'),
	(1, 24, 'photos/bouquets_libres/ikebana24.jpg', 'photos/bouquets_libres/ikebana24_detail.jpg', 'Ikebana24', 'Club Photo UAICF Dijon'),
	(1, 25, 'photos/bouquets_libres/ikebana25.jpg', 'photos/bouquets_libres/ikebana25_detail.jpg', 'Ikebana25', 'Club Photo UAICF Dijon'),
	(1, 26, 'photos/bouquets_libres/ikebana26.jpg', 'photos/bouquets_libres/ikebana26_detail.jpg', 'Ikebana26', 'Club Photo UAICF Dijon'),
	(1, 27, 'photos/bouquets_libres/ikebana27.jpg', 'photos/bouquets_libres/ikebana27_detail.jpg', 'Ikebana27', 'Club Photo UAICF Dijon'),
	(1, 28, 'photos/bouquets_libres/ikebana28.jpg', 'photos/bouquets_libres/ikebana28_detail.jpg', 'Ikebana28', 'Club Photo UAICF Dijon'),
	(1, 29, 'photos/bouquets_libres/ikebana29.jpg', 'photos/bouquets_libres/ikebana29_detail.jpg', 'Ikebana29', 'Club Photo UAICF Dijon'),
	(1, 30, 'photos/bouquets_libres/ikebana30.jpg', 'photos/bouquets_libres/ikebana30_detail.jpg', 'Ikebana30', 'Club Photo UAICF Dijon'),
	(1, 31, 'photos/bouquets_libres/ikebana31.jpg', 'photos/bouquets_libres/ikebana31_detail.jpg', 'Ikebana31', 'Club Photo UAICF Dijon'),
	(1, 32, 'photos/bouquets_libres/ikebana32.jpg', 'photos/bouquets_libres/ikebana32_detail.jpg', 'Ikebana32', 'Club Photo UAICF Dijon'),
	(1, 33, 'photos/bouquets_libres/ikebana33.jpg', 'photos/bouquets_libres/ikebana33_detail.jpg', 'Ikebana33', 'Club Photo UAICF Dijon'),
	(1, 34, 'photos/bouquets_libres/ikebana34.jpg', 'photos/bouquets_libres/ikebana34_detail.jpg', 'Ikebana34', 'Club Photo UAICF Dijon'),
	(1, 35, 'photos/bouquets_libres/ikebana35.jpg', 'photos/bouquets_libres/ikebana35_detail.jpg', 'Ikebana35', 'Club Photo UAICF Dijon'),
	(1, 36, 'photos/bouquets_libres/ikebana36.jpg', 'photos/bouquets_libres/ikebana36_detail.jpg', 'Ikebana36', 'Club Photo UAICF Dijon'),
	(1, 37, 'photos/bouquets_libres/ikebana37.jpg', 'photos/bouquets_libres/ikebana37_detail.jpg', 'Ikebana37', 'Club Photo UAICF Dijon'),
	(1, 38, 'photos/bouquets_libres/ikebana38.jpg', 'photos/bouquets_libres/ikebana38_detail.jpg', 'Ikebana38', 'Club Photo UAICF Dijon'),
	(1, 39, 'photos/bouquets_libres/ikebana39.jpg', 'photos/bouquets_libres/ikebana39_detail.jpg', 'Ikebana39', 'Club Photo UAICF Dijon'),
	(1, 40, 'photos/bouquets_libres/ikebana40.jpg', 'photos/bouquets_libres/ikebana40_detail.jpg', 'Ikebana40', 'Club Photo UAICF Dijon'),
	(1, 41, 'photos/bouquets_libres/ikebana42.jpg', 'photos/bouquets_libres/ikebana42_detail.jpg', 'Ikebana42', 'Philippe'),
	(1, 42, 'photos/bouquets_libres/ikebana43.jpg', 'photos/bouquets_libres/ikebana43_detail.jpg', 'Ikebana43', 'Philippe'),
	(1, 43, 'photos/bouquets_libres/ikebana44.jpg', 'photos/bouquets_libres/ikebana44_detail.jpg', 'Ikebana44', 'Philippe'),
	(1, 44, 'photos/bouquets_libres/ikebana45.jpg', 'photos/bouquets_libres/ikebana45_detail.jpg', 'Ikebana45', 'Philippe'),

	(2, 1, 'photos/galerie_eleves/joelle2.jpg', 'photos/galerie_eleves/joelle2_detail.jpg', 'joelle2', 'Bouquet Joëlle'),
	(2, 2, 'photos/galerie_eleves/marie-odile1.jpg', 'photos/galerie_eleves/marie-odile1_detail.jpg', 'marie-odile1', 'Bouquet Marie-Odile'),
	(2, 3, 'photos/galerie_eleves/francoise1.jpg', 'photos/galerie_eleves/francoise1_detail.jpg', 'francoise1', 'Bouquet Françoise'),
	(2, 4, 'photos/galerie_eleves/anne-marie1.jpg', 'photos/galerie_eleves/anne-marie1_detail.jpg', 'anne-marie1', 'Bouquet Anne-Marie'),
	(2, 5, 'photos/galerie_eleves/marie-therese1.jpg', 'photos/galerie_eleves/marie-therese1_detail.jpg', 'marie-therese1', 'Bouquet Marie-Thérèse'),
	(2, 6, 'photos/galerie_eleves/martine4.jpg', 'photos/galerie_eleves/martine4_detail.jpg', 'martine4', 'Bouquet Martine'),
	(2, 7, 'photos/galerie_eleves/masayo2.jpg', 'photos/galerie_eleves/masayo2_detail.jpg', 'masayo2', 'Bouquet Masayo'),
	(2, 8, 'photos/galerie_eleves/pascale1.jpg', 'photos/galerie_eleves/pascale1_detail.jpg', 'pascale1', 'Bouquet Pascale'),
	(2, 9, 'photos/galerie_eleves/francoise3.jpg', 'photos/galerie_eleves/francoise3_detail.jpg', 'francoise3', 'Bouquet Françoise'),
	(2, 10, 'photos/galerie_eleves/masayo5.jpg', 'photos/galerie_eleves/masayo5_detail.jpg', 'masayo5', 'Bouquet Masayo'),
	(2, 11, 'photos/galerie_eleves/martine5.jpg', 'photos/galerie_eleves/martine5_detail.jpg', 'martine5', 'Bouquet Martine'),
	(2, 12, 'photos/galerie_eleves/francoise2.jpg', 'photos/galerie_eleves/francoise2_detail.jpg', 'francoise2', 'Bouquet Françoise'),
	(2, 13, 'photos/galerie_eleves/joelle3.jpg', 'photos/galerie_eleves/joelle3_detail.jpg', 'joelle3', 'Bouquet Joëlle'),
	(2, 14, 'photos/galerie_eleves/jose1.jpg', 'photos/galerie_eleves/jose1_detail.jpg', 'jose1', 'Bouquet José'),
	(2, 15, 'photos/galerie_eleves/masayo1.jpg', 'photos/galerie_eleves/masayo1_detail.jpg', 'masayo1', 'Bouquet Masayo'),
	(2, 16, 'photos/galerie_eleves/joelle1.jpg', 'photos/galerie_eleves/joelle1_detail.jpg', 'joelle1', 'Bouquet Joëlle'),
	(2, 17, 'photos/galerie_eleves/martine2.jpg', 'photos/galerie_eleves/martine2_detail.jpg', 'martine2', 'Bouquet Martine'),
	(2, 18, 'photos/galerie_eleves/eve1.jpg', 'photos/galerie_eleves/eve1_detail.jpg', 'eve1', 'Bouquet Eve'),
	(2, 19, 'photos/galerie_eleves/martine1.jpg', 'photos/galerie_eleves/martine1_detail.jpg', 'martine1', 'Bouquet Martine'),
	(2, 20, 'photos/galerie_eleves/nicole1.jpg', 'photos/galerie_eleves/nicole1_detail.jpg', 'nicole1', 'Bouquet Nicole'),
	(2, 21, 'photos/galerie_eleves/masayo3.jpg', 'photos/galerie_eleves/masayo3_detail.jpg', 'masayo3', 'Bouquet Masayo'),
	(2, 22, 'photos/galerie_eleves/martine3.jpg', 'photos/galerie_eleves/martine3_detail.jpg', 'martine3', 'Bouquet Martine'),
	(2, 23, 'photos/galerie_eleves/masayo4.jpg', 'photos/galerie_eleves/masayo4_detail.jpg', 'masayo4', 'Bouquet Masayo'),

	(3, 1, 'photos/galerie_150eme/photo1.jpg', 'photos/galerie_150eme/photo1_detail.jpg', 'Photo 1', 'bouquet C.Caron Photo Philippe'),
	(3, 2, 'photos/galerie_150eme/photo2.jpg', 'photos/galerie_150eme/photo2_detail.jpg', 'Photo 2', 'bouquet Masayo Photo Philippe'),
	(3, 3, 'photos/galerie_150eme/photo3.jpg', 'photos/galerie_150eme/photo3_detail.jpg', 'Photo 3', 'bouquet C.Caron Photo Philippe'),
	(3, 4, 'photos/galerie_150eme/photo4.jpg', 'photos/galerie_150eme/photo4_detail.jpg', 'Photo 4', 'bouquet Pascale Photo Philippe'),
	(3, 5, 'photos/galerie_150eme/photo5.jpg', 'photos/galerie_150eme/photo5_detail.jpg', 'Photo 5', 'bouquet Andrée Photo Philippe'),
	(3, 6, 'photos/galerie_150eme/photo6.jpg', 'photos/galerie_150eme/photo6_detail.jpg', 'Photo 6', 'bouquet Anne-Marie Photo Philippe'),
	(3, 7, 'photos/galerie_150eme/photo7.jpg', 'photos/galerie_150eme/photo7_detail.jpg', 'Photo 7', 'bouquet Nicole Photo Philippe'),
	(3, 8, 'photos/galerie_150eme/photo8.jpg', 'photos/galerie_150eme/photo8_detail.jpg', 'Photo 8', 'bouquet Sylviane Photo Philippe'),
	(3, 9, 'photos/galerie_150eme/photo9.jpg', 'photos/galerie_150eme/photo9_detail.jpg', 'Photo 9', 'bouquet C.Caron Photo Philippe'),
	(3, 10, 'photos/galerie_150eme/photo10.jpg', 'photos/galerie_150eme/photo10_detail.jpg', 'Photo 10', 'bouquet C.Caron Photo UAICF'),
	(3, 11, 'photos/galerie_150eme/photo12.jpg', 'photos/galerie_150eme/photo12_detail.jpg', 'Photo 12', 'bouquet Françoise Photo UAICF'),
	(3, 12, 'photos/galerie_150eme/photo13.jpg', 'photos/galerie_150eme/photo13_detail.jpg', 'Photo 13', 'bouquet Marie-Thérèse Photo UAICF'),
	(3, 13, 'photos/galerie_150eme/katsumi1.jpg', 'photos/galerie_150eme/katsumi1_detail.jpg', 'Katsumi 1', 'peinture Katsumi Photo Philippe'),
	(3, 14, 'photos/galerie_150eme/katsumi2.jpg', 'photos/galerie_150eme/katsumi2_detail.jpg', 'Katsumi 2', 'peinture Katsumi Photo Philippe'),
	(3, 15, 'photos/galerie_150eme/bernadette1.jpg', 'photos/galerie_150eme/bernadette1_detail.jpg', 'Bernadette 1', 'kimono Bernadette Photo Philippe'),
	(3, 16, 'photos/galerie_150eme/bernadette2.jpg', 'photos/galerie_150eme/bernadette2_detail.jpg', 'Bernadette 2', 'kimono Bernadette Photo Philippe'),

	(4, 1, 'photos/galerie_cellier_clairvaux_2012/ikebana1.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana1_detail.jpg', 'ikebana1', ''),
	(4, 2, 'photos/galerie_cellier_clairvaux_2012/ikebana2.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana2_detail.jpg', 'ikebana2', ''),
	(4, 3, 'photos/galerie_cellier_clairvaux_2012/ikebana3.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana3_detail.jpg', 'ikebana3', ''),
	(4, 4, 'photos/galerie_cellier_clairvaux_2012/ikebana4.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana4_detail.jpg', 'ikebana4', ''),
	(4, 5, 'photos/galerie_cellier_clairvaux_2012/ikebana5.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana5_detail.jpg', 'ikebana5', ''),
	(4, 6, 'photos/galerie_cellier_clairvaux_2012/ikebana6.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana6_detail.jpg', 'ikebana6', ''),
	(4, 7, 'photos/galerie_cellier_clairvaux_2012/ikebana7.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana7_detail.jpg', 'ikebana7', ''),
	(4, 8, 'photos/galerie_cellier_clairvaux_2012/ikebana8.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana8_detail.jpg', 'ikebana8', ''),
	(4, 9, 'photos/galerie_cellier_clairvaux_2012/ikebana9.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana9_detail.jpg', 'ikebana9', ''),
	(4, 10, 'photos/galerie_cellier_clairvaux_2012/ikebana10.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana10_detail.jpg', 'ikebana10', ''),
	(4, 11, 'photos/galerie_cellier_clairvaux_2012/ikebana11.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana11_detail.jpg', 'ikebana11', ''),
	(4, 12, 'photos/galerie_cellier_clairvaux_2012/ikebana12.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana12_detail.jpg', 'ikebana12', ''),
	(4, 13, 'photos/galerie_cellier_clairvaux_2012/ikebana13.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana13_detail.jpg', 'ikebana13', ''),
	(4, 14, 'photos/galerie_cellier_clairvaux_2012/ikebana14.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana14_detail.jpg', 'ikebana14', ''),
	(4, 15, 'photos/galerie_cellier_clairvaux_2012/ikebana15.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana15_detail.jpg', 'ikebana15', ''),
	(4, 16, 'photos/galerie_cellier_clairvaux_2012/ikebana16.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana16_detail.jpg', 'ikebana16', ''),
	(4, 17, 'photos/galerie_cellier_clairvaux_2012/ikebana17.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana17_detail.jpg', 'ikebana17', ''),
	(4, 18, 'photos/galerie_cellier_clairvaux_2012/ikebana18.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana18_detail.jpg', 'ikebana18', ''),
	(4, 19, 'photos/galerie_cellier_clairvaux_2012/ikebana19.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana19_detail.jpg', 'ikebana19', ''),
	(4, 20, 'photos/galerie_cellier_clairvaux_2012/ikebana20.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana20_detail.jpg', 'ikebana20', ''),
	(4, 21, 'photos/galerie_cellier_clairvaux_2012/ikebana21.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana21_detail.jpg', 'ikebana21', ''),
	(4, 22, 'photos/galerie_cellier_clairvaux_2012/ikebana22.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana22_detail.jpg', 'ikebana22', ''),
	(4, 23, 'photos/galerie_cellier_clairvaux_2012/ikebana23.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana23_detail.jpg', 'ikebana23', ''),
	(4, 24, 'photos/galerie_cellier_clairvaux_2012/ikebana24.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana24_detail.jpg', 'ikebana24', ''),
	(4, 25, 'photos/galerie_cellier_clairvaux_2012/ikebana25.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana25_detail.jpg', 'ikebana25', ''),
	(4, 26, 'photos/galerie_cellier_clairvaux_2012/ikebana26.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana26_detail.jpg', 'ikebana26', ''),
	(4, 27, 'photos/galerie_cellier_clairvaux_2012/ikebana27.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana27_detail.jpg', 'ikebana27', ''),
	(4, 28, 'photos/galerie_cellier_clairvaux_2012/ikebana28.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana28_detail.jpg', 'ikebana28', ''),
	(4, 29, 'photos/galerie_cellier_clairvaux_2012/ikebana29.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana29_detail.jpg', 'ikebana29', ''),
	(4, 30, 'photos/galerie_cellier_clairvaux_2012/ikebana30.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana30_detail.jpg', 'ikebana30', ''),
	(4, 31, 'photos/galerie_cellier_clairvaux_2012/ikebana31.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana31_detail.jpg', 'ikebana31', ''),
	(4, 32, 'photos/galerie_cellier_clairvaux_2012/ikebana32.jpg', 'photos/galerie_cellier_clairvaux_2012/ikebana32_detail.jpg', 'ikebana32', ''),

	(5, 1, 'photos/notre_dame_noel_2013/ikebana01.jpg', 'photos/notre_dame_noel_2013/ikebana01_detail.jpg', 'Ikebana01', ''),
	(5, 2, 'photos/notre_dame_noel_2013/ikebana02.jpg', 'photos/notre_dame_noel_2013/ikebana02_detail.jpg', 'Ikebana02', ''),
	(5, 3, 'photos/notre_dame_noel_2013/ikebana03.jpg', 'photos/notre_dame_noel_2013/ikebana03_detail.jpg', 'Ikebana03', ''),
	(5, 4, 'photos/notre_dame_noel_2013/ikebana04.jpg', 'photos/notre_dame_noel_2013/ikebana04_detail.jpg', 'Ikebana04', ''),
	(5, 5, 'photos/notre_dame_noel_2013/ikebana05.jpg', 'photos/notre_dame_noel_2013/ikebana05_detail.jpg', 'Ikebana05', ''),
	(5, 6, 'photos/notre_dame_noel_2013/ikebana06.jpg', 'photos/notre_dame_noel_2013/ikebana06_detail.jpg', 'Ikebana06 - Anne-Marie', 'Anne-Marie'),
	(5, 7, 'photos/notre_dame_noel_2013/ikebana07.jpg', 'photos/notre_dame_noel_2013/ikebana07_detail.jpg', 'Ikebana07 - Joël', 'Joël'),
	(5, 8, 'photos/notre_dame_noel_2013/ikebana08.jpg', 'photos/notre_dame_noel_2013/ikebana08_detail.jpg', 'Ikebana08 - Marie-Odile', 'Marie-Odile'),
	(5, 9, 'photos/notre_dame_noel_2013/ikebana09.jpg', 'photos/notre_dame_noel_2013/ikebana09_detail.jpg', 'Ikebana09 - Marie-Thérèse', 'Marie-Thérèse'),
	(5, 10, 'photos/notre_dame_noel_2013/ikebana10.jpg', 'photos/notre_dame_noel_2013/ikebana10_detail.jpg', 'Ikebana10 - Francis', 'Francis'),
	(5, 11, 'photos/notre_dame_noel_2013/ikebana11.jpg', 'photos/notre_dame_noel_2013/ikebana11_detail.jpg', 'Ikebana11 - Masayo', 'Masayo'),
	(5, 12, 'photos/notre_dame_noel_2013/ikebana12.jpg', 'photos/notre_dame_noel_2013/ikebana12_detail.jpg', 'Ikebana12 - Martine', 'Martine'),
	(5, 13, 'photos/notre_dame_noel_2013/ikebana13.jpg', 'photos/notre_dame_noel_2013/ikebana13_detail.jpg', 'Ikebana13 - Collectif', 'Collectif'),

	(6, 1, 'photos/sainte_bernadette_2014/photo01.jpg', 'photos/sainte_bernadette_2014/photo01_detail.jpg', 'Photo01', ''),
	(6, 2, 'photos/sainte_bernadette_2014/photo02.jpg', 'photos/sainte_bernadette_2014/photo02_detail.jpg', 'Photo02', ''),
	(6, 3, 'photos/sainte_bernadette_2014/photo03.jpg', 'photos/sainte_bernadette_2014/photo03_detail.jpg', 'Photo03', ''),
	(6, 4, 'photos/sainte_bernadette_2014/photo04.jpg', 'photos/sainte_bernadette_2014/photo04_detail.jpg', 'Photo04', ''),
	(6, 5, 'photos/sainte_bernadette_2014/photo05.jpg', 'photos/sainte_bernadette_2014/photo05_detail.jpg', 'Photo05', ''),
	(6, 6, 'photos/sainte_bernadette_2014/photo06.jpg', 'photos/sainte_bernadette_2014/photo06_detail.jpg', 'Photo06', ''),
	(6, 7, 'photos/sainte_bernadette_2014/photo07.jpg', 'photos/sainte_bernadette_2014/photo07_detail.jpg', 'Photo07', ''),
	(6, 8, 'photos/sainte_bernadette_2014/photo08.jpg', 'photos/sainte_bernadette_2014/photo08_detail.jpg', 'Photo08', ''),
	(6, 9, 'photos/sainte_bernadette_2014/photo09.jpg', 'photos/sainte_bernadette_2014/photo09_detail.jpg', 'Photo09', ''),
	(6, 10, 'photos/sainte_bernadette_2014/photo10.jpg', 'photos/sainte_bernadette_2014/photo10_detail.jpg', 'Photo10', ''),
	(6, 11, 'photos/sainte_bernadette_2014/photo11.jpg', 'photos/sainte_bernadette_2014/photo11_detail.jpg', 'Photo11', ''),
	(6, 12, 'photos/sainte_bernadette_2014/photo12.jpg', 'photos/sainte_bernadette_2014/photo12_detail.jpg', 'Photo12', ''),
	(6, 13, 'photos/sainte_bernadette_2014/photo13.jpg', 'photos/sainte_bernadette_2014/photo13_detail.jpg', 'Photo13', ''),
	(6, 14, 'photos/sainte_bernadette_2014/photo14.jpg', 'photos/sainte_bernadette_2014/photo14_detail.jpg', 'Photo14', ''),
	(6, 15, 'photos/sainte_bernadette_2014/photo15.jpg', 'photos/sainte_bernadette_2014/photo15_detail.jpg', 'Photo15', ''),
	(6, 16, 'photos/sainte_bernadette_2014/photo16.jpg', 'photos/sainte_bernadette_2014/photo16_detail.jpg', 'Photo16', ''),
	(6, 17, 'photos/sainte_bernadette_2014/photo17.jpg', 'photos/sainte_bernadette_2014/photo17_detail.jpg', 'Photo17', ''),
	(6, 18, 'photos/sainte_bernadette_2014/photo18.jpg', 'photos/sainte_bernadette_2014/photo18_detail.jpg', 'Photo18', ''),
	(6, 19, 'photos/sainte_bernadette_2014/photo19.jpg', 'photos/sainte_bernadette_2014/photo19_detail.jpg', 'Photo19', ''),
	(6, 20, 'photos/sainte_bernadette_2014/photo20.jpg', 'photos/sainte_bernadette_2014/photo20_detail.jpg', 'Photo20', ''),

	(7, 1, 'photos/stage_fukushima/photo1.jpg', 'photos/stage_fukushima/photo1_detail.jpg', 'Photo 1', 'Style libre kabuwake'),
	(7, 2, 'photos/stage_fukushima/photo2.jpg', 'photos/stage_fukushima/photo2_detail.jpg', 'Photo 2', 'Répétition de formes identiques'),
	(7, 3, 'photos/stage_fukushima/photo3.jpg', 'photos/stage_fukushima/photo3_detail.jpg', 'Photo 3', 'Entrelacs de végétaux'),
	(7, 4, 'photos/stage_fukushima/photo4.jpg', 'photos/stage_fukushima/photo4_detail.jpg', 'Photo 4', 'Couleurs dans une même gamme de tons'),
	(7, 5, 'photos/stage_fukushima/photo5.jpg', 'photos/stage_fukushima/photo5_detail.jpg', 'Photo 5', 'En contre-plongée'),
	(7, 6, 'photos/stage_fukushima/photo6.jpg', 'photos/stage_fukushima/photo6_detail.jpg', 'Photo 6', 'Maître Fukushima au travail'),
	(7, 7, 'photos/stage_fukushima/photo7.jpg', 'photos/stage_fukushima/photo7_detail.jpg', 'Photo 7', 'Maître Fukushima au travail'),
	(7, 8, 'photos/stage_fukushima/photo8.jpg', 'photos/stage_fukushima/photo8_detail.jpg', 'Photo 8', 'Les professeurs attentifs'),
	(7, 9, 'photos/stage_fukushima/photo9.jpg', 'photos/stage_fukushima/photo9_detail.jpg', 'Photo 9', 'Maître Fukushima corrige les bouquets'),
	(7, 10, 'photos/stage_fukushima/photo10.jpg', 'photos/stage_fukushima/photo10_detail.jpg', 'Photo 10', 'Une réalisation : bouquet avec des feuilles'),
	(7, 11, 'photos/stage_fukushima/photo11.jpg', 'photos/stage_fukushima/photo11_detail.jpg', 'Photo 11', 'Quelques cent bouquets réalisés...'),

	(8, 1, 'photos/galerie_nouvel_an_2010/ikebana1.jpg', 'photos/galerie_nouvel_an_2010/ikebana1_detail.jpg', 'Photo 1', ''),
	(8, 2, 'photos/galerie_nouvel_an_2010/ikebana2.jpg', 'photos/galerie_nouvel_an_2010/ikebana2_detail.jpg', 'Photo 2', ''),
	(8, 3, 'photos/galerie_nouvel_an_2010/ikebana3.jpg', 'photos/galerie_nouvel_an_2010/ikebana3_detail.jpg', 'Photo 3', ''),
	(8, 4, 'photos/galerie_nouvel_an_2010/ikebana4.jpg', 'photos/galerie_nouvel_an_2010/ikebana4_detail.jpg', 'Photo 4', ''),
	(8, 5, 'photos/galerie_nouvel_an_2010/ikebana5.jpg', 'photos/galerie_nouvel_an_2010/ikebana5_detail.jpg', 'Photo 5', ''),
	(8, 6, 'photos/galerie_nouvel_an_2010/ikebana6.jpg', 'photos/galerie_nouvel_an_2010/ikebana6_detail.jpg', 'Photo 6', ''),
	(8, 7, 'photos/galerie_nouvel_an_2010/ikebana7.jpg', 'photos/galerie_nouvel_an_2010/ikebana7_detail.jpg', 'Photo 7', ''),
	(8, 8, 'photos/galerie_nouvel_an_2010/ikebana8.jpg', 'photos/galerie_nouvel_an_2010/ikebana8_detail.jpg', 'Photo 8', ''),
	(8, 9, 'photos/galerie_nouvel_an_2010/ikebana9.jpg', 'photos/galerie_nouvel_an_2010/ikebana9_detail.jpg', 'Photo 9', ''),
	(8, 10, 'photos/galerie_nouvel_an_2010/ikebana10.jpg', 'photos/galerie_nouvel_an_2010/ikebana10_detail.jpg', 'Photo 10', ''),
	(8, 11, 'photos/galerie_nouvel_an_2010/ikebana11.jpg', 'photos/galerie_nouvel_an_2010/ikebana11_detail.jpg', 'Photo 11', ''),
	(8, 12, 'photos/galerie_nouvel_an_2010/ikebana12.jpg', 'photos/galerie_nouvel_an_2010/ikebana12_detail.jpg', 'Photo 12', ''),
	(8, 13, 'photos/galerie_nouvel_an_2010/ikebana13.jpg', 'photos/galerie_nouvel_an_2010/ikebana13_detail.jpg', 'Photo 13', 'Bouquet Martine'),
	(8, 14, 'photos/galerie_nouvel_an_2010/ikebana14.jpg', 'photos/galerie_nouvel_an_2010/ikebana14_detail.jpg', 'Photo 14', 'Bouquet Anne-Marie'),
	(8, 15, 'photos/galerie_nouvel_an_2010/ikebana15.jpg', 'photos/galerie_nouvel_an_2010/ikebana15_detail.jpg', 'Photo 15', 'Bouquet Marie-Christine'),
	(8, 16, 'photos/galerie_nouvel_an_2010/ikebana16.jpg', 'photos/galerie_nouvel_an_2010/ikebana16_detail.jpg', 'Photo 16', 'Bouquet Masayo'),
	(8, 17, 'photos/galerie_nouvel_an_2010/ikebana17.jpg', 'photos/galerie_nouvel_an_2010/ikebana17_detail.jpg', 'Photo 17', 'Bouquet Françoise'),
	(8, 18, 'photos/galerie_nouvel_an_2010/ikebana18.jpg', 'photos/galerie_nouvel_an_2010/ikebana18_detail.jpg', 'Photo 18', 'Bouquet Joëlle'),
	(8, 19, 'photos/galerie_nouvel_an_2010/ikebana19.jpg', 'photos/galerie_nouvel_an_2010/ikebana19_detail.jpg', 'Photo 19', 'Bouquet Nicole'),

	(9, 1, 'photos/fetes_2011/ikebana1.jpg', 'photos/fetes_2011/ikebana1_detail.jpg', 'photo1', ''),
	(9, 2, 'photos/fetes_2011/ikebana2.jpg', 'photos/fetes_2011/ikebana2_detail.jpg', 'photo2', ''),
	(9, 3, 'photos/fetes_2011/ikebana3.jpg', 'photos/fetes_2011/ikebana3_detail.jpg', 'photo3', ''),
	(9, 4, 'photos/fetes_2011/ikebana4.jpg', 'photos/fetes_2011/ikebana4_detail.jpg', 'photo4', ''),
	(9, 5, 'photos/fetes_2011/ikebana5.jpg', 'photos/fetes_2011/ikebana5_detail.jpg', 'photo5', 'Bouquet Marie-Thérèse'),
	(9, 6, 'photos/fetes_2011/ikebana6.jpg', 'photos/fetes_2011/ikebana6_detail.jpg', 'photo6', 'Bouquet Annie'),
	(9, 7, 'photos/fetes_2011/ikebana7.jpg', 'photos/fetes_2011/ikebana7_detail.jpg', 'photo7', 'Bouquet Anne-Marie'),
	(9, 8, 'photos/fetes_2011/ikebana8.jpg', 'photos/fetes_2011/ikebana8_detail.jpg', 'photo8', 'Bouquet Virginie'),
	(9, 9, 'photos/fetes_2011/ikebana9.jpg', 'photos/fetes_2011/ikebana9_detail.jpg', 'photo9', 'Bouquet Nicole'),
	(9, 10, 'photos/fetes_2011/ikebana10.jpg', 'photos/fetes_2011/ikebana10_detail.jpg', 'photo10', 'Bouquet Masayo'),
	(9, 11, 'photos/fetes_2011/ikebana11.jpg', 'photos/fetes_2011/ikebana11_detail.jpg', 'photo11', 'Bouquet Martine'),
	(9, 12, 'photos/fetes_2011/ikebana12.jpg', 'photos/fetes_2011/ikebana12_detail.jpg', 'photo12', 'Bouquet Françoise'),
	(9, 13, 'photos/fetes_2011/ikebana13.jpg', 'photos/fetes_2011/ikebana13_detail.jpg', 'photo13', 'Bouquet José'),
	(9, 14, 'photos/fetes_2011/ikebana14.jpg', 'photos/fetes_2011/ikebana14_detail.jpg', 'photo14', 'Bouquet Dominique'),

	(10, 1, 'photos/stage_ete_2012/ikebana1.jpg', 'photos/stage_ete_2012/ikebana1_detail.jpg', 'ikebana1', 'Ikebana 1'),
	(10, 2, 'photos/stage_ete_2012/ikebana2.jpg', 'photos/stage_ete_2012/ikebana2_detail.jpg', 'ikebana2', 'Ikebana 2'),
	(10, 3, 'photos/stage_ete_2012/ikebana3.jpg', 'photos/stage_ete_2012/ikebana3_detail.jpg', 'ikebana3', 'Ikebana 3'),
	(10, 4, 'photos/stage_ete_2012/ikebana4.jpg', 'photos/stage_ete_2012/ikebana4_detail.jpg', 'ikebana4', 'Ikebana 4'),
	(10, 5, 'photos/stage_ete_2012/ikebana5.jpg', 'photos/stage_ete_2012/ikebana5_detail.jpg', 'ikebana5', 'Ikebana 5'),
	(10, 6, 'photos/stage_ete_2012/ikebana6.jpg', 'photos/stage_ete_2012/ikebana6_detail.jpg', 'ikebana6', 'Ikebana 6'),
	(10, 7, 'photos/stage_ete_2012/ikebana7.jpg', 'photos/stage_ete_2012/ikebana7_detail.jpg', 'ikebana7', 'Ikebana 7'),
	(10, 8, 'photos/stage_ete_2012/ikebana8.jpg', 'photos/stage_ete_2012/ikebana8_detail.jpg', 'ikebana8', 'Ikebana 8'),
	(10, 9, 'photos/stage_ete_2012/ikebana9.jpg', 'photos/stage_ete_2012/ikebana9_detail.jpg', 'ikebana9', 'Ikebana 9'),
	(10, 10, 'photos/stage_ete_2012/ikebana10.jpg', 'photos/stage_ete_2012/ikebana10_detail.jpg', 'ikebana10', 'Ikebana 10'),
	(10, 11, 'photos/stage_ete_2012/ikebana11.jpg', 'photos/stage_ete_2012/ikebana11_detail.jpg', 'ikebana11', 'Ikebana 11'),
	(10, 12, 'photos/stage_ete_2012/ikebana12.jpg', 'photos/stage_ete_2012/ikebana12_detail.jpg', 'ikebana12', 'Ikebana 12'),

	(11, 1, 'photos/stage_paques_2013/photo1.jpg', 'photos/stage_paques_2013/photo1_detail.jpg', 'photo1', 'Photo 1'),
	(11, 2, 'photos/stage_paques_2013/photo2.jpg', 'photos/stage_paques_2013/photo2_detail.jpg', 'photo2', 'Photo 2'),
	(11, 3, 'photos/stage_paques_2013/photo3.jpg', 'photos/stage_paques_2013/photo3_detail.jpg', 'photo3', 'Photo 3'),
	(11, 4, 'photos/stage_paques_2013/photo4.jpg', 'photos/stage_paques_2013/photo4_detail.jpg', 'photo4', 'Photo 4'),
	(11, 5, 'photos/stage_paques_2013/photo5.jpg', 'photos/stage_paques_2013/photo5_detail.jpg', 'photo5', 'Photo 5'),
	(11, 6, 'photos/stage_paques_2013/photo6.jpg', 'photos/stage_paques_2013/photo6_detail.jpg', 'photo6', 'Photo 6'),
	(11, 7, 'photos/stage_paques_2013/photo7.jpg', 'photos/stage_paques_2013/photo7_detail.jpg', 'photo7', 'Photo 7'),
	(11, 8, 'photos/stage_paques_2013/ikebana1.jpg', 'photos/stage_paques_2013/ikebana1_detail.jpg', 'ikebana1', 'Bouquet Masayo'),
	(11, 9, 'photos/stage_paques_2013/ikebana2.jpg', 'photos/stage_paques_2013/ikebana2_detail.jpg', 'ikebana2', 'Bouquet Marie-Thérèse'),
	(11, 10, 'photos/stage_paques_2013/ikebana3.jpg', 'photos/stage_paques_2013/ikebana3_detail.jpg', 'ikebana3', 'Bouquet Bernadette'),
	(11, 11, 'photos/stage_paques_2013/ikebana4.jpg', 'photos/stage_paques_2013/ikebana4_detail.jpg', 'ikebana4', 'Bouquet Pascale'),
	(11, 12, 'photos/stage_paques_2013/ikebana5.jpg', 'photos/stage_paques_2013/ikebana5_detail.jpg', 'ikebana5', 'Bouquet Delphine'),
	(11, 13, 'photos/stage_paques_2013/ikebana6.jpg', 'photos/stage_paques_2013/ikebana6_detail.jpg', 'ikebana6', 'Bouquet Huguette'),
	(11, 14, 'photos/stage_paques_2013/ikebana7.jpg', 'photos/stage_paques_2013/ikebana7_detail.jpg', 'ikebana7', 'Bouquet Sylvette')
;
