CREATE TABLE vector.logs
(
    `bytes` UInt8,
    `event_time`  DateTime,
    `host` String,
    `method` String,
    `protocol` String,
    `referer` String,
    `request` String,
    `status` String,
    `user-identifier` String,
)
ENGINE = MergeTree
PARTITION BY toStartOfHour(event_time)
ORDER BY (event_time)

