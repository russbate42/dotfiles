
return {

    s("print", fmta([[print(<>)]],
    { i(1, "printme") },
    { strict = false }
    )),

    s("fs", fmta([[f'{<>}']],
    { i(1, "variable") },
    { strict = false }
    ))

}

