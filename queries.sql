CREATE TABLE landwirt (
    lwnr INTEGER,
    hofname VARCHAR(50),
    strasse VARCHAR(50),
    hausnr VARCHAR(4),
    plz CHAR(5),
    ort VARCHAR(50),
    CONSTRAINT pklandwirt PRIMARY KEY (lwnr)
);

CREATE TABLE getreidearten (
    genr INTEGER,
    name VARCHAR(50),
    anbauzeit DATE,
    CONSTRAINT pkgetreidearten PRIMARY KEY (genr)
);

CREATE TABLE mehl_und_schrote (
    msnr INTEGER,
    mehl VARCHAR(50),
    typ VARCHAR(50),
    menge INTEGER,
    CONSTRAINT pkmehlundschrote PRIMARY KEY (msnr)
);

CREATE TABLE tour (
    tnr INTEGER,
    datum DATE,
    ort VARCHAR(50),
    beschreibung TEXT,
    CONSTRAINT pktour PRIMARY KEY (tnr)
);

CREATE TABLE kunde (
    kundnr INTEGER,
    name VARCHAR(50),
    adresse VARCHAR(50),
    plz CHAR(5),
    ort VARCHAR(50),
    email VARCHAR(50),
    telefonnummer INTEGER,
    CONSTRAINT pkkunde PRIMARY KEY (kundnr)
);

CREATE TABLE produkt (
    prbnr INTEGER,
    msnr INTEGER,
    chargenr VARCHAR(50),
    mindesthaltbarkeitsdatum DATE,
    menge INTEGER,
    herstellungsdatum DATE,
    ablaufdatum DATE,
    verfugbarkeit BOOLEAN,
    CONSTRAINT pkprodukt PRIMARY KEY (prbnr),
    CONSTRAINT fk_msnr FOREIGN KEY (msnr) REFERENCES mehl_und_schrote(msnr)
);

CREATE TABLE lieferung_lw (
    lwnr INTEGER,
    genr INTEGER,
    datum DATE,
    menge INTEGER,
    PRIMARY KEY (lwnr, genr),
    CONSTRAINT fk_llnr FOREIGN KEY (lwnr) REFERENCES landwirt(lwnr),
    CONSTRAINT fk_genr FOREIGN KEY (genr) REFERENCES getreidearten(genr)
);

CREATE TABLE rechnung_lw (
    rlwnr INTEGER,
    lwnr INTEGER,
    datum DATE,
    adressat VARCHAR(255),
    CONSTRAINT pkrlnr PRIMARY KEY (rlwnr),
    CONSTRAINT fk_lwnr FOREIGN KEY (lwnr) REFERENCES landwirt(lwnr)
);

CREATE TABLE rechnungsposition_lw (
    rlwnr INTEGER,
    lwnr INTEGER,
    datum DATE,
    PRIMARY KEY (rlwnr, lwnr, datum),
    CONSTRAINT fk_rlnr_lw FOREIGN KEY (rlwnr) REFERENCES rechnung_lw(rlwnr),
    CONSTRAINT fk_lwnr_lw FOREIGN KEY (lwnr) REFERENCES landwirt(lwnr)
);

CREATE TABLE verkauf (
    vknr INTEGER,
    prbnr INTEGER,
    verkauft DATE,
    menge INTEGER,
    versandart VARCHAR(50),
    datum DATE,
    bestand INTEGER,
    CONSTRAINT pkverkauf PRIMARY KEY (vknr),
    CONSTRAINT fk_prbnr FOREIGN KEY (prbnr) REFERENCES produkt(prbnr)
);

CREATE TABLE rechnung_kunde (
    rknr INTEGER,
    kundnr INTEGER,
    datum DATE,
    adressat VARCHAR(255),
    CONSTRAINT pkrknr PRIMARY KEY (rknr),
    CONSTRAINT fk_kundnr FOREIGN KEY (kundnr) REFERENCES kunde(kundnr)
);

CREATE TABLE lieferung_kunde (
    linr INTEGER,
    prbnr INTEGER,
    tnr INTEGER,
    gelieferte_menge INTEGER,
    lieferdatum DATE,
    CONSTRAINT pklieferung PRIMARY KEY (linr),
    CONSTRAINT fk_prbnr_lief FOREIGN KEY (prbnr) REFERENCES produkt(prbnr),
    CONSTRAINT fk_tnr_lief FOREIGN KEY (tnr) REFERENCES tour(tnr)
);

CREATE TABLE rechnungsposition_kunde (
    rknr INTEGER,
    prbnr INTEGER,
    datum DATE,
    PRIMARY KEY (rknr, prbnr, datum),
    CONSTRAINT fk_rknr FOREIGN KEY (rknr) REFERENCES rechnung_kunde(rknr),
    CONSTRAINT fk_prbnr_rk FOREIGN KEY (prbnr) REFERENCES produkt(prbnr)
);

