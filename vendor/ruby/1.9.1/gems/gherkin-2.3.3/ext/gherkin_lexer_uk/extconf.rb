require 'mkmf'
CONFIG['warnflags'].gsub!(/-Wshorten-64-to-32/, '') if CONFIG['warnflags']
$CFLAGS << ' -O0 -Wall -Werror' if CONFIG['CC'] =~ /gcc/
dir_config("gherkin_lexer_uk")
have_library("c", "main")
create_makefile("gherkin_lexer_uk")
