CREATE TABLE tb_schedule(
    id SERIAL PRIMARY KEY,
    title VARCHAR(120) NOT NULL,
    description TEXT,
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'SCHEDULED',
    username VARCHAR(80) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    CONSTRAINT ch_status CHECK ( status IN ('SCHEDULED', 'CANCELED', 'COMPLETED')),
    CONSTRAINT ch_interval CHECK (start_date < end_date)
);