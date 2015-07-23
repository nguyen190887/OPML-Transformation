<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/opml/body">
        <html>
            <head>
                <title>OPML to HTML Table Transformation</title>
                <style>
                    table, td, th {
                    border: solid 1px #aaa;
                    }
                    table {
                    border-collapse: collapse;
                    }
                </style>
            </head>
            <body>
                <xsl:for-each select="outline">
                    <h1>
                        <xsl:value-of select="@text"/>
                    </h1>
                    <table>
                        <tr>
                            <th>Text</th>
                            <th>Title</th>
                            <th>Feed URL</th>
                            <th>Site URL</th>
                        </tr>

                        <xsl:for-each select="outline">
                            <tr>
                                <td>
                                    <xsl:value-of select="@text"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@title"/>
                                </td>
                                <td>
                                    <a href="{@xmlUrl}" target="_blank">
                                        <xsl:value-of select="@xmlUrl"/>
                                    </a>
                                </td>
                                <td>
                                    <a href="{@xmlUrl}" target="_blank">
                                        <xsl:value-of select="@htmlUrl"/>
                                    </a>
                                </td>
                            </tr>
                        </xsl:for-each>

                    </table>
                    <hr />
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
