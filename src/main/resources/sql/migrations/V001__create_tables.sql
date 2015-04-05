create table raffle (
  raffleId integer identity primary key,
  cause varchar(255),
  startdate date,
  enddate date
);

create table player (
  playerId integer identity primary key,
  raffleId integer,
  firstname varchar(255),
  lastname varchar(255),
  gender varchar(1),
  email varchar(255),
  tickets integer
);

create table ticket (
  ticketId integer identity primary key,
  playerId integer,
  raffleId integer,
  number bigint,
  purchaseDate date
);

alter table ticket add foreign key (playerId) references player(playerId);
alter table ticket add foreign key (raffleId) references raffle(raffleId);
