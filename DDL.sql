create table Member
    (memberID        SERIAL, 
     name        varchar(255) NOT NULL, 
     address        varchar(255) NOT NULL,
     gender             varchar(15),
     primary key (memberID)
    );

create table Personal_Trainer
    (trainerID        SERIAL, 
     name        varchar(255) NOT NULL, 
     gender             varchar(15),
     primary key (trainerID)
    );

create table Group_Fitness_Class
    (title        varchar(255) NOT NULL, 
     intensity             varchar(15),
     primary key (title)
    );


create table Location
    (title        varchar(255) NOT NULL, 
     location        varchar(255) NOT NULL, 
     primary key (title, location),
     foreign key (title) references Group_Fitness_Class
    );

create table Teaches
    (trainerID        SERIAL,
     title        varchar(255) NOT NULL, 
     primary key (title),
     foreign key (title) references Group_Fitness_Class,
     foreign key (trainerID) references Personal_Trainer
    );

create table Certification
    (trainerID        SERIAL,
     certification        varchar(255) NOT NULL, 
     primary key (trainerID, certification),
     foreign key (trainerID) references Personal_Trainer
	 );

create table Fitness_Plan
    (planName        varchar(255) NOT NULL, 
     workoutPlan     varchar(255) NOT NULL,
     mealPlan        varchar(255) NOT NULL,  
     primary key (planName)
    );

create table Is_On
    (memberID        int,
     planName        varchar(255) NOT NULL, 
     startWeight     int,
     goalWeight      int,
     primary key (memberID),
     foreign key (memberID) references Member,
     foreign key (planName) references Fitness_Plan
    );


create table Takes
    (memberID        int,
     title           varchar(255) NOT NULL, 
     primary key (memberID, title),
     foreign key (memberID) references Member
    );


create table Emergency_Contact
    (name            varchar(255) NOT NULL,
     memberID        int,
     relationship    varchar(255) NOT NULL,
     phoneNumber     varchar(15) NOT NULL, 
     primary key (name),
     foreign key (memberID) references Member
    );

create table Trains
    (memberID        int,
     trainerID       int,
     hoursPerWeek    int,
     primary key (memberID),
     foreign key (memberID) references Member,
     foreign key (trainerID) references Personal_Trainer
    );








