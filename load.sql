-- Students
INSERT INTO Student (Student_ID, FName, MName, LName, Course_Department, Email, Phone_Number)
VALUES
(28285731, 'Saunder', 'Arri', 'Forth', 'Chemical Engineering', 'aforth0@reverbnation.com', '122-949-2917'),
(45863671, 'Doroteya', 'Amye', 'Tynewell', 'Mechanical Engineering', 'atynewell1@shareasale.com', '604-750-2767'),
(96977804, 'Nana', 'Rochester', 'Heliet', 'Mathematics', 'rheliet2@blog.com', '284-802-0884'),
(59447362, 'Sanson', 'Barron', 'Andryunin', 'Music', 'bandryunin3@storify.com', '452-249-5868'),
(59031504, 'Bonnee', 'Hersh', 'Scroyton', 'Chemistry', 'hscroyton4@feedburner.com', '554-517-3263'),
(88715870, 'Josey', 'Matteo', 'cornhill', 'Politics', 'mcornhill5@topsy.com', '876-911-0681'),
(34318063, 'Annabella', 'Alissa', 'Urwen', 'Electrical Engineering', 'aurwen6@jugem.jp', '355-865-3085'),
(15339021, 'Ewen', 'Nils', 'Collerd', 'Electrical Engineering', 'ncollerd7@devhub.com', '630-945-5817'),
(18439913, 'Roanne', 'Rory', 'Chetwin', 'Liberal Arts', 'rchetwin8@cbsnews.com', '341-851-8920'),
(43488362, 'Fowler', 'Georgie', 'Halle', 'Mathematics', 'ghalle9@amazon.de', '398-395-2792');
-- Books
INSERT INTO Book (Book_ID, Title, Author, Year, Subject_Matter, Availability)
VALUES
('RN-7880', 'The Catcher in the Rye', 'Vinnie Lagadu', 1477, 'Biography', TRUE),
('UW-3930', 'The Great Gatsby', 'Kerrill Dennert', 585, 'Science Fiction', FALSE),
('VM-6709', 'To Kill a Mockingbird', 'Dreddy Pouton', 1124, 'Fiction', FALSE),
('BC-5036', '1984', 'Courtenay Alcott', 1950, 'Science Fiction', TRUE),
('UQ-3004', '1984', 'Symon Licciardiello', 160, 'Mystery', FALSE),
('CP-3543', 'The Great Gatsby', 'Hermy Featley', 1440, 'Non-Fiction', TRUE),
('PD-3873', 'The Great Gatsby', 'Ealasaid Manchett', 1159, 'Mystery', TRUE),
('GD-8979', 'To Kill a Mockingbird', 'Vikki Schuh', 627, 'History', FALSE),
('WE-5504', 'Pride and Prejudice', 'Guthrey Seage', 66, 'Science Fiction', TRUE),
('BK-6194', 'The Catcher in the Rye', 'Evangelina Urwin', 1538, 'Biography', TRUE);
-- Employee
INSERT INTO Employee (Emp_ID, EFName, EMName, ELName, Designation, Emp_Email, Emp_Contact_Number, D_ID)
VALUES
('LIB7494', 'Lawrence', 'Lazaro', 'Orchard', 'Analyst Programmer', 'lorchard0@illinois.edu', '775-854-1980', 441),
('LIB5347', 'Kiersten', 'Haleigh', 'Coper', 'Quality Engineer', 'hcoper1@omniture.com', '118-583-6778', 2332),
('LIB5262', 'Charissa', 'Rosco', 'Di Giacomo', 'Junior Executive', 'rdigiacomo2@blogspot.com', '761-135-4810', 3529),
('LIB0228', 'Ferguson', 'Zelig', 'Dyball', 'Automation Specialist IV', 'zdyball3@jugem.jp', '374-728-7075', 5019),
('LIB6472', 'Roxi', 'Valina', 'Gemson', 'Software Engineer IV', 'vgemson4@ovh.net', '740-805-8469', 6480),
('LIB3175', 'Amelita', 'Cornelle', 'Breadon', 'Executive Secretary', 'cbreadon5@discovery.com', '104-563-3501', 6570),
('LIB8597', 'Rabbi', 'Darleen', 'Hoyes', 'Community Outreach Specialist', 'dhoyes6@ycombinator.com', '842-339-6599', 8031),
('LIB5982', 'Sonja', 'Jacquenette', 'Halm', 'Office Assistant III', 'jhalm7@hc360.com', '338-590-1309', 8987),
('LIB6740', 'Miller', 'Bard', 'Struther', 'Administrative Assistant I', 'bstruther8@dropbox.com', '977-862-9961', 9055),
('LIB2234', 'Laurice', 'Armand', 'Parell', 'Librarian', 'aparell9@kickstarter.com', '406-826-1920', 9266);
-- Department
INSERT INTO Department (Dept_ID, Dept_Name)
VALUES
(6480, 'Circulation'),
(3529, 'Front Desk'),
(8031, 'Front Desk'),
(5019, 'Periodicals'),
(6570, 'Reference'),
(9055, 'Front Desk'),
(441, 'Periodicals'),
(2332, 'Circulation'),
(9266, 'Front Desk'),
(8987, 'Periodicals');
-- Issued Books
INSERT INTO Issued_books (B_ID, S_ID, Due_Date, Returned)
VALUES
('UW-3930', 78137217, '2023-05-07', FALSE),
('BC-5036', 34456882, '2023-06-28', FALSE),
('BC-5036', 90448994, '2023-09-01', TRUE),
('CP-3543', 56082739, '2023-08-29', TRUE),
('UW-3930', 2555091, '2023-10-27', TRUE);
-- Fine
INSERT INTO Fine (Std_ID, Bk_ID, Fine_Amnt)
VALUES
(45863671, 'CP-3543', 9),
(45863671, 'BC-5036', 2);
-- Issued_By
INSERT INTO Issued_by (ID, E_ID, Issued_Date)
VALUES
('BC-5036', 'LIB0228', '2023-07-22'),
('UW-3930', 'LIB3175', '2023-11-10'),
('BC-5036', 'LIB5262', '2023-06-24'),
('UW-3930', 'LIB6472', '2023-06-25'),
('CP-3543', 'LIB6472', '2023-11-11');
-- Rack_Info
INSERT INTO Rack_info (Sub_Matter, Rack_Number)
VALUES
('Biography', 502),
('Science Fiction', 224),
('Fiction', 593),
('Non-Fiction', 324),
('Mystery', 254),
('History', 507);
