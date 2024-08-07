
return {

    s("print", fmta([[print(<>)]],
    { i(1, "printme") },
    { strict = false }
    )),

    s("fs", fmta([[f'{<>}']],
    { i(1, "variable") },
    { strict = false }
    )),

    s("'.format(", fmta([['.format(<>)]],
    { i(1, "var") },
    { strict = false }
    )),

    s("fmtstr", fmta([['{:}'.format(<>)]],
    { i(1, "var") },
    { strict = false }
    )),

    s("'{:}'", fmta([['{:^10d}'.format(<>)]],
    { i(1, "int") },
    { strict = false }
    )),

    s("'{:}'", fmta([['{:^6.2f}'.format(<>)]],
    { i(1, "float") },
    { strict = false }
    ))
}

