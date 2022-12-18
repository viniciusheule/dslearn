INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 3);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://www.publicdomainpictures.net/pictures/270000/nahled/course-classroom.jpg', 'https://www.open.edu/openlearn/pluginfile.php/768044/tool_ocwmanage/image/0/b716_2_cover_image_1.jpg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE '2020-10-13T20:50:07.12345Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2021-10-13T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE '2021-12-13T20:50:07.12345Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso HTML', 1, 'https://www.publicdomainpictures.net/pictures/270000/nahled/course-classroom.jpg', 1, 2);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://www.publicdomainpictures.net/pictures/270000/nahled/course-classroom.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Live', 'Lives para a turma', 3, 'https://www.publicdomainpictures.net/pictures/270000/nahled/course-classroom.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Cap. 1', 'Capítulo de iniciação', 1, 'https://www.publicdomainpictures.net/pictures/270000/nahled/course-classroom.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Cap. 2', 'Capítulo Intermediario', 2, 'https://www.publicdomainpictures.net/pictures/270000/nahled/course-classroom.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Cap. 3', 'Capítulo Avançado', 3, 'https://www.publicdomainpictures.net/pictures/270000/nahled/course-classroom.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2022-07-13T20:50:07.12345Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2022-07-13T20:50:07.12345Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do Cap. 1', 1, 1);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do Cap. 1', 2, 1);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do Cap. 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de apoio: teste', 'https://www.youtube.com/watch?v=0_e9Egeyk2E');
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, '', 'https://www.youtube.com/watch?v=0_e9Egeyk2E');
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, '', 'https://www.youtube.com/watch?v=0_e9Egeyk2E');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do Cap. 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Tarefa do Cap. 1', 10, 8, 1.0, TIMESTAMP WITH TIME ZONE '2022-07-30T20:50:07.12345Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);


