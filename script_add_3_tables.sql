DROP TABLE IF EXISTS short_videos;
CREATE TABLE short_videos
(
    id SERIAL,
    user_id BIGINT
    UNSIGNED NOT NULL,
    media_type_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR
    (255),    	
    size INT,
    created_at DATETIME DEFAULT NOW
    (),

    FOREIGN KEY
    (user_id) REFERENCES users
    (id),
    FOREIGN KEY
    (media_type_id) REFERENCES media_types
    (id)
);

    DROP TABLE IF EXISTS podcasts;
    CREATE TABLE podcasts
    (
        id SERIAL,
        user_id BIGINT
        UNSIGNED NOT NULL,
    body text,
    media_type_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW
        (),
    updated_at DATETIME ON
        UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY
        (user_id) REFERENCES users
        (id),
    FOREIGN KEY
        (media_type_id) REFERENCES media_types
        (id)
);


        DROP TABLE IF EXISTS news;
        CREATE TABLE news
        (
            id SERIAL,
            user_id BIGINT
            UNSIGNED NOT NULL,
    body text,
    created_at DATETIME DEFAULT NOW
            (),
    updated_at DATETIME ON
            UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY
            (user_id) REFERENCES users
            (id)
);