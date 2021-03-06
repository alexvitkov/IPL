solution 'FlexDemos'
    configurations {'debug', 'release'}
    configuration 'Linux'
        flags {
            'FatalWarnings',
            'ExtraWarnings',
            'Cpp14',
        }
    configuration '*'

    local root = 'build/'


    configuration 'debug'
        targetdir(root .. 'bin/debug')
        objdir(root .. 'obj/debug')

    configuration 'release'
        targetdir(root .. 'bin/release')
        objdir(root .. 'obj/release')
    configuration '*'

    project 'FlexLexer'
        kind 'ConsoleApp'
        language 'C'
        uuid(os.uuid('FlexLexer'))
        files {
            'lex.yy.c',
            'JavaScript.flex',
        }
        debugargs 'hello.js'
