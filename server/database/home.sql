INSERT INTO menu(name, status, icon, url)
VALUES ('home', 1, 'fas fa-home', '/');
INSERT INTO menu(name, status, icon, url)
VALUES ('java', 1, 'fab fa-java', '/course/java');
INSERT INTO menu(name, status, icon, url)
VALUES ('spring', 1, 'fas fa-leaf', '/course/spring');
INSERT INTO menu(name, status, icon, url)
VALUES ('hibernate', 1, 'fas fa-database', '/course/hibernate');
INSERT INTO menu(name, status, icon, url)
VALUES ('react js', 1, 'fab fa-react', '/course/react-js');

INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('java basic', 1, 'fab fa-java', '/course/java/java-basic', 2.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('java 8', 1, 'fab fa-java', '/course/java/java-8', 2.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('java advance', 1, 'fab fa-java', '/course/java/java-advance', 2.0);

INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('spring core', 1, 'fas fa-leaf', '/course/spring/spring-basic', 3.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('spring mvc', 1, 'fas fa-leaf', '/course/spring/spring-mvc', 3.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('spring boot', 1, 'fas fa-leaf', '/course/spring/spring-boot', 3.0);

INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('Many To Many', 1, 'fas fa-database', '/course/hibernate/many-to-many', 4.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('One To Many', 1, 'fas fa-database', '/course/hibernate/one-to-many', 4.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('One To One', 1, 'fas fa-database', '/course/hibernate/one-to-one', 4.0);

INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('react basic', 1, 'fab fa-react', '/course/react-js/react-basic', 5.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('react advance', 1, 'fab fa-react', '/course/react-js/react-advance', 5.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('redux', 1, 'fab fa-react', '/course/react-js/redux', 5.0);

INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java enviroment setup', 1, 1, "http://dummyimage.com/250x250.png/5fa2dd/ffffff", "Maecenas ut massa quis augue luctus tincidunt.", "/course/java/java-basic/java-enviroment-setup", 6.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java basic syntax', 1, 1, "http://dummyimage.com/250x250.png/ff4444/ffffff", "Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.", "/course/java/java-basic/java-basic-syntax", 6.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java object class', 1, 1, "http://dummyimage.com/250x250.png/cc0000/ffffff", "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.", "/course/java/java-basic/java-object-class", 6.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java constructors', 1, 1, "http://dummyimage.com/250x250.png/dddddd/000000", "Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.", "/course/java/java-basic/java-constructors", 6.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java basic datatypes', 1, 1, "http://dummyimage.com/250x250.png/dddddd/000000", "Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.", "/course/java/java-basic/java-basic-datatypes", 6.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java variable types', 1, 1, "http://dummyimage.com/250x250.png/cc0000/ffffff", "In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.", "/course/java/java-basic/java-variable-types", 6.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java modifier types', 1, 1, "http://dummyimage.com/250x250.png/ff4444/ffffff", "Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.", "/course/java/java-basic/java-modifier-types", 6.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java basic operators', 1, 1, "http://dummyimage.com/250x250.png/cc0000/ffffff", "Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.", "/course/java/java-basic/java-basic-operators", 6.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java loop control', 1, 1, "http://dummyimage.com/250x250.png/dddddd/000000", "Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.", "/course/java/java-basic/java-loop-control", 6.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java number', 1, 1, "http://dummyimage.com/250x250.png/5fa2dd/ffffff", "Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.", "/course/java/java-basic/java-number", 6.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java oop', 1, 1, "http://dummyimage.com/250x250.png/ff4444/ffffff", "Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.", "/course/java/java-basic/java-oop", 6.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java exception', 1, 1, "http://dummyimage.com/250x250.png/5fa2dd/ffffff", "Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.", "/course/java/java-basic/java-exception", 6.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)

VALUES ('java lambda expressions', 1, 1, "http://dummyimage.com/250x250.png/cc0000/ffffff", "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.", "/course/java/java-8/java-lambda-expressions", 7.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java method references', 1, 1, "http://dummyimage.com/250x250.png/dddddd/000000", "Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.", "/course/java/java-8/java-method-references", 7.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java function interfaces', 1, 1, "http://dummyimage.com/250x250.png/5fa2dd/ffffff", "Aliquam erat volutpat. In congue. Etiam justo.", "/course/java/java-8/java-function-interfaces", 7.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java default methods', 1, 1, "http://dummyimage.com/250x250.png/dddddd/000000", "Aliquam sit amet diam in magna bibendum imperdiet.", "/course/java/java-8/java-default-methods", 7.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java streams', 1, 1, "http://dummyimage.com/250x250.png/5fa2dd/ffffff", "Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.", "/course/java/java-8/java-streams", 7.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java optional class', 1, 1, "http://dummyimage.com/250x250.png/ff4444/ffffff", "Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.", "/course/java/java-8/java-optional-class", 7.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java nashorn javascript', 1, 1, "http://dummyimage.com/250x250.png/cc0000/ffffff", "Suspendisse accumsan tortor quis turpis.", "/course/java/java-8/java-nashorn-javascript", 7.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java new date', 1, 1, "http://dummyimage.com/250x250.png/5fa2dd/ffffff", "Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.", "/course/java/java-8/java-new-date", 7.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java new time', 1, 1, "http://dummyimage.com/250x250.png/cc0000/ffffff", "Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.", "/course/java/java-8/java-new-time", 7.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java new base64', 1, 1, "http://dummyimage.com/250x250.png/ff4444/ffffff", "Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.", "/course/java/java-8/java-new-base64", 7.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java question and answers', 1, 1, "http://dummyimage.com/250x250.png/cc0000/ffffff", "Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.", "/course/java/java-8/java-question-and-answers", 7.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('java quick guide', 1, 1, "http://dummyimage.com/250x250.png/5fa2dd/ffffff", "Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.", "/course/java/java-8/java-quick-guide", 7.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)

VALUES ('Java DataBase Connectivity', 1, 1, "http://dummyimage.com/250x250.png/5fa2dd/ffffff", "In congue. Etiam justo.", "/course/java/java-advance/java-jdbc", 8.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('Java Servlets', 1, 1, "http://dummyimage.com/250x250.png/5fa2dd/ffffff", "Vivamus vel nulla eget eros elementum pellentesque.", "/course/java/java-advance/java-servlet", 8.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('Java Servlet Pages', 1, 1, "http://dummyimage.com/250x250.png/ff4444/ffffff", "Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.", "/course/java/java-advance/java-jsp", 8.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('Java Hashset', 1, 1, "http://dummyimage.com/250x250.png/dddddd/000000", "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.", "/course/java/java-advance/java-hashset", 8.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('Java Treeset', 1, 1, "http://dummyimage.com/250x250.png/5fa2dd/ffffff", "Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.", "/course/java/java-advance/java-treeset", 8.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('Java Data Structures', 1, 1, "http://dummyimage.com/250x250.png/ff4444/ffffff", "Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.", "/course/java/java-advance/java-structures", 8.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('Java Collections Framework', 1, 1, "http://dummyimage.com/250x250.png/ff4444/ffffff", "Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.", "/course/java/java-advance/java-collections", 8.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('Java Generics', 1, 1, "http://dummyimage.com/250x250.png/dddddd/000000", "Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.", "/course/java/java-advance/java-generics", 8.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('Java Serialization', 1, 1, "http://dummyimage.com/250x250.png/cc0000/ffffff", "Duis bibendum. Morbi non quam nec dui luctus rutrum.", "/course/java/java-advance/java-serialization", 8.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('Java Networking', 1, 1, "http://dummyimage.com/250x250.png/ff4444/ffffff", "Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.", "/course/java/java-advance/java-networking", 8.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('Java Multithreading', 1, 1, "http://dummyimage.com/250x250.png/cc0000/ffffff", "Mauris lacinia sapien quis libero.", "/course/java/java-advance/java-multithreading", 8.0);
INSERT INTO topic(name, status, topic_home, topic_image, short_description, url, menu_id)
VALUES ('Java Applet Basics', 1, 1, "http://dummyimage.com/250x250.png/dddddd/000000", "Donec dapibus. Duis at velit eu est congue elementum.", "/course/java/java-advance/java-applet-basics", 8.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java if condition", 1, 0, "http://dummyimage.com/150x150.png/cc0000/ffffff", "Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.", "/java/java-basic/java-if-condition", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java if else condition", 1, 0, "http://dummyimage.com/150x150.png/dddddd/000000", "Suspendisse potenti.", "/java/java-basic/java-if-else-condition", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java switch case condition", 1, 0, "http://dummyimage.com/150x150.png/dddddd/000000", "In hac habitasse platea dictumst.", "/java/java-basic/java-switch-case-condition", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java while condition", 1, 0, "http://dummyimage.com/150x150.png/5fa2dd/ffffff", "Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.", "/java/java-basic/java-while-condition", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java do while condition", 1, 0, "http://dummyimage.com/150x150.png/5fa2dd/ffffff", "Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.", "/java/java-basic/java-do-while-condition", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java break key work", 1, 0, "http://dummyimage.com/150x150.png/cc0000/ffffff", "Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.", "/java/java-basic/java-break-key-work", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java continue key work", 1, 0, "http://dummyimage.com/150x150.png/cc0000/ffffff", "Donec quis orci eget orci vehicula condimentum.", "/java/java-basic/java-continue-key-work", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java array", 1, 0, "http://dummyimage.com/150x150.png/ff4444/ffffff", "Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.", "/java/java-basic/java-array", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java colletions", 1, 0, "http://dummyimage.com/150x150.png/ff4444/ffffff", "Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.", "/java/java-basic/java-colletions", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java list interface", 1, 0, "http://dummyimage.com/150x150.png/dddddd/000000", "Vestibulum sed magna at nunc commodo placerat. Praesent blandit.", "/java/java-basic/java-list-interface", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java set interface", 1, 0, "http://dummyimage.com/150x150.png/ff4444/ffffff", "Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.", "/java/java-basic/java-set-interface", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java map interface", 1, 0, "http://dummyimage.com/150x150.png/5fa2dd/ffffff", "Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.", "/java/java-basic/java-map-interface", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java array list", 1, 0, "http://dummyimage.com/150x150.png/cc0000/ffffff", "Morbi non quam nec dui luctus rutrum.", "/java/java-basic/java-array-list", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java hash set", 1, 0, "http://dummyimage.com/150x150.png/5fa2dd/ffffff", "Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.", "/java/java-basic/java-hash-set", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java tree set", 1, 0, "http://dummyimage.com/150x150.png/ff4444/ffffff", "Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.", "/java/java-basic/java-tree-set", 6.0);
ß