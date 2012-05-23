-- CREATE STANDARD TABLES FOR LawDB.db

CREATE TABLE Law (
       id integer primary key autoincrement,
       title text not null,
       lastdate date not null,
       presc text
);
CREATE TABLE LawVersion (
       lawid integer references Law(id),
       numid text primary key not null,
       date date not null
);
CREATE TABLE Article (
       numid text references LawVersion(numid) not null,
       lawid integer references Law(id) not null,
       numord integer not null,
       content text not null,
       primary key (numid,numord) 
);
CREATE TABLE Preamble (
       numid text references LawVersion(numid),
       lawid integer references Law(id),
       text text not null,
       primary key (numid)
);
CREATE TABLE Appendix (
       numid text references LawVersion(numid),
       lawid integer references Law(id),
       numart integer references Article(numord),
       text text not null,
       primary key (numid,numart)
);

-- CREATE FULL-TEXT SEARCH (FTS) VIRTUAL TABLES

CREATE VIRTUAL TABLE Law_idx USING FTS4 (
       content="Law",id,title,lastdate,presc);
CREATE VIRTUAL TABLE Article_idx USING FTS4 (
       content="Article",numid,lawid,numord,content);

-- CREATE TRIGGERS FOR AUTOMATED UPDATES

CREATE TRIGGER Law_bu BEFORE UPDATE ON Law BEGIN
  DELETE FROM Law_idx WHERE docid = old.rowid;
END;
CREATE TRIGGER Article_bu BEFORE UPDATE ON Article BEGIN
  DELETE FROM Article_idx WHERE docid = old.rowid;
END;

CREATE TRIGGER Law_bd BEFORE DELETE ON Law BEGIN
  DELETE FROM Law_idx WHERE docid = old.rowid;
END;
CREATE TRIGGER Article_bd BEFORE DELETE ON Article BEGIN
  DELETE FROM Article_idx WHERE docid = old.rowid;
END;

CREATE TRIGGER Law_au AFTER UPDATE ON Law BEGIN
  INSERT INTO Law_idx(docid,title,lastdate,presc) VALUES
  (new.rowid,new.title,new.lastdate,new.presc);
END;
CREATE TRIGGER Article_au AFTER UPDATE ON Article BEGIN
  INSERT INTO Article_idx(docid,content,numid,lawid,numord) VALUES
  (new.rowid,new.content,new.numid,new.lawid,new.numord);
END;

CREATE TRIGGER Law_ai AFTER INSERT ON Law BEGIN
  INSERT INTO Law_idx(docid,title,lastdate,presc) VALUES
  (new.rowid,new.title,new.lastdate,new.presc);
END;
CREATE TRIGGER Article_ai AFTER INSERT ON Article BEGIN
  INSERT INTO Article_idx(docid,content,numid,lawid,numord) VALUES
  (new.rowid,new.content,new.numid,new.lawid,new.numord);
END;

