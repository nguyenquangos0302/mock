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

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java enviroment setup', 1, 1, "http://localhost:8081/resources/course/java-enviroment-setup.png", "learn java enviroment setup", "/java/java-basic/java-enviroment-setup", 6.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java basic syntax', 1, 1, "http://localhost:8081/resources/course/java-basic-syntax.png", "learn java basic syntax", "/java/java-basic/java-basic-syntax", 6.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java object class', 1, 1, "http://localhost:8081/resources/course/java-object-class.png", "learn java object class", "/java/java-basic/java-object-class", 6.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java constructors', 1, 1, "http://localhost:8081/resources/course/java-constructors.png", "learn java constructors", "/java/java-basic/java-constructors", 6.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java basic datatypes', 1, 1, "http://localhost:8081/resources/course/java-basic-datatypes.png", "learn java basic datatypes", "/java/java-basic/java-basic-datatypes", 6.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java variable types', 1, 1, "http://localhost:8081/resources/course/java-variable-types.png", "learn java variable types", "/java/java-basic/java-variable-types", 6.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java modifier types', 1, 1, "http://localhost:8081/resources/course/java-modifier-types.png", "learn java modifier types", "/java/java-basic/java-modifier-types", 6.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java basic operators', 1, 1, "http://localhost:8081/resources/course/java-basic-operators.png", "learn java basic operators", "/java/java-basic/java-basic-operators", 6.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java loop control', 1, 1, "http://localhost:8081/resources/course/java-loop-control.png", "learn java loop control", "/java/java-basic/java-loop-control", 6.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java number', 1, 1, "http://localhost:8081/resources/course/java-number.png", "learn java number", "/java/java-basic/java-number", 6.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java oop', 1, 1, "http://localhost:8081/resources/course/java-oop.png", "learn java oop", "/java/java-basic/java-oop", 6.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java exception', 1, 1, "http://localhost:8081/resources/course/java-exception.png", "learn java exception", "/java/java-basic/java-exception", 6.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java lambda expressions', 1, 1, "http://localhost:8081/resources/course/java-lambda-expressions.png", "learn java lambda expressions", "/java/java-8/java-lambda-expressions", 7.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java method references', 1, 1, "http://localhost:8081/resources/course/java-method-references.png", "learn java method references", "/java/java-8/java-method-references", 7.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java function interfaces', 1, 1, "http://localhost:8081/resources/course/java-function-interfaces.png", "learn java function interfaces", "/java/java-8/java-function-interfaces", 7.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java default methods', 1, 1, "http://localhost:8081/resources/course/java-default-methods.png", "learn java default methods", "/java/java-8/java-default-methods", 7.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java streams', 1, 1, "http://localhost:8081/resources/course/java-streams.png", "learn java streams.png", "/java/java-8/java-streams", 7.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java optional class', 1, 1, "http://localhost:8081/resources/course/java-optional-class.png", "learn java optional class", "/java/java-8/java-optional-class", 7.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java nashorn javascript', 1, 1, "http://localhost:8081/resources/course/java-nashorn-javascript.png", "learn java nashorn javascript", "/java/java-8/java-nashorn-javascript", 7.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java new date', 1, 1, "http://localhost:8081/resources/course/java-new-date.png", "learn java new date", "/java/java-8/java-new-date", 7.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java new time', 1, 1, "http://localhost:8081/resources/course/java-new-time.png", "learn java new time", "/java/java-8/java-new-time", 7.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java new base64', 1, 1, "http://localhost:8081/resources/course/java-new-base64.png", "learn java new base64", "/java/java-8/java-new-base64", 7.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java question and answers', 1, 1, "http://localhost:8081/resources/course/java-question-and-answers.png", "learn java question and answers", "/java/java-8/java-question-and-answers", 7.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('java quick guide', 1, 1, "http://localhost:8081/resources/course/java-quick-guide.png", "learn java quick guide", "/java/java-8/java-quick-guide", 7.0);

INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('Java DataBase Connectivity', 1, 1, "http://localhost:8081/resources/course/java-jdbc.png", "learn Java DataBase Connectivity", "/java/java-advance/java-jdbc", 8.0);
INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('Java Servlets', 1, 1, "http://localhost:8081/resources/course/java-servlet.png", "learn Java Servlets", "/java/java-advance/java-servlet", 8.0);
INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('Java Servlet Pages', 1, 1, "http://localhost:8081/resources/course/java-jsp.png", "learn Java Servlet Pages", "/java/java-advance/java-jsp", 8.0);
INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('Java Hashset', 1, 1, "http://localhost:8081/resources/course/java-hashset.png", "learn Java Hashset", "/java/java-advance/java-hashset", 8.0);
INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('Java Treeset', 1, 1, "http://localhost:8081/resources/course/java-treeset.png", "learn Java Treeset", "/java/java-advance/java-treeset", 8.0);
INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('Java Data Structures', 1, 1, "http://localhost:8081/resources/course/java-structures.png", "learn Java Data Structures", "/java/java-advance/java-structures", 8.0);
INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('Java Collections Framework', 1, 1, "http://localhost:8081/resources/course/java-collections.png", "learn Java Collections Framework", "/java/java-advance/java-collections", 8.0);
INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('Java Generics', 1, 1, "http://localhost:8081/resources/course/java-generics.png", "learn Java Generics", "/java/java-advance/java-generics", 8.0);
INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('Java Serialization', 1, 1, "http://localhost:8081/resources/course/java-serialization.png", "learn Java Serialization", "/java/java-advance/java-serialization", 8.0);
INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('Java Networking', 1, 1, "http://localhost:8081/resources/course/java-networking.png", "learn Java Networking", "/java/java-advance/java-networking", 8.0);
INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('Java Multithreading', 1, 1, "http://localhost:8081/resources/course/java-multithreading.png", "learn Multithreading", "/java/java-advance/java-multithreading", 8.0);
INSERT INTO post(name, status, post_home, post_image, short_description, url, menu_id)
VALUES ('Java Applet Basics', 1, 1, "http://localhost:8081/resources/course/java-applet-basics.png", "learn Java Applet Basics", "/java/java-advance/java-applet-basics", 8.0);

insert into article(name, content, post_id)
values ('LEARN OOP','Lorem Ipsum is simply dummy text of the printing and typesetting 
industry. Lorem Ipsum has been the industrys standard dummy text ever since 
the 1500s, when an unknown printer took a galley of type and scrambled it 
to make a type specimen book. It has survived not only five centuries, 
but also the leap into electronic typesetting, remaining essentially 
unchanged. It was popularised in the 1960s with the release of Letraset 
sheets containing Lorem Ipsum passages, and more recently with desktop 
publishing software like Aldus PageMaker including versions of Lorem Ipsum.',2.0);


insert into article(name, content, post_id)
values ('LEARN Variable','Lorem Ipsum is simply dummy text of the printing and typesetting 
industry. Lorem Ipsum has been the industrys standard dummy text ever since 
publishing software like Aldus PageMaker including versions of Lorem Ipsum.',1.0);


insert into article(name, content, post_id)
values ('LEARN java exception','Lorem Ipsum is simply dummy text of the printing and typesetting 
industry. Lorem Ipsum has been the industrys standard dummy text ever since 
publishing software like Aldus PageMaker including versions of Lorem Ipsum.',3.0);


insert into article(name, content, post_id)
values ('LEARN java optional','Lorem Ipsum is simply dummy text of the printing and typesetting 
industry. Lorem Ipsum has been the industrys standard dummy text ever since 
publishing software like Aldus PageMaker including versions of Lorem Ipsum.',4.0);


insert into article(name, content, post_id)
values ('LEARN java stream','Lorem Ipsum is simply dummy text of the printing and typesetting 
industry. Lorem Ipsum has been the industrys standard dummy text ever since 
publishing software like Aldus PageMaker including versions of Lorem Ipsum.',5.0);


insert into article(name, content, post_id)
values ('LEARN java lambda','Lorem Ipsum is simply dummy text of the printing and typesetting 
industry. Lorem Ipsum has been the industrys standard dummy text ever since 
publishing software like Aldus PageMaker including versions of Lorem Ipsum.',6.0);