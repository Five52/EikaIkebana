drop table if exists Gallery, Picture ;

create table Gallery (
    ordre integer unique,
    name varchar(50),
    slug varchar(50) primary key,
    date Date,
    type varchar(30),
    constraint check_type check (type in ('classique', 'exposition', 'stage', 'archive')),
    previous varchar(50),
    next varchar(50)
);

insert into Gallery (ordre, type, name, slug, date) values
    (1, 'classique', 'Bouquets libres', 'bouquets-libres', null),
    (2, 'classique', 'Galerie des Elèves', 'eleves', null),

    (3, 'exposition', '150ème anniversaire', '150eme-anniversaire-2008', '2008-10-09'),
    (4, 'exposition', 'Cellier de Clairvaux', 'cellier-clairvaux-2012', '2012-09-01'),
    (5, 'exposition', 'Notre-Dame', 'notre-dame-2013', '2013-12-01'),
    (6, 'exposition', 'Sainte-Bernadette', 'sainte-bernadette-2014', '2014-01-01'),

    (7, 'stage', 'Maître Fukushima', 'maitre-fukushima-2008', '2008-06-01'),
    (8, 'stage', 'Nouvel An', 'nouvel-an-2010', '2010-01-01'),
    (9, 'stage', 'Fêtes de fin d''année', 'fetes-2011', '2011-01-01'),
    (10, 'stage', 'Eté', 'ete-2012', '2012-07-01'),
    (11, 'stage', 'Pâques', 'paques-2013', '2013-04-01'),

    (12, 'exposition', 'Cellier de Clairvaux', 'cellier-clairvaux-2016', '2016-02-01'),
    (13, 'archive', 'Saint Fiacre', 'saint-fiacre-2015', '2015-09-01'),
    (14, 'archive', 'Chailly', 'chailly-2014', '2014-08-01'),
    (15, 'archive', 'Le Centre', 'le-centre-2014', '2014-09-01'),
    (16, 'archive', 'Genlis', 'genlis-2013', '2013-06-01'),
    (17, 'archive', 'La Ninette', 'la-ninette-2013', '2013-06-01'),
    (18, 'archive', 'Oyé', 'oye-2012', '2012-06-01'),
    (19, 'archive', 'Gueugnon', 'gueugnon-2012', '2012-12-01')
;

alter table Gallery
    add foreign key (previous) references Gallery(slug),
    add foreign key (next) references Gallery(slug)
;


update Gallery
    set next = 'eleves'
    where slug = 'bouquets-libres'
;
update Gallery
    set previous = 'bouquets-libres'
    where slug = 'eleves'
;
update Gallery
    set next = 'cellier-clairvaux-2012'
    where slug = '150eme-anniversaire-2008'
;
update Gallery
    set previous = '150eme-anniversaire-2008',
        next = 'notre-dame-2013'
    where slug = 'cellier-clairvaux-2012'
;
update Gallery
    set previous = 'cellier-clairvaux-2012',
        next = 'sainte-bernadette-2014'
    where slug = 'notre-dame-2013'
;
update Gallery
    set previous = 'notre-dame-2013',
        next = 'cellier-clairvaux-2016'
    where slug = 'sainte-bernadette-2014'
;
update Gallery
    set previous = 'sainte-bernadette-2014'
    where slug = 'cellier-clairvaux-2016'
;
update Gallery
    set next = 'nouvel-an-2010'
    where slug = 'maitre-fukushima-2008'
;
update Gallery
    set previous = 'maitre-fukushima-2008',
        next = 'fetes-2011'
    where slug = 'nouvel-an-2010'
;
update Gallery
    set previous = 'nouvel-an-2010',
        next = 'ete-2012'
    where slug = 'fetes-2011'
;
update Gallery
    set previous = 'fetes-2011',
        next = 'paques-2013'
    where slug = 'ete-2012'
;
update Gallery
    set previous = 'ete-2012'
    where slug = 'paques-2013'
;

create table Picture (
    id integer primary key auto_increment,
    source varchar(100),
    sourceMiniature varchar(100),
    alt varchar(50),
    title varchar(50),
    ordre integer,
    slugGallery varchar(50) references Gallery(slug)
);

insert into Picture (slugGallery, ordre, source, sourceMiniature, alt, title) values
    ('bouquets-libres', 1, 'img/pictures/bouquets_libres/ikebana1.jpg', 'img/pictures/bouquets_libres/ikebana1_detail.jpg', 'Ikebana1', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 2, 'img/pictures/bouquets_libres/ikebana2.jpg', 'img/pictures/bouquets_libres/ikebana2_detail.jpg', 'Ikebana2', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 3, 'img/pictures/bouquets_libres/ikebana3.jpg', 'img/pictures/bouquets_libres/ikebana3_detail.jpg', 'Ikebana3', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 4, 'img/pictures/bouquets_libres/ikebana4.jpg', 'img/pictures/bouquets_libres/ikebana4_detail.jpg', 'Ikebana4', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 5, 'img/pictures/bouquets_libres/ikebana5.jpg', 'img/pictures/bouquets_libres/ikebana5_detail.jpg', 'Ikebana5', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 6, 'img/pictures/bouquets_libres/ikebana6.jpg', 'img/pictures/bouquets_libres/ikebana6_detail.jpg', 'Ikebana6', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 7, 'img/pictures/bouquets_libres/ikebana7.jpg', 'img/pictures/bouquets_libres/ikebana7_detail.jpg', 'Ikebana7', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 8, 'img/pictures/bouquets_libres/ikebana8.jpg', 'img/pictures/bouquets_libres/ikebana8_detail.jpg', 'Ikebana8', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 9, 'img/pictures/bouquets_libres/ikebana9.jpg', 'img/pictures/bouquets_libres/ikebana9_detail.jpg', 'Ikebana9', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 10, 'img/pictures/bouquets_libres/ikebana10.jpg', 'img/pictures/bouquets_libres/ikebana10_detail.jpg', 'Ikebana10', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 11, 'img/pictures/bouquets_libres/ikebana11.jpg', 'img/pictures/bouquets_libres/ikebana11_detail.jpg', 'Ikebana11', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 12, 'img/pictures/bouquets_libres/ikebana12.jpg', 'img/pictures/bouquets_libres/ikebana12_detail.jpg', 'Ikebana12', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 13, 'img/pictures/bouquets_libres/ikebana13.jpg', 'img/pictures/bouquets_libres/ikebana13_detail.jpg', 'Ikebana13', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 14, 'img/pictures/bouquets_libres/ikebana14.jpg', 'img/pictures/bouquets_libres/ikebana14_detail.jpg', 'Ikebana14', 'Club Photo Quétigny'),
    ('bouquets-libres', 15, 'img/pictures/bouquets_libres/ikebana15.jpg', 'img/pictures/bouquets_libres/ikebana15_detail.jpg', 'Ikebana15', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 16, 'img/pictures/bouquets_libres/ikebana16.jpg', 'img/pictures/bouquets_libres/ikebana16_detail.jpg', 'Ikebana16', 'Club Photo Quétigny'),
    ('bouquets-libres', 17, 'img/pictures/bouquets_libres/ikebana17.jpg', 'img/pictures/bouquets_libres/ikebana17_detail.jpg', 'Ikebana17', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 18, 'img/pictures/bouquets_libres/ikebana18.jpg', 'img/pictures/bouquets_libres/ikebana18_detail.jpg', 'Ikebana18', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 19, 'img/pictures/bouquets_libres/ikebana19.jpg', 'img/pictures/bouquets_libres/ikebana19_detail.jpg', 'Ikebana19', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 20, 'img/pictures/bouquets_libres/ikebana20.jpg', 'img/pictures/bouquets_libres/ikebana20_detail.jpg', 'Ikebana20', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 21, 'img/pictures/bouquets_libres/ikebana21.jpg', 'img/pictures/bouquets_libres/ikebana21_detail.jpg', 'Ikebana21', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 22, 'img/pictures/bouquets_libres/ikebana22.jpg', 'img/pictures/bouquets_libres/ikebana22_detail.jpg', 'Ikebana22', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 23, 'img/pictures/bouquets_libres/ikebana23.jpg', 'img/pictures/bouquets_libres/ikebana23_detail.jpg', 'Ikebana23', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 24, 'img/pictures/bouquets_libres/ikebana24.jpg', 'img/pictures/bouquets_libres/ikebana24_detail.jpg', 'Ikebana24', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 25, 'img/pictures/bouquets_libres/ikebana25.jpg', 'img/pictures/bouquets_libres/ikebana25_detail.jpg', 'Ikebana25', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 26, 'img/pictures/bouquets_libres/ikebana26.jpg', 'img/pictures/bouquets_libres/ikebana26_detail.jpg', 'Ikebana26', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 27, 'img/pictures/bouquets_libres/ikebana27.jpg', 'img/pictures/bouquets_libres/ikebana27_detail.jpg', 'Ikebana27', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 28, 'img/pictures/bouquets_libres/ikebana28.jpg', 'img/pictures/bouquets_libres/ikebana28_detail.jpg', 'Ikebana28', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 29, 'img/pictures/bouquets_libres/ikebana29.jpg', 'img/pictures/bouquets_libres/ikebana29_detail.jpg', 'Ikebana29', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 30, 'img/pictures/bouquets_libres/ikebana30.jpg', 'img/pictures/bouquets_libres/ikebana30_detail.jpg', 'Ikebana30', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 31, 'img/pictures/bouquets_libres/ikebana31.jpg', 'img/pictures/bouquets_libres/ikebana31_detail.jpg', 'Ikebana31', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 32, 'img/pictures/bouquets_libres/ikebana32.jpg', 'img/pictures/bouquets_libres/ikebana32_detail.jpg', 'Ikebana32', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 33, 'img/pictures/bouquets_libres/ikebana33.jpg', 'img/pictures/bouquets_libres/ikebana33_detail.jpg', 'Ikebana33', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 34, 'img/pictures/bouquets_libres/ikebana34.jpg', 'img/pictures/bouquets_libres/ikebana34_detail.jpg', 'Ikebana34', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 35, 'img/pictures/bouquets_libres/ikebana35.jpg', 'img/pictures/bouquets_libres/ikebana35_detail.jpg', 'Ikebana35', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 36, 'img/pictures/bouquets_libres/ikebana36.jpg', 'img/pictures/bouquets_libres/ikebana36_detail.jpg', 'Ikebana36', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 37, 'img/pictures/bouquets_libres/ikebana37.jpg', 'img/pictures/bouquets_libres/ikebana37_detail.jpg', 'Ikebana37', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 38, 'img/pictures/bouquets_libres/ikebana38.jpg', 'img/pictures/bouquets_libres/ikebana38_detail.jpg', 'Ikebana38', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 39, 'img/pictures/bouquets_libres/ikebana39.jpg', 'img/pictures/bouquets_libres/ikebana39_detail.jpg', 'Ikebana39', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 40, 'img/pictures/bouquets_libres/ikebana40.jpg', 'img/pictures/bouquets_libres/ikebana40_detail.jpg', 'Ikebana40', 'Club Photo UAICF Dijon'),
    ('bouquets-libres', 41, 'img/pictures/bouquets_libres/ikebana42.jpg', 'img/pictures/bouquets_libres/ikebana42_detail.jpg', 'Ikebana42', 'Philippe'),
    ('bouquets-libres', 42, 'img/pictures/bouquets_libres/ikebana43.jpg', 'img/pictures/bouquets_libres/ikebana43_detail.jpg', 'Ikebana43', 'Philippe'),
    ('bouquets-libres', 43, 'img/pictures/bouquets_libres/ikebana44.jpg', 'img/pictures/bouquets_libres/ikebana44_detail.jpg', 'Ikebana44', 'Philippe'),
    ('bouquets-libres', 44, 'img/pictures/bouquets_libres/ikebana45.jpg', 'img/pictures/bouquets_libres/ikebana45_detail.jpg', 'Ikebana45', 'Philippe'),

    ('eleves', 1, 'img/pictures/galerie_eleves/joelle2.jpg', 'img/pictures/galerie_eleves/joelle2_detail.jpg', 'joelle2', 'Bouquet Joëlle'),
    ('eleves', 2, 'img/pictures/galerie_eleves/marie-odile1.jpg', 'img/pictures/galerie_eleves/marie-odile1_detail.jpg', 'marie-odile1', 'Bouquet Marie-Odile'),
    ('eleves', 3, 'img/pictures/galerie_eleves/francoise1.jpg', 'img/pictures/galerie_eleves/francoise1_detail.jpg', 'francoise1', 'Bouquet Françoise'),
    ('eleves', 4, 'img/pictures/galerie_eleves/anne-marie1.jpg', 'img/pictures/galerie_eleves/anne-marie1_detail.jpg', 'anne-marie1', 'Bouquet Anne-Marie'),
    ('eleves', 5, 'img/pictures/galerie_eleves/marie-therese1.jpg', 'img/pictures/galerie_eleves/marie-therese1_detail.jpg', 'marie-therese1', 'Bouquet Marie-Thérèse'),
    ('eleves', 6, 'img/pictures/galerie_eleves/martine4.jpg', 'img/pictures/galerie_eleves/martine4_detail.jpg', 'martine4', 'Bouquet Martine'),
    ('eleves', 7, 'img/pictures/galerie_eleves/masayo2.jpg', 'img/pictures/galerie_eleves/masayo2_detail.jpg', 'masayo2', 'Bouquet Masayo'),
    ('eleves', 8, 'img/pictures/galerie_eleves/pascale1.jpg', 'img/pictures/galerie_eleves/pascale1_detail.jpg', 'pascale1', 'Bouquet Pascale'),
    ('eleves', 9, 'img/pictures/galerie_eleves/francoise3.jpg', 'img/pictures/galerie_eleves/francoise3_detail.jpg', 'francoise3', 'Bouquet Françoise'),
    ('eleves', 10, 'img/pictures/galerie_eleves/masayo5.jpg', 'img/pictures/galerie_eleves/masayo5_detail.jpg', 'masayo5', 'Bouquet Masayo'),
    ('eleves', 11, 'img/pictures/galerie_eleves/martine5.jpg', 'img/pictures/galerie_eleves/martine5_detail.jpg', 'martine5', 'Bouquet Martine'),
    ('eleves', 12, 'img/pictures/galerie_eleves/francoise2.jpg', 'img/pictures/galerie_eleves/francoise2_detail.jpg', 'francoise2', 'Bouquet Françoise'),
    ('eleves', 13, 'img/pictures/galerie_eleves/joelle3.jpg', 'img/pictures/galerie_eleves/joelle3_detail.jpg', 'joelle3', 'Bouquet Joëlle'),
    ('eleves', 14, 'img/pictures/galerie_eleves/jose1.jpg', 'img/pictures/galerie_eleves/jose1_detail.jpg', 'jose1', 'Bouquet José'),
    ('eleves', 15, 'img/pictures/galerie_eleves/masayo1.jpg', 'img/pictures/galerie_eleves/masayo1_detail.jpg', 'masayo1', 'Bouquet Masayo'),
    ('eleves', 16, 'img/pictures/galerie_eleves/joelle1.jpg', 'img/pictures/galerie_eleves/joelle1_detail.jpg', 'joelle1', 'Bouquet Joëlle'),
    ('eleves', 17, 'img/pictures/galerie_eleves/martine2.jpg', 'img/pictures/galerie_eleves/martine2_detail.jpg', 'martine2', 'Bouquet Martine'),
    ('eleves', 18, 'img/pictures/galerie_eleves/eve1.jpg', 'img/pictures/galerie_eleves/eve1_detail.jpg', 'eve1', 'Bouquet Eve'),
    ('eleves', 19, 'img/pictures/galerie_eleves/martine1.jpg', 'img/pictures/galerie_eleves/martine1_detail.jpg', 'martine1', 'Bouquet Martine'),
    ('eleves', 20, 'img/pictures/galerie_eleves/nicole1.jpg', 'img/pictures/galerie_eleves/nicole1_detail.jpg', 'nicole1', 'Bouquet Nicole'),
    ('eleves', 21, 'img/pictures/galerie_eleves/masayo3.jpg', 'img/pictures/galerie_eleves/masayo3_detail.jpg', 'masayo3', 'Bouquet Masayo'),
    ('eleves', 22, 'img/pictures/galerie_eleves/martine3.jpg', 'img/pictures/galerie_eleves/martine3_detail.jpg', 'martine3', 'Bouquet Martine'),
    ('eleves', 23, 'img/pictures/galerie_eleves/masayo4.jpg', 'img/pictures/galerie_eleves/masayo4_detail.jpg', 'masayo4', 'Bouquet Masayo'),

    ('150eme-anniversaire-2008', 1, 'img/pictures/galerie_150eme/photo1.jpg', 'img/pictures/galerie_150eme/photo1_detail.jpg', 'Photo 1', 'bouquet C.Caron Photo Philippe'),
    ('150eme-anniversaire-2008', 2, 'img/pictures/galerie_150eme/photo2.jpg', 'img/pictures/galerie_150eme/photo2_detail.jpg', 'Photo 2', 'bouquet Masayo Photo Philippe'),
    ('150eme-anniversaire-2008', 3, 'img/pictures/galerie_150eme/photo3.jpg', 'img/pictures/galerie_150eme/photo3_detail.jpg', 'Photo 3', 'bouquet C.Caron Photo Philippe'),
    ('150eme-anniversaire-2008', 4, 'img/pictures/galerie_150eme/photo4.jpg', 'img/pictures/galerie_150eme/photo4_detail.jpg', 'Photo 4', 'bouquet Pascale Photo Philippe'),
    ('150eme-anniversaire-2008', 5, 'img/pictures/galerie_150eme/photo5.jpg', 'img/pictures/galerie_150eme/photo5_detail.jpg', 'Photo 5', 'bouquet Andrée Photo Philippe'),
    ('150eme-anniversaire-2008', 6, 'img/pictures/galerie_150eme/photo6.jpg', 'img/pictures/galerie_150eme/photo6_detail.jpg', 'Photo 6', 'bouquet Anne-Marie Photo Philippe'),
    ('150eme-anniversaire-2008', 7, 'img/pictures/galerie_150eme/photo7.jpg', 'img/pictures/galerie_150eme/photo7_detail.jpg', 'Photo 7', 'bouquet Nicole Photo Philippe'),
    ('150eme-anniversaire-2008', 8, 'img/pictures/galerie_150eme/photo8.jpg', 'img/pictures/galerie_150eme/photo8_detail.jpg', 'Photo 8', 'bouquet Sylviane Photo Philippe'),
    ('150eme-anniversaire-2008', 9, 'img/pictures/galerie_150eme/photo9.jpg', 'img/pictures/galerie_150eme/photo9_detail.jpg', 'Photo 9', 'bouquet C.Caron Photo Philippe'),
    ('150eme-anniversaire-2008', 10, 'img/pictures/galerie_150eme/photo10.jpg', 'img/pictures/galerie_150eme/photo10_detail.jpg', 'Photo 10', 'bouquet C.Caron Photo UAICF'),
    ('150eme-anniversaire-2008', 11, 'img/pictures/galerie_150eme/photo12.jpg', 'img/pictures/galerie_150eme/photo12_detail.jpg', 'Photo 12', 'bouquet Françoise Photo UAICF'),
    ('150eme-anniversaire-2008', 12, 'img/pictures/galerie_150eme/photo13.jpg', 'img/pictures/galerie_150eme/photo13_detail.jpg', 'Photo 13', 'bouquet Marie-Thérèse Photo UAICF'),
    ('150eme-anniversaire-2008', 13, 'img/pictures/galerie_150eme/katsumi1.jpg', 'img/pictures/galerie_150eme/katsumi1_detail.jpg', 'Katsumi 1', 'peinture Katsumi Photo Philippe'),
    ('150eme-anniversaire-2008', 14, 'img/pictures/galerie_150eme/katsumi2.jpg', 'img/pictures/galerie_150eme/katsumi2_detail.jpg', 'Katsumi 2', 'peinture Katsumi Photo Philippe'),
    ('150eme-anniversaire-2008', 15, 'img/pictures/galerie_150eme/bernadette1.jpg', 'img/pictures/galerie_150eme/bernadette1_detail.jpg', 'Bernadette 1', 'kimono Bernadette Photo Philippe'),
    ('150eme-anniversaire-2008', 16, 'img/pictures/galerie_150eme/bernadette2.jpg', 'img/pictures/galerie_150eme/bernadette2_detail.jpg', 'Bernadette 2', 'kimono Bernadette Photo Philippe'),

    ('cellier-clairvaux-2012', 1, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana1.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana1_detail.jpg', 'ikebana1', ''),
    ('cellier-clairvaux-2012', 2, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana2.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana2_detail.jpg', 'ikebana2', ''),
    ('cellier-clairvaux-2012', 3, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana3.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana3_detail.jpg', 'ikebana3', ''),
    ('cellier-clairvaux-2012', 4, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana4.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana4_detail.jpg', 'ikebana4', ''),
    ('cellier-clairvaux-2012', 5, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana5.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana5_detail.jpg', 'ikebana5', ''),
    ('cellier-clairvaux-2012', 6, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana6.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana6_detail.jpg', 'ikebana6', ''),
    ('cellier-clairvaux-2012', 7, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana7.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana7_detail.jpg', 'ikebana7', ''),
    ('cellier-clairvaux-2012', 8, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana8.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana8_detail.jpg', 'ikebana8', ''),
    ('cellier-clairvaux-2012', 9, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana9.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana9_detail.jpg', 'ikebana9', ''),
    ('cellier-clairvaux-2012', 10, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana10.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana10_detail.jpg', 'ikebana10', ''),
    ('cellier-clairvaux-2012', 11, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana11.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana11_detail.jpg', 'ikebana11', ''),
    ('cellier-clairvaux-2012', 12, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana12.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana12_detail.jpg', 'ikebana12', ''),
    ('cellier-clairvaux-2012', 13, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana13.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana13_detail.jpg', 'ikebana13', ''),
    ('cellier-clairvaux-2012', 14, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana14.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana14_detail.jpg', 'ikebana14', ''),
    ('cellier-clairvaux-2012', 15, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana15.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana15_detail.jpg', 'ikebana15', ''),
    ('cellier-clairvaux-2012', 16, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana16.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana16_detail.jpg', 'ikebana16', ''),
    ('cellier-clairvaux-2012', 17, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana17.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana17_detail.jpg', 'ikebana17', ''),
    ('cellier-clairvaux-2012', 18, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana18.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana18_detail.jpg', 'ikebana18', ''),
    ('cellier-clairvaux-2012', 19, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana19.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana19_detail.jpg', 'ikebana19', ''),
    ('cellier-clairvaux-2012', 20, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana20.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana20_detail.jpg', 'ikebana20', ''),
    ('cellier-clairvaux-2012', 21, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana21.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana21_detail.jpg', 'ikebana21', ''),
    ('cellier-clairvaux-2012', 22, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana22.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana22_detail.jpg', 'ikebana22', ''),
    ('cellier-clairvaux-2012', 23, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana23.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana23_detail.jpg', 'ikebana23', ''),
    ('cellier-clairvaux-2012', 24, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana24.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana24_detail.jpg', 'ikebana24', ''),
    ('cellier-clairvaux-2012', 25, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana25.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana25_detail.jpg', 'ikebana25', ''),
    ('cellier-clairvaux-2012', 26, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana26.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana26_detail.jpg', 'ikebana26', ''),
    ('cellier-clairvaux-2012', 27, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana27.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana27_detail.jpg', 'ikebana27', ''),
    ('cellier-clairvaux-2012', 28, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana28.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana28_detail.jpg', 'ikebana28', ''),
    ('cellier-clairvaux-2012', 29, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana29.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana29_detail.jpg', 'ikebana29', ''),
    ('cellier-clairvaux-2012', 30, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana30.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana30_detail.jpg', 'ikebana30', ''),
    ('cellier-clairvaux-2012', 31, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana31.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana31_detail.jpg', 'ikebana31', ''),
    ('cellier-clairvaux-2012', 32, 'img/pictures/galerie_cellier_clairvaux_2012/ikebana32.jpg', 'img/pictures/galerie_cellier_clairvaux_2012/ikebana32_detail.jpg', 'ikebana32', ''),

    ('notre-dame-2013', 1, 'img/pictures/notre_dame_noel_2013/ikebana01.jpg', 'img/pictures/notre_dame_noel_2013/ikebana01_detail.jpg', 'Ikebana01', ''),
    ('notre-dame-2013', 2, 'img/pictures/notre_dame_noel_2013/ikebana02.jpg', 'img/pictures/notre_dame_noel_2013/ikebana02_detail.jpg', 'Ikebana02', ''),
    ('notre-dame-2013', 3, 'img/pictures/notre_dame_noel_2013/ikebana03.jpg', 'img/pictures/notre_dame_noel_2013/ikebana03_detail.jpg', 'Ikebana03', ''),
    ('notre-dame-2013', 4, 'img/pictures/notre_dame_noel_2013/ikebana04.jpg', 'img/pictures/notre_dame_noel_2013/ikebana04_detail.jpg', 'Ikebana04', ''),
    ('notre-dame-2013', 5, 'img/pictures/notre_dame_noel_2013/ikebana05.jpg', 'img/pictures/notre_dame_noel_2013/ikebana05_detail.jpg', 'Ikebana05', ''),
    ('notre-dame-2013', 6, 'img/pictures/notre_dame_noel_2013/ikebana06.jpg', 'img/pictures/notre_dame_noel_2013/ikebana06_detail.jpg', 'Ikebana06 - Anne-Marie', 'Anne-Marie'),
    ('notre-dame-2013', 7, 'img/pictures/notre_dame_noel_2013/ikebana07.jpg', 'img/pictures/notre_dame_noel_2013/ikebana07_detail.jpg', 'Ikebana07 - Joël', 'Joël'),
    ('notre-dame-2013', 8, 'img/pictures/notre_dame_noel_2013/ikebana08.jpg', 'img/pictures/notre_dame_noel_2013/ikebana08_detail.jpg', 'Ikebana08 - Marie-Odile', 'Marie-Odile'),
    ('notre-dame-2013', 9, 'img/pictures/notre_dame_noel_2013/ikebana09.jpg', 'img/pictures/notre_dame_noel_2013/ikebana09_detail.jpg', 'Ikebana09 - Marie-Thérèse', 'Marie-Thérèse'),
    ('notre-dame-2013', 10, 'img/pictures/notre_dame_noel_2013/ikebana10.jpg', 'img/pictures/notre_dame_noel_2013/ikebana10_detail.jpg', 'Ikebana10 - Francis', 'Francis'),
    ('notre-dame-2013', 11, 'img/pictures/notre_dame_noel_2013/ikebana11.jpg', 'img/pictures/notre_dame_noel_2013/ikebana11_detail.jpg', 'Ikebana11 - Masayo', 'Masayo'),
    ('notre-dame-2013', 12, 'img/pictures/notre_dame_noel_2013/ikebana12.jpg', 'img/pictures/notre_dame_noel_2013/ikebana12_detail.jpg', 'Ikebana12 - Martine', 'Martine'),
    ('notre-dame-2013', 13, 'img/pictures/notre_dame_noel_2013/ikebana13.jpg', 'img/pictures/notre_dame_noel_2013/ikebana13_detail.jpg', 'Ikebana13 - Collectif', 'Collectif'),

    ('sainte-bernadette-2014', 1, 'img/pictures/sainte_bernadette_2014/photo01.jpg', 'img/pictures/sainte_bernadette_2014/photo01_detail.jpg', 'Photo01', ''),
    ('sainte-bernadette-2014', 2, 'img/pictures/sainte_bernadette_2014/photo02.jpg', 'img/pictures/sainte_bernadette_2014/photo02_detail.jpg', 'Photo02', ''),
    ('sainte-bernadette-2014', 3, 'img/pictures/sainte_bernadette_2014/photo03.jpg', 'img/pictures/sainte_bernadette_2014/photo03_detail.jpg', 'Photo03', ''),
    ('sainte-bernadette-2014', 4, 'img/pictures/sainte_bernadette_2014/photo04.jpg', 'img/pictures/sainte_bernadette_2014/photo04_detail.jpg', 'Photo04', ''),
    ('sainte-bernadette-2014', 5, 'img/pictures/sainte_bernadette_2014/photo05.jpg', 'img/pictures/sainte_bernadette_2014/photo05_detail.jpg', 'Photo05', ''),
    ('sainte-bernadette-2014', 6, 'img/pictures/sainte_bernadette_2014/photo06.jpg', 'img/pictures/sainte_bernadette_2014/photo06_detail.jpg', 'Photo06', ''),
    ('sainte-bernadette-2014', 7, 'img/pictures/sainte_bernadette_2014/photo07.jpg', 'img/pictures/sainte_bernadette_2014/photo07_detail.jpg', 'Photo07', ''),
    ('sainte-bernadette-2014', 8, 'img/pictures/sainte_bernadette_2014/photo08.jpg', 'img/pictures/sainte_bernadette_2014/photo08_detail.jpg', 'Photo08', ''),
    ('sainte-bernadette-2014', 9, 'img/pictures/sainte_bernadette_2014/photo09.jpg', 'img/pictures/sainte_bernadette_2014/photo09_detail.jpg', 'Photo09', ''),
    ('sainte-bernadette-2014', 10, 'img/pictures/sainte_bernadette_2014/photo10.jpg', 'img/pictures/sainte_bernadette_2014/photo10_detail.jpg', 'Photo10', ''),
    ('sainte-bernadette-2014', 11, 'img/pictures/sainte_bernadette_2014/photo11.jpg', 'img/pictures/sainte_bernadette_2014/photo11_detail.jpg', 'Photo11', ''),
    ('sainte-bernadette-2014', 12, 'img/pictures/sainte_bernadette_2014/photo12.jpg', 'img/pictures/sainte_bernadette_2014/photo12_detail.jpg', 'Photo12', ''),
    ('sainte-bernadette-2014', 13, 'img/pictures/sainte_bernadette_2014/photo13.jpg', 'img/pictures/sainte_bernadette_2014/photo13_detail.jpg', 'Photo13', ''),
    ('sainte-bernadette-2014', 14, 'img/pictures/sainte_bernadette_2014/photo14.jpg', 'img/pictures/sainte_bernadette_2014/photo14_detail.jpg', 'Photo14', ''),
    ('sainte-bernadette-2014', 15, 'img/pictures/sainte_bernadette_2014/photo15.jpg', 'img/pictures/sainte_bernadette_2014/photo15_detail.jpg', 'Photo15', ''),
    ('sainte-bernadette-2014', 16, 'img/pictures/sainte_bernadette_2014/photo16.jpg', 'img/pictures/sainte_bernadette_2014/photo16_detail.jpg', 'Photo16', ''),
    ('sainte-bernadette-2014', 17, 'img/pictures/sainte_bernadette_2014/photo17.jpg', 'img/pictures/sainte_bernadette_2014/photo17_detail.jpg', 'Photo17', ''),
    ('sainte-bernadette-2014', 18, 'img/pictures/sainte_bernadette_2014/photo18.jpg', 'img/pictures/sainte_bernadette_2014/photo18_detail.jpg', 'Photo18', ''),
    ('sainte-bernadette-2014', 19, 'img/pictures/sainte_bernadette_2014/photo19.jpg', 'img/pictures/sainte_bernadette_2014/photo19_detail.jpg', 'Photo19', ''),
    ('sainte-bernadette-2014', 20, 'img/pictures/sainte_bernadette_2014/photo20.jpg', 'img/pictures/sainte_bernadette_2014/photo20_detail.jpg', 'Photo20', ''),

    ('maitre-fukushima-2008', 1, 'img/pictures/stage_fukushima/photo1.jpg', 'img/pictures/stage_fukushima/photo1_detail.jpg', 'Photo 1', 'Style libre kabuwake'),
    ('maitre-fukushima-2008', 2, 'img/pictures/stage_fukushima/photo2.jpg', 'img/pictures/stage_fukushima/photo2_detail.jpg', 'Photo 2', 'Répétition de formes identiques'),
    ('maitre-fukushima-2008', 3, 'img/pictures/stage_fukushima/photo3.jpg', 'img/pictures/stage_fukushima/photo3_detail.jpg', 'Photo 3', 'Entrelacs de végétaux'),
    ('maitre-fukushima-2008', 4, 'img/pictures/stage_fukushima/photo4.jpg', 'img/pictures/stage_fukushima/photo4_detail.jpg', 'Photo 4', 'Couleurs dans une même gamme de tons'),
    ('maitre-fukushima-2008', 5, 'img/pictures/stage_fukushima/photo5.jpg', 'img/pictures/stage_fukushima/photo5_detail.jpg', 'Photo 5', 'En contre-plongée'),
    ('maitre-fukushima-2008', 6, 'img/pictures/stage_fukushima/photo6.jpg', 'img/pictures/stage_fukushima/photo6_detail.jpg', 'Photo 6', 'Maître Fukushima au travail'),
    ('maitre-fukushima-2008', 7, 'img/pictures/stage_fukushima/photo7.jpg', 'img/pictures/stage_fukushima/photo7_detail.jpg', 'Photo 7', 'Maître Fukushima au travail'),
    ('maitre-fukushima-2008', 8, 'img/pictures/stage_fukushima/photo8.jpg', 'img/pictures/stage_fukushima/photo8_detail.jpg', 'Photo 8', 'Les professeurs attentifs'),
    ('maitre-fukushima-2008', 9, 'img/pictures/stage_fukushima/photo9.jpg', 'img/pictures/stage_fukushima/photo9_detail.jpg', 'Photo 9', 'Maître Fukushima corrige les bouquets'),
    ('maitre-fukushima-2008', 10, 'img/pictures/stage_fukushima/photo10.jpg', 'img/pictures/stage_fukushima/photo10_detail.jpg', 'Photo 10', 'Une réalisation : bouquet avec des feuilles'),
    ('maitre-fukushima-2008', 11, 'img/pictures/stage_fukushima/photo11.jpg', 'img/pictures/stage_fukushima/photo11_detail.jpg', 'Photo 11', 'Quelques cent bouquets réalisés...'),

    ('nouvel-an-2010', 1, 'img/pictures/galerie_nouvel_an_2010/ikebana1.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana1_detail.jpg', 'Photo 1', ''),
    ('nouvel-an-2010', 2, 'img/pictures/galerie_nouvel_an_2010/ikebana2.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana2_detail.jpg', 'Photo 2', ''),
    ('nouvel-an-2010', 3, 'img/pictures/galerie_nouvel_an_2010/ikebana3.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana3_detail.jpg', 'Photo 3', ''),
    ('nouvel-an-2010', 4, 'img/pictures/galerie_nouvel_an_2010/ikebana4.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana4_detail.jpg', 'Photo 4', ''),
    ('nouvel-an-2010', 5, 'img/pictures/galerie_nouvel_an_2010/ikebana5.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana5_detail.jpg', 'Photo 5', ''),
    ('nouvel-an-2010', 6, 'img/pictures/galerie_nouvel_an_2010/ikebana6.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana6_detail.jpg', 'Photo 6', ''),
    ('nouvel-an-2010', 7, 'img/pictures/galerie_nouvel_an_2010/ikebana7.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana7_detail.jpg', 'Photo 7', ''),
    ('nouvel-an-2010', 8, 'img/pictures/galerie_nouvel_an_2010/ikebana8.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana8_detail.jpg', 'Photo 8', ''),
    ('nouvel-an-2010', 9, 'img/pictures/galerie_nouvel_an_2010/ikebana9.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana9_detail.jpg', 'Photo 9', ''),
    ('nouvel-an-2010', 10, 'img/pictures/galerie_nouvel_an_2010/ikebana10.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana10_detail.jpg', 'Photo 10', ''),
    ('nouvel-an-2010', 11, 'img/pictures/galerie_nouvel_an_2010/ikebana11.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana11_detail.jpg', 'Photo 11', ''),
    ('nouvel-an-2010', 12, 'img/pictures/galerie_nouvel_an_2010/ikebana12.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana12_detail.jpg', 'Photo 12', ''),
    ('nouvel-an-2010', 13, 'img/pictures/galerie_nouvel_an_2010/ikebana13.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana13_detail.jpg', 'Photo 13', 'Bouquet Martine'),
    ('nouvel-an-2010', 14, 'img/pictures/galerie_nouvel_an_2010/ikebana14.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana14_detail.jpg', 'Photo 14', 'Bouquet Anne-Marie'),
    ('nouvel-an-2010', 15, 'img/pictures/galerie_nouvel_an_2010/ikebana15.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana15_detail.jpg', 'Photo 15', 'Bouquet Marie-Christine'),
    ('nouvel-an-2010', 16, 'img/pictures/galerie_nouvel_an_2010/ikebana16.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana16_detail.jpg', 'Photo 16', 'Bouquet Masayo'),
    ('nouvel-an-2010', 17, 'img/pictures/galerie_nouvel_an_2010/ikebana17.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana17_detail.jpg', 'Photo 17', 'Bouquet Françoise'),
    ('nouvel-an-2010', 18, 'img/pictures/galerie_nouvel_an_2010/ikebana18.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana18_detail.jpg', 'Photo 18', 'Bouquet Joëlle'),
    ('nouvel-an-2010', 19, 'img/pictures/galerie_nouvel_an_2010/ikebana19.jpg', 'img/pictures/galerie_nouvel_an_2010/ikebana19_detail.jpg', 'Photo 19', 'Bouquet Nicole'),

    ('fetes-2011', 1, 'img/pictures/fetes_2011/ikebana1.jpg', 'img/pictures/fetes_2011/ikebana1_detail.jpg', 'photo1', ''),
    ('fetes-2011', 2, 'img/pictures/fetes_2011/ikebana2.jpg', 'img/pictures/fetes_2011/ikebana2_detail.jpg', 'photo2', ''),
    ('fetes-2011', 3, 'img/pictures/fetes_2011/ikebana3.jpg', 'img/pictures/fetes_2011/ikebana3_detail.jpg', 'photo3', ''),
    ('fetes-2011', 4, 'img/pictures/fetes_2011/ikebana4.jpg', 'img/pictures/fetes_2011/ikebana4_detail.jpg', 'photo4', ''),
    ('fetes-2011', 5, 'img/pictures/fetes_2011/ikebana5.jpg', 'img/pictures/fetes_2011/ikebana5_detail.jpg', 'photo5', 'Bouquet Marie-Thérèse'),
    ('fetes-2011', 6, 'img/pictures/fetes_2011/ikebana6.jpg', 'img/pictures/fetes_2011/ikebana6_detail.jpg', 'photo6', 'Bouquet Annie'),
    ('fetes-2011', 7, 'img/pictures/fetes_2011/ikebana7.jpg', 'img/pictures/fetes_2011/ikebana7_detail.jpg', 'photo7', 'Bouquet Anne-Marie'),
    ('fetes-2011', 8, 'img/pictures/fetes_2011/ikebana8.jpg', 'img/pictures/fetes_2011/ikebana8_detail.jpg', 'photo8', 'Bouquet Virginie'),
    ('fetes-2011', 9, 'img/pictures/fetes_2011/ikebana9.jpg', 'img/pictures/fetes_2011/ikebana9_detail.jpg', 'photo9', 'Bouquet Nicole'),
    ('fetes-2011', 10, 'img/pictures/fetes_2011/ikebana10.jpg', 'img/pictures/fetes_2011/ikebana10_detail.jpg', 'photo10', 'Bouquet Masayo'),
    ('fetes-2011', 11, 'img/pictures/fetes_2011/ikebana11.jpg', 'img/pictures/fetes_2011/ikebana11_detail.jpg', 'photo11', 'Bouquet Martine'),
    ('fetes-2011', 12, 'img/pictures/fetes_2011/ikebana12.jpg', 'img/pictures/fetes_2011/ikebana12_detail.jpg', 'photo12', 'Bouquet Françoise'),
    ('fetes-2011', 13, 'img/pictures/fetes_2011/ikebana13.jpg', 'img/pictures/fetes_2011/ikebana13_detail.jpg', 'photo13', 'Bouquet José'),
    ('fetes-2011', 14, 'img/pictures/fetes_2011/ikebana14.jpg', 'img/pictures/fetes_2011/ikebana14_detail.jpg', 'photo14', 'Bouquet Dominique'),

    ('ete-2012', 1, 'img/pictures/stage_ete_2012/ikebana1.jpg', 'img/pictures/stage_ete_2012/ikebana1_detail.jpg', 'ikebana1', 'Ikebana 1'),
    ('ete-2012', 2, 'img/pictures/stage_ete_2012/ikebana2.jpg', 'img/pictures/stage_ete_2012/ikebana2_detail.jpg', 'ikebana2', 'Ikebana 2'),
    ('ete-2012', 3, 'img/pictures/stage_ete_2012/ikebana3.jpg', 'img/pictures/stage_ete_2012/ikebana3_detail.jpg', 'ikebana3', 'Ikebana 3'),
    ('ete-2012', 4, 'img/pictures/stage_ete_2012/ikebana4.jpg', 'img/pictures/stage_ete_2012/ikebana4_detail.jpg', 'ikebana4', 'Ikebana 4'),
    ('ete-2012', 5, 'img/pictures/stage_ete_2012/ikebana5.jpg', 'img/pictures/stage_ete_2012/ikebana5_detail.jpg', 'ikebana5', 'Ikebana 5'),
    ('ete-2012', 6, 'img/pictures/stage_ete_2012/ikebana6.jpg', 'img/pictures/stage_ete_2012/ikebana6_detail.jpg', 'ikebana6', 'Ikebana 6'),
    ('ete-2012', 7, 'img/pictures/stage_ete_2012/ikebana7.jpg', 'img/pictures/stage_ete_2012/ikebana7_detail.jpg', 'ikebana7', 'Ikebana 7'),
    ('ete-2012', 8, 'img/pictures/stage_ete_2012/ikebana8.jpg', 'img/pictures/stage_ete_2012/ikebana8_detail.jpg', 'ikebana8', 'Ikebana 8'),
    ('ete-2012', 9, 'img/pictures/stage_ete_2012/ikebana9.jpg', 'img/pictures/stage_ete_2012/ikebana9_detail.jpg', 'ikebana9', 'Ikebana 9'),
    ('ete-2012', 10, 'img/pictures/stage_ete_2012/ikebana10.jpg', 'img/pictures/stage_ete_2012/ikebana10_detail.jpg', 'ikebana10', 'Ikebana 10'),
    ('ete-2012', 11, 'img/pictures/stage_ete_2012/ikebana11.jpg', 'img/pictures/stage_ete_2012/ikebana11_detail.jpg', 'ikebana11', 'Ikebana 11'),
    ('ete-2012', 12, 'img/pictures/stage_ete_2012/ikebana12.jpg', 'img/pictures/stage_ete_2012/ikebana12_detail.jpg', 'ikebana12', 'Ikebana 12'),

    ('paques-2013', 1, 'img/pictures/stage_paques_2013/photo1.jpg', 'img/pictures/stage_paques_2013/photo1_detail.jpg', 'photo1', 'Photo 1'),
    ('paques-2013', 2, 'img/pictures/stage_paques_2013/photo2.jpg', 'img/pictures/stage_paques_2013/photo2_detail.jpg', 'photo2', 'Photo 2'),
    ('paques-2013', 3, 'img/pictures/stage_paques_2013/photo3.jpg', 'img/pictures/stage_paques_2013/photo3_detail.jpg', 'photo3', 'Photo 3'),
    ('paques-2013', 4, 'img/pictures/stage_paques_2013/photo4.jpg', 'img/pictures/stage_paques_2013/photo4_detail.jpg', 'photo4', 'Photo 4'),
    ('paques-2013', 5, 'img/pictures/stage_paques_2013/photo5.jpg', 'img/pictures/stage_paques_2013/photo5_detail.jpg', 'photo5', 'Photo 5'),
    ('paques-2013', 6, 'img/pictures/stage_paques_2013/photo6.jpg', 'img/pictures/stage_paques_2013/photo6_detail.jpg', 'photo6', 'Photo 6'),
    ('paques-2013', 7, 'img/pictures/stage_paques_2013/photo7.jpg', 'img/pictures/stage_paques_2013/photo7_detail.jpg', 'photo7', 'Photo 7'),
    ('paques-2013', 8, 'img/pictures/stage_paques_2013/ikebana1.jpg', 'img/pictures/stage_paques_2013/ikebana1_detail.jpg', 'ikebana1', 'Bouquet Masayo'),
    ('paques-2013', 9, 'img/pictures/stage_paques_2013/ikebana2.jpg', 'img/pictures/stage_paques_2013/ikebana2_detail.jpg', 'ikebana2', 'Bouquet Marie-Thérèse'),
    ('paques-2013', 10, 'img/pictures/stage_paques_2013/ikebana3.jpg', 'img/pictures/stage_paques_2013/ikebana3_detail.jpg', 'ikebana3', 'Bouquet Bernadette'),
    ('paques-2013', 11, 'img/pictures/stage_paques_2013/ikebana4.jpg', 'img/pictures/stage_paques_2013/ikebana4_detail.jpg', 'ikebana4', 'Bouquet Pascale'),
    ('paques-2013', 12, 'img/pictures/stage_paques_2013/ikebana5.jpg', 'img/pictures/stage_paques_2013/ikebana5_detail.jpg', 'ikebana5', 'Bouquet Delphine'),
    ('paques-2013', 13, 'img/pictures/stage_paques_2013/ikebana6.jpg', 'img/pictures/stage_paques_2013/ikebana6_detail.jpg', 'ikebana6', 'Bouquet Huguette'),
    ('paques-2013', 14, 'img/pictures/stage_paques_2013/ikebana7.jpg', 'img/pictures/stage_paques_2013/ikebana7_detail.jpg', 'ikebana7', 'Bouquet Sylvette'),

    ('cellier-clairvaux-2016', 1, 'img/pictures/cellier_clairvaux_2016/photo1.jpg', 'img/pictures/cellier_clairvaux_2016/photo1_detail.jpg', 'photo1', 'Photo 1'),
    ('cellier-clairvaux-2016', 2, 'img/pictures/cellier_clairvaux_2016/photo2.jpg', 'img/pictures/cellier_clairvaux_2016/photo2_detail.jpg', 'photo2', 'Photo 2'),
    ('cellier-clairvaux-2016', 3, 'img/pictures/cellier_clairvaux_2016/photo3.jpg', 'img/pictures/cellier_clairvaux_2016/photo3_detail.jpg', 'photo3', 'Photo 3'),
    ('cellier-clairvaux-2016', 4, 'img/pictures/cellier_clairvaux_2016/photo4.jpg', 'img/pictures/cellier_clairvaux_2016/photo4_detail.jpg', 'photo4', 'Photo 4'),
    ('cellier-clairvaux-2016', 5, 'img/pictures/cellier_clairvaux_2016/photo5.jpg', 'img/pictures/cellier_clairvaux_2016/photo5_detail.jpg', 'photo5', 'Photo 5'),
    ('cellier-clairvaux-2016', 6, 'img/pictures/cellier_clairvaux_2016/photo6.jpg', 'img/pictures/cellier_clairvaux_2016/photo6_detail.jpg', 'photo6', 'Photo 6'),
    ('cellier-clairvaux-2016', 7, 'img/pictures/cellier_clairvaux_2016/photo7.jpg', 'img/pictures/cellier_clairvaux_2016/photo7_detail.jpg', 'photo7', 'Photo 7'),
    ('cellier-clairvaux-2016', 8, 'img/pictures/cellier_clairvaux_2016/photo8.jpg', 'img/pictures/cellier_clairvaux_2016/photo8_detail.jpg', 'photo8', 'Photo 8'),
    ('cellier-clairvaux-2016', 9, 'img/pictures/cellier_clairvaux_2016/photo9.jpg', 'img/pictures/cellier_clairvaux_2016/photo9_detail.jpg', 'photo9', 'Photo 9'),
    ('cellier-clairvaux-2016', 10, 'img/pictures/cellier_clairvaux_2016/photo10.jpg', 'img/pictures/cellier_clairvaux_2016/photo10_detail.jpg', 'photo10', 'Photo 10'),
    ('cellier-clairvaux-2016', 11, 'img/pictures/cellier_clairvaux_2016/photo11.jpg', 'img/pictures/cellier_clairvaux_2016/photo11_detail.jpg', 'photo11', 'Photo 11'),
    ('cellier-clairvaux-2016', 12, 'img/pictures/cellier_clairvaux_2016/photo12.jpg', 'img/pictures/cellier_clairvaux_2016/photo12_detail.jpg', 'photo12', 'Photo 12'),
    ('cellier-clairvaux-2016', 13, 'img/pictures/cellier_clairvaux_2016/photo13.jpg', 'img/pictures/cellier_clairvaux_2016/photo13_detail.jpg', 'photo13', 'Photo 13'),
    ('cellier-clairvaux-2016', 14, 'img/pictures/cellier_clairvaux_2016/photo14.jpg', 'img/pictures/cellier_clairvaux_2016/photo14_detail.jpg', 'photo14', 'Photo 14'),
    ('cellier-clairvaux-2016', 15, 'img/pictures/cellier_clairvaux_2016/photo15.jpg', 'img/pictures/cellier_clairvaux_2016/photo15_detail.jpg', 'photo15', 'Photo 15'),
    ('cellier-clairvaux-2016', 16, 'img/pictures/cellier_clairvaux_2016/photo16.jpg', 'img/pictures/cellier_clairvaux_2016/photo16_detail.jpg', 'photo16', 'Photo 16'),
    ('cellier-clairvaux-2016', 17, 'img/pictures/cellier_clairvaux_2016/photo17.jpg', 'img/pictures/cellier_clairvaux_2016/photo17_detail.jpg', 'photo17', 'Photo 17'),
    ('cellier-clairvaux-2016', 18, 'img/pictures/cellier_clairvaux_2016/photo18.jpg', 'img/pictures/cellier_clairvaux_2016/photo18_detail.jpg', 'photo18', 'Photo 18'),
    ('cellier-clairvaux-2016', 19, 'img/pictures/cellier_clairvaux_2016/photo19.jpg', 'img/pictures/cellier_clairvaux_2016/photo19_detail.jpg', 'photo19', 'Photo 19'),
    ('cellier-clairvaux-2016', 20, 'img/pictures/cellier_clairvaux_2016/photo20.jpg', 'img/pictures/cellier_clairvaux_2016/photo20_detail.jpg', 'photo20', 'Photo 20'),
    ('cellier-clairvaux-2016', 21, 'img/pictures/cellier_clairvaux_2016/photo21.jpg', 'img/pictures/cellier_clairvaux_2016/photo21_detail.jpg', 'photo21', 'Photo 21'),
    ('cellier-clairvaux-2016', 22, 'img/pictures/cellier_clairvaux_2016/photo22.jpg', 'img/pictures/cellier_clairvaux_2016/photo22_detail.jpg', 'photo22', 'Photo 22'),
    ('cellier-clairvaux-2016', 23, 'img/pictures/cellier_clairvaux_2016/photo23.jpg', 'img/pictures/cellier_clairvaux_2016/photo23_detail.jpg', 'photo23', 'Photo 23'),
    ('cellier-clairvaux-2016', 24, 'img/pictures/cellier_clairvaux_2016/photo24.jpg', 'img/pictures/cellier_clairvaux_2016/photo24_detail.jpg', 'photo24', 'Photo 24'),
    ('cellier-clairvaux-2016', 25, 'img/pictures/cellier_clairvaux_2016/photo25.jpg', 'img/pictures/cellier_clairvaux_2016/photo25_detail.jpg', 'photo25', 'Photo 25'),
    ('cellier-clairvaux-2016', 26, 'img/pictures/cellier_clairvaux_2016/photo26.jpg', 'img/pictures/cellier_clairvaux_2016/photo26_detail.jpg', 'photo26', 'Photo 26'),
    ('cellier-clairvaux-2016', 27, 'img/pictures/cellier_clairvaux_2016/photo27.jpg', 'img/pictures/cellier_clairvaux_2016/photo27_detail.jpg', 'photo27', 'Photo 27'),
    ('cellier-clairvaux-2016', 28, 'img/pictures/cellier_clairvaux_2016/photo28.jpg', 'img/pictures/cellier_clairvaux_2016/photo28_detail.jpg', 'photo28', 'Photo 28'),
    ('cellier-clairvaux-2016', 29, 'img/pictures/cellier_clairvaux_2016/photo29.jpg', 'img/pictures/cellier_clairvaux_2016/photo29_detail.jpg', 'photo29', 'Photo 29'),

    ('saint-fiacre-2015', 1, 'img/pictures/saint_fiacre_2015/photo1.jpg', 'img/pictures/saint_fiacre_2015/photo1_detail.jpg', 'photo1', 'Photo 1'),
    ('saint-fiacre-2015', 2, 'img/pictures/saint_fiacre_2015/photo2.jpg', 'img/pictures/saint_fiacre_2015/photo2_detail.jpg', 'photo2', 'Photo 2'),
    ('saint-fiacre-2015', 3, 'img/pictures/saint_fiacre_2015/photo3.jpg', 'img/pictures/saint_fiacre_2015/photo3_detail.jpg', 'photo3', 'Photo 3'),

    ('chailly-2014', 1, 'img/pictures/chailly_2014/photo1.jpg', 'img/pictures/chailly_2014/photo1_detail.jpg', 'photo1', 'Photo 1'),
    ('chailly-2014', 2, 'img/pictures/chailly_2014/photo2.jpg', 'img/pictures/chailly_2014/photo2_detail.jpg', 'photo2', 'Photo 2'),

    ('le-centre-2014', 1, 'img/pictures/le_centre_2014/photo1.jpg', 'img/pictures/le_centre_2014/photo1_detail.jpg', 'photo1', 'Photo 1'),
    ('le-centre-2014', 2, 'img/pictures/le_centre_2014/photo2.jpg', 'img/pictures/le_centre_2014/photo2_detail.jpg', 'photo2', 'Photo 2'),

    ('genlis-2013', 1, 'img/pictures/genlis_2013/photo1.jpg', 'img/pictures/genlis_2013/photo1_detail.jpg', 'photo1', 'Photo 1'),
    ('genlis-2013', 2, 'img/pictures/genlis_2013/photo2.jpg', 'img/pictures/genlis_2013/photo2_detail.jpg', 'photo2', 'Photo 2'),

    ('la-ninette-2013', 1, 'img/pictures/la_ninette_2013/photo1.jpg', 'img/pictures/la_ninette_2013/photo1_detail.jpg', 'photo1', 'Photo 1'),
    ('la-ninette-2013', 2, 'img/pictures/la_ninette_2013/photo2.jpg', 'img/pictures/la_ninette_2013/photo2_detail.jpg', 'photo2', 'Photo 2'),
    ('la-ninette-2013', 3, 'img/pictures/la_ninette_2013/photo3.jpg', 'img/pictures/la_ninette_2013/photo3_detail.jpg', 'photo3', 'Photo 3'),
    ('la-ninette-2013', 4, 'img/pictures/la_ninette_2013/photo4.jpg', 'img/pictures/la_ninette_2013/photo4_detail.jpg', 'photo4', 'Photo 4'),
    ('la-ninette-2013', 5, 'img/pictures/la_ninette_2013/photo5.jpg', 'img/pictures/la_ninette_2013/photo5_detail.jpg', 'photo5', 'Photo 5'),
    ('la-ninette-2013', 6, 'img/pictures/la_ninette_2013/photo6.jpg', 'img/pictures/la_ninette_2013/photo6_detail.jpg', 'photo6', 'Photo 6'),
    ('la-ninette-2013', 7, 'img/pictures/la_ninette_2013/photo7.jpg', 'img/pictures/la_ninette_2013/photo7_detail.jpg', 'photo7', 'Photo 7'),
    ('la-ninette-2013', 8, 'img/pictures/la_ninette_2013/photo8.jpg', 'img/pictures/la_ninette_2013/photo8_detail.jpg', 'photo8', 'Photo 8'),

    ('oye-2012', 1, 'img/pictures/oye_2012/photo1.jpg', 'img/pictures/oye_2012/photo1_detail.jpg', 'photo1', 'Photo 1'),
    ('oye-2012', 2, 'img/pictures/oye_2012/photo2.jpg', 'img/pictures/oye_2012/photo2_detail.jpg', 'photo2', 'Photo 2'),
    ('oye-2012', 3, 'img/pictures/oye_2012/photo3.jpg', 'img/pictures/oye_2012/photo3_detail.jpg', 'photo3', 'Photo 3'),
    ('oye-2012', 4, 'img/pictures/oye_2012/photo4.jpg', 'img/pictures/oye_2012/photo4_detail.jpg', 'photo4', 'Photo 4'),
    ('oye-2012', 5, 'img/pictures/oye_2012/photo5.jpg', 'img/pictures/oye_2012/photo5_detail.jpg', 'photo5', 'Photo 5'),
    ('oye-2012', 6, 'img/pictures/oye_2012/photo6.jpg', 'img/pictures/oye_2012/photo6_detail.jpg', 'photo6', 'Photo 6'),

    ('gueugnon-2012', 1, 'img/pictures/gueugnon_2012/photo1.jpg', 'img/pictures/gueugnon_2012/photo1_detail.jpg', 'photo1', 'Photo 1'),
    ('gueugnon-2012', 2, 'img/pictures/gueugnon_2012/photo2.jpg', 'img/pictures/gueugnon_2012/photo2_detail.jpg', 'photo2', 'Photo 2'),
    ('gueugnon-2012', 3, 'img/pictures/gueugnon_2012/photo3.jpg', 'img/pictures/gueugnon_2012/photo3_detail.jpg', 'photo3', 'Photo 3')
;
