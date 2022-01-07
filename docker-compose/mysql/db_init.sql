create table users
(
    id         int auto_increment primary key,
    name       char(255)                          not null,
    email      char(255)                          not null,
    password   char(255)                          not null,
    created_at datetime default CURRENT_TIMESTAMP not null,
    updated_at  datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

