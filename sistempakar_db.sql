/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `tabelgejala` (
  `KodeGejala` char(7) NOT NULL,
  `NamaGejala` char(23) DEFAULT NULL,
  PRIMARY KEY (`KodeGejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `tabelgejala` DISABLE KEYS */;
INSERT INTO `tabelgejala` (`KodeGejala`, `NamaGejala`) VALUES
	('G0001', 'Demam'),
	('G0002', 'Batuk'),
	('G0003', 'Konjungtivitas'),
	('G0004', 'Ingusan'),
	('G0005', 'Kulit Berbintik'),
	('G0006', 'Sakit Kepala'),
	('G0007', 'Pegal-pegal'),
	('G0008', 'Kedinginan'),
	('G0009', 'Sakit Tenggorokan'),
	('G0010', 'Bersin-bersin'),
	('G0011', 'Pembengkakan Kelenjar'),
	('G0012', 'Sakit Perut');
/*!40000 ALTER TABLE `tabelgejala` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `tabelpenyakit` (
  `KodePenyakit` varchar(6) NOT NULL,
  `NamaPenyakit` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`KodePenyakit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `tabelpenyakit` DISABLE KEYS */;
INSERT INTO `tabelpenyakit` (`KodePenyakit`, `NamaPenyakit`) VALUES
	('P0001', 'Campak'),
	('P0002', 'Campak Jerman'),
	('P0003', 'Flu'),
	('P0004', 'Pilek'),
	('P0005', 'Gondongan'),
	('P0006', 'Cacar Air'),
	('P0007', 'Batuk Rejan'),
	('P0008', 'Diare');
/*!40000 ALTER TABLE `tabelpenyakit` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `tabelpertanyaan` (
  `KodePertanyaan` varchar(6) NOT NULL,
  `Pertanyaan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`KodePertanyaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `tabelpertanyaan` DISABLE KEYS */;
INSERT INTO `tabelpertanyaan` (`KodePertanyaan`, `Pertanyaan`) VALUES
	('T0001', 'Apakah anda merasa demam?'),
	('T0002', 'Apakah anda menderita batuk-batuk?'),
	('T0003', 'Apakah anda merasa konjungtivitas?'),
	('T0004', 'Apakah hidung anda ingusan?'),
	('T0005', 'Apakah kulit anda berbintik merah?'),
	('T0006', 'Apakah anda merasa sakit kepala?'),
	('T0007', 'Apakah anda merasa pegal-pegal?'),
	('T0008', 'Apakah anda merasa kedinginan?'),
	('T0009', 'Apakah anda merasa sakit tenggorokan?'),
	('T0010', 'Apakah anda mengalami bersin-bersin?'),
	('T0011', 'Apakah anda merasa ada pembengkakan kelenjar?'),
	('T0012', 'Apakah anda mengalami sakit perut?');
/*!40000 ALTER TABLE `tabelpertanyaan` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `tabelrule` (
  `KodeRule` varchar(6) NOT NULL,
  `kodepertanyaan1` varchar(50) DEFAULT NULL,
  `kodepenyakit` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`KodeRule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `tabelrule` DISABLE KEYS */;
INSERT INTO `tabelrule` (`KodeRule`, `kodepertanyaan1`, `kodepenyakit`) VALUES
	('R0001', 'T0001,T0002,T0003,T0004,T0005', 'P0001'),
	('R0002', 'T0001,T0004,T0005,T0006', 'P0002'),
	('R0003', 'T0001,T0002,T0003,T0004,T0006,T0007,T0008,T0009', 'P0003'),
	('R0004', 'T0004,T0006,T0008,T0009,T0010', 'P0004'),
	('R0005', 'T0001,T0011', 'P0005'),
	('R0006', 'T0001,T0005,T0007,T0008', 'P0006'),
	('R0007', 'T0002,T0004,T0010', 'P0007'),
	('R0008', 'T0001,T0003,T0012', 'P0008');
/*!40000 ALTER TABLE `tabelrule` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
