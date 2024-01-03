USE youtube;
INSERT INTO users (
        user_id,
        email,
        password,
        user_name,
        birthdate,
        gender,
        country,
        postal_code
    )
VALUES (
        1,
        'carlos@google.com',
        '123456',
        'Carlos',
        '1990-05-15',
        'Male',
        'Spain',
        '08001'
    ),
    (
        2,
        'ana@google.com',
        '654321',
        'Ana',
        '1988-08-22',
        'Female',
        'Spain',
        '08002'
    ),
    (
        3,
        'juan@google.com',
        'qwerty',
        'Juan',
        '1995-02-10',
        'Male',
        'Spain',
        '08003'
    );
INSERT INTO videos (
        video_id,
        user_id,
        title,
        description,
        size,
        file_name,
        duration,
        thumbnail,
        views,
        likes,
        dislikes,
        status,
        upload_date
    )
VALUES (
        1,
        1,
        'Tutorial SQL',
        'Aprende SQL en 1 semana',
        120.5,
        'tutorialsql.mp4',
        45.2,
        'thumbnail.jpg',
        2234,
        2342,
        2,
        'public',
        '2023-01-10 12:30:00'
    ),
    (
        2,
        2,
        'Node, de 0 a Experto',
        'Curso de Node para principiantes',
        180.2,
        'videonode.mp4',
        20.5,
        'thumbnail.jpg',
        5645,
        2344,
        5,
        'private',
        '2023-02-15 18:45:00'
    ),
    (
        3,
        3,
        'Iron Maiden - Fear of the dark',
        'Videoclip Iron Maiden, HD 4K',
        230.7,
        'videoim.mp4',
        4.37,
        'thumbnail.jpg',
        117000000,
        3422331,
        10,
        'hidden',
        '2023-03-20 20:15:00'
    );
INSERT INTO tags (tag_id, tag_name)
VALUES (1, 'Tutorial'),
    (2, 'Curso'),
    (3, 'Música');
INSERT INTO channels (
        channel_id,
        user_id,
        channel_name,
        description,
        creation_date
    )
VALUES (
        1,
        1,
        'Carlos Tuber',
        'Canal de programacion web',
        '2022-12-01'
    ),
    (
        2,
        2,
        'TutoDEV',
        'Canal de tutoriales',
        '2023-01-05'
    ),
    (
        3,
        3,
        'RockFM',
        'Disfruta de la música de RockFM',
        '2023-02-10'
    );
INSERT INTO subscriptions (user_id, channel_id, subscription_date)
VALUES (2, 1, '2023-01-12 09:00:00'),
    (3, 2, '2023-02-20 15:30:00'),
    (1, 3, '2023-03-05 18:00:00');
INSERT INTO video_likes_dislikes (user_id, video_id, type, action_date)
VALUES (1, 1, 'like', '2023-01-15 14:00:00'),
    (2, 2, 'like', '2023-02-18 20:45:00'),
    (3, 3, 'like', '2023-03-25 10:30:00');
INSERT INTO playlists (
        playlist_id,
        user_id,
        playlist_name,
        creation_date,
        status
    )
VALUES (
        1,
        1,
        'Favoritos de Carlos',
        '2023-01-20',
        'public'
    ),
    (2, 2, 'Tutoriales', '2023-02-22', 'private'),
    (3, 3, 'Musica', '2023-03-30', 'public');
INSERT INTO comments (
        comment_id,
        user_id,
        video_id,
        comment_text,
        comment_date
    )
VALUES (
        1,
        2,
        1,
        'Gran tutorial, gracias Carlos!',
        '2023-01-18 16:20:00'
    ),
    (
        2,
        3,
        2,
        'Excelente curso. He aprendido muchisimo!.',
        '2023-02-25 12:10:00'
    ),
    (
        3,
        1,
        3,
        'Un clasico que de la banda que siempre suena bien. De mis favoritas.',
        '2023-03-28 21:45:00'
    );
INSERT INTO comment_likes_dislikes (user_id, comment_id, type, action_date)
VALUES (2, 1, 'like', '2023-01-20 10:15:00'),
    (3, 2, 'like', '2023-02-28 08:30:00'),
    (1, 3, 'like', '2023-03-31 14:00:00');