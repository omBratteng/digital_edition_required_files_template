<?xml version="1.0" encoding="utf-8"?>
<!--
This notice must be visible at all times.

Copyright (c) 2010 Mikael Norrgård (See Sharp IT). All rights reserved.
Created 2010 by Mikael Norrgård (Web: http://seesharp.witchmastercreations.com )
email: seesharp@witchmastercreations.com or mikael.norrgard@gmail.com

Rights to use and further develop given to Svenska litteratursällskapet i Finland.
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:ns0="http://tei-c.org/TextComparator">

  <xsl:output method="text" version="1.0" encoding="utf-8" indent="no"/>
 
  <xsl:param name="paragraphId" />
  
  <xsl:template match="tei:teiHeader"/>
  
  <xsl:template match="tei:body">
    <xsl:choose>
      <xsl:when test="//tei:*[@ns0:cid=$paragraphId]">
        <!--<xsl:for-each select="//tei:date[substring(@when,1,7)=$year-month and not(@when=preceding::tei:date/@when)]">
          <xsl:value-of select="@when"/><xsl:text>,</xsl:text>
        </xsl:for-each>-->
        <xsl:value-of select="//tei:*[@ns0:cid=$paragraphId]/ancestor::tei:div[@type='chapter']/@id"/>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
   </xsl:template>
  
</xsl:stylesheet>