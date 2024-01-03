USE spotify;
INSERT INTO users (
        email,
        password,
        username,
        birth_date,
        gender,
        country,
        postal_code
    )
VALUES (
        'carlos@gmail.com',
        '12345',
        'carlos',
        '1986-01-01',
        'M',
        'España',
        '08001'
    ),
    (
        'juan@gmail.com',
        '54321',
        'juan',
        '1986-05-15',
        'M',
        'Andorra',
        '12231'
    ),
    (
        'alba@gmail.com',
        '98786',
        'alba',
        '1988-10-30',
        'F',
        'Portugal',
        '999982'
    );
INSERT INTO subscriptions (
        user_id,
        start_date,
        renewal_date,
        payment_method
    )
VALUES (1, '2023-01-01', '2023-02-01', 'Credit Card'),
    (2, '2023-03-15', '2023-04-15', 'PayPal'),
    (3, '2023-05-20', '2023-06-20', 'Credit Card');
INSERT INTO credit_cards (
        card_number,
        expiration_month,
        expiration_year,
        security_code
    )
VALUES ('1111222233334444', 12, 2025, 123),
    ('5555666677778888', 8, 2024, 456),
    ('9999000011112222', 5, 2023, 789);
INSERT INTO paypal_accounts (user_id, paypal_username)
VALUES (2, 'juanPayPal'),
    (3, 'albaPayPal'),
    (1, 'carlosPayPal');
INSERT INTO payments (
        subscription_id,
        payment_date,
        order_number,
        total_amount
    )
VALUES (1, '2023-02-01', '9000123', 9.99),
    (2, '2023-04-15', '9000232', 17.00),
    (3, '2023-06-20', '9000112', 9.99);
INSERT INTO playlists (
        title,
        number_of_songs,
        playlist_identifier,
        creation_date,
        is_deleted,
        deletion_date
    )
VALUES (
        'Favoritas',
        20,
        'pl00012',
        '2023-01-10',
        false,
        NULL
    ),
    (
        'Estudiar',
        15,
        'pl00034',
        '2023-03-25',
        false,
        NULL
    ),
    (
        'Relax',
        30,
        'pl00032',
        '2023-05-05',
        true,
        '2024-01-01'
    );
INSERT INTO shared_playlists (playlist_id, user_id, song_added_date)
VALUES (1, 2, '2023-01-15'),
    (2, 3, '2023-04-01'),
    (3, 1, '2023-05-10');
INSERT INTO albums (title, release_year, cover_image)
VALUES ('Ace of Spades', 2022, 'image.jpg'),
    ('Paranoid', 2023, 'image.jpg'),
    ('Master of Puppets', 2024, 'image.jpg');
INSERT INTO songs (title, duration, play_count, album_id)
VALUES ('Ace of Spades', 240, 324000000, 1),
    ('Paranoid', 180, 123000000, 2),
    ('Master of Puppets', 300, 342000000, 3);
INSERT INTO artists (name, artist_image)
VALUES ('Motorhead', 'image1.jpg'),
    ('Black Sabath', 'image2.jpg'),
    ('Metallica', 'image3.jpg');
INSERT INTO user_follows_artist (user_id, artist_id)
VALUES (1, 2),
    (2, 3),
    (3, 1);
INSERT INTO related_artists (artist_id, related_artist_id)
VALUES (1, 2),
    (2, 3),
    (3, 1);
INSERT INTO user_favorites (user_id, song_id)
VALUES (1, 1),
    (2, 3),
    (3, 2);