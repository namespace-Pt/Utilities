\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pt-beamer}[2021/07/20 ZPTNB]

\LoadClass[compress]{beamer}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{multicol}
\RequirePackage{booktabs}
\RequirePackage{multirow}

\graphicspath{{D:/repositories/Presentations/Resources}}

\usetheme[]{Warsaw}

% disable little display button
\setbeamertemplate{navigation symbols}{}

% frame break with continuous title
\makeatletter
\setbeamertemplate{frametitle continuation}{\gdef\beamer@frametitle{}}
\makeatother

% disable subsection in navigation bar
% \renewcommand{\insertsubsectionnavigation}[1]{}
% \renewcommand{\insertsubsectionnavigationhorizontal}[3]{}{}{}

% modify math fonts
\usefonttheme[onlymath]{serif}

\setbeamertemplate{theorems}[numbered]
\newtheorem{assum}{Assumption}
\newtheorem{eg}{Example}


\newenvironment{insight}{\begin{block}{Insight}}{\end{block}}
\newenvironment{frm}[1][]{\begin{frame}[allowframebreaks]{\ifx\insertsubsubsection\empty
    \ifx\insertsubsection\empty
        \secname
    \else
        \subsecname
    \fi
\else
    \subsubsecname
\fi}{#1}}{\end{frame}}

\newcommand{\init}{\begin{frame}\maketitle\end{frame}\begin{frame}{TOC}\begin{multicols}{2}\tableofcontents\end{multicols}\end{frame}}
\newcommand{\motiv}{\textbf{Motivation: }}
\newcommand{\intui}{\textbf{Intuitions: }}

\author{Peitian Zhang}
% \institute[RUC]{Renmin University of China}
\institute[MSRA]{Microsoft Research Asia}