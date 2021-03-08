INSERT INTO menu(name, status, icon, url)
VALUES ('home', 1, 'fas fa-home', '/');
INSERT INTO menu(name, status, icon, url)
VALUES ('java', 1, 'fab fa-java', '/course/java');
INSERT INTO menu(name, status, icon, url)
VALUES ('spring', 1, 'fas fa-leaf', '/course/spring');
INSERT INTO menu(name, status, icon, url)
VALUES ('database', 1, 'fas fa-database', '/course/database');
INSERT INTO menu(name, status, icon, url)
VALUES ('react', 1, 'fab fa-react', '/course/react');

INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('java basic', 1, 'fab fa-java', '/course/java/java-basic', 2.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('java 8', 1, 'fab fa-java', '/course/java/java-8', 2.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('java advance', 1, 'fab fa-java', '/course/java/java-advance', 2.0);

INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('spring core', 1, 'fas fa-leaf', '/course/spring/spring-core', 3.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('spring mvc', 1, 'fas fa-leaf', '/course/spring/spring-mvc', 3.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('spring boot', 1, 'fas fa-leaf', '/course/spring/spring-boot', 3.0);

INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('database mysql', 1, 'fas fa-database', '/course/database/database-mysql', 4.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('database mongodb', 1, 'fas fa-database', '/course/database/database-mongodb', 4.0);

INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('react basic', 1, 'fab fa-react', '/course/react/react-basic', 5.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('react advance', 1, 'fab fa-react', '/course/react/react-advance', 5.0);
INSERT INTO menu(name, status, icon, url, parent_id)
VALUES ('react redux', 1, 'fab fa-react', '/course/react/react-redux', 5.0);

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
values ("java if condition", 1, 0, "http://dummyimage.com/150x150.png/cc0000/ffffff", "Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.", "/course/java/java-basic/java-if-condition", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java if else condition", 1, 0, "http://dummyimage.com/150x150.png/dddddd/000000", "Suspendisse potenti.", "/course/java/java-basic/java-if-else-condition", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java switch case condition", 1, 0, "http://dummyimage.com/150x150.png/dddddd/000000", "In hac habitasse platea dictumst.", "/course/java/java-basic/java-switch-case-condition", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java while condition", 1, 0, "http://dummyimage.com/150x150.png/5fa2dd/ffffff", "Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.", "/course/java/java-basic/java-while-condition", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java do while condition", 1, 0, "http://dummyimage.com/150x150.png/5fa2dd/ffffff", "Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.", "/course/java/java-basic/java-do-while-condition", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java break key work", 1, 0, "http://dummyimage.com/150x150.png/cc0000/ffffff", "Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.", "/course/java/java-basic/java-break-key-work", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java continue key work", 1, 0, "http://dummyimage.com/150x150.png/cc0000/ffffff", "Donec quis orci eget orci vehicula condimentum.", "/course/java/java-basic/java-continue-key-work", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java array", 1, 0, "http://dummyimage.com/150x150.png/ff4444/ffffff", "Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.", "/course/java/java-basic/java-array", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java colletions", 1, 0, "http://dummyimage.com/150x150.png/ff4444/ffffff", "Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.", "/course/java/java-basic/java-colletions", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java list interface", 1, 0, "http://dummyimage.com/150x150.png/dddddd/000000", "Vestibulum sed magna at nunc commodo placerat. Praesent blandit.", "/course/java/java-basic/java-list-interface", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java set interface", 1, 0, "http://dummyimage.com/150x150.png/ff4444/ffffff", "Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.", "/course/java/java-basic/java-set-interface", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java map interface", 1, 0, "http://dummyimage.com/150x150.png/5fa2dd/ffffff", "Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.", "/course/java/java-basic/java-map-interface", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java array list", 1, 0, "http://dummyimage.com/150x150.png/cc0000/ffffff", "Morbi non quam nec dui luctus rutrum.", "/course/java/java-basic/java-array-list", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java hash set", 1, 0, "http://dummyimage.com/150x150.png/5fa2dd/ffffff", "Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.", "/course/java/java-basic/java-hash-set", 6.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ("java tree set", 1, 0, "http://dummyimage.com/150x150.png/ff4444/ffffff", "Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.", "/course/java/java-basic/java-tree-set", 6.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java foreach', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Etiam vel augue.', "/course/java/java-8/java-foreach", 7.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java boxed stream', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', "/course/java/java-8/java-boxed-stream", 7.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java predicate', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', "/course/java/java-8/java-predicate", 7.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java regex', 1, 0, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Integer tincidunt ante vel ipsum.', "/course/java/java-8/java-regex", 7.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java iterate directory', 1, 0, 'http://dummyimage.com/150x150.png/ff4444/ffffff', 'Praesent blandit. Nam nulla.', "/course/java/java-8/java-iterate-directory", 7.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java read file', 1, 0, 'http://dummyimage.com/150x150.png/ff4444/ffffff', 'Integer non velit.', "/course/java/java-8/java-read-file", 7.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java write to file', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', "/course/java/java-8/java-write-to-file", 7.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java watch service', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Morbi a ipsum. Integer a nibh.', "/course/java/java-8/java-watch-service", 7.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java join array', 1, 0, 'http://dummyimage.com/150x150.bmp/dddddd/000000', 'Suspendisse accumsan tortor quis turpis.', "/course/java/java-8/java-join-array", 7.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java join string', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Vestibulum ac est lacinia nisi venenatis tristique.', "/course/java/java-8/java-join-string", 7.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java exact arithmetic', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', "/course/java/java-8/java-exact-arithmetic", 7.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java secure random', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', "/course/java/java-8/java-secure-random", 7.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java singleton pattern', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Etiam vel augue.', "/course/java/java-advance/java-singleton-pattern", 8.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java factory pattern', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', "/course/java/java-advance/java-factory-pattern", 8.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java abstract factory', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', "/course/java/java-advance/java-abstract-factory", 8.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java builder pattern', 1, 0, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Integer tincidunt ante vel ipsum.', "/course/java/java-advance/java-builder-pattern", 8.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java prototype pattern', 1, 0, 'http://dummyimage.com/150x150.png/ff4444/ffffff', 'Praesent blandit. Nam nulla.', "/course/java/java-advance/java-prototype-pattern", 8.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java adapter pattern', 1, 0, 'http://dummyimage.com/150x150.png/ff4444/ffffff', 'Integer non velit.', "/course/java/java-advance/java-adapter-pattern", 8.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java composite pattern', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', "/course/java/java-advance/java-composite-pattern", 8.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java decorator pattern', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Morbi a ipsum. Integer a nibh.', "/course/java/java-advance/java-decorator-pattern", 8.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java facade pattern', 1, 0, 'http://dummyimage.com/150x150.bmp/dddddd/000000', 'Suspendisse accumsan tortor quis turpis.', "/course/java/java-advance/java-facade-pattern", 8.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java flyweight pattern', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Vestibulum ac est lacinia nisi venenatis tristique.', "/course/java/java-advance/java-flyweight-pattern", 8.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java proxy pattern', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', "/course/java/java-advance/java-proxy-pattern", 8.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('java interpreter pattern', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', "/course/java/java-advance/java-interpreter-pattern", 8.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring architecture', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/spring/spring-core/spring-architecture', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring environment', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/spring/spring-core/spring-environment', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring hello world', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/spring/spring-core/spring-hello-world', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring ioc container', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/spring/spring-core/spring-ioc-container', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring bean definition', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/spring/spring-core/spring-bean-definition', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring bean scopes', 1, 1, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/spring/spring-core/spring-bean-scopes', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring bean life cycle', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/spring/spring-core/spring-bean-life-cycle', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring bean post processors', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/spring/spring-core/spring-bean-post-processors', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring bean definition inheritance', 1, 1, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/spring/spring-core/spring-bean-definition-inheritance', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring dependency injecting', 1, 1, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/spring/spring-core/spring-dependency-injecting', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring injecting inner beans', 1, 1, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/spring/spring-core/spring-injecting-inner-beans', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring injecting collection', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/spring/spring-core/spring-injecting-collection', 9.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 1', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/spring/spring-mvc/spring-mvc-1', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 2', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/spring/spring-mvc/spring-mvc-2', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 3', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/spring/spring-mvc/spring-mvc-3', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 4', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/spring/spring-mvc/spring-mvc-4', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 5', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/spring/spring-mvc/spring-mvc-5', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 6', 1, 1, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/spring/spring-mvc/spring-mvc-6', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 7', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/spring/spring-mvc/spring-mvc-7', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 8', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/spring/spring-mvc/spring-mvc-8', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 9', 1, 1, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/spring/spring-mvc/spring-mvc-9', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 10', 1, 1, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/spring/spring-mvc/spring-mvc-10', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 11', 1, 1, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/spring/spring-mvc/spring-mvc-11', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 12', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/spring/spring-mvc/spring-mvc-12', 10.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 1', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/spring/spring-boot/spring-boot-1', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 2', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/spring/spring-boot/spring-boot-2', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 3', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/spring/spring-boot/spring-boot-3', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 4', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/spring/spring-boot/spring-boot-4', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 5', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/spring/spring-boot/spring-boot-5', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 6', 1, 1, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/spring/spring-boot/spring-boot-6', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 7', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/spring/spring-boot/spring-boot-7', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 8', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/spring/spring-boot/spring-boot-8', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 9', 1, 1, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/spring/spring-boot/spring-boot-9', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 10', 1, 1, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/spring/spring-boot/spring-boot-10', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 11', 1, 1, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/spring/spring-boot/spring-boot-11', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 12', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/spring/spring-boot/spring-boot-12', 11.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring core 1', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/spring/spring-core/spring-core-1', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring core 2', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/spring/spring-core/spring-core-2', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring core 3', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/spring/spring-core/spring-core-3', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring core 4', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/spring/spring-core/spring-core-4', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring core 5', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/spring/spring-core/spring-core-5', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring core 6', 1, 0, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/spring/spring-core/spring-core-6', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring core 7', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/spring/spring-core/spring-core-7', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring core 8', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/spring/spring-core/spring-core-8', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring core 9', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/spring/spring-core/spring-core-9', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring core 10', 1, 0, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/spring/spring-core/spring-core-10', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring core 11', 1, 0, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/spring/spring-core/spring-core-11', 9.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring core 12', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/spring/spring-core/spring-core-12', 9.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 13', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/spring/spring-mvc/spring-mvc-13', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 14', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/spring/spring-mvc/spring-mvc-14', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 15', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/spring/spring-mvc/spring-mvc-15', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 16', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/spring/spring-mvc/spring-mvc-16', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 17', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/spring/spring-mvc/spring-mvc-17', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 18', 1, 0, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/spring/spring-mvc/spring-mvc-18', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 19', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/spring/spring-mvc/spring-mvc-19', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 20', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/spring/spring-mvc/spring-mvc-20', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 21', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/spring/spring-mvc/spring-mvc-21', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 22', 1, 0, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/spring/spring-mvc/spring-mvc-22', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 23', 1, 0, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/spring/spring-mvc/spring-mvc-23', 10.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring mvc 24', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/spring/spring-mvc/spring-mvc-24', 10.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 13', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/spring/spring-boot/spring-boot-13', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 14', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/spring/spring-boot/spring-boot-14', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 15', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/spring/spring-boot/spring-boot-15', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 16', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/spring/spring-boot/spring-boot-16', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 17', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/spring/spring-boot/spring-boot-17', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 18', 1, 0, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/spring/spring-boot/spring-boot-18', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 19', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/spring/spring-boot/spring-boot-19', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 20', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/spring/spring-boot/spring-boot-20', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 21', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/spring/spring-boot/spring-boot-21', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 22', 1, 0, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/spring/spring-boot/spring-boot-22', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 23', 1, 0, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/spring/spring-boot/spring-boot-23', 11.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('spring boot 24', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/spring/spring-boot/spring-boot-24', 11.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 1', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/database/database-mysql/database-mysql-1', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 2', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/database/database-mysql/database-mysql-2', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 3', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/database/database-mysql/database-mysql-3', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 4', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/database/database-mysql/database-mysql-4', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 5', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/database/database-mysql/database-mysql-5', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 6', 1, 1, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/database/database-mysql/database-mysql-6', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 7', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/database/database-mysql/database-mysql-7', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 8', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/database/database-mysql/database-mysql-8', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 9', 1, 1, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/database/database-mysql/database-mysql-9', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 10', 1, 1, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/database/database-mysql/database-mysql-10', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 11', 1, 1, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/database/database-mysql/database-mysql-11', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 12', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/database/database-mysql/database-mysql-12', 12.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 13', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/database/database-mysql/database-mysql-13', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 14', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/database/database-mysql/database-mysql-14', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 15', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/database/database-mysql/database-mysql-15', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 16', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/database/database-mysql/database-mysql-16', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 17', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/database/database-mysql/database-mysql-17', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 18', 1, 0, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/database/database-mysql/database-mysql-18', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 19', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/database/database-mysql/database-mysql-19', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 20', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/database/database-mysql/database-mysql-20', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 21', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/database/database-mysql/database-mysql-21', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 22', 1, 0, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/database/database-mysql/database-mysql-22', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 23', 1, 0, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/database/database-mysql/database-mysql-23', 12.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mysql 24', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/database/database-mysql/database-mysql-24', 12.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 1', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/database/database-mongodb/database-mongodb-1', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 2', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/database/database-mongodb/database-mongodb-2', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 3', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/database/database-mongodb/database-mongodb-3', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 4', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/database/database-mongodb/database-mongodb-4', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 5', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/database/database-mongodb/database-mongodb-5', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 6', 1, 1, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/database/database-mongodb/database-mongodb-6', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 7', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/database/database-mongodb/database-mongodb-7', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 8', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/database/database-mongodb/database-mongodb-8', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 9', 1, 1, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/database/database-mongodb/database-mongodb-9', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 10', 1, 1, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/database/database-mongodb/database-mongodb-10', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 11', 1, 1, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/database/database-mongodb/database-mongodb-11', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 12', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/database/database-mongodb/database-mongodb-12', 13.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 13', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/database/database-mongodb/database-mongodb-13', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 14', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/database/database-mongodb/database-mongodb-14', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 15', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/database/database-mongodb/database-mongodb-15', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 16', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/database/database-mongodb/database-mongodb-16', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 17', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/database/database-mongodb/database-mongodb-17', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 18', 1, 0, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/database/database-mongodb/database-mongodb-18', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 19', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/database/database-mongodb/database-mongodb-19', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 20', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/database/database-mongodb/database-mongodb-20', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 21', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/database/database-mongodb/database-mongodb-21', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 22', 1, 0, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/database/database-mongodb/database-mongodb-22', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 23', 1, 0, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/database/database-mongodb/database-mongodb-23', 13.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('database mongodb 24', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/database/database-mongodb/database-mongodb-24', 13.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 1', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/react/react-basic/react-basic-1', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 2', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/react/react-basic/react-basic-2', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 3', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/react/react-basic/react-basic-3', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 4', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/react/react-basic/react-basic-4', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 5', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/react/react-basic/react-basic-5', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 6', 1, 1, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/react/react-basic/react-basic-6', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 7', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/react/react-basic/react-basic-7', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 8', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/react/react-basic/react-basic-8', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 9', 1, 1, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/react/react-basic/react-basic-9', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 10', 1, 1, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/react/react-basic/react-basic-10', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 11', 1, 1, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/react/react-basic/react-basic-11', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 12', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/react/react-basic/react-basic-12', 14.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 13', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/react/react-basic/react-basic-13', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 14', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/react/react-basic/react-basic-14', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('mongodb 15', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/react/react-basic/react-basic-15', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 16', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/react/react-basic/react-basic-16', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 17', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/react/react-basic/react-basic-17', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 18', 1, 0, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/react/react-basic/react-basic-18', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 19', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/react/react-basic/react-basic-19', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 20', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/react/react-basic/react-basic-20', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 21', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/react/react-basic/react-basic-21', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 22', 1, 0, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/react/react-basic/react-basic-22', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 23', 1, 0, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/react/react-basic/react-basic-23', 14.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react basic 24', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/react/react-basic/react-basic-24', 14.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 1', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/react/react-advance/react-advance-1', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 2', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/react/react-advance/react-advance-2', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 3', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/react/react-advance/react-advance-3', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 4', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/react/react-advance/react-advance-4', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 5', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/react/react-advance/react-advance-5', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 6', 1, 1, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/react/react-advance/react-advance-6', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 7', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/react/react-advance/react-advance-7', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 8', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/react/react-advance/react-advance-8', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 9', 1, 1, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/react/react-advance/react-advance-9', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 10', 1, 1, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/react/react-advance/react-advance-10', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 11', 1, 1, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/react/react-advance/react-advance-11', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 12', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/react/react-advance/react-advance-12', 15.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 13', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/react/react-advance/react-advance-13', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 14', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/react/react-advance/react-advance-14', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('mongodb 15', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/react/react-advance/react-advance-15', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 16', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/react/react-advance/react-advance-16', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 17', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/react/react-advance/react-advance-17', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 18', 1, 0, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/react/react-advance/react-advance-18', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 19', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/react/react-advance/react-advance-19', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 20', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/react/react-advance/react-advance-20', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 21', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/react/react-advance/react-advance-21', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 22', 1, 0, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/react/react-advance/react-advance-22', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 23', 1, 0, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/react/react-advance/react-advance-23', 15.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react advance 24', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/react/react-advance/react-advance-24', 15.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 1', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/react/react-redux/react-redux-1', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 2', 1, 1, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/react/react-redux/react-redux-2', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 3', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/react/react-redux/react-redux-3', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 4', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/react/react-redux/react-redux-4', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 5', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/react/react-redux/react-redux-5', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 6', 1, 1, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/react/react-redux/react-redux-6', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 7', 1, 1, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/react/react-redux/react-redux-7', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 8', 1, 1, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/react/react-redux/react-redux-8', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 9', 1, 1, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/react/react-redux/react-redux-9', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 10', 1, 1, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/react/react-redux/react-redux-10', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 11', 1, 1, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/react/react-redux/react-redux-11', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 12', 1, 1, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/react/react-redux/react-redux-12', 16.0);

insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 13', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '/course/react/react-redux/react-redux-13', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 14', 1, 0, 'http://dummyimage.com/150x150.png/5fa2dd/ffffff', 'Vivamus tortor.', '/course/react/react-redux/react-redux-14', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('mongodb 15', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', '/course/react/react-redux/react-redux-15', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 16', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '/course/react/react-redux/react-redux-16', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 17', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '/course/react/react-redux/react-redux-17', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 18', 1, 0, 'http://dummyimage.com/150x150.jpg/5fa2dd/ffffff', 'Vivamus in felis eu sapien cursus vestibulum.', '/course/react/react-redux/react-redux-18', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 19', 1, 0, 'http://dummyimage.com/150x150.bmp/5fa2dd/ffffff', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '/course/react/react-redux/react-redux-19', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 20', 1, 0, 'http://dummyimage.com/150x150.png/dddddd/000000', 'Morbi a ipsum.', '/course/react/react-redux/react-redux-20', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 21', 1, 0, 'http://dummyimage.com/150x150.jpg/dddddd/000000', 'Proin eu mi. Nulla ac enim.', '/course/react/react-redux/react-redux-21', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 22', 1, 0, 'http://dummyimage.com/150x150.png/cc0000/ffffff', 'Etiam faucibus cursus urna.', '/course/react/react-redux/react-redux-22', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 23', 1, 0, 'http://dummyimage.com/150x150.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '/course/react/react-redux/react-redux-23', 16.0);
insert into topic (name, status, topic_home, topic_image, short_description, url, menu_id) 
values ('react redux 24', 1, 0, 'http://dummyimage.com/150x150.jpg/ff4444/ffffff', 'Donec posuere metus vitae ipsum.', '/course/react/react-redux/react-redux-24', 16.0);

insert into article(name, status, content, topic_id)
                values ('article 1', 1, '<p>content article 1</p>', 1);insert into article(name, status, content, topic_id)
                values ('article 2', 1, '<p>content article 2</p>', 2);insert into article(name, status, content, topic_id)
                values ('article 3', 1, '<p>content article 3</p>', 3);insert into article(name, status, content, topic_id)
                values ('article 4', 1, '<p>content article 4</p>', 4);insert into article(name, status, content, topic_id)
                values ('article 5', 1, '<p>content article 5</p>', 5);insert into article(name, status, content, topic_id)
                values ('article 6', 1, '<p>content article 6</p>', 6);insert into article(name, status, content, topic_id)
                values ('article 7', 1, '<p>content article 7</p>', 7);insert into article(name, status, content, topic_id)
                values ('article 8', 1, '<p>content article 8</p>', 8);insert into article(name, status, content, topic_id)
                values ('article 9', 1, '<p>content article 9</p>', 9);insert into article(name, status, content, topic_id)
                values ('article 10', 1, '<p>content article 10</p>', 10);insert into article(name, status, content, topic_id)
                values ('article 11', 1, '<p>content article 11</p>', 11);insert into article(name, status, content, topic_id)
                values ('article 12', 1, '<p>content article 12</p>', 12);insert into article(name, status, content, topic_id)
                values ('article 13', 1, '<p>content article 13</p>', 13);insert into article(name, status, content, topic_id)
                values ('article 14', 1, '<p>content article 14</p>', 14);insert into article(name, status, content, topic_id)
                values ('article 15', 1, '<p>content article 15</p>', 15);insert into article(name, status, content, topic_id)
                values ('article 16', 1, '<p>content article 16</p>', 16);insert into article(name, status, content, topic_id)
                values ('article 17', 1, '<p>content article 17</p>', 17);insert into article(name, status, content, topic_id)
                values ('article 18', 1, '<p>content article 18</p>', 18);insert into article(name, status, content, topic_id)
                values ('article 19', 1, '<p>content article 19</p>', 19);insert into article(name, status, content, topic_id)
                values ('article 20', 1, '<p>content article 20</p>', 20);insert into article(name, status, content, topic_id)
                values ('article 21', 1, '<p>content article 21</p>', 21);insert into article(name, status, content, topic_id)
                values ('article 22', 1, '<p>content article 22</p>', 22);insert into article(name, status, content, topic_id)
                values ('article 23', 1, '<p>content article 23</p>', 23);insert into article(name, status, content, topic_id)
                values ('article 24', 1, '<p>content article 24</p>', 24);insert into article(name, status, content, topic_id)
                values ('article 25', 1, '<p>content article 25</p>', 25);insert into article(name, status, content, topic_id)
                values ('article 26', 1, '<p>content article 26</p>', 26);insert into article(name, status, content, topic_id)
                values ('article 27', 1, '<p>content article 27</p>', 27);insert into article(name, status, content, topic_id)
                values ('article 28', 1, '<p>content article 28</p>', 28);insert into article(name, status, content, topic_id)
                values ('article 29', 1, '<p>content article 29</p>', 29);insert into article(name, status, content, topic_id)
                values ('article 30', 1, '<p>content article 30</p>', 30);insert into article(name, status, content, topic_id)
                values ('article 31', 1, '<p>content article 31</p>', 31);insert into article(name, status, content, topic_id)
                values ('article 32', 1, '<p>content article 32</p>', 32);insert into article(name, status, content, topic_id)
                values ('article 33', 1, '<p>content article 33</p>', 33);insert into article(name, status, content, topic_id)
                values ('article 34', 1, '<p>content article 34</p>', 34);insert into article(name, status, content, topic_id)
                values ('article 35', 1, '<p>content article 35</p>', 35);insert into article(name, status, content, topic_id)
                values ('article 36', 1, '<p>content article 36</p>', 36);insert into article(name, status, content, topic_id)
                values ('article 37', 1, '<p>content article 37</p>', 37);insert into article(name, status, content, topic_id)
                values ('article 38', 1, '<p>content article 38</p>', 38);insert into article(name, status, content, topic_id)
                values ('article 39', 1, '<p>content article 39</p>', 39);insert into article(name, status, content, topic_id)
                values ('article 40', 1, '<p>content article 40</p>', 40);insert into article(name, status, content, topic_id)
                values ('article 41', 1, '<p>content article 41</p>', 41);insert into article(name, status, content, topic_id)
                values ('article 42', 1, '<p>content article 42</p>', 42);insert into article(name, status, content, topic_id)
                values ('article 43', 1, '<p>content article 43</p>', 43);insert into article(name, status, content, topic_id)
                values ('article 44', 1, '<p>content article 44</p>', 44);insert into article(name, status, content, topic_id)
                values ('article 45', 1, '<p>content article 45</p>', 45);insert into article(name, status, content, topic_id)
                values ('article 46', 1, '<p>content article 46</p>', 46);insert into article(name, status, content, topic_id)
                values ('article 47', 1, '<p>content article 47</p>', 47);insert into article(name, status, content, topic_id)
                values ('article 48', 1, '<p>content article 48</p>', 48);insert into article(name, status, content, topic_id)
                values ('article 49', 1, '<p>content article 49</p>', 49);insert into article(name, status, content, topic_id)
                values ('article 50', 1, '<p>content article 50</p>', 50);insert into article(name, status, content, topic_id)
                values ('article 51', 1, '<p>content article 51</p>', 51);insert into article(name, status, content, topic_id)
                values ('article 52', 1, '<p>content article 52</p>', 52);insert into article(name, status, content, topic_id)
                values ('article 53', 1, '<p>content article 53</p>', 53);insert into article(name, status, content, topic_id)
                values ('article 54', 1, '<p>content article 54</p>', 54);insert into article(name, status, content, topic_id)
                values ('article 55', 1, '<p>content article 55</p>', 55);insert into article(name, status, content, topic_id)
                values ('article 56', 1, '<p>content article 56</p>', 56);insert into article(name, status, content, topic_id)
                values ('article 57', 1, '<p>content article 57</p>', 57);insert into article(name, status, content, topic_id)
                values ('article 58', 1, '<p>content article 58</p>', 58);insert into article(name, status, content, topic_id)
                values ('article 59', 1, '<p>content article 59</p>', 59);insert into article(name, status, content, topic_id)
                values ('article 60', 1, '<p>content article 60</p>', 60);insert into article(name, status, content, topic_id)
                values ('article 61', 1, '<p>content article 61</p>', 61);insert into article(name, status, content, topic_id)
                values ('article 62', 1, '<p>content article 62</p>', 62);insert into article(name, status, content, topic_id)
                values ('article 63', 1, '<p>content article 63</p>', 63);insert into article(name, status, content, topic_id)
                values ('article 64', 1, '<p>content article 64</p>', 64);insert into article(name, status, content, topic_id)
                values ('article 65', 1, '<p>content article 65</p>', 65);insert into article(name, status, content, topic_id)
                values ('article 66', 1, '<p>content article 66</p>', 66);insert into article(name, status, content, topic_id)
                values ('article 67', 1, '<p>content article 67</p>', 67);insert into article(name, status, content, topic_id)
                values ('article 68', 1, '<p>content article 68</p>', 68);insert into article(name, status, content, topic_id)
                values ('article 69', 1, '<p>content article 69</p>', 69);insert into article(name, status, content, topic_id)
                values ('article 70', 1, '<p>content article 70</p>', 70);insert into article(name, status, content, topic_id)
                values ('article 71', 1, '<p>content article 71</p>', 71);insert into article(name, status, content, topic_id)
                values ('article 72', 1, '<p>content article 72</p>', 72);insert into article(name, status, content, topic_id)
                values ('article 73', 1, '<p>content article 73</p>', 73);insert into article(name, status, content, topic_id)
                values ('article 74', 1, '<p>content article 74</p>', 74);insert into article(name, status, content, topic_id)
                values ('article 75', 1, '<p>content article 75</p>', 75);insert into article(name, status, content, topic_id)
                values ('article 76', 1, '<p>content article 76</p>', 76);insert into article(name, status, content, topic_id)
                values ('article 77', 1, '<p>content article 77</p>', 77);insert into article(name, status, content, topic_id)
                values ('article 78', 1, '<p>content article 78</p>', 78);insert into article(name, status, content, topic_id)
                values ('article 79', 1, '<p>content article 79</p>', 79);insert into article(name, status, content, topic_id)
                values ('article 80', 1, '<p>content article 80</p>', 80);insert into article(name, status, content, topic_id)
                values ('article 81', 1, '<p>content article 81</p>', 81);insert into article(name, status, content, topic_id)
                values ('article 82', 1, '<p>content article 82</p>', 82);insert into article(name, status, content, topic_id)
                values ('article 83', 1, '<p>content article 83</p>', 83);insert into article(name, status, content, topic_id)
                values ('article 84', 1, '<p>content article 84</p>', 84);insert into article(name, status, content, topic_id)
                values ('article 85', 1, '<p>content article 85</p>', 85);insert into article(name, status, content, topic_id)
                values ('article 86', 1, '<p>content article 86</p>', 86);insert into article(name, status, content, topic_id)
                values ('article 87', 1, '<p>content article 87</p>', 87);insert into article(name, status, content, topic_id)
                values ('article 88', 1, '<p>content article 88</p>', 88);insert into article(name, status, content, topic_id)
                values ('article 89', 1, '<p>content article 89</p>', 89);insert into article(name, status, content, topic_id)
                values ('article 90', 1, '<p>content article 90</p>', 90);insert into article(name, status, content, topic_id)
                values ('article 91', 1, '<p>content article 91</p>', 91);insert into article(name, status, content, topic_id)
                values ('article 92', 1, '<p>content article 92</p>', 92);insert into article(name, status, content, topic_id)
                values ('article 93', 1, '<p>content article 93</p>', 93);insert into article(name, status, content, topic_id)
                values ('article 94', 1, '<p>content article 94</p>', 94);insert into article(name, status, content, topic_id)
                values ('article 95', 1, '<p>content article 95</p>', 95);insert into article(name, status, content, topic_id)
                values ('article 96', 1, '<p>content article 96</p>', 96);insert into article(name, status, content, topic_id)
                values ('article 97', 1, '<p>content article 97</p>', 97);insert into article(name, status, content, topic_id)
                values ('article 98', 1, '<p>content article 98</p>', 98);insert into article(name, status, content, topic_id)
                values ('article 99', 1, '<p>content article 99</p>', 99);insert into article(name, status, content, topic_id)
                values ('article 100', 1, '<p>content article 100</p>', 100);insert into article(name, status, content, topic_id)
                values ('article 101', 1, '<p>content article 101</p>', 101);insert into article(name, status, content, topic_id)
                values ('article 102', 1, '<p>content article 102</p>', 102);insert into article(name, status, content, topic_id)
                values ('article 103', 1, '<p>content article 103</p>', 103);insert into article(name, status, content, topic_id)
                values ('article 104', 1, '<p>content article 104</p>', 104);insert into article(name, status, content, topic_id)
                values ('article 105', 1, '<p>content article 105</p>', 105);insert into article(name, status, content, topic_id)
                values ('article 106', 1, '<p>content article 106</p>', 106);insert into article(name, status, content, topic_id)
                values ('article 107', 1, '<p>content article 107</p>', 107);insert into article(name, status, content, topic_id)
                values ('article 108', 1, '<p>content article 108</p>', 108);insert into article(name, status, content, topic_id)
                values ('article 109', 1, '<p>content article 109</p>', 109);insert into article(name, status, content, topic_id)
                values ('article 110', 1, '<p>content article 110</p>', 110);insert into article(name, status, content, topic_id)
                values ('article 111', 1, '<p>content article 111</p>', 111);insert into article(name, status, content, topic_id)
                values ('article 112', 1, '<p>content article 112</p>', 112);insert into article(name, status, content, topic_id)
                values ('article 113', 1, '<p>content article 113</p>', 113);insert into article(name, status, content, topic_id)
                values ('article 114', 1, '<p>content article 114</p>', 114);insert into article(name, status, content, topic_id)
                values ('article 115', 1, '<p>content article 115</p>', 115);insert into article(name, status, content, topic_id)
                values ('article 116', 1, '<p>content article 116</p>', 116);insert into article(name, status, content, topic_id)
                values ('article 117', 1, '<p>content article 117</p>', 117);insert into article(name, status, content, topic_id)
                values ('article 118', 1, '<p>content article 118</p>', 118);insert into article(name, status, content, topic_id)
                values ('article 119', 1, '<p>content article 119</p>', 119);insert into article(name, status, content, topic_id)
                values ('article 120', 1, '<p>content article 120</p>', 120);insert into article(name, status, content, topic_id)
                values ('article 121', 1, '<p>content article 121</p>', 121);insert into article(name, status, content, topic_id)
                values ('article 122', 1, '<p>content article 122</p>', 122);insert into article(name, status, content, topic_id)
                values ('article 123', 1, '<p>content article 123</p>', 123);insert into article(name, status, content, topic_id)
                values ('article 124', 1, '<p>content article 124</p>', 124);insert into article(name, status, content, topic_id)
                values ('article 125', 1, '<p>content article 125</p>', 125);insert into article(name, status, content, topic_id)
                values ('article 126', 1, '<p>content article 126</p>', 126);insert into article(name, status, content, topic_id)
                values ('article 127', 1, '<p>content article 127</p>', 127);insert into article(name, status, content, topic_id)
                values ('article 128', 1, '<p>content article 128</p>', 128);insert into article(name, status, content, topic_id)
                values ('article 129', 1, '<p>content article 129</p>', 129);insert into article(name, status, content, topic_id)
                values ('article 130', 1, '<p>content article 130</p>', 130);insert into article(name, status, content, topic_id)
                values ('article 131', 1, '<p>content article 131</p>', 131);insert into article(name, status, content, topic_id)
                values ('article 132', 1, '<p>content article 132</p>', 132);insert into article(name, status, content, topic_id)
                values ('article 133', 1, '<p>content article 133</p>', 133);insert into article(name, status, content, topic_id)
                values ('article 134', 1, '<p>content article 134</p>', 134);insert into article(name, status, content, topic_id)
                values ('article 135', 1, '<p>content article 135</p>', 135);insert into article(name, status, content, topic_id)
                values ('article 136', 1, '<p>content article 136</p>', 136);insert into article(name, status, content, topic_id)
                values ('article 137', 1, '<p>content article 137</p>', 137);insert into article(name, status, content, topic_id)
                values ('article 138', 1, '<p>content article 138</p>', 138);insert into article(name, status, content, topic_id)
                values ('article 139', 1, '<p>content article 139</p>', 139);insert into article(name, status, content, topic_id)
                values ('article 140', 1, '<p>content article 140</p>', 140);insert into article(name, status, content, topic_id)
                values ('article 141', 1, '<p>content article 141</p>', 141);insert into article(name, status, content, topic_id)
                values ('article 142', 1, '<p>content article 142</p>', 142);insert into article(name, status, content, topic_id)
                values ('article 143', 1, '<p>content article 143</p>', 143);insert into article(name, status, content, topic_id)
                values ('article 144', 1, '<p>content article 144</p>', 144);insert into article(name, status, content, topic_id)
                values ('article 145', 1, '<p>content article 145</p>', 145);insert into article(name, status, content, topic_id)
                values ('article 146', 1, '<p>content article 146</p>', 146);insert into article(name, status, content, topic_id)
                values ('article 147', 1, '<p>content article 147</p>', 147);insert into article(name, status, content, topic_id)
                values ('article 148', 1, '<p>content article 148</p>', 148);insert into article(name, status, content, topic_id)
                values ('article 149', 1, '<p>content article 149</p>', 149);insert into article(name, status, content, topic_id)
                values ('article 150', 1, '<p>content article 150</p>', 150);insert into article(name, status, content, topic_id)
                values ('article 151', 1, '<p>content article 151</p>', 151);insert into article(name, status, content, topic_id)
                values ('article 152', 1, '<p>content article 152</p>', 152);insert into article(name, status, content, topic_id)
                values ('article 153', 1, '<p>content article 153</p>', 153);insert into article(name, status, content, topic_id)
                values ('article 154', 1, '<p>content article 154</p>', 154);insert into article(name, status, content, topic_id)
                values ('article 155', 1, '<p>content article 155</p>', 155);insert into article(name, status, content, topic_id)
                values ('article 156', 1, '<p>content article 156</p>', 156);insert into article(name, status, content, topic_id)
                values ('article 157', 1, '<p>content article 157</p>', 157);insert into article(name, status, content, topic_id)
                values ('article 158', 1, '<p>content article 158</p>', 158);insert into article(name, status, content, topic_id)
                values ('article 159', 1, '<p>content article 159</p>', 159);insert into article(name, status, content, topic_id)
                values ('article 160', 1, '<p>content article 160</p>', 160);insert into article(name, status, content, topic_id)
                values ('article 161', 1, '<p>content article 161</p>', 161);insert into article(name, status, content, topic_id)
                values ('article 162', 1, '<p>content article 162</p>', 162);insert into article(name, status, content, topic_id)
                values ('article 163', 1, '<p>content article 163</p>', 163);insert into article(name, status, content, topic_id)
                values ('article 164', 1, '<p>content article 164</p>', 164);insert into article(name, status, content, topic_id)
                values ('article 165', 1, '<p>content article 165</p>', 165);insert into article(name, status, content, topic_id)
                values ('article 166', 1, '<p>content article 166</p>', 166);insert into article(name, status, content, topic_id)
                values ('article 167', 1, '<p>content article 167</p>', 167);insert into article(name, status, content, topic_id)
                values ('article 168', 1, '<p>content article 168</p>', 168);insert into article(name, status, content, topic_id)
                values ('article 169', 1, '<p>content article 169</p>', 169);insert into article(name, status, content, topic_id)
                values ('article 170', 1, '<p>content article 170</p>', 170);insert into article(name, status, content, topic_id)
                values ('article 171', 1, '<p>content article 171</p>', 171);insert into article(name, status, content, topic_id)
                values ('article 172', 1, '<p>content article 172</p>', 172);insert into article(name, status, content, topic_id)
                values ('article 173', 1, '<p>content article 173</p>', 173);insert into article(name, status, content, topic_id)
                values ('article 174', 1, '<p>content article 174</p>', 174);insert into article(name, status, content, topic_id)
                values ('article 175', 1, '<p>content article 175</p>', 175);insert into article(name, status, content, topic_id)
                values ('article 176', 1, '<p>content article 176</p>', 176);insert into article(name, status, content, topic_id)
                values ('article 177', 1, '<p>content article 177</p>', 177);insert into article(name, status, content, topic_id)
                values ('article 178', 1, '<p>content article 178</p>', 178);insert into article(name, status, content, topic_id)
                values ('article 179', 1, '<p>content article 179</p>', 179);insert into article(name, status, content, topic_id)
                values ('article 180', 1, '<p>content article 180</p>', 180);insert into article(name, status, content, topic_id)
                values ('article 181', 1, '<p>content article 181</p>', 181);insert into article(name, status, content, topic_id)
                values ('article 182', 1, '<p>content article 182</p>', 182);insert into article(name, status, content, topic_id)
                values ('article 183', 1, '<p>content article 183</p>', 183);insert into article(name, status, content, topic_id)
                values ('article 184', 1, '<p>content article 184</p>', 184);insert into article(name, status, content, topic_id)
                values ('article 185', 1, '<p>content article 185</p>', 185);insert into article(name, status, content, topic_id)
                values ('article 186', 1, '<p>content article 186</p>', 186);insert into article(name, status, content, topic_id)
                values ('article 187', 1, '<p>content article 187</p>', 187);insert into article(name, status, content, topic_id)
                values ('article 188', 1, '<p>content article 188</p>', 188);insert into article(name, status, content, topic_id)
                values ('article 189', 1, '<p>content article 189</p>', 189);insert into article(name, status, content, topic_id)
                values ('article 190', 1, '<p>content article 190</p>', 190);insert into article(name, status, content, topic_id)
                values ('article 191', 1, '<p>content article 191</p>', 191);insert into article(name, status, content, topic_id)
                values ('article 192', 1, '<p>content article 192</p>', 192);insert into article(name, status, content, topic_id)
                values ('article 193', 1, '<p>content article 193</p>', 193);insert into article(name, status, content, topic_id)
                values ('article 194', 1, '<p>content article 194</p>', 194);insert into article(name, status, content, topic_id)
                values ('article 195', 1, '<p>content article 195</p>', 195);insert into article(name, status, content, topic_id)
                values ('article 196', 1, '<p>content article 196</p>', 196);insert into article(name, status, content, topic_id)
                values ('article 197', 1, '<p>content article 197</p>', 197);insert into article(name, status, content, topic_id)
                values ('article 198', 1, '<p>content article 198</p>', 198);insert into article(name, status, content, topic_id)
                values ('article 199', 1, '<p>content article 199</p>', 199);insert into article(name, status, content, topic_id)
                values ('article 200', 1, '<p>content article 200</p>', 200);insert into article(name, status, content, topic_id)
                values ('article 201', 1, '<p>content article 201</p>', 201);insert into article(name, status, content, topic_id)
                values ('article 202', 1, '<p>content article 202</p>', 202);insert into article(name, status, content, topic_id)
                values ('article 203', 1, '<p>content article 203</p>', 203);insert into article(name, status, content, topic_id)
                values ('article 204', 1, '<p>content article 204</p>', 204);insert into article(name, status, content, topic_id)
                values ('article 205', 1, '<p>content article 205</p>', 205);insert into article(name, status, content, topic_id)
                values ('article 206', 1, '<p>content article 206</p>', 206);insert into article(name, status, content, topic_id)
                values ('article 207', 1, '<p>content article 207</p>', 207);insert into article(name, status, content, topic_id)
                values ('article 208', 1, '<p>content article 208</p>', 208);insert into article(name, status, content, topic_id)
                values ('article 209', 1, '<p>content article 209</p>', 209);insert into article(name, status, content, topic_id)
                values ('article 210', 1, '<p>content article 210</p>', 210);insert into article(name, status, content, topic_id)
                values ('article 211', 1, '<p>content article 211</p>', 211);insert into article(name, status, content, topic_id)
                values ('article 212', 1, '<p>content article 212</p>', 212);insert into article(name, status, content, topic_id)
                values ('article 213', 1, '<p>content article 213</p>', 213);insert into article(name, status, content, topic_id)
                values ('article 214', 1, '<p>content article 214</p>', 214);insert into article(name, status, content, topic_id)
                values ('article 215', 1, '<p>content article 215</p>', 215);insert into article(name, status, content, topic_id)
                values ('article 216', 1, '<p>content article 216</p>', 216);insert into article(name, status, content, topic_id)
                values ('article 217', 1, '<p>content article 217</p>', 217);insert into article(name, status, content, topic_id)
                values ('article 218', 1, '<p>content article 218</p>', 218);insert into article(name, status, content, topic_id)
                values ('article 219', 1, '<p>content article 219</p>', 219);insert into article(name, status, content, topic_id)
                values ('article 220', 1, '<p>content article 220</p>', 220);insert into article(name, status, content, topic_id)
                values ('article 221', 1, '<p>content article 221</p>', 221);insert into article(name, status, content, topic_id)
                values ('article 222', 1, '<p>content article 222</p>', 222);insert into article(name, status, content, topic_id)
                values ('article 223', 1, '<p>content article 223</p>', 223);insert into article(name, status, content, topic_id)
                values ('article 224', 1, '<p>content article 224</p>', 224);insert into article(name, status, content, topic_id)
                values ('article 225', 1, '<p>content article 225</p>', 225);insert into article(name, status, content, topic_id)
                values ('article 226', 1, '<p>content article 226</p>', 226);insert into article(name, status, content, topic_id)
                values ('article 227', 1, '<p>content article 227</p>', 227);insert into article(name, status, content, topic_id)
                values ('article 228', 1, '<p>content article 228</p>', 228);insert into article(name, status, content, topic_id)
                values ('article 229', 1, '<p>content article 229</p>', 229);insert into article(name, status, content, topic_id)
                values ('article 230', 1, '<p>content article 230</p>', 230);insert into article(name, status, content, topic_id)
                values ('article 231', 1, '<p>content article 231</p>', 231);insert into article(name, status, content, topic_id)
                values ('article 232', 1, '<p>content article 232</p>', 232);insert into article(name, status, content, topic_id)
                values ('article 233', 1, '<p>content article 233</p>', 233);insert into article(name, status, content, topic_id)
                values ('article 234', 1, '<p>content article 234</p>', 234);insert into article(name, status, content, topic_id)
                values ('article 235', 1, '<p>content article 235</p>', 235);insert into article(name, status, content, topic_id)
                values ('article 236', 1, '<p>content article 236</p>', 236);insert into article(name, status, content, topic_id)
                values ('article 237', 1, '<p>content article 237</p>', 237);insert into article(name, status, content, topic_id)
                values ('article 238', 1, '<p>content article 238</p>', 238);insert into article(name, status, content, topic_id)
                values ('article 239', 1, '<p>content article 239</p>', 239);insert into article(name, status, content, topic_id)
                values ('article 240', 1, '<p>content article 240</p>', 240);insert into article(name, status, content, topic_id)
                values ('article 241', 1, '<p>content article 241</p>', 241);insert into article(name, status, content, topic_id)
                values ('article 242', 1, '<p>content article 242</p>', 242);insert into article(name, status, content, topic_id)
                values ('article 243', 1, '<p>content article 243</p>', 243);insert into article(name, status, content, topic_id)
                values ('article 244', 1, '<p>content article 244</p>', 244);insert into article(name, status, content, topic_id)
                values ('article 245', 1, '<p>content article 245</p>', 245);insert into article(name, status, content, topic_id)
                values ('article 246', 1, '<p>content article 246</p>', 246);insert into article(name, status, content, topic_id)
                values ('article 247', 1, '<p>content article 247</p>', 247);insert into article(name, status, content, topic_id)
                values ('article 248', 1, '<p>content article 248</p>', 248);insert into article(name, status, content, topic_id)
                values ('article 249', 1, '<p>content article 249</p>', 249);insert into article(name, status, content, topic_id)
                values ('article 250', 1, '<p>content article 250</p>', 250);insert into article(name, status, content, topic_id)
                values ('article 251', 1, '<p>content article 251</p>', 251);insert into article(name, status, content, topic_id)
                values ('article 252', 1, '<p>content article 252</p>', 252);insert into article(name, status, content, topic_id)
                values ('article 253', 1, '<p>content article 253</p>', 253);insert into article(name, status, content, topic_id)
                values ('article 254', 1, '<p>content article 254</p>', 254);insert into article(name, status, content, topic_id)
                values ('article 255', 1, '<p>content article 255</p>', 255);insert into article(name, status, content, topic_id)
                values ('article 256', 1, '<p>content article 256</p>', 256);insert into article(name, status, content, topic_id)
                values ('article 257', 1, '<p>content article 257</p>', 257);insert into article(name, status, content, topic_id)
                values ('article 258', 1, '<p>content article 258</p>', 258);insert into article(name, status, content, topic_id)
                values ('article 259', 1, '<p>content article 259</p>', 259);insert into article(name, status, content, topic_id)
                values ('article 260', 1, '<p>content article 260</p>', 260);insert into article(name, status, content, topic_id)
                values ('article 261', 1, '<p>content article 261</p>', 261);insert into article(name, status, content, topic_id)
                values ('article 262', 1, '<p>content article 262</p>', 262);insert into article(name, status, content, topic_id)
                values ('article 263', 1, '<p>content article 263</p>', 263);insert into article(name, status, content, topic_id)
                values ('article 264', 1, '<p>content article 264</p>', 264);insert into article(name, status, content, topic_id)
                values ('article 265', 1, '<p>content article 265</p>', 265);insert into article(name, status, content, topic_id)
                values ('article 266', 1, '<p>content article 266</p>', 266);insert into article(name, status, content, topic_id)
                values ('article 267', 1, '<p>content article 267</p>', 267);

insert into comment(name, status, content, email, article_id)
                values ('comment 1', 1, '<p>test comment 1</p>', 'system-1@gmail.com', 1);insert into comment(name, status, content, email, article_id)
                values ('comment 2', 1, '<p>test comment 2</p>', 'system-1@gmail.com', 2);insert into comment(name, status, content, email, article_id)
                values ('comment 3', 1, '<p>test comment 3</p>', 'system-1@gmail.com', 3);insert into comment(name, status, content, email, article_id)
                values ('comment 4', 1, '<p>test comment 4</p>', 'system-1@gmail.com', 4);insert into comment(name, status, content, email, article_id)
                values ('comment 5', 1, '<p>test comment 5</p>', 'system-1@gmail.com', 5);insert into comment(name, status, content, email, article_id)
                values ('comment 6', 1, '<p>test comment 6</p>', 'system-1@gmail.com', 6);insert into comment(name, status, content, email, article_id)
                values ('comment 7', 1, '<p>test comment 7</p>', 'system-1@gmail.com', 7);insert into comment(name, status, content, email, article_id)
                values ('comment 8', 1, '<p>test comment 8</p>', 'system-1@gmail.com', 8);insert into comment(name, status, content, email, article_id)
                values ('comment 9', 1, '<p>test comment 9</p>', 'system-1@gmail.com', 9);insert into comment(name, status, content, email, article_id)
                values ('comment 10', 1, '<p>test comment 10</p>', 'system-1@gmail.com', 10);insert into comment(name, status, content, email, article_id)
                values ('comment 11', 1, '<p>test comment 11</p>', 'system-1@gmail.com', 11);insert into comment(name, status, content, email, article_id)
                values ('comment 12', 1, '<p>test comment 12</p>', 'system-1@gmail.com', 12);insert into comment(name, status, content, email, article_id)
                values ('comment 13', 1, '<p>test comment 13</p>', 'system-1@gmail.com', 13);insert into comment(name, status, content, email, article_id)
                values ('comment 14', 1, '<p>test comment 14</p>', 'system-1@gmail.com', 14);insert into comment(name, status, content, email, article_id)
                values ('comment 15', 1, '<p>test comment 15</p>', 'system-1@gmail.com', 15);insert into comment(name, status, content, email, article_id)
                values ('comment 16', 1, '<p>test comment 16</p>', 'system-1@gmail.com', 16);insert into comment(name, status, content, email, article_id)
                values ('comment 17', 1, '<p>test comment 17</p>', 'system-1@gmail.com', 17);insert into comment(name, status, content, email, article_id)
                values ('comment 18', 1, '<p>test comment 18</p>', 'system-1@gmail.com', 18);insert into comment(name, status, content, email, article_id)
                values ('comment 19', 1, '<p>test comment 19</p>', 'system-1@gmail.com', 19);insert into comment(name, status, content, email, article_id)
                values ('comment 20', 1, '<p>test comment 20</p>', 'system-1@gmail.com', 20);insert into comment(name, status, content, email, article_id)
                values ('comment 21', 1, '<p>test comment 21</p>', 'system-1@gmail.com', 21);insert into comment(name, status, content, email, article_id)
                values ('comment 22', 1, '<p>test comment 22</p>', 'system-1@gmail.com', 22);insert into comment(name, status, content, email, article_id)
                values ('comment 23', 1, '<p>test comment 23</p>', 'system-1@gmail.com', 23);insert into comment(name, status, content, email, article_id)
                values ('comment 24', 1, '<p>test comment 24</p>', 'system-1@gmail.com', 24);insert into comment(name, status, content, email, article_id)
                values ('comment 25', 1, '<p>test comment 25</p>', 'system-1@gmail.com', 25);insert into comment(name, status, content, email, article_id)
                values ('comment 26', 1, '<p>test comment 26</p>', 'system-1@gmail.com', 26);insert into comment(name, status, content, email, article_id)
                values ('comment 27', 1, '<p>test comment 27</p>', 'system-1@gmail.com', 27);insert into comment(name, status, content, email, article_id)
                values ('comment 28', 1, '<p>test comment 28</p>', 'system-1@gmail.com', 28);insert into comment(name, status, content, email, article_id)
                values ('comment 29', 1, '<p>test comment 29</p>', 'system-1@gmail.com', 29);insert into comment(name, status, content, email, article_id)
                values ('comment 30', 1, '<p>test comment 30</p>', 'system-1@gmail.com', 30);insert into comment(name, status, content, email, article_id)
                values ('comment 31', 1, '<p>test comment 31</p>', 'system-1@gmail.com', 31);insert into comment(name, status, content, email, article_id)
                values ('comment 32', 1, '<p>test comment 32</p>', 'system-1@gmail.com', 32);insert into comment(name, status, content, email, article_id)
                values ('comment 33', 1, '<p>test comment 33</p>', 'system-1@gmail.com', 33);insert into comment(name, status, content, email, article_id)
                values ('comment 34', 1, '<p>test comment 34</p>', 'system-1@gmail.com', 34);insert into comment(name, status, content, email, article_id)
                values ('comment 35', 1, '<p>test comment 35</p>', 'system-1@gmail.com', 35);insert into comment(name, status, content, email, article_id)
                values ('comment 36', 1, '<p>test comment 36</p>', 'system-1@gmail.com', 36);insert into comment(name, status, content, email, article_id)
                values ('comment 37', 1, '<p>test comment 37</p>', 'system-1@gmail.com', 37);insert into comment(name, status, content, email, article_id)
                values ('comment 38', 1, '<p>test comment 38</p>', 'system-1@gmail.com', 38);insert into comment(name, status, content, email, article_id)
                values ('comment 39', 1, '<p>test comment 39</p>', 'system-1@gmail.com', 39);insert into comment(name, status, content, email, article_id)
                values ('comment 40', 1, '<p>test comment 40</p>', 'system-1@gmail.com', 40);insert into comment(name, status, content, email, article_id)
                values ('comment 41', 1, '<p>test comment 41</p>', 'system-1@gmail.com', 41);insert into comment(name, status, content, email, article_id)
                values ('comment 42', 1, '<p>test comment 42</p>', 'system-1@gmail.com', 42);insert into comment(name, status, content, email, article_id)
                values ('comment 43', 1, '<p>test comment 43</p>', 'system-1@gmail.com', 43);insert into comment(name, status, content, email, article_id)
                values ('comment 44', 1, '<p>test comment 44</p>', 'system-1@gmail.com', 44);insert into comment(name, status, content, email, article_id)
                values ('comment 45', 1, '<p>test comment 45</p>', 'system-1@gmail.com', 45);insert into comment(name, status, content, email, article_id)
                values ('comment 46', 1, '<p>test comment 46</p>', 'system-1@gmail.com', 46);insert into comment(name, status, content, email, article_id)
                values ('comment 47', 1, '<p>test comment 47</p>', 'system-1@gmail.com', 47);insert into comment(name, status, content, email, article_id)
                values ('comment 48', 1, '<p>test comment 48</p>', 'system-1@gmail.com', 48);insert into comment(name, status, content, email, article_id)
                values ('comment 49', 1, '<p>test comment 49</p>', 'system-1@gmail.com', 49);insert into comment(name, status, content, email, article_id)
                values ('comment 50', 1, '<p>test comment 50</p>', 'system-1@gmail.com', 50);insert into comment(name, status, content, email, article_id)
                values ('comment 51', 1, '<p>test comment 51</p>', 'system-1@gmail.com', 51);insert into comment(name, status, content, email, article_id)
                values ('comment 52', 1, '<p>test comment 52</p>', 'system-1@gmail.com', 52);insert into comment(name, status, content, email, article_id)
                values ('comment 53', 1, '<p>test comment 53</p>', 'system-1@gmail.com', 53);insert into comment(name, status, content, email, article_id)
                values ('comment 54', 1, '<p>test comment 54</p>', 'system-1@gmail.com', 54);insert into comment(name, status, content, email, article_id)
                values ('comment 55', 1, '<p>test comment 55</p>', 'system-1@gmail.com', 55);insert into comment(name, status, content, email, article_id)
                values ('comment 56', 1, '<p>test comment 56</p>', 'system-1@gmail.com', 56);insert into comment(name, status, content, email, article_id)
                values ('comment 57', 1, '<p>test comment 57</p>', 'system-1@gmail.com', 57);insert into comment(name, status, content, email, article_id)
                values ('comment 58', 1, '<p>test comment 58</p>', 'system-1@gmail.com', 58);insert into comment(name, status, content, email, article_id)
                values ('comment 59', 1, '<p>test comment 59</p>', 'system-1@gmail.com', 59);insert into comment(name, status, content, email, article_id)
                values ('comment 60', 1, '<p>test comment 60</p>', 'system-1@gmail.com', 60);insert into comment(name, status, content, email, article_id)
                values ('comment 61', 1, '<p>test comment 61</p>', 'system-1@gmail.com', 61);insert into comment(name, status, content, email, article_id)
                values ('comment 62', 1, '<p>test comment 62</p>', 'system-1@gmail.com', 62);insert into comment(name, status, content, email, article_id)
                values ('comment 63', 1, '<p>test comment 63</p>', 'system-1@gmail.com', 63);insert into comment(name, status, content, email, article_id)
                values ('comment 64', 1, '<p>test comment 64</p>', 'system-1@gmail.com', 64);insert into comment(name, status, content, email, article_id)
                values ('comment 65', 1, '<p>test comment 65</p>', 'system-1@gmail.com', 65);insert into comment(name, status, content, email, article_id)
                values ('comment 66', 1, '<p>test comment 66</p>', 'system-1@gmail.com', 66);insert into comment(name, status, content, email, article_id)
                values ('comment 67', 1, '<p>test comment 67</p>', 'system-1@gmail.com', 67);insert into comment(name, status, content, email, article_id)
                values ('comment 68', 1, '<p>test comment 68</p>', 'system-1@gmail.com', 68);insert into comment(name, status, content, email, article_id)
                values ('comment 69', 1, '<p>test comment 69</p>', 'system-1@gmail.com', 69);insert into comment(name, status, content, email, article_id)
                values ('comment 70', 1, '<p>test comment 70</p>', 'system-1@gmail.com', 70);insert into comment(name, status, content, email, article_id)
                values ('comment 71', 1, '<p>test comment 71</p>', 'system-1@gmail.com', 71);insert into comment(name, status, content, email, article_id)
                values ('comment 72', 1, '<p>test comment 72</p>', 'system-1@gmail.com', 72);insert into comment(name, status, content, email, article_id)
                values ('comment 73', 1, '<p>test comment 73</p>', 'system-1@gmail.com', 73);insert into comment(name, status, content, email, article_id)
                values ('comment 74', 1, '<p>test comment 74</p>', 'system-1@gmail.com', 74);insert into comment(name, status, content, email, article_id)
                values ('comment 75', 1, '<p>test comment 75</p>', 'system-1@gmail.com', 75);insert into comment(name, status, content, email, article_id)
                values ('comment 76', 1, '<p>test comment 76</p>', 'system-1@gmail.com', 76);insert into comment(name, status, content, email, article_id)
                values ('comment 77', 1, '<p>test comment 77</p>', 'system-1@gmail.com', 77);insert into comment(name, status, content, email, article_id)
                values ('comment 78', 1, '<p>test comment 78</p>', 'system-1@gmail.com', 78);insert into comment(name, status, content, email, article_id)
                values ('comment 79', 1, '<p>test comment 79</p>', 'system-1@gmail.com', 79);insert into comment(name, status, content, email, article_id)
                values ('comment 80', 1, '<p>test comment 80</p>', 'system-1@gmail.com', 80);insert into comment(name, status, content, email, article_id)
                values ('comment 81', 1, '<p>test comment 81</p>', 'system-1@gmail.com', 81);insert into comment(name, status, content, email, article_id)
                values ('comment 82', 1, '<p>test comment 82</p>', 'system-1@gmail.com', 82);insert into comment(name, status, content, email, article_id)
                values ('comment 83', 1, '<p>test comment 83</p>', 'system-1@gmail.com', 83);insert into comment(name, status, content, email, article_id)
                values ('comment 84', 1, '<p>test comment 84</p>', 'system-1@gmail.com', 84);insert into comment(name, status, content, email, article_id)
                values ('comment 85', 1, '<p>test comment 85</p>', 'system-1@gmail.com', 85);insert into comment(name, status, content, email, article_id)
                values ('comment 86', 1, '<p>test comment 86</p>', 'system-1@gmail.com', 86);insert into comment(name, status, content, email, article_id)
                values ('comment 87', 1, '<p>test comment 87</p>', 'system-1@gmail.com', 87);insert into comment(name, status, content, email, article_id)
                values ('comment 88', 1, '<p>test comment 88</p>', 'system-1@gmail.com', 88);insert into comment(name, status, content, email, article_id)
                values ('comment 89', 1, '<p>test comment 89</p>', 'system-1@gmail.com', 89);insert into comment(name, status, content, email, article_id)
                values ('comment 90', 1, '<p>test comment 90</p>', 'system-1@gmail.com', 90);insert into comment(name, status, content, email, article_id)
                values ('comment 91', 1, '<p>test comment 91</p>', 'system-1@gmail.com', 91);insert into comment(name, status, content, email, article_id)
                values ('comment 92', 1, '<p>test comment 92</p>', 'system-1@gmail.com', 92);insert into comment(name, status, content, email, article_id)
                values ('comment 93', 1, '<p>test comment 93</p>', 'system-1@gmail.com', 93);insert into comment(name, status, content, email, article_id)
                values ('comment 94', 1, '<p>test comment 94</p>', 'system-1@gmail.com', 94);insert into comment(name, status, content, email, article_id)
                values ('comment 95', 1, '<p>test comment 95</p>', 'system-1@gmail.com', 95);insert into comment(name, status, content, email, article_id)
                values ('comment 96', 1, '<p>test comment 96</p>', 'system-1@gmail.com', 96);insert into comment(name, status, content, email, article_id)
                values ('comment 97', 1, '<p>test comment 97</p>', 'system-1@gmail.com', 97);insert into comment(name, status, content, email, article_id)
                values ('comment 98', 1, '<p>test comment 98</p>', 'system-1@gmail.com', 98);insert into comment(name, status, content, email, article_id)
                values ('comment 99', 1, '<p>test comment 99</p>', 'system-1@gmail.com', 99);insert into comment(name, status, content, email, article_id)
                values ('comment 100', 1, '<p>test comment 100</p>', 'system-1@gmail.com', 100);insert into comment(name, status, content, email, article_id)
                values ('comment 101', 1, '<p>test comment 101</p>', 'system-1@gmail.com', 101);insert into comment(name, status, content, email, article_id)
                values ('comment 102', 1, '<p>test comment 102</p>', 'system-1@gmail.com', 102);insert into comment(name, status, content, email, article_id)
                values ('comment 103', 1, '<p>test comment 103</p>', 'system-1@gmail.com', 103);insert into comment(name, status, content, email, article_id)
                values ('comment 104', 1, '<p>test comment 104</p>', 'system-1@gmail.com', 104);insert into comment(name, status, content, email, article_id)
                values ('comment 105', 1, '<p>test comment 105</p>', 'system-1@gmail.com', 105);insert into comment(name, status, content, email, article_id)
                values ('comment 106', 1, '<p>test comment 106</p>', 'system-1@gmail.com', 106);insert into comment(name, status, content, email, article_id)
                values ('comment 107', 1, '<p>test comment 107</p>', 'system-1@gmail.com', 107);insert into comment(name, status, content, email, article_id)
                values ('comment 108', 1, '<p>test comment 108</p>', 'system-1@gmail.com', 108);insert into comment(name, status, content, email, article_id)
                values ('comment 109', 1, '<p>test comment 109</p>', 'system-1@gmail.com', 109);insert into comment(name, status, content, email, article_id)
                values ('comment 110', 1, '<p>test comment 110</p>', 'system-1@gmail.com', 110);insert into comment(name, status, content, email, article_id)
                values ('comment 111', 1, '<p>test comment 111</p>', 'system-1@gmail.com', 111);insert into comment(name, status, content, email, article_id)
                values ('comment 112', 1, '<p>test comment 112</p>', 'system-1@gmail.com', 112);insert into comment(name, status, content, email, article_id)
                values ('comment 113', 1, '<p>test comment 113</p>', 'system-1@gmail.com', 113);insert into comment(name, status, content, email, article_id)
                values ('comment 114', 1, '<p>test comment 114</p>', 'system-1@gmail.com', 114);insert into comment(name, status, content, email, article_id)
                values ('comment 115', 1, '<p>test comment 115</p>', 'system-1@gmail.com', 115);insert into comment(name, status, content, email, article_id)
                values ('comment 116', 1, '<p>test comment 116</p>', 'system-1@gmail.com', 116);insert into comment(name, status, content, email, article_id)
                values ('comment 117', 1, '<p>test comment 117</p>', 'system-1@gmail.com', 117);insert into comment(name, status, content, email, article_id)
                values ('comment 118', 1, '<p>test comment 118</p>', 'system-1@gmail.com', 118);insert into comment(name, status, content, email, article_id)
                values ('comment 119', 1, '<p>test comment 119</p>', 'system-1@gmail.com', 119);insert into comment(name, status, content, email, article_id)
                values ('comment 120', 1, '<p>test comment 120</p>', 'system-1@gmail.com', 120);insert into comment(name, status, content, email, article_id)
                values ('comment 121', 1, '<p>test comment 121</p>', 'system-1@gmail.com', 121);insert into comment(name, status, content, email, article_id)
                values ('comment 122', 1, '<p>test comment 122</p>', 'system-1@gmail.com', 122);insert into comment(name, status, content, email, article_id)
                values ('comment 123', 1, '<p>test comment 123</p>', 'system-1@gmail.com', 123);insert into comment(name, status, content, email, article_id)
                values ('comment 124', 1, '<p>test comment 124</p>', 'system-1@gmail.com', 124);insert into comment(name, status, content, email, article_id)
                values ('comment 125', 1, '<p>test comment 125</p>', 'system-1@gmail.com', 125);insert into comment(name, status, content, email, article_id)
                values ('comment 126', 1, '<p>test comment 126</p>', 'system-1@gmail.com', 126);insert into comment(name, status, content, email, article_id)
                values ('comment 127', 1, '<p>test comment 127</p>', 'system-1@gmail.com', 127);insert into comment(name, status, content, email, article_id)
                values ('comment 128', 1, '<p>test comment 128</p>', 'system-1@gmail.com', 128);insert into comment(name, status, content, email, article_id)
                values ('comment 129', 1, '<p>test comment 129</p>', 'system-1@gmail.com', 129);insert into comment(name, status, content, email, article_id)
                values ('comment 130', 1, '<p>test comment 130</p>', 'system-1@gmail.com', 130);insert into comment(name, status, content, email, article_id)
                values ('comment 131', 1, '<p>test comment 131</p>', 'system-1@gmail.com', 131);insert into comment(name, status, content, email, article_id)
                values ('comment 132', 1, '<p>test comment 132</p>', 'system-1@gmail.com', 132);insert into comment(name, status, content, email, article_id)
                values ('comment 133', 1, '<p>test comment 133</p>', 'system-1@gmail.com', 133);insert into comment(name, status, content, email, article_id)
                values ('comment 134', 1, '<p>test comment 134</p>', 'system-1@gmail.com', 134);insert into comment(name, status, content, email, article_id)
                values ('comment 135', 1, '<p>test comment 135</p>', 'system-1@gmail.com', 135);insert into comment(name, status, content, email, article_id)
                values ('comment 136', 1, '<p>test comment 136</p>', 'system-1@gmail.com', 136);insert into comment(name, status, content, email, article_id)
                values ('comment 137', 1, '<p>test comment 137</p>', 'system-1@gmail.com', 137);insert into comment(name, status, content, email, article_id)
                values ('comment 138', 1, '<p>test comment 138</p>', 'system-1@gmail.com', 138);insert into comment(name, status, content, email, article_id)
                values ('comment 139', 1, '<p>test comment 139</p>', 'system-1@gmail.com', 139);insert into comment(name, status, content, email, article_id)
                values ('comment 140', 1, '<p>test comment 140</p>', 'system-1@gmail.com', 140);insert into comment(name, status, content, email, article_id)
                values ('comment 141', 1, '<p>test comment 141</p>', 'system-1@gmail.com', 141);insert into comment(name, status, content, email, article_id)
                values ('comment 142', 1, '<p>test comment 142</p>', 'system-1@gmail.com', 142);insert into comment(name, status, content, email, article_id)
                values ('comment 143', 1, '<p>test comment 143</p>', 'system-1@gmail.com', 143);insert into comment(name, status, content, email, article_id)
                values ('comment 144', 1, '<p>test comment 144</p>', 'system-1@gmail.com', 144);insert into comment(name, status, content, email, article_id)
                values ('comment 145', 1, '<p>test comment 145</p>', 'system-1@gmail.com', 145);insert into comment(name, status, content, email, article_id)
                values ('comment 146', 1, '<p>test comment 146</p>', 'system-1@gmail.com', 146);insert into comment(name, status, content, email, article_id)
                values ('comment 147', 1, '<p>test comment 147</p>', 'system-1@gmail.com', 147);insert into comment(name, status, content, email, article_id)
                values ('comment 148', 1, '<p>test comment 148</p>', 'system-1@gmail.com', 148);insert into comment(name, status, content, email, article_id)
                values ('comment 149', 1, '<p>test comment 149</p>', 'system-1@gmail.com', 149);insert into comment(name, status, content, email, article_id)
                values ('comment 150', 1, '<p>test comment 150</p>', 'system-1@gmail.com', 150);insert into comment(name, status, content, email, article_id)
                values ('comment 151', 1, '<p>test comment 151</p>', 'system-1@gmail.com', 151);insert into comment(name, status, content, email, article_id)
                values ('comment 152', 1, '<p>test comment 152</p>', 'system-1@gmail.com', 152);insert into comment(name, status, content, email, article_id)
                values ('comment 153', 1, '<p>test comment 153</p>', 'system-1@gmail.com', 153);insert into comment(name, status, content, email, article_id)
                values ('comment 154', 1, '<p>test comment 154</p>', 'system-1@gmail.com', 154);insert into comment(name, status, content, email, article_id)
                values ('comment 155', 1, '<p>test comment 155</p>', 'system-1@gmail.com', 155);insert into comment(name, status, content, email, article_id)
                values ('comment 156', 1, '<p>test comment 156</p>', 'system-1@gmail.com', 156);insert into comment(name, status, content, email, article_id)
                values ('comment 157', 1, '<p>test comment 157</p>', 'system-1@gmail.com', 157);insert into comment(name, status, content, email, article_id)
                values ('comment 158', 1, '<p>test comment 158</p>', 'system-1@gmail.com', 158);insert into comment(name, status, content, email, article_id)
                values ('comment 159', 1, '<p>test comment 159</p>', 'system-1@gmail.com', 159);insert into comment(name, status, content, email, article_id)
                values ('comment 160', 1, '<p>test comment 160</p>', 'system-1@gmail.com', 160);insert into comment(name, status, content, email, article_id)
                values ('comment 161', 1, '<p>test comment 161</p>', 'system-1@gmail.com', 161);insert into comment(name, status, content, email, article_id)
                values ('comment 162', 1, '<p>test comment 162</p>', 'system-1@gmail.com', 162);insert into comment(name, status, content, email, article_id)
                values ('comment 163', 1, '<p>test comment 163</p>', 'system-1@gmail.com', 163);insert into comment(name, status, content, email, article_id)
                values ('comment 164', 1, '<p>test comment 164</p>', 'system-1@gmail.com', 164);insert into comment(name, status, content, email, article_id)
                values ('comment 165', 1, '<p>test comment 165</p>', 'system-1@gmail.com', 165);insert into comment(name, status, content, email, article_id)
                values ('comment 166', 1, '<p>test comment 166</p>', 'system-1@gmail.com', 166);insert into comment(name, status, content, email, article_id)
                values ('comment 167', 1, '<p>test comment 167</p>', 'system-1@gmail.com', 167);insert into comment(name, status, content, email, article_id)
                values ('comment 168', 1, '<p>test comment 168</p>', 'system-1@gmail.com', 168);insert into comment(name, status, content, email, article_id)
                values ('comment 169', 1, '<p>test comment 169</p>', 'system-1@gmail.com', 169);insert into comment(name, status, content, email, article_id)
                values ('comment 170', 1, '<p>test comment 170</p>', 'system-1@gmail.com', 170);insert into comment(name, status, content, email, article_id)
                values ('comment 171', 1, '<p>test comment 171</p>', 'system-1@gmail.com', 171);insert into comment(name, status, content, email, article_id)
                values ('comment 172', 1, '<p>test comment 172</p>', 'system-1@gmail.com', 172);insert into comment(name, status, content, email, article_id)
                values ('comment 173', 1, '<p>test comment 173</p>', 'system-1@gmail.com', 173);insert into comment(name, status, content, email, article_id)
                values ('comment 174', 1, '<p>test comment 174</p>', 'system-1@gmail.com', 174);insert into comment(name, status, content, email, article_id)
                values ('comment 175', 1, '<p>test comment 175</p>', 'system-1@gmail.com', 175);insert into comment(name, status, content, email, article_id)
                values ('comment 176', 1, '<p>test comment 176</p>', 'system-1@gmail.com', 176);insert into comment(name, status, content, email, article_id)
                values ('comment 177', 1, '<p>test comment 177</p>', 'system-1@gmail.com', 177);insert into comment(name, status, content, email, article_id)
                values ('comment 178', 1, '<p>test comment 178</p>', 'system-1@gmail.com', 178);insert into comment(name, status, content, email, article_id)
                values ('comment 179', 1, '<p>test comment 179</p>', 'system-1@gmail.com', 179);insert into comment(name, status, content, email, article_id)
                values ('comment 180', 1, '<p>test comment 180</p>', 'system-1@gmail.com', 180);insert into comment(name, status, content, email, article_id)
                values ('comment 181', 1, '<p>test comment 181</p>', 'system-1@gmail.com', 181);insert into comment(name, status, content, email, article_id)
                values ('comment 182', 1, '<p>test comment 182</p>', 'system-1@gmail.com', 182);insert into comment(name, status, content, email, article_id)
                values ('comment 183', 1, '<p>test comment 183</p>', 'system-1@gmail.com', 183);insert into comment(name, status, content, email, article_id)
                values ('comment 184', 1, '<p>test comment 184</p>', 'system-1@gmail.com', 184);insert into comment(name, status, content, email, article_id)
                values ('comment 185', 1, '<p>test comment 185</p>', 'system-1@gmail.com', 185);insert into comment(name, status, content, email, article_id)
                values ('comment 186', 1, '<p>test comment 186</p>', 'system-1@gmail.com', 186);insert into comment(name, status, content, email, article_id)
                values ('comment 187', 1, '<p>test comment 187</p>', 'system-1@gmail.com', 187);insert into comment(name, status, content, email, article_id)
                values ('comment 188', 1, '<p>test comment 188</p>', 'system-1@gmail.com', 188);insert into comment(name, status, content, email, article_id)
                values ('comment 189', 1, '<p>test comment 189</p>', 'system-1@gmail.com', 189);insert into comment(name, status, content, email, article_id)
                values ('comment 190', 1, '<p>test comment 190</p>', 'system-1@gmail.com', 190);insert into comment(name, status, content, email, article_id)
                values ('comment 191', 1, '<p>test comment 191</p>', 'system-1@gmail.com', 191);insert into comment(name, status, content, email, article_id)
                values ('comment 192', 1, '<p>test comment 192</p>', 'system-1@gmail.com', 192);insert into comment(name, status, content, email, article_id)
                values ('comment 193', 1, '<p>test comment 193</p>', 'system-1@gmail.com', 193);insert into comment(name, status, content, email, article_id)
                values ('comment 194', 1, '<p>test comment 194</p>', 'system-1@gmail.com', 194);insert into comment(name, status, content, email, article_id)
                values ('comment 195', 1, '<p>test comment 195</p>', 'system-1@gmail.com', 195);insert into comment(name, status, content, email, article_id)
                values ('comment 196', 1, '<p>test comment 196</p>', 'system-1@gmail.com', 196);insert into comment(name, status, content, email, article_id)
                values ('comment 197', 1, '<p>test comment 197</p>', 'system-1@gmail.com', 197);insert into comment(name, status, content, email, article_id)
                values ('comment 198', 1, '<p>test comment 198</p>', 'system-1@gmail.com', 198);insert into comment(name, status, content, email, article_id)
                values ('comment 199', 1, '<p>test comment 199</p>', 'system-1@gmail.com', 199);insert into comment(name, status, content, email, article_id)
                values ('comment 200', 1, '<p>test comment 200</p>', 'system-1@gmail.com', 200);insert into comment(name, status, content, email, article_id)
                values ('comment 201', 1, '<p>test comment 201</p>', 'system-1@gmail.com', 201);insert into comment(name, status, content, email, article_id)
                values ('comment 202', 1, '<p>test comment 202</p>', 'system-1@gmail.com', 202);insert into comment(name, status, content, email, article_id)
                values ('comment 203', 1, '<p>test comment 203</p>', 'system-1@gmail.com', 203);insert into comment(name, status, content, email, article_id)
                values ('comment 204', 1, '<p>test comment 204</p>', 'system-1@gmail.com', 204);insert into comment(name, status, content, email, article_id)
                values ('comment 205', 1, '<p>test comment 205</p>', 'system-1@gmail.com', 205);insert into comment(name, status, content, email, article_id)
                values ('comment 206', 1, '<p>test comment 206</p>', 'system-1@gmail.com', 206);insert into comment(name, status, content, email, article_id)
                values ('comment 207', 1, '<p>test comment 207</p>', 'system-1@gmail.com', 207);insert into comment(name, status, content, email, article_id)
                values ('comment 208', 1, '<p>test comment 208</p>', 'system-1@gmail.com', 208);insert into comment(name, status, content, email, article_id)
                values ('comment 209', 1, '<p>test comment 209</p>', 'system-1@gmail.com', 209);insert into comment(name, status, content, email, article_id)
                values ('comment 210', 1, '<p>test comment 210</p>', 'system-1@gmail.com', 210);insert into comment(name, status, content, email, article_id)
                values ('comment 211', 1, '<p>test comment 211</p>', 'system-1@gmail.com', 211);insert into comment(name, status, content, email, article_id)
                values ('comment 212', 1, '<p>test comment 212</p>', 'system-1@gmail.com', 212);insert into comment(name, status, content, email, article_id)
                values ('comment 213', 1, '<p>test comment 213</p>', 'system-1@gmail.com', 213);insert into comment(name, status, content, email, article_id)
                values ('comment 214', 1, '<p>test comment 214</p>', 'system-1@gmail.com', 214);insert into comment(name, status, content, email, article_id)
                values ('comment 215', 1, '<p>test comment 215</p>', 'system-1@gmail.com', 215);insert into comment(name, status, content, email, article_id)
                values ('comment 216', 1, '<p>test comment 216</p>', 'system-1@gmail.com', 216);insert into comment(name, status, content, email, article_id)
                values ('comment 217', 1, '<p>test comment 217</p>', 'system-1@gmail.com', 217);insert into comment(name, status, content, email, article_id)
                values ('comment 218', 1, '<p>test comment 218</p>', 'system-1@gmail.com', 218);insert into comment(name, status, content, email, article_id)
                values ('comment 219', 1, '<p>test comment 219</p>', 'system-1@gmail.com', 219);insert into comment(name, status, content, email, article_id)
                values ('comment 220', 1, '<p>test comment 220</p>', 'system-1@gmail.com', 220);insert into comment(name, status, content, email, article_id)
                values ('comment 221', 1, '<p>test comment 221</p>', 'system-1@gmail.com', 221);insert into comment(name, status, content, email, article_id)
                values ('comment 222', 1, '<p>test comment 222</p>', 'system-1@gmail.com', 222);insert into comment(name, status, content, email, article_id)
                values ('comment 223', 1, '<p>test comment 223</p>', 'system-1@gmail.com', 223);insert into comment(name, status, content, email, article_id)
                values ('comment 224', 1, '<p>test comment 224</p>', 'system-1@gmail.com', 224);insert into comment(name, status, content, email, article_id)
                values ('comment 225', 1, '<p>test comment 225</p>', 'system-1@gmail.com', 225);insert into comment(name, status, content, email, article_id)
                values ('comment 226', 1, '<p>test comment 226</p>', 'system-1@gmail.com', 226);insert into comment(name, status, content, email, article_id)
                values ('comment 227', 1, '<p>test comment 227</p>', 'system-1@gmail.com', 227);insert into comment(name, status, content, email, article_id)
                values ('comment 228', 1, '<p>test comment 228</p>', 'system-1@gmail.com', 228);insert into comment(name, status, content, email, article_id)
                values ('comment 229', 1, '<p>test comment 229</p>', 'system-1@gmail.com', 229);insert into comment(name, status, content, email, article_id)
                values ('comment 230', 1, '<p>test comment 230</p>', 'system-1@gmail.com', 230);insert into comment(name, status, content, email, article_id)
                values ('comment 231', 1, '<p>test comment 231</p>', 'system-1@gmail.com', 231);insert into comment(name, status, content, email, article_id)
                values ('comment 232', 1, '<p>test comment 232</p>', 'system-1@gmail.com', 232);insert into comment(name, status, content, email, article_id)
                values ('comment 233', 1, '<p>test comment 233</p>', 'system-1@gmail.com', 233);insert into comment(name, status, content, email, article_id)
                values ('comment 234', 1, '<p>test comment 234</p>', 'system-1@gmail.com', 234);insert into comment(name, status, content, email, article_id)
                values ('comment 235', 1, '<p>test comment 235</p>', 'system-1@gmail.com', 235);insert into comment(name, status, content, email, article_id)
                values ('comment 236', 1, '<p>test comment 236</p>', 'system-1@gmail.com', 236);insert into comment(name, status, content, email, article_id)
                values ('comment 237', 1, '<p>test comment 237</p>', 'system-1@gmail.com', 237);insert into comment(name, status, content, email, article_id)
                values ('comment 238', 1, '<p>test comment 238</p>', 'system-1@gmail.com', 238);insert into comment(name, status, content, email, article_id)
                values ('comment 239', 1, '<p>test comment 239</p>', 'system-1@gmail.com', 239);insert into comment(name, status, content, email, article_id)
                values ('comment 240', 1, '<p>test comment 240</p>', 'system-1@gmail.com', 240);insert into comment(name, status, content, email, article_id)
                values ('comment 241', 1, '<p>test comment 241</p>', 'system-1@gmail.com', 241);insert into comment(name, status, content, email, article_id)
                values ('comment 242', 1, '<p>test comment 242</p>', 'system-1@gmail.com', 242);insert into comment(name, status, content, email, article_id)
                values ('comment 243', 1, '<p>test comment 243</p>', 'system-1@gmail.com', 243);insert into comment(name, status, content, email, article_id)
                values ('comment 244', 1, '<p>test comment 244</p>', 'system-1@gmail.com', 244);insert into comment(name, status, content, email, article_id)
                values ('comment 245', 1, '<p>test comment 245</p>', 'system-1@gmail.com', 245);insert into comment(name, status, content, email, article_id)
                values ('comment 246', 1, '<p>test comment 246</p>', 'system-1@gmail.com', 246);insert into comment(name, status, content, email, article_id)
                values ('comment 247', 1, '<p>test comment 247</p>', 'system-1@gmail.com', 247);insert into comment(name, status, content, email, article_id)
                values ('comment 248', 1, '<p>test comment 248</p>', 'system-1@gmail.com', 248);insert into comment(name, status, content, email, article_id)
                values ('comment 249', 1, '<p>test comment 249</p>', 'system-1@gmail.com', 249);insert into comment(name, status, content, email, article_id)
                values ('comment 250', 1, '<p>test comment 250</p>', 'system-1@gmail.com', 250);insert into comment(name, status, content, email, article_id)
                values ('comment 251', 1, '<p>test comment 251</p>', 'system-1@gmail.com', 251);insert into comment(name, status, content, email, article_id)
                values ('comment 252', 1, '<p>test comment 252</p>', 'system-1@gmail.com', 252);insert into comment(name, status, content, email, article_id)
                values ('comment 253', 1, '<p>test comment 253</p>', 'system-1@gmail.com', 253);insert into comment(name, status, content, email, article_id)
                values ('comment 254', 1, '<p>test comment 254</p>', 'system-1@gmail.com', 254);insert into comment(name, status, content, email, article_id)
                values ('comment 255', 1, '<p>test comment 255</p>', 'system-1@gmail.com', 255);insert into comment(name, status, content, email, article_id)
                values ('comment 256', 1, '<p>test comment 256</p>', 'system-1@gmail.com', 256);insert into comment(name, status, content, email, article_id)
                values ('comment 257', 1, '<p>test comment 257</p>', 'system-1@gmail.com', 257);insert into comment(name, status, content, email, article_id)
                values ('comment 258', 1, '<p>test comment 258</p>', 'system-1@gmail.com', 258);insert into comment(name, status, content, email, article_id)
                values ('comment 259', 1, '<p>test comment 259</p>', 'system-1@gmail.com', 259);insert into comment(name, status, content, email, article_id)
                values ('comment 260', 1, '<p>test comment 260</p>', 'system-1@gmail.com', 260);insert into comment(name, status, content, email, article_id)
                values ('comment 261', 1, '<p>test comment 261</p>', 'system-1@gmail.com', 261);insert into comment(name, status, content, email, article_id)
                values ('comment 262', 1, '<p>test comment 262</p>', 'system-1@gmail.com', 262);insert into comment(name, status, content, email, article_id)
                values ('comment 263', 1, '<p>test comment 263</p>', 'system-1@gmail.com', 263);insert into comment(name, status, content, email, article_id)
                values ('comment 264', 1, '<p>test comment 264</p>', 'system-1@gmail.com', 264);insert into comment(name, status, content, email, article_id)
                values ('comment 265', 1, '<p>test comment 265</p>', 'system-1@gmail.com', 265);insert into comment(name, status, content, email, article_id)
                values ('comment 266', 1, '<p>test comment 266</p>', 'system-1@gmail.com', 266);insert into comment(name, status, content, email, article_id)
                values ('comment 267', 1, '<p>test comment 267</p>', 'system-1@gmail.com', 267);