<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output 
        method="html"
    	encoding="UTF-8"
    	doctype-public="-//W3C//DTD HTML 4.01//EN"
   	doctype-system="http://www.w3.org/TR/html4/strict.dtd"
    	indent="yes" />


	<!--<xsl:template match="/">
		<html>
			<head>
				<title>Test de la fonction value-of</title>
			</head>
			<body>
				<p>Type du numéro : <xsl:value-of select="repertoire/personne[nom='POPPINS']/telephones/telephone/@type" />
				</p>
				<p>Numéro : <xsl:value-of select="repertoire/personne[nom='POPPINS']/telephones/telephone" />
				</p>
			</body>
		</html>			
	</xsl:template>-->

	<xsl:template match="/">
		<html>
			<head>
				<title>Test de la fonction for-each</title>
			</head>
			<body>
				<xsl:for-each select="repertoire/personne[nom='DOE']/emails/email">
					<p>Type de l'adresse e-mail : <xsl:value-of select="@type" />
					</p>
					<p>adresse e-mail : <xsl:value-of select="." />
					</p>
				</xsl:for-each>
			</body>
		</html>			
	</xsl:template>

	<!-- <xsl:sort select="expression XPath" order="ascending|descending" case-order="upper-first|lower-first" data-type="text|number" lang="fr|es|it|..." /> -->
	
</xsl:stylesheet>