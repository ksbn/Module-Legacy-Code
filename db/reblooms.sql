CREATE TABLE reblooms (
    id SERIAL PRIMARY KEY,
    bloom_id BIGINT NOT NULL REFERENCES blooms(id),
    rebloomer_id INT NOT NULL REFERENCES users(id),
    rebloom_timestamp TIMESTAMP NOT NULL,
    UNIQUE(bloom_id, rebloomer_id)
);