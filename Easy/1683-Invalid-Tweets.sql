DROP TABLE IF EXISTS Tweets;

CREATE Table Tweets(
    tweet_id int,
    content varchar
);

INSERT INTO Tweets(tweet_id, content) VALUES
('1', 'Let us Code'),
('2', 'More than fifteen chars are here!');
SELECT * FROM Tweets;
SELECT tweet_id FROM Tweets WHERE LENGTH(content)>15;