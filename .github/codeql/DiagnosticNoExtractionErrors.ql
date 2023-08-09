/**
 * @name Diagnostic Successfully extracted files
 * @kind diagnostic
 * @id test/diagnostic/no-extraction-errors
 */

import csharp
import semmle.code.csharp.commons.Diagnostics

from File file
where
  file.fromSource() and
  not exists(ExtractorError e | e.getLocation().getFile() = file) and
  not exists(CompilerError e | e.getLocation().getFile() = file)
select file, ""
