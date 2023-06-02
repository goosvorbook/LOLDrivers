
rule PUA_VULN_Driver_HPDevelopmentCompany_etdsuppsys_HPETDiDriverDLL_5DAo {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - a92bf3c219a5fa82087b6c31bdf36ff3.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "f744abb99c97d98e4cd08072a897107829d6d8481aee96c22443f626d00f4145"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]004500540044006900200053007500700070006f007200740020004400720069007600650072 } /* FileDescription ETDi Support Driver */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]0048005000200044006500760065006c006f0070006d0065006e007400200043006f006d00700061006e0079 } /* CompanyName HP Development Company */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]00310038002e0030002e0030002e0030 } /* FileVersion 18.0.0.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]00310038002e0030002e0030002e0030 } /* ProductVersion 18.0.0.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]0065007400640073007500700070002e007300790073 } /* InternalName etdsupp.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]0048005000200045005400440069002000440072006900760065007200200044004c004c } /* ProductName HP ETDi Driver DLL */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]0065007400640073007500700070002e007300790073 } /* OriginalFilename etdsupp.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]00280043002900200043006f007000790072006900670068007400200031003900390031002d00320030003200320020004800650077006c006500740074002d005000610063006b00610072006400200044006500760065006c006f0070006d0065006e007400200043006f006d00700061006e0079002c0020004c002e0050002e } /* LegalCopyright (C) Copyright 1991-2022 Hewlett-Packard Development Company, L.P. */
	condition:
		all of them
}