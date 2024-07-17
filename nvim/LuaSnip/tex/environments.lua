
return {

  s("itemize", fmta(
    [[
    \begin{itemize}
        \item <>
    \end{itemize}
    ]],
    { i(1) },
    { strict = false }
  )),

  s("enumerate", fmta(
    [[
    \begin{enumerate}
        \item <>
    \end{enumerate}
    ]],
    { i(1) },
    { strict = false }
  )),

  s("description", fmta(
    [[
    \begin{description}
        \item[<>] <>
    \end{description}
    ]],
    { i(1, "Description"),
      i(2, "Long description of item.")},
    { strict = false }
  )),

  s("physics", fmta([[$E = mc^2 <>$]],
    { i(1) },
    { strict = true }
  )),

  s("tabular", fmta([[
    \begin{tabular}{ c c c }
     <> &  &  \\ 
      &  &  \\  
      &  &     
    \end{tabular}
    ]],
    { i(1) },
    { strict = false }
  ))
}

