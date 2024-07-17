
return{
  s("equation", fmta(
    [[
    \begin{equation}
        <>
    \end{equation}
    ]],
    { i(1) },
    { strict = false }
  )),

  s("align", fmta(
    [[
    \begin{align}
        <> &= \\
    \end{align}
    ]],
    { i(1) },
    { strict = false }
  ))
}

