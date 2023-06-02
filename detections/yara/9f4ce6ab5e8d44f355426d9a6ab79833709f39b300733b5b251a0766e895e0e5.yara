
rule PUA_VULN_Driver_MultiTheftAuto_MTASanAndreas_5MqN {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 4e90cd77509738d30d3181a4d0880bfa.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "9f4ce6ab5e8d44f355426d9a6ab79833709f39b300733b5b251a0766e895e0e5"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]004d0075006c007400690020005400680065006600740020004100750074006f0020007000610074006300680020006400720069007600650072 } /* FileDescription Multi Theft Auto patch driver */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004d0075006c007400690020005400680065006600740020004100750074006f } /* CompanyName Multi Theft Auto */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]003300360037002e0033003200360039002e00360031002e00360034 } /* FileVersion 367.3269.61.64 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]003300360037002e0033003200360039002e00360031002e00360034 } /* ProductVersion 367.3269.61.64 */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]004d00540041002000530061006e00200041006e00640072006500610073 } /* ProductName MTA San Andreas */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]002800430029002000320030003000330020002d002000320030003100370020004d0075006c007400690020005400680065006600740020004100750074006f } /* LegalCopyright (C) 2003 - 2017 Multi Theft Auto */
	condition:
		all of them
}