\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zpt}[2021/03/29 ZPTNB]

\LoadClass[UTF8]{ctexart}
\RequirePackage{listings}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{xcolor}
\RequirePackage[bottom=2cm]{geometry}
\RequirePackage{graphics, float}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage[ruled,vlined]{algorithm2e}
\RequirePackage{amsmath,amsthm,mathtools,amsfonts,amssymb}
\author{张配天-2018202180}
\lstset{
 columns=fixed,
 numbers=left,                                        % 在左侧显示行号
 numberstyle=\tiny\color{gray},                       % 设定行号格式
 basicstyle=\ttfamily,
 frame=none,                                          % 不显示背景边框
 backgroundcolor=\color[RGB]{245,245,244},            % 设定背景颜色
 keywordstyle=\color[RGB]{40,40,255},                 % 设定关键字颜色
 numberstyle=\footnotesize\color{darkgray},
 commentstyle=\color{gray}\ttfamily,                % 设置代码注释的格式
 stringstyle=\rmfamily\slshape\color[RGB]{128,0,0},   % 设置字符串格式
 showstringspaces=false,
 breaklines=true
}
\newcommand{\reff}[1]{图\ref{#1}\ }
\newcommand{\refd}[1]{\emph{定义}.\ref{#1}\ }
\newcommand{\refe}[1]{\emph{公式}.\ref{#1}\ }
\newcommand{\reft}[1]{\emph{定理} \ref{#1}\ }
\newcommand{\refl}[1]{\emph{引理} \ref{#1}\ }
\newcommand{\refp}[1]{\emph{推论} \ref{#1}\ }
\newtheorem{define}{定义}
\newtheorem{theory}{定理}
\newtheorem{lemma}{引理}
\newtheorem{derive}{推论}