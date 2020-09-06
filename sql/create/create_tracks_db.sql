create table Artist
(
    artist_id integer not null
    auto_increment,
    name varchar
    (255),
    primary key
    (artist_id)
) engine = INNODB;

    create table Album
    (
        album_id integer not null
        auto_increment,
    title varchar
        (255),
    artist_id integer,
    primary key
        (album_id),
    index using btree
        (title),
    
    constraint foreign key
        (artist_id)
    	references Artist
        (artist_id)
    	on
        delete cascade on
        update CASCADE
    ) ENGINE = INNODB;

        CREATE TABLE Genre
        (
            genre_id INTEGER NOT NULL
            AUTO_INCREMENT,
    name VARCHAR
            (255),
    PRIMARY KEY
            (genre_id),
    INDEX USING BTREE
            (name)
) ENGINE = InnoDb;

            CREATE TABLE Track
            (
                track_id INTEGER NOT NULL
                AUTO_INCREMENT,
    title VARCHAR
                (255),
    len INTEGER,
    count INTEGER,
    album_id INTEGER,
    genre_id INTEGER,
    PRIMARY KEY
                (track_id),
    INDEX USING BTREE
                (title),
    
    CONSTRAINT FOREIGN KEY
                (album_id) REFERENCES Album
                (album_id)
    	ON
                DELETE CASCADE ON
                UPDATE CASCADE,
   	CONSTRAINT FOREIGN KEY
                (genre_id) REFERENCES Genre
                (genre_id)
    	ON
                DELETE CASCADE ON
                UPDATE CASCADE
) ENGINE = InnoDB;
