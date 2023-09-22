local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node


local year = function() return {os.date('%Y')} end
local dateYYMMDD = function() return{os.date('%y%m%d')} end

--ls.add_snippets(nil, {
--    perl = {
--        snip({
--            trig = "sub",
--            namr = "subroutine",
--            dscr = "snippets for subroutine",
--        }, {
--            text({"sub "}), insert(1, "sub_name"), text({"()",
--            "\tmy ("}), insert(2, "sub_input"), text({") = @_;", 
--            "}"}),text({"",
--            "",
--            "return "}), insert(3, "sub_return"),
--        }),
--    },
--})
--
--
--snip({
--    trig = "",
--    namr = "",
--    dscr = "",
--}, {
--    ?????
--}),

ls.add_snippets(nil, {
    all = {
        snip({
            trig = "year",
            namr = "year",
            dscr = "snippet for print year",
        }, {
            func(year, {}),
        }),

        snip({
            trig = "dateYYMMDD",
            namr = "date",
            dscr = "snippet for print date in YYMMDD format",
        }, {
            func(dateYYMMDD, {}),
        }),
    },

    perl = {
        snip({
            trig = "head",
            namr = "head",
            dscr = "snippet for head of .pm",
        }, {
            text({"package "}), insert(1, "PACKAGE_NAME"), text({";",
            "",
            "use strict;",
            "use warnings;",
            "use autodie \":all\"",
            "",
            "# --- Export subroutines --- #",
            "use Exporter \"import\";",
            "our @EXPORT_OK = qw/",
            "\t"}), insert(2, "SUBROUTINES_TO_EXPORT"), text({"",
            "/;",
            "",
            "# --- Perl libraries --- #",
            "",
            "# --- LBGB libraries --- #",
            "",
            "",
            "",
            "",
            "",
            "=head1 NAME",
            "",
            "\t"}), insert(3, "PACKAGE_NAME"), text({"",
            "\t"}), insert(4, "LONG_NAME"), text({"",
            "",
            "=head1 SYNOPSIS",
            "",
            "\tuse ...::...::... qw/.../;",
            "",
            "=head1 DESCRIPTION",
            "",
            "\t"}), insert(5, "SHORT_DESCRIPTION"), text({"",
            "",
            "=head2 Subroutines",
            "",
            "=over 4",
            "",
            "=cut",
            "",
            "",
            "",
            "",
            ""}),
        }),

        snip({
            trig = "head",
            namr = "head",
            dscr = "snippet for head of .pl",
        }, {
            text({"#!/usr/bin/env perl",
            "",
            "use strict;",
            "use warnings;",
            "use autodie \":all\"",
            "",
            "BEGIN{",
            "\t"}), insert(1, "..."), text({"",
            "}",
            "",
            "# --- Perl Libraries --- #",
            "use Data::Dumper;",
            "use Getopt::Long;",
            "use Try::Tiny;",
            "use File::Basename qw/basename/;",
            "",
            "# --- LBGB Libraries --- #",
            "",
            "",
            "",
            "",
            "",
            "=head1 NAME",
            "",
            "\t"}), insert(2, "PROG_NAME"), text({"",
            "\t- "}), insert(3, "LONG_NAME"), text({" -",
            "",
            "=head1 DESCRIPTION",
            "",
            "\t"}), insert(4, "DESCRIPTION"), text({"",
            "",
            "\tUsage:",
            "\t------",
            "\t"}), insert(5, "USAGE"), text({"",
            "",
            "\tMandatory options:",
            "\t\t"}), insert(6, "MANDATORY_OPTIONS"), text({"",
            "",
            "\tOptional options:",
            "\t\t"}), insert(7, "OPTIONAL_OPTIONS"), text({"",
            "",
            "\tNotes:",
            "\t------",
            "\t\t"}), insert(8, "NOTES"), text({"",
            "",
            "=head1 DEPENDENCIES",
            "",
            "\tPerl libraries:",
            "\t---------------",
            "\t\t"}), insert(9, "PERL_LIBRARIES"), text({"",
            "",
            "\tLBGB libraries:",
            "\t---------------",
            "\t\t"}), insert(10, "LBGB_LIBRARIES"), text({"",
            "",
            "=over 4",
            "",
            "=cut",
            "",
            "",
            "",
            "",
            "",
            "# --- Subroutines --- #",
            "",
            "#######################",
            "#         Main        #",
            "#######################",
            "",
            "# Variables of arguments and options prog.",
            "my $usage = \"\";\t# Usage description (str).",
            "my $help = 0;\t# Help falg (int).",
            "my $verbose = 0;\t# Verbose flag for mylog (int).",
            "",
            "# Variables.",
            "my $prog_name = basename($0);\t# Prog name (str).",
            ""}),
        }),

        snip({
            trig = "tail",
            namr = "tail",
            dscr = "snippet for tail of .pl and .pm",
        }, {
            text({"=back",
            "",
            "=head1 LICENCE",
            "",
            "\tThis is released under the Atristic Licence. see perlartistic.",
            "",
            "=head1 AUTHORS",
            "",
            "\tWilliam Amory L<wamory@genoscope.cns.fr> ("}), func(year, {}), text({")",
            "",
            "=head1 SEE ALSO",
            "",
            "\t....",
            "",
            "=cut",
            "",
            "",
            "",
            "",
            "",
            "1;"}),
        }),

        snip({
            trig = "getopt",
            namr = "getopt",
            dscr = "snippet for get options",
        }, {
            text({"# --- Get Options --- #",
            "unless(Getoptions(",
            "\"help\" => \\$help,",
            "\"verbose\" => \\$verbose,",
            ")) { die \"\\n*** Missing options ***\\n${usage}\"; }",
            "",
            "# --- Arguments gestion ---#",
            "if (scalar(@ARGV) != 0){",
            "\tdie \"\\n*** Too much arguments : 0 argument expected ***\\n${usage}\";",
            "}",
            "",
            "# --- Options gestion ----#",
            "unless($help || (....)){",
            "die \"\\n*** Missing options ***\\n${usage}\";",
            "}",
            "if($help){",
            "\tprint $usage;",
            "\texit(0)",
            "}",
            }),
        }),

        snip({
            trig = "usage",
            namr = "usage",
            dscr = "snippet for string usage",
        }, {
            text({"$usage = \"",
            "\\@TITLE $prog_name",
            "\\@DESCRIPTION ",}), insert(1, "PROG_DESCRIPTION"), text({"",
            "\\@SYNOPSIS $prog_name -[h]elp ....",
            "",
            "Mandatory arguments:",
            "\t...",
            "",
            "Optional arguments:",
            "\t...",
            "",
            "Mandatory options:",
            "\t...",
            "",
            "Optional options:",
            "\t-[h]elp => Show help.",
            "\t-[h]elp => Verbose mode.",
            "",
            "Notes:",
            "------",
            "\t...",
            "\";"}),
        }),

        -- subroutines snippets.
        snip({
            trig = "subdoc",
            namr = "subroutine",
            dscr = "snippet for subroutine with doc",
        }, {
            text({"=item B<SUB_NAME>",
            "",
            "\tSUB_DESCRIBTION",
            "",
            "\tParameters:",
            "\t-----------",
            "\t# --- Mandatory parameters --- #",
            "\t# --- Optional parameters --- #",
            "",
            "\tRetruns:",
            "\t--------",
            "",
            "=cut",
            "sub "}), insert(1, "SUB_NAME"), text({"(){",
            "\tmy ("}), insert(2, "SUB_INPUT"), text({") = @_;"}),
            text({"",
            "",
            "\treturn "}), insert(3, "SUB_RETURN"),text({"",
            "}"}),
        }),

        snip({
            trig = "sub",
            namr = "subroutine",
            dscr = "snippet for subroutine",
        }, {
            text({"sub "}), insert(1, "SUB_NAME"), text({"(){",
            "\tmy ("}), insert(2, "SUB_INPUT"), text({") = @_;"}),
            text({"",
            "",
            "\treturn "}), insert(3, "SUB_RETURN"),text({"",
            "}"}),
        }),

        -- perl statements.
        snip({
            trig = "if",
            namr = "if",
            dscr = "snippet for if statement",
        }, {
            text({"if ("}), insert(1, "CONDITION"), text({"){",
            "\t"}), insert(2, "DO"), text({"",
            "}"}),
        }),

        snip({
            trig = "else",
            namr = "else",
            dscr = "snippet for else statement",
        }, {
            text({"else{",
            "\t"}), insert(1, "DO"), text({"",
            "}"}),
        }),

        snip({
            trig = "elsif",
            namr = "elsif",
            dscr = "snippet for elsif statement",
        }, {
            text({"elsif ("}), insert(1, "CONDITION"), text({"){",
            "\t"}), insert(2, "DO"), text({"",
            "}"}),
        }),

        snip({
            trig = "if",
            namr = "if-else",
            dscr = "snippet for if-else statement",
        }, {
            text({"if ("}), insert(1, "CONDITION"), text({"){",
            "\t"}), insert(2, "DO"), text({"",
            "} else {",
            "\t"}), insert(3, "DO"), text({"",
            "}"}),
        }),

        snip({
            trig = "if",
            namr = "if-elsif-else",
            dscr = "snippet for if-elsif-else statement",
        }, {
            text({"if ("}), insert(1, "CONDITION"), text({"){",
            "\t"}), insert(2, "DO"), text({"",
            "} elsif ("}), insert(3, "CONDITION"), text({"){",
            "\t"}), insert(4, "DO"), text({"",
            "} else {",
            "\t"}), insert(5, "DO"), text({"",
            "}"}),
        }),

        snip({
            trig = "unless",
            namr = "unless",
            dscr = "snippet for unless statement",
        }, {
            text({"unless ("}), insert(1, "CONDITION"), text({"){",
            "\t"}), insert(2, "DO"), text({"",
            "}"}),
        }),

        snip({
            trig = "try",
            namr = "try-catch",
            dscr = "snippet for try-catch statement",
        }, {
            text({"try{",
            "\t"}), insert(1, "TRY"), text({"",
            "} catch  t{",
            "\t"}), insert(2, "CATCH"), text({"",
            "};"}),
        }),

        snip({
            trig = "for-c-style",
            namr = "for-c-style",
            dscr = "snippet for c style for statement",
        }, {
            text({"for (my "}), insert(1, "$i = 0"), text({", "}),
            insert(2, "$i >= 5"), text({", "}), insert(3, "$i++"),
            text({"){",
            "\t"}), insert(4, "DO"), text({"",
            "}"}),
        }),

        snip({
            trig = "for",
            namr = "for",
            dscr = "snippet for for statement",
        }, {
            text({"for ("}), insert(1, "1..5"), text({"){",
            "\t"}), insert(2, "DO"), text({"",
            "}"}),
        }),

        snip({
            trig = "foreach",
            namr = "foreach",
            dscr = "snippet for foreach statement",
        }, {
            text({"foreach my "}), insert(1, "WHY"),
            text({" ("}), insert(2, "IN"), text({"){",
            "\t"}), insert(3, "DO"), text({"",
            "}"}),
        }),

        snip({
            trig = "foreach-hash",
            namr = "foreach-hash",
            dscr = "snippet for foreach keys hash statement",
        }, {
            text({"foreach my "}), insert(1, "WHY"),
            text({" (keys "}), insert(2, "IN"), text({"){",
            "\t"}), insert(3, "DO"), text({"",
            "}"}),
        }),

        snip({
            trig = "while",
            namr = "while",
            dscr = "snippet for while statement",
        }, {
            text({"while ("}), insert(1, "CONDITION"), text({"){",
            "\t"}), insert(2, "DO"), text({"",
            "}"}),
        }),

        snip({
            trig = "while-hash",
            namr = "while-hash",
            dscr = "snippet for while statement to loopin keys and values",
        }, {
            text({"while (my ("}), insert(1, "KEY"), text({", "}),
            insert(2, "VALUE"), text({") = each "}), insert(3, "IN"),
            text({"){",
            "\t"}), insert(4, "DO"), text({"",
            "}"}),
        }),

        -- File managment snippets.
        snip({
            trig = "open-file",
            namr = "open-file",
            dscr = "snippet for open and close file (\"<\" => read, \">\" => write, \">>\" write in end file)"
        }, {
            text({"open (my "}), insert(1, "$file_in"), text({", "}),
            insert(2, "\"<\""), text({", "}), insert(3, "$file_path"),
            text({")",
            "\tor die \"Cannot open $file : $!\";",
            "",
            ""}), insert(4, "DO"), text({"",
            "",
            "close("}), insert(5, "$file_in"), text({");"}),
        }),

        snip({
            trig = "print-file",
            namr = "print-file",
            dscr = "snippet for print in file output"
        }, {
            text({"print("}), insert(1, "$output_file"), text({" \""}),
            insert(2, "MESSAGE"), text({"\\n\");"}),
        }),

        -- mylog snippets.
        snip({
            trig = "mylog-inf",
            namr = "mylog-info",
            dscr = "snippet for mylog info",
        }, {
            text({"$mylog->inf(\""}), insert(1, "MESSAGE"), text({"\", $verbose);"}),
        }),

        snip({
            trig = "mylog-thr",
            namr = "mylog-throw",
            dscr = "snippet for mylog throw",
        }, {
            text({"$mylog->thr(\""}), insert(1, "MESSAGE"), text({"\", $verbose);"}),
        }),

        snip({
            trig = "mylog-err",
            namr = "mylog-error",
            dscr = "snippet for mylog error",
        }, {
            text({"$mylog->err(\""}), insert(1, "MESSAGE"), text({"\", $verbose);"}),
        }),

        snip({
            trig = "mylog-war",
            namr = "mylog-warn",
            dscr = "snippet for mylog warnning",
        }, {
            text({"$mylog->war(\""}), insert(1, "MESSAGE"), text({"\", $verbose);"}),
        }),

        snip({
            trig = "mylog-setHeader",
            namr = "mylog-setHeader",
            dscr = "snippet to set header of mylog",
        }, {
            text({"$mylog->setHeader(\""}), insert(1, "MESSAGE"), text({"\");"}),
        }),

        snip({
            trig = "mylog-int",
            namr = "mylog-int",
            dscr = "snippet to initialize mylog",
        }, {
            text({"my $mylog = mylog->int("}), insert(1, "LOG_PATH"),
            text({", "}), insert(2, "LOG_FILE_NAME"), text({");"}),
        }),

    },
})

