INSERT INTO menu(name, status, icon, url)
VALUES ('home', 1, 'fas fa-home', '/');
INSERT INTO menu(name, status, icon, url)
VALUES ('java', 1, 'fab fa-java', '/java');
INSERT INTO menu(name, status, icon, url)
VALUES ('spring', 1, 'fas fa-leaf', '/spring');
INSERT INTO menu(name, status, icon, url)
VALUES ('hibernate', 1, 'fas fa-database', '/hibernate');
INSERT INTO menu(name, status, icon, url)
VALUES ('react js', 1, 'fab fa-react', '/react-js');

INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('java basic', 1, 'fab fa-java', '/java/java-basic', 2.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('java 8', 1, 'fab fa-java', '/java/java-8', 2.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('java advance', 1, 'fab fa-java', '/java/java-advance', 2.0);

INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('spring core', 1, 'fas fa-leaf', '/spring/spring-basic', 3.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('spring mvc', 1, 'fas fa-leaf', '/spring/spring-mvc', 3.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('spring boot', 1, 'fas fa-leaf', '/spring/spring-boot', 3.0);

INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('Many To Many', 1, 'fas fa-database', '/hibernate/many-to-many', 4.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('One To Many', 1, 'fas fa-database', '/hibernate/one-to-many', 4.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('One To One', 1, 'fas fa-database', '/hibernate/one-to-one', 4.0);

INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('react basic', 1, 'fab fa-react', '/react-js/react-basic', 5.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('react advance', 1, 'fab fa-react', '/react-js/react-advance', 5.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('redux', 1, 'fab fa-react', '/react-js/redux', 5.0);