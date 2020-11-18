<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <body>
            <h2>Library Database</h2>
            <table>
                <tr>
                    <th>Department</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>ISBN</th>
                    <th>Status</th>
                </tr>
                <xsl:for-each select="library/book">
                    <tr>
                        <td><xsl:for-each select="dept" /></td>
                        <td><xsl:for-each select="title" /></td>
                        <td><xsl:for-each select="author" /></td>
                        <td><xsl:for-each select="isbn" /></td>
                        <td><xsl:for-each select="status" /></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
