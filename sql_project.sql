CREATE DATABASE IF NOT EXISTS hostel_management;
use hostel_management;

drop table boys_hostel ;
drop table room  ;
drop table student ; 
drop table mess  ;
drop table staff  ;
drop table Furniture ; 
drop table visitor;  
drop table Fee;

CREATE TABLE boys_hostel (
    hostel_id INT NOT NULL,
    no_of_rooms INT NOT NULL,
    no_of_student INT NOT NULL,
    annual_expenses INT NOT NULL,
    locationn VARCHAR(10) NOT NULL,
    PRIMARY KEY (hostel_id)
);

CREATE TABLE room (
    room_id INT NOT NULL,
    capacity INT NOT NULL,
    hostel_id INT NOT NULL,
    name_of_student VARCHAR(40) NOT NULL,
    room_status VARCHAR(10) NOT NULL,
    PRIMARY KEY (room_id),
    FOREIGN KEY (hostel_id) REFERENCES boys_hostel(hostel_id)
);

CREATE TABLE student (
    student_id INT NOT NULL,
    student_name VARCHAR(40) NOT NULL,
    student_father_name VARCHAR(40),
    department VARCHAR(30) NOT NULL,
    address VARCHAR(40) NOT NULL,
    cell_no VARCHAR(20) NOT NULL,
    student_age INT NOT NULL,
    student_DOB VARCHAR(15) NOT NULL,
    hostel_id INT NOT NULL,
    room_id INT NOT NULL,
    PRIMARY KEY (student_id),
    FOREIGN KEY (hostel_id) REFERENCES boys_hostel(hostel_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id)
);

CREATE TABLE mess (
    mess_incharge_Id VARCHAR(20) NOT NULL,
    monthly_avg_expense VARCHAR(30) NOT NULL,
    mess_bf_timing VARCHAR(45) NOT NULL,
    mess_dinner_timing VARCHAR(45) NOT NULL,
    sunday_bf_timing VARCHAR(45) NOT NULL,
    PRIMARY KEY (mess_incharge_Id)
);

CREATE TABLE staff (
    emp_name VARCHAR(40) NOT NULL,
    emp_id INT NOT NULL,
    emp_address VARCHAR(50) NOT NULL,
    emp_salary INT NOT NULL,
    emp_cellno VARCHAR(20) NOT NULL,
    hostel_id INT NOT NULL,
    emp_designation VARCHAR(40) NOT NULL,
    mess_incharge_Id VARCHAR(20),
    PRIMARY KEY (emp_id),
    FOREIGN KEY (hostel_id) REFERENCES boys_hostel(hostel_id),
    FOREIGN KEY (mess_incharge_Id) REFERENCES mess(mess_incharge_Id)
);

CREATE TABLE visitor (
    visitor_id INT NOT NULL,
    student_id INT NOT NULL,
    visitor_name VARCHAR(40) NOT NULL,
    visitor_time_in VARCHAR(40) NOT NULL,
    visitor_time_out VARCHAR(40) NOT NULL,
    date_entering VARCHAR(24) NOT NULL,
    PRIMARY KEY (visitor_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

CREATE TABLE furniture (
    furniture_id VARCHAR(34) NOT NULL,
    room_id INT NOT NULL,
    furniture_type VARCHAR(40) NOT NULL,
    PRIMARY KEY (furniture_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id)
);

CREATE TABLE Fee (
    fee_month_year VARCHAR(40) NOT NULL,
    fee_status VARCHAR(40) NOT NULL,
    student_id INT NOT NULL,
    student_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (fee_month_year, student_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);




INSERT INTO boys_hostel (hostel_id, no_of_rooms, no_of_student, annual_expenses, locationn) VALUES (1, 25, 18, 1000000, 'A-block'), 
(2, 25, 18, 1000000, 'B-block'), 
(3, 25, 17, 1000000, 'C-block'), 
(4, 25, 17, 1000000, 'Shayadri');



INSERT INTO room (room_id, capacity, hostel_id, name_of_student, room_status) VALUES 
(1, 3, 1, 'Rajesh Kumar', 'Occupied'),
(2, 3, 1, 'Ankit Verma', 'Occupied'),
(3, 3, 1, 'Vikas Singh', 'Occupied'),
(4, 3, 1, 'Rohit Sharma', 'Occupied'),
(5, 3, 1, 'Deepak Chawla', 'Occupied'),
(6, 3, 1, 'Prateek Ghosh', 'Occupied'),
(7, 3, 1, 'Suresh Mishra', 'Occupied'),
(8, 3, 1, 'Manoj Tiwari', 'Occupied'),
(9, 3, 1, 'Kunal Patel', 'Occupied'),
(10, 3, 1, 'Naveen Reddy', 'Occupied'),
(11, 3, 1, 'Harish Chandra', 'Occupied'),
(12, 3, 1, 'Vikrant Gupta', 'Occupied'),
(13, 3, 1, 'Anil Mehta', 'Occupied'),
(14, 3, 1, 'Sunil Singh', 'Occupied'),
(15, 3, 1, 'Nitin Kumar', 'Occupied'),
(16, 3, 1, 'Ashok Jain', 'Occupied'),
(17, 3, 1, 'Bharat Joshi', 'Occupied'),
(18, 3, 1, 'Arjun Rao', 'Occupied'),
(19, 3, 1, 'Prashant Jha', 'Occupied'),
(20, 3, 1, 'Ramesh Yadav', 'Occupied'),
(21, 3, 1, 'Sanjay Kapoor', 'Occupied'),
(22, 3, 1, 'Mahesh Nair', 'Occupied'),
(23, 3, 1, 'Vinod Gupta', 'Occupied'),
(24, 3, 1, 'Aman Verma', 'Occupied'),
(25, 3, 1, 'Abhishek Singh', 'Occupied'),
(26, 3, 2, 'Amit Sharma', 'Occupied'),
(27, 3, 2, 'Ravi Patel', 'Occupied'),
(28, 3, 2, 'Saurabh Kumar', 'Occupied'),
(29, 3, 2, 'Vivek Ranjan', 'Occupied'),
(30, 3, 2, 'Sumit Roy', 'Occupied'),
(31, 3, 2, 'Rahul Joshi', 'Occupied'),
(32, 3, 2, 'Akash Verma', 'Occupied'),
(33, 3, 2, 'Lokesh Rao', 'Occupied'),
(34, 3, 2, 'Shashank Mishra', 'Occupied'),
(35, 3, 2, 'Yash Gupta', 'Occupied'),
(36, 3, 2, 'Ajay Sinha', 'Occupied'),
(37, 3, 2, 'Kartik Tyagi', 'Occupied'),
(38, 3, 2, 'Akhil Sharma', 'Occupied'),
(39, 3, 2, 'Gaurav Mehta', 'Occupied'),
(40, 3, 2, 'Siddharth Singh', 'Occupied'),
(41, 3, 2, 'Manish Jain', 'Occupied'),
(42, 3, 2, 'Pankaj Kumar', 'Occupied'),
(43, 3, 2, 'Rakesh Rao', 'Occupied'),
(44, 3, 2, 'Nitin Verma', 'Occupied'),
(45, 3, 2, 'Shivam Thakur', 'Occupied'),
(46, 3, 2, 'Anuj Kumar', 'Occupied'),
(47, 3, 2, 'Ashish Roy', 'Occupied'),
(48, 3, 2, 'Suraj Gupta', 'Occupied'),
(49, 3, 2, 'Rajat Mehta', 'Occupied'),
(50, 3, 2, 'Rohan Sharma', 'Occupied'),
(51, 3, 3, 'Mohit Gupta', 'Occupied'),
(52, 3, 3, 'Rakesh Yadav', 'Occupied'),
(53, 3, 3, 'Nikhil Mehta', 'Occupied'),
(54, 3, 3, 'Kunal Singh', 'Occupied'),
(55, 3, 3, 'Manoj Pandey', 'Occupied'),
(56, 3, 3, 'Ajay Kumar', 'Occupied'),
(57, 3, 3, 'Sachin Joshi', 'Occupied'),
(58 ,3 ,3 ,'Piyush Verma','Occupied'), 
(59 ,3 ,3 ,'Tarun Sharma','Occupied'), 
(60 ,3 ,3 ,'Ashwin Patel','Occupied'), 
(61 ,3 ,3 ,'Rohit Verma','Occupied'), 
(62 ,3 ,3 ,'Sahil Mehta','Occupied'), 
(63 ,3 ,3 ,'Mohan Kumar','Occupied'), 
(64 ,3 ,3 ,'Ravi Singh','Occupied'), 
(65 ,3 ,3 ,'Harsh Gupta','Occupied'), 
(66 ,3 ,3 ,'Vishal Kumar','Occupied'), 
(67 ,3 ,3 ,'Praveen Nair','Occupied'), 
(68 ,3 ,3 ,'Rahul Jain','Occupied'), 
(69 ,3 ,3 ,'Yogesh Tyagi','Occupied'), 
(70 ,3 ,3 ,'Aakash Roy','Occupied'), 
(71 ,3 ,4 ,'Suresh Raina','Occupied'), 
(72 ,3 ,4 ,'Sanjay Mishra','Occupied'), 
(73 ,3 ,4 ,'Karan Joshi','Occupied'), 
(74 ,3 ,4 ,'Neeraj Kumar','Occupied'), 
(75 ,3 ,4 ,'Ashish Thakur','Occupied'), 
(76 ,3 ,4 ,'Umesh Mehta','Occupied'), 
(77 ,3 ,4 ,'Varun Sharma','Occupied'), 
(78 ,3 ,4 ,'Vikram Kumar','Occupied'), 
(79 ,3 ,4 ,'Harish Rao','Occupied'), 
(80 ,3 ,4 ,'Anand Verma','Occupied'), 
(81 ,3 ,4 ,'Amit Mehta','Occupied'), 
(82 ,3 ,4 ,'Kishore Singh','Occupied'), 
(83 ,3 ,4 ,'Ravindra Kumar','Occupied'), 
(84 ,3 ,4 ,'Sahil Gupta','Occupied'), 
(85 ,3 ,4 ,'Puneet Thakur','Occupied'), 
(86 ,3 ,4 ,'Vijay Sharma','Occupied'), 
(87 ,3 ,4 ,'Kiran Verma','Occupied'), 
(88 ,3 ,4 ,'Naveen Kumar','Occupied'), 
(89 ,3 ,4 ,'Rajesh Singh','Occupied'), 
(90 ,3 ,4 ,'Abhinav Mehta','Occupied'), 
(91 ,3 ,4 ,'Alok Verma','Occupied'), 
(92 ,3 ,4 ,'Rajat Singh','Occupied'), 
(93 ,3 ,4 ,'Kamal Mehta','Occupied'), 
(94 ,3 ,4 ,'Sandeep Kumar','Occupied'), 
(95 ,3 ,4 ,'Aman Gupta','Occupied'), 
(96 ,3 ,4 ,'Dinesh Yadav','Occupied'), 
(97 ,3 ,4 ,'Mukul Sharma','Occupied'), 
(98 ,3 ,4 ,'Nitin Thakur','Occupied'), 
(99 ,3 ,4 ,'Prakash Mehta','Occupied'),
(100, 3, 4, 'Karan Joshi', 'Occupied');


INSERT INTO Student (Student_ID, student_name, student_father_name, Department, Address, cell_no, Student_age, Student_DOB, hostel_id, room_id) VALUES 
(1, 'Rajesh Kumar', 'Suresh Kumar', 'CS', '101 Street A', '9999999991', 20, '2003-01-01', 2, 1),
(2, 'Ankit Verma', 'Rakesh Verma', 'EE', '102 Street B', '9999999992', 21, '2002-02-02', 4, 2),
(3, 'Vikas Singh', 'Mohan Singh', 'ME', '103 Street C', '9999999993', 22, '2001-03-03', 1, 3),
(4, 'Rohit Sharma', 'Amit Sharma', 'CE', '104 Street D', '9999999994', 20, '2003-04-04', 2, 4),
(5, 'Deepak Chawla', 'Ravi Chawla', 'CS', '105 Street E', '9999999995', 21, '2002-05-05', 1, 5),
(6, 'Prateek Ghosh', 'Suresh Ghosh', 'EE', '106 Street F', '9999999996', 22, '2001-06-06', 3, 6),
(7, 'Suresh Mishra', 'Anil Mishra', 'ME', '107 Street G', '9999999997', 20, '2003-07-07', 2, 7),
(8, 'Manoj Tiwari', 'Rakesh Tiwari', 'CE', '108 Street H', '9999999998', 21, '2002-08-08', 4, 8),
(9, 'Kunal Patel', 'Mohan Patel', 'CS', '109 Street I', '9999999999', 22, '2001-09-09', 2, 9),
(10, 'Naveen Reddy', 'Amit Reddy', 'EE', '110 Street J', '9999999910', 20, '2003-10-10', 2, 10),
(11, 'Harish Chandra', 'Suresh Chandra', 'ME', '111 Street K', '9999999911', 21, '2002-11-11', 4, 11),
(12, 'Vikrant Gupta', 'Ravi Gupta', 'CE', '112 Street L', '9999999912', 22, '2001-12-12', 1, 12),
(13, 'Anil Mehta', 'Raj Mehta', 'CS', '113 Street M', '9999999913', 20, '2003-01-13', 2, 13),
(14, 'Sunil Singh', 'Amit Singh', 'EE', '114 Street N', '9999999914', 21, '2002-02-14', 4, 14),
(15, 'Nitin Kumar', 'Suresh Kumar', 'ME', '115 Street O', '9999999915', 22, '2001-03-15', 3, 15),
(16, 'Ashok Jain', 'Ravi Jain', 'CE', '116 Street P', '9999999916', 20, '2003-04-16', 2, 16),
(17, 'Bharat Joshi', 'Mohan Joshi', 'CS', '117 Street Q', '9999999917', 21, '2002-05-17', 4, 17),
(18, 'Arjun Rao', 'Anil Rao', 'EE', '118 Street R', '9999999918', 22, '2001-06-18', 1, 18),
(19, 'Prashant Jha', 'Suresh Jha', 'ME', '119 Street S', '9999999919', 20, '2003-07-19', 2, 19),
(20, 'Ramesh Yadav', 'Ravi Yadav', 'CE', '120 Street T', '9999999920', 21, '2002-08-20', 4, 20),
(21, 'Sanjay Kapoor', 'Mohan Kapoor', 'CS', '121 Street U', '9999999921', 22, '2001-09-21', 1, 21),
(22, 'Mahesh Nair', 'Anil Nair', 'EE', '122 Street V', '9999999922', 20, '2003-10-22', 2, 22),
(23, 'Vinod Gupta', 'Suresh Gupta', 'ME', '123 Street W', '9999999923', 21, '2002-11-23', 4, 23),
(24, 'Aman Verma', 'Ravi Verma', 'CE', '124 Street X', '9999999924', 22, '2001-12-24', 3, 24),
(25, 'Abhishek Singh', 'Mohan Singh', 'CS', '125 Street Y', '9999999925', 20, '2003-01-25', 2, 25),
(26, 'Amit Sharma', 'Suresh Sharma', 'EE', '126 Street Z', '9999999926', 21, '2002-02-26', 4, 26),
(27, 'Ravi Patel', 'Ravi Patel', 'ME', '127 Street A', '9999999927', 22, '2001-03-27', 1, 27),
(28, 'Saurabh Kumar', 'Anil Kumar', 'CE', '128 Street B', '9999999928', 20, '2003-04-28', 2, 28),
(29, 'Vivek Ranjan', 'Mohan Ranjan', 'CS', '129 Street C', '9999999929', 21, '2002-05-29', 4, 29),
(30, 'Sumit Roy', 'Suresh Roy', 'EE', '130 Street D', '9999999930', 22, '2001-06-30', 1, 30),
(31, 'Rahul Joshi', 'Ravi Joshi', 'ME', '131 Street E', '9999999931', 20, '2003-07-31', 2, 31),
(32, 'Akash Verma', 'Mohan Verma', 'CE', '132 Street F', '9999999932', 21, '2002-08-01', 4, 32),
(33, 'Lokesh Rao', 'Anil Rao', 'CS', '133 Street G', '9999999933', 22, '2001-09-02', 1, 33),
(34, 'Shashank Mishra', 'Suresh Mishra', 'EE', '134 Street H', '9999999934', 20, '2003-10-03', 2, 34),
(35, 'Yash Gupta', 'Ravi Gupta', 'ME', '135 Street I', '9999999935', 21, '2002-11-04', 4, 35),
(36, 'Ajay Sinha', 'Mohan Sinha', 'CE', '136 Street J', '9999999936', 22, '2001-12-05', 1, 36),
(37, 'Kartik Tyagi', 'Anil Tyagi', 'CS', '137 Street K', '9999999937', 20, '2003-01-06', 2, 37),
(38, 'Akhil Sharma', 'Suresh Sharma', 'EE', '138 Street L', '9999999938', 21, '2002-02-07', 4, 38),
(39, 'Gaurav Mehta', 'Ravi Mehta', 'ME', '139 Street M', '9999999939', 22, '2001-03-08', 3, 39),
(40, 'Siddharth Singh', 'Mohan Singh', 'CE', '140 Street N', '9999999940', 20, '2003-04-09', 2, 40),
(41, 'Manish Jain', 'Anil Jain', 'CS', '141 Street O', '9999999941', 21, '2002-05-10', 4, 41),
(42, 'Pankaj Kumar', 'Suresh Kumar', 'EE', '142 Street P', '9999999942', 22, '2001-06-11', 3, 42),
(43, 'Rakesh Rao', 'Ravi Rao', 'ME', '143 Street Q', '9999999943', 20, '2003-07-12', 2, 43),
(44, 'Vinay Sharma', 'Mohan Sharma', 'CE', '144 Street R', '9999999944', 21, '2002-08-13', 4, 44),
(45, 'Kunal Singh', 'Anil Singh', 'CS', '145 Street S', '9999999945', 22, '2001-09-14', 1, 45),
(46, 'Suraj Reddy', 'Suresh Reddy', 'EE', '146 Street T', '9999999946', 20, '2003-10-15', 2, 46),
(47, 'Nilesh Gupta', 'Ravi Gupta', 'ME', '147 Street U', '9999999947', 21, '2002-11-16', 4, 47),
(48, 'Chirag Verma', 'Mohan Verma', 'CE', '148 Street V', '9999999948', 22, '2001-12-17', 3, 48),
(49, 'Rohit Yadav', 'Anil Yadav', 'CS', '149 Street W', '9999999949', 20, '2003-01-18', 2, 49),
(50, 'Ajay Kumar', 'Suresh Kumar', 'EE', '150 Street X', '9999999950', 21, '2002-02-19', 4, 50),
(51, 'Mohit Gupta', 'Ravi Gupta', 'ME', '151 Street Y', '9999999951', 22, '2001-03-20', 1, 51),
(52, 'Rakesh Yadav', 'Mohan Yadav', 'CE', '152 Street Z', '9999999952', 20, '2003-04-21', 2, 52),
(53, 'Nikhil Mehta', 'Anil Mehta', 'CS', '153 Street A', '9999999953', 21, '2002-05-22', 4, 53),
(54, 'Kunal Singh', 'Suresh Singh', 'EE', '154 Street B', '9999999954', 22, '2001-06-23', 2, 54),
(55, 'Manoj Pandey', 'Ravi Pandey', 'ME', '155 Street C', '9999999955', 20, '2003-07-24', 2, 55),
(56, 'Ajay Kumar', 'Mohan Kumar', 'CE', '156 Street D', '9999999956', 21, '2002-08-25', 4, 56),
(57, 'Sachin Joshi', 'Anil Joshi', 'CS', '157 Street E', '9999999957', 22, '2001-09-26', 3, 57),
(58, 'Piyush Verma', 'Suresh Verma', 'EE', '158 Street F', '9999999958', 20, '2003-10-27', 2, 58),
(59, 'Tarun Sharma', 'Ravi Sharma', 'ME', '159 Street G', '9999999959', 21, '2002-11-28', 4, 59),
(60, 'Ashwin Patel', 'Mohan Patel', 'CE', '160 Street H', '9999999960', 22, '2001-12-29', 2, 60),
(61, 'Rohit Verma', 'Anil Verma', 'CS', '161 Street I', '9999999961', 20, '2003-01-30', 2, 61),
(62, 'Sahil Mehta', 'Suresh Mehta', 'EE', '162 Street J', '9999999962', 21, '2002-02-31', 4, 62),
(63, 'Mohan Kumar', 'Ravi Kumar', 'ME', '163 Street K', '9999999963', 22, '2001-03-01', 1, 63),
(64, 'Ravi Singh', 'Mohan Singh', 'CE', '164 Street L', '9999999964', 20, '2003-04-02', 2, 64),
(65, 'Harsh Gupta', 'Anil Gupta', 'CS', '165 Street M', '9999999965', 21, '2002-05-03', 4, 65),
(66, 'Vishal Kumar', 'Suresh Kumar', 'EE', '166 Street N', '9999999966', 22, '2001-06-04', 1, 66),
(67, 'Praveen Nair', 'Ravi Nair', 'ME', '167 Street O', '9999999967', 20, '2003-07-05', 2, 67),
(68, 'Rahul Jain', 'Mohan Jain', 'CE', '168 Street P', '9999999968', 21, '2002-08-06', 4, 68),
(69, 'Yogesh Tyagi', 'Anil Tyagi', 'CS', '169 Street Q', '9999999969', 22, '2001-09-07', 1, 69),
(70, 'Aakash Roy', 'Suresh Roy', 'EE', '170 Street R', '9999999970', 20, '2003-10-08', 2, 70),
(71, 'Suresh Raina', 'Ravi Raina', 'ME', '171 Street S', '9999999971', 21, '2002-11-09', 4, 71),
(72, 'Sanjay Mishra', 'Mohan Mishra', 'CE', '172 Street T', '9999999972', 22, '2001-12-10', 3, 72),
(73, 'Karan Joshi', 'Anil Joshi', 'CS', '173 Street U', '9999999973', 20, '2003-01-11', 2, 73),
(74, 'Neeraj Kumar', 'Suresh Kumar', 'EE', '174 Street V', '9999999974', 21, '2002-02-12', 4, 74),
(75, 'Ashish Thakur', 'Ravi Thakur', 'ME', '175 Street W', '9999999975', 22, '2001-03-13', 3, 75),
(76, 'Umesh Mehta', 'Mohan Mehta', 'CE', '176 Street X', '9999999976', 20, '2003-04-14', 2, 76),
(77, 'Varun Sharma', 'Anil Sharma', 'CS', '177 Street Y', '9999999977', 21, '2002-05-15', 4, 77),
(78, 'Vikram Kumar', 'Suresh Kumar', 'EE', '178 Street Z', '9999999978', 22, '2001-06-16', 3, 78),
(79, 'Harish Rao', 'Ravi Rao', 'ME', '179 Street A', '9999999979', 20, '2003-07-17', 2, 79),
(80, 'Anand Verma', 'Mohan Verma', 'CE', '180 Street B', '9999999980', 21, '2002-08-18', 4, 80),
(81, 'Amit Mehta', 'Anil Mehta', 'CS', '181 Street C', '9999999981', 22, '2001-09-19', 1, 81),
(82, 'Kishore Singh', 'Suresh Singh', 'EE', '182 Street D', '9999999982', 20, '2003-10-20', 2, 82),
(83, 'Ravindra Kumar', 'Ravi Kumar', 'ME', '183 Street E', '9999999983', 21, '2002-11-21', 4, 83),
(84, 'Sahil Gupta', 'Mohan Gupta', 'CE', '184 Street F', '9999999984', 22, '2001-12-22', 2, 84),
(85, 'Puneet Thakur', 'Anil Thakur', 'CS', '185 Street G', '9999999985', 20, '2003-01-23', 2, 85),
(86, 'Vijay Sharma', 'Suresh Sharma', 'EE', '186 Street H', '9999999986', 21, '2002-02-24', 4, 86),
(87, 'Kiran Verma', 'Ravi Verma', 'ME', '187 Street I', '9999999987', 22, '2001-03-25', 1, 87),
(88, 'Naveen Kumar', 'Mohan Kumar', 'CE', '188 Street J', '9999999988', 20, '2003-04-26', 2, 88),
(89, 'Rajesh Singh', 'Anil Singh', 'CS', '189 Street K', '9999999989', 21, '2002-05-27', 4, 89),
(90, 'Abhinav Mehta', 'Suresh Mehta', 'EE', '190 Street L', '9999999990', 22, '2001-06-28', 2, 90),
(91, 'Alok Verma', 'Ravi Verma', 'ME', '191 Street M', '9999999991', 20, '2003-07-29', 2, 91),
(92, 'Rajat Singh', 'Mohan Singh', 'CE', '192 Street N', '9999999992', 21, '2002-08-30', 4, 92),
(93, 'Kamal Mehta', 'Anil Mehta', 'CS', '193 Street O', '9999999993', 22, '2001-09-01', 4, 93),
(94, 'Deepak Kumar', 'Suresh Kumar', 'EE', '194 Street P', '9999999994', 20, '2003-10-02', 3, 94),
(95, 'Gaurav Rao', 'Ravi Rao', 'ME', '195 Street Q', '9999999995', 21, '2002-11-03', 2, 95),
(96, 'Rohan Sharma', 'Mohan Sharma', 'CE', '196 Street R', '9999999996', 22, '2001-12-04', 1, 96),
(97, 'Vikash Thakur', 'Anil Thakur', 'CS', '197 Street S', '9999999997', 20, '2003-01-05', 2, 97),
(98, 'Hitesh Kumar', 'Suresh Kumar', 'EE', '198 Street T', '9999999998', 21, '2002-02-06', 4, 98),
(99, 'Aditya Gupta', 'Ravi Gupta', 'ME', '199 Street U', '9999999999', 22, '2001-03-07', 3, 99),
(100, 'Shivam Verma', 'Mohan Verma', 'CE', '200 Street V', '9999999000', 20, '2003-04-08', 2, 100);



select * from student;

INSERT INTO mess (mess_incharge_Id, monthly_avg_expense, mess_bf_timing, mess_dinner_timing, sunday_bf_timing) VALUES
('M001', '30000', '07:00-09:00', '19:00-21:00', '08:00-10:00'),
('M002', '32000', '07:00-09:00', '19:00-21:00', '08:00-10:00'),
('M003', '31000', '07:00-09:00', '19:00-21:00', '08:00-10:00'),
('M004', '33000', '07:00-09:00', '19:00-21:00', '08:00-10:00');


INSERT INTO staff (emp_name, emp_id, emp_address, emp_salary, emp_cellno, hostel_id, emp_designation, mess_incharge_Id) VALUES
('Amit Kumar', 1, 'Street 1', 50000, '1111111111', 1, 'Hostel Assistant', NULL),
('Ravi Sharma', 2, 'Street 2', 52000, '2222222222', 2, 'Hostel Assistant', NULL),
('Suresh Singh', 3, 'Street 3', 55000, '3333333333', 3, 'Hostel Assistant', NULL),
('Anil Verma', 4, 'Street 4', 51000, '4444444444', 4, 'Hostel Assistant', NULL),
('Mohan Gupta', 5, 'Street 5', 53000, '5555555555', 1, 'Hostel Assistant', NULL),
('Rajiv Kumar', 6, 'Street 6', 54000, '6666666666', 2, 'Hostel Assistant', NULL),
('Sunil Mishra', 7, 'Street 7', 56000, '7777777777', 3, 'Hostel Assistant', NULL),
('Vivek Singh', 8, 'Street 8', 58000, '8888888888', 4, 'Hostel Assistant', NULL),
('Alok Tiwari', 9, 'Street 9', 59000, '9999999999', 1, 'Hostel Assistant', NULL),
('Prakash Verma', 10, 'Street 10', 60000, '1010101010', 2, 'Hostel Assistant', NULL),
('Kishore Sharma', 11, 'Street 11', 62000, '1112223333', 1, 'Warden', NULL),
('Rahul Jain', 12, 'Street 12', 64000, '4445556666', 2, 'Warden', NULL),
('Sunita Devi', 13, 'Street 13', 65000, '7778889999', 3, 'Warden', NULL),
('Manisha Verma', 14, 'Street 14', 67000, '9991112222', 4, 'Warden', NULL);


INSERT INTO visitor (visitor_id, student_id, visitor_name, visitor_time_in, visitor_time_out, date_entering) VALUES
(1, 1, 'Amit Sharma', '09:30', '10:30', '2024-06-03'),
(2, 3, 'Ravi Verma', '14:00', '16:00', '2024-06-04'),
(3, 5, 'Suresh Singh', '11:45', '12:30', '2024-06-05'),
(4, 7, 'Anil Kumar', '15:20', '17:00', '2024-06-06'),
(5, 9, 'Mohan Gupta', '10:00', '11:00', '2024-06-07'),
(6, 11, 'Rajiv Tiwari', '13:30', '15:00', '2024-06-08'),
(7, 13, 'Sunil Mishra', '09:00', '10:30', '2024-06-09'),
(8, 15, 'Vivek Singh', '16:00', '17:30', '2024-06-10'),
(9, 17, 'Alok Tiwari', '14:45', '15:45', '2024-06-11'),
(10, 19, 'Prakash Verma', '11:30', '12:15', '2024-06-12');


INSERT INTO furniture (furniture_id, room_id, furniture_type) VALUES
('FUR001', 1, 'Bed'),
('FUR002', 1, 'Chair'),
('FUR003', 1, 'Table'),
('FUR004', 2, 'Bed'),
('FUR005', 2, 'Chair'),
('FUR006', 2, 'Table'),
('FUR007', 3, 'Bed'),
('FUR008', 3, 'Chair'),
('FUR009', 3, 'Table'),
('FUR010', 4, 'Bed'),
('FUR011', 4, 'Chair'),
('FUR012', 4, 'Table'),
('FUR013', 5, 'Bed'),
('FUR014', 5, 'Chair'),
('FUR015', 5, 'Table'),
('FUR016', 6, 'Bed'),
('FUR017', 6, 'Chair'),
('FUR018', 6, 'Table'),
('FUR019', 7, 'Bed'),
('FUR020', 7, 'Chair'),
('FUR021', 7, 'Table'),
('FUR022', 8, 'Bed'),
('FUR023', 8, 'Chair'),
('FUR024', 8, 'Table'),
('FUR025', 9, 'Bed'),
('FUR026', 9, 'Chair'),
('FUR027', 9, 'Table'),
('FUR028', 10, 'Bed'),
('FUR029', 10, 'Chair'),
('FUR030', 10, 'Table');




INSERT INTO Fee (fee_month_year, fee_status, student_id, student_name) VALUES
('2024-01', 'Paid', 1, 'Rajesh Kumar'),
('2024-01', 'Paid', 2, 'Ankit Verma'),
('2024-01', 'Not Paid', 3, 'Vikas Singh'),
('2024-01', 'Paid', 4, 'Rohit Sharma'),
('2024-01', 'Not Paid', 5, 'Deepak Chawla'),
('2024-01', 'Paid', 6, 'Prateek Ghosh'),
('2024-01', 'Not Paid', 7, 'Suresh Mishra'),
('2024-01', 'Paid', 8, 'Manoj Tiwari'),
('2024-01', 'Paid', 9, 'Kunal Patel'),
('2024-01', 'Not Paid', 10, 'Naveen Reddy'),
('2024-01', 'Paid', 11, 'Harish Chandra'),
('2024-01', 'Not Paid', 12, 'Vikrant Gupta'),
('2024-01', 'Paid', 13, 'Anil Mehta'),
('2024-01', 'Paid', 14, 'Sunil Singh'),
('2024-01', 'Not Paid', 15, 'Nitin Kumar'),
('2024-01', 'Paid', 16, 'Ashok Jain'),
('2024-01', 'Not Paid', 17, 'Bharat Joshi'),
('2024-01', 'Paid', 18, 'Arjun Rao'),
('2024-01', 'Paid', 19, 'Prashant Jha'),
('2024-01', 'Not Paid', 20, 'Ramesh Yadav'),
('2024-01', 'Paid', 21, 'Sanjay Kapoor'),
('2024-01', 'Not Paid', 22, 'Mahesh Nair'),
('2024-01', 'Paid', 23, 'Vinod Gupta'),
('2024-01', 'Paid', 24, 'Aman Verma'),
('2024-01', 'Not Paid', 25, 'Abhishek Singh'),
('2024-01', 'Not Paid', 26, 'Amit Sharma'),
('2024-01', 'Paid', 27, 'Ravi Patel'),
('2024-01', 'Paid', 28, 'Saurabh Kumar'),
('2024-01', 'Not Paid', 29, 'Vivek Ranjan'),
('2024-01', 'Paid', 30, 'Sumit Roy'),
('2024-01', 'Paid', 31, 'Rahul Joshi'),
('2024-01', 'Not Paid', 32, 'Akash Verma'),
('2024-01', 'Paid', 33, 'Lokesh Rao'),
('2024-01', 'Paid', 34, 'Shashank Mishra'),
('2024-01', 'Not Paid', 35, 'Yash Gupta'),
('2024-01', 'Paid', 36, 'Ajay Sinha'),
('2024-01', 'Not Paid', 37, 'Kartik Tyagi'),
('2024-01', 'Paid', 38, 'Akhil Sharma'),
('2024-01', 'Paid', 39, 'Gaurav Mehta'),
('2024-01', 'Not Paid', 40, 'Siddharth Singh'),
('2024-01', 'Paid', 41, 'Manish Jain'),
('2024-01', 'Paid', 42, 'Pankaj Kumar'),
('2024-01', 'Not Paid', 43, 'Rakesh Rao'),
('2024-01', 'Paid', 44, 'Nitin Verma'),
('2024-01', 'Paid', 45, 'Shivam Thakur'),
('2024-01', 'Not Paid', 46, 'Anuj Kumar'),
('2024-01', 'Paid', 47, 'Ashish Roy'),
('2024-01', 'Paid', 48, 'Suraj Gupta'),
('2024-01', 'Not Paid', 49, 'Rajat Mehta'),
('2024-01', 'Paid', 50, 'Rohan Sharma'),
('2024-01', 'Paid', 51, 'Mohit Gupta'),
('2024-01', 'Not Paid', 52, 'Rakesh Yadav'),
('2024-01', 'Paid', 53, 'Nikhil Mehta'),
('2024-01', 'Paid', 54, 'Kunal Singh'),
('2024-01', 'Not Paid', 55, 'Manoj Pandey'),
('2024-01', 'Paid', 56, 'Ajay Kumar'),
('2024-01', 'Not Paid', 57, 'Sachin Joshi'),
('2024-01', 'Paid', 58, 'Piyush Verma'),
('2024-01', 'Paid', 59, 'Tarun Sharma'),
('2024-01', 'Not Paid', 60, 'Ashwin Patel'),
('2024-01', 'Paid', 61, 'Rohit Verma'),
('2024-01', 'Paid', 62, 'Sahil Mehta'),
('2024-01', 'Not Paid', 63, 'Mohan Kumar'),
('2024-01', 'Paid', 64, 'Ravi Singh'),
('2024-01', 'Paid', 65, 'Harsh Gupta'),
('2024-01', 'Not Paid', 66, 'Vishal Kumar'),
('2024-01', 'Paid', 67, 'Praveen Nair'),
('2024-01', 'Paid', 68, 'Rahul Jain'),
('2024-01', 'Not Paid', 69, 'Yogesh Tyagi'),
('2024-01', 'Paid', 70, 'Aakash Roy'),
('2024-01', 'Paid', 71, 'Suresh Raina'),
('2024-01', 'Not Paid', 72, 'Sanjay Mishra'),
('2024-01', 'Paid', 73, 'Karan Joshi'),
('2024-01', 'Paid', 74, 'Neeraj Kumar'),
('2024-01', 'Not Paid', 75, 'Ashish Thakur'),
('2024-01', 'Paid', 76, 'Umesh Mehta'),
('2024-01', 'Paid', 77, 'Varun Sharma'),
('2024-01', 'Not Paid', 78, 'Vikram Kumar'),
('2024-01', 'Paid', 79, 'Harish Rao'),
('2024-01', 'Paid', 80, 'Anand Verma'),
('2024-01', 'Not Paid', 81, 'Alok Verma'),
('2024-01', 'Paid', 82, 'Kishore Singh'),
('2024-01', 'Paid', 83, 'Ravindra Kumar'),
('2024-01', 'Paid', 84, 'Sahil Gupta'),
('2024-01', 'Not Paid', 85, 'Puneet Thakur'),
('2024-01', 'Paid', 86, 'Vijay Sharma'),
('2024-01', 'Not Paid', 87, 'Kiran Verma'),
('2024-01', 'Paid', 88, 'Naveen Kumar'),
('2024-01', 'Paid', 89, 'Rajesh Singh'),
('2024-01', 'Not Paid', 90, 'Abhinav Mehta'),
('2024-01', 'Paid', 91, 'Alok Verma'),
('2024-01', 'Paid', 92, 'Rajat Singh'),
('2024-01', 'Not Paid', 93, 'Kamal Mehta'),
('2024-01', 'Paid', 94, 'Sandeep Kumar'),
('2024-01', 'Paid', 95, 'Aman Gupta'),
('2024-01', 'Not Paid', 96, 'Dinesh Yadav'),
('2024-01', 'Paid', 97, 'Mukul Sharma'),
('2024-01', 'Paid', 98, 'Nitin Thakur'),
('2024-01', 'Not Paid', 99, 'Prakash Mehta'),
('2024-01', 'Paid', 100, 'Karan Joshi');





-- List the students who have paid the hostel 

SELECT s.student_id, s.student_name, f.fee_status
FROM student s
JOIN Fee f ON s.student_id = f.student_id
WHERE f.fee_status = 'Paid';




-- List the student who have not paid the hostel fee

SELECT s.student_id, s.student_name, f.fee_status
FROM student s
JOIN Fee f ON s.student_id = f.student_id
WHERE f.fee_status = 'Not Paid';




-- Calculate the total annual expense incurred by all the hostels

SELECT SUM(annual_expenses) AS total_annual_expenses
FROM boys_hostel;




-- List students grouped by department who have not paid their hostel fees.

SELECT s.department, COUNT(s.student_id) AS not_paid_count
FROM student s
JOIN Fee f ON s.student_id = f.student_id
WHERE f.fee_status = 'Not Paid'
GROUP BY s.department;




-- List students residing in Shayadri Hostel who have not paid their hostel fees.

SELECT s.student_id, s.student_name, b.locationn AS hostel_name, f.fee_status
FROM student s
JOIN boys_hostel b ON s.hostel_id = b.hostel_id
JOIN Fee f ON s.student_id = f.student_id
WHERE b.locationn = 'Shayadri' AND f.fee_status = 'Not Paid';




-- Calculate the total salary paid to all staff members across all hostels.

SELECT SUM(emp_salary) AS total_salary
FROM staff;



-- To track the furniture distribution across various rooms.

SELECT 
    r.room_id,
    r.name_of_student,
    r.hostel_id,
    f.furniture_id,
    f.furniture_type
FROM 
    room r
INNER JOIN 
    furniture f ON r.room_id = f.room_id
ORDER BY 
    r.room_id;
    
    
    
    
    
    -- List all students who have not paid their hostel fees, along with their corresponding hostel names and the total number of students in each hostel.
    
    SELECT 
    s.student_id,
    s.student_name,
    s.department,
    bh.locationn AS hostel_name,
    (SELECT COUNT(*) 
     FROM student s2 
     WHERE s2.hostel_id = s.hostel_id) AS total_students
FROM 
    student s
JOIN 
    boys_hostel bh ON s.hostel_id = bh.hostel_id
WHERE 
    s.student_id NOT IN (SELECT student_id 
                         FROM Fee 
                         WHERE fee_status = 'Paid');





-- Furniture distribution across various rooms

SELECT 
    r.room_id,
    r.name_of_student,
    r.hostel_id,
    GROUP_CONCAT(f.furniture_type SEPARATOR ', ') AS furniture_distribution
FROM 
    room r
JOIN 
    furniture f ON r.room_id = f.room_id 
GROUP BY 
    r.room_id, r.name_of_student, r.hostel_id
ORDER BY 
    r.room_id;









