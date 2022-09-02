/**
 * @name File Diagnostics
 * @kind diagnostic
 * @id test/diagnostic/file-diagnostics
 */

import csharp

select  "Count of files in the CodeQL Database: " + 
        ".csproj Files: '" + count(File f | f.getExtension() = "csproj" | f ) + "'," +
        ".config Files: '" + count(File f | f.getExtension() = "config" | f ) + "'," +
        ".xml Files: '" + count(File f | f.getExtension() = "xml" | f ) + "'," +
        ".dll Files: '" + count(File f | f.getExtension() = "dll" | f ) + "'," +
        ".asp Files: '" + count(File f | f.getExtension() = "asp" | f ) + "'," +
        ".aspx Files: '" + count(File f | f.getExtension() = "aspx" | f ) + "'," +
        ".ascx Files: '" + count(File f | f.getExtension() = "ascx" | f ) + "'," +
        ".razor Files: '" + count(File f | f.getExtension() = "razor" | f ) + "'," +
        ".cshtml Files: '" + count(File f | f.getExtension() = "cshtml" | f ) + "'," +
        ".cs Files: '" + count(File f | f.getExtension() = "cs" | f ) + "'", 0
