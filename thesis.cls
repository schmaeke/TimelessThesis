%
% Thesis document class
%
%
% Author: Jan Niklas Schmäke [jan.schmaeke@hs-duesseldorf.de]
%


% GENERAL - - - - - - - - - - - - - - - - - - - - - - - - -
% LaTeX format
\NeedsTeXFormat{LaTeX2e}

% Class definition
\ProvidesClass{thesis}[Extension of the book document class for thesis]

% Base class
\LoadClass[a4paper, twoside, 12pt]{book}


% PACKAGES - - - - - - - - - - - - - - - - - - - - - - - - -

% Page geometry
\RequirePackage[inner    = 2.25cm,
                outer    = 1.50cm,
								top      = 2.50cm,
								bottom   = 4.00cm,
								footskip = 2.0cm]{geometry}

% Document fonts
\RequirePackage{mathptmx}
\RequirePackage[mono]{inconsolata}
\RequirePackage[T1]{fontenc}

% Math symbols and formatting
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{xfrac}

% Formatting
\RequirePackage{fancyhdr}
\RequirePackage[parfill]{parskip}
\RequirePackage{caption}
\RequirePackage[explicit]{titlesec}
\RequirePackage{xcolor}
\RequirePackage{setspace}
\RequirePackage{microtype}
\RequirePackage[most]{tcolorbox}
\RequirePackage{listings}
\RequirePackage{scalerel}

% Tables
\RequirePackage{booktabs}
\RequirePackage{colortbl}

% Graphics
\RequirePackage{tikz}
\RequirePackage{tikz-3dplot}
\RequirePackage{pgfplots}
\pgfplotsset{compat = newest}
\RequirePackage{subcaption}

% TikZ libraries
\usetikzlibrary{arrows.meta}
\usetikzlibrary{calc}
\usetikzlibrary{spy}
\usetikzlibrary{shadings}
\usetikzlibrary{patterns}
\usetikzlibrary{perspective}
\usetikzlibrary{external}
\usetikzlibrary{decorations}
\usetikzlibrary{decorations.markings}

% Links
\RequirePackage{hyperref}
\RequirePackage[noabbrev,nameinlink]{cleveref}

% Misc.
\RequirePackage{afterpage}
\RequirePackage{fontawesome5}
\RequirePackage{fmtcount}


% COLORS - - - - - - - - - - - - - - - - - - - - - - - - - -
\definecolor{darkgray}{HTML}{3a3a3a}
\definecolor{gray}{HTML}{505050}
\definecolor{lightgray}{HTML}{c2c2c2}

\definecolor{darkred}{HTML}{c04d4d}
\definecolor{red}{HTML}{ff7070}
\definecolor{lightred}{HTML}{ffadad}

\definecolor{darkgreen}{HTML}{8dc47e}
\definecolor{green}{HTML}{c4f08c}
\definecolor{lightgreen}{HTML}{e0ffb3}

\definecolor{darkyellow}{HTML}{d3b34a}
\definecolor{yellow}{HTML}{f0e08f}
\definecolor{lightyellow}{HTML}{f8f4c3}

\definecolor{darkblue}{HTML}{5c8ef0}
\definecolor{blue}{HTML}{7da6ff}
\definecolor{lightblue}{HTML}{adc8ff}

\definecolor{darkmagenta}{HTML}{ad71ac}
\definecolor{magenta}{HTML}{e7a5e8}
\definecolor{lightmagenta}{HTML}{f7d0f8}

\definecolor{darkcyan}{HTML}{72b2cc}
\definecolor{cyan}{HTML}{94e2ff}
\definecolor{lightcyan}{HTML}{c4f0ff}

% PGFPLOTS color lists
\pgfplotscreateplotcyclelist{veluraColorList}{
	darkred \\
	darkyellow \\
	darkgreen \\
	darkcyan \\
	darkblue \\
	darkmagenta \\
%
	darkred, densely dashed \\
	darkyellow, densely dashed \\
	darkgreen, densely dashed \\
	darkcyan, densely dashed \\
	darkblue, densely dashed \\
	darkmagenta, densely dashed \\
%
	darkred,    densely dotted \\
	darkyellow,  densely dotted \\
	darkgreen,   densely dotted \\
	darkcyan, densely dotted \\
	darkblue, densely dotted \\
	darkmagenta, densely dotted \\
%
	darkred,    densely dash dot \\
	darkyellow,  densely dash dot \\
	darkgreen,   densely dash dot \\
	darkcyan, densely dash dot \\
	darkblue, densely dash dot \\
	darkmagenta, densely dash dot \\
}

\pgfplotscreateplotcyclelist{veluraColorListMark}{
	darkred,    mark = square*,   mark size = 1.0pt, mark options = {fill = darkred!50!white, solid} \\
	darkyellow,  mark = *,         mark size = 1.0pt, mark options = {fill = darkyellow!50!white, solid} \\
	darkgreen,   mark = triangle*, mark size = 1.0pt, mark options = {fill = darkgreen!50!white, solid} \\
	darkcyan, mark = diamond*,  mark size = 1.0pt, mark options = {fill = darkcyan!50!white, solid} \\
	darkblue, mark = pentagon*, mark size = 1.0pt, mark options = {fill = darkblue!50!white, solid} \\
	darkmagenta, mark = oplus*, mark size = 1.0pt, mark options = {fill = darkmagenta!50!white, solid} \\
%
	darkred,    mark = square*,   mark size = 1.0pt, mark options = {fill = darkred!50!white, solid}, densely dashed \\
	darkyellow,  mark = *,         mark size = 1.0pt, mark options = {fill = darkyellow!50!white, solid}, densely dashed \\
	darkgreen,   mark = triangle*, mark size = 1.0pt, mark options = {fill = darkgreen!50!white, solid}, densely dashed \\
	darkcyan, mark = diamond*,  mark size = 1.0pt, mark options = {fill = darkcyan!50!white, solid}, densely dashed \\
	darkblue, mark = pentagon*, mark size = 1.0pt, mark options = {fill = darkblue!50!white, solid}, densely dashed \\
	darkmagenta, mark = oplus*, mark size = 1.0pt, mark options = {fill = darkmagenta!50!white, solid}, densely dashed \\
%
	darkred,    mark = square*,   mark size = 1.0pt, mark options = {fill = darkred!50!white, solid}, densely dotted \\
	darkyellow,  mark = *,         mark size = 1.0pt, mark options = {fill = darkyellow!50!white, solid}, densely dotted \\
	darkgreen,   mark = triangle*, mark size = 1.0pt, mark options = {fill = darkgreen!50!white, solid}, densely dotted \\
	darkcyan, mark = diamond*,  mark size = 1.0pt, mark options = {fill = darkcyan!50!white, solid}, densely dotted \\
	darkblue, mark = pentagon*, mark size = 1.0pt, mark options = {fill = darkblue!50!white, solid}, densely dotted \\
	darkmagenta, mark = oplus*, mark size = 1.0pt, mark options = {fill = darkmagenta!50!white, solid}, densely dotted \\
%
	darkred,    mark = square*,   mark size = 1.0pt, mark options = {fill = darkred!50!white, solid}, densely dash dot \\
	darkyellow,  mark = *,         mark size = 1.0pt, mark options = {fill = darkyellow!50!white, solid}, densely dash dot \\
	darkgreen,   mark = triangle*, mark size = 1.0pt, mark options = {fill = darkgreen!50!white, solid}, densely dash dot \\
	darkcyan, mark = diamond*,  mark size = 1.0pt, mark options = {fill = darkcyan!50!white, solid}, densely dash dot \\
	darkblue, mark = pentagon*, mark size = 1.0pt, mark options = {fill = darkblue!50!white, solid}, densely dash dot \\
	darkmagenta, mark = oplus*, mark size = 1.0pt, mark options = {fill = darkmagenta!50!white, solid}, densely dash dot \\
}

% colormap for surface plots
\pgfplotsset{
	colormap={drainbow}{%
		rgb255 = (  0,   0,  92)
		rgb255 = (  0, 255, 255)
		rgb255 = (  0, 128,   0)
		rgb255 = (255, 255,   0)
		rgb255 = (255,  97,   0)
		rgb255 = (107,   0,   0)
	},
}


% HYPERREF SETUP - - - - - - - - - - - - - - - - - - - - - -
\hypersetup{
	colorlinks = true,
	allcolors = black,
}


% CUSTOM COMMANDS - - - - - - - - - - - - - - - - - - - - -

% info for title page
\newcommand{\universityName}[1]{\def\universityNameValue{#1}}
\newcommand{\universityLogo}[1]{\def\universityLogoValue{#1}}
\newcommand{\universityLogoWidth}[1]{\def\universityLogoWidthValue{#1}}
\newcommand{\studyProgram}[1]{\def\studyProgramValue{#1}}
\newcommand{\desiredDegree}[1]{\def\desiredDegreeValue{#1}}

\newcommand{\firstExaminor}[2]{
	\def\firstExaminorName{#1}
	\def\firstExaminorField{#2}
}

\newcommand{\secondExaminor}[2]{
	\def\secondExaminorName{#1}
	\def\secondExaminorField{#2}
}

% abstract chapter
\newcommand{\abstractChapter}{%
	\def\abstractName{\iflanguage{ngerman}{Kurzfassung}{Abstract}}
	\chapter*{\abstractName}
	\markboth{\abstractName}{\abstractName}
}

% create colored todo
\newcommand{\todo}[1]{
	{\color{red}\itshape #1}
}

\newcommand{\linktt}[1]{
	\href{#1}{\texttt{#1}}
}

% shortcut for boldsymbol
\def\bs{\boldsymbol}

\newcommand{\intd}[1]{\ensuremath{\,\mathrm{d}#1}}

% shortcut for assembly operator
\DeclareMathOperator*{\Assembly}{\scalerel*{\mathsf{A}}{\sum}}

% HEADER & FOOTER - - - - - - - - - - - - - - - - - - - - -

\setlength{\headheight}{14.5pt}

\renewcommand{\headrulewidth}{0.0mm}
\renewcommand{\footrulewidth}{0.0mm}

\fancyhead[OR]{\nouppercase\rightmark}
\fancyhead[EL]{\nouppercase\leftmark}
\fancyhead[OL, ER, C]{}

\fancyfoot[OR, EL]{\thepage}
\fancyfoot[ER, OL, C]{}

\fancypagestyle{plain}
{
	\fancyhead[OR]{\nouppercase\rightmark}
	\fancyhead[EL]{\nouppercase\leftmark}
	\fancyhead[OL, ER, C]{}

	\fancyfoot[OR, EL]{\thepage}
	\fancyfoot[ER, OL, C]{}
}


% HEADING - - - - - - - - - - - - - - - - - - - - - - - - -
\setcounter{secnumdepth}{3} % number until subsubsection

\titleformat{name = \chapter, numberless}[display]
{}
{}
{0.0cm}
{\Huge#1}
[]

\titleformat{name = \chapter}[display]
{}
{}
{-0.5cm}
{%
	\begin{tikzpicture}
		\node[line width = 0.5mm, draw = black, inner sep = 6mm, rounded corners = 1mm, minimum width = \textwidth] (title) {%
			\begin{minipage}{0.8\textwidth}
				\centering\Huge#1
			\end{minipage}
		};
		\node[fill = white, left, shift = {(-5mm, 0mm)}] at (title.north east) {\large\MakeUppercase\chaptername\enspace\thechapter};
	\end{tikzpicture}
}
[]

\titlespacing{\chapter}{0cm}{0.0cm}{0cm}


\titleformat{name = \section, numberless}[display]
{}
{}
{0.0cm}
{\Large\bfseries#1}
[]

\titleformat{name = \section}[display]
{}
{}
{0.0cm}
{\Large\thesection\ --\ \bfseries#1}
[]

\titlespacing{\section}{0cm}{0.0cm}{0.25cm}


\titleformat{name = \subsection, numberless}[display]
{}
{}
{0.0cm}
{\large\bfseries#1}
[]

\titleformat{name = \subsection}[display]
{}
{}
{0.0cm}
{\large\thesubsection\ --\ \bfseries#1}
[]

\titlespacing{\subsection}{0cm}{0.0cm}{0.25cm}


\titleformat{name = \subsubsection, numberless}[display]
{}
{}
{0.0cm}
{\itshape#1}
[]

\titleformat{name = \subsubsection}[display]
{}
{}
{0.0cm}
{\thesubsubsection\itshape\ --\ #1}
[]

\titlespacing{\subsubsection}{0cm}{0.0cm}{0.15cm}

% TITLE PAGE - - - - - - - - - - - - - - - - - - - - - - - -
\renewcommand{\maketitle}{
	\thispagestyle{empty}
	\makeatletter
	\afterpage{%
		\newgeometry{inner = 1.5cm, outer = 1.5cm, top = 2cm, bottom = 2cm}
		\begin{center}
			\includegraphics[width = \universityLogoWidthValue]{\universityLogoValue}
			\vspace*{\fill}
			\begin{spacing}{2.25}
				{\hrule height 1.5mm}
				\vskip 4mm
				{\Huge\bfseries\@title}
				\vskip 5mm
				{\hrule height 0.5mm}
			\end{spacing}
			\vspace*{\fill}
			{%
				\large
				{\Large\bfseries\studyProgramValue} \\[0.75cm]
				\iflanguage{ngerman}{Zur Erlangung des akademischen Grads}{Submitted in satisfaction of the requirements for the degree of} \\[0.75cm]
				{\Large\bfseries\desiredDegreeValue} \\[0.75cm]
				\iflanguage{ngerman}{Vorgelegt von}{by} \\[0.75cm]
				{\Large\bfseries\@author} \\[0.75cm]
				\iflanguage{ngerman}{am}{on} \\[0.75cm]
				{\Large\bfseries\@date}
			}%

			\vspace*{\fill}
			\begin{tabular}{r l}
				\bfseries\iflanguage{ngerman}{Erstprüfer}{First Examinor}:   & \itshape\firstExaminorName \\
				                                                             & \itshape\firstExaminorField \\
				                                                             & \\
				\bfseries\iflanguage{ngerman}{Zweitprüfer}{Second Examinor}: & \itshape\secondExaminorName \\
				                                                             & \itshape\secondExaminorField \\
			\end{tabular}
		\end{center}
		\clearpage
		\restoregeometry
		\cleardoublepage
	}%
}

% CAPTIONS - - - - - - - - - - - - - - - - - - - - - - - - -
\captionsetup{
	labelfont = {sf, bf, small},
  font = {small},
  format = hang,
  justification = justified
}


% LISTINGS - - - - - - - - - - - - - - - - - - - - - - - - -
\renewcommand{\lstlistingname}{Algorithm}
\crefname{listing}{algorithm}{algorithms}
\Crefname{listing}{Algorithm}{Algorithms}

%%
%% Julia definition (c) 2014 Jubobs
%%
\lstdefinelanguage{Julia}%
  {morekeywords={abstract,break,case,catch,const,continue,do,else,elseif,%
      end,export,false,for,function,immutable,import,importall,if,in,%
      macro,module,otherwise,quote,return,switch,true,try,type,typealias,%
      using,while},%
   sensitive=true,%
   alsoother={$},%
   morecomment=[l]\#,%
   morecomment=[n]{\#=}{=\#},%
   morestring=[s]{"}{"},%
   morestring=[m]{'}{'},%
}[keywords,comments,strings]%

\lstset
{
	frame = single,
	framerule = 0.25mm,
	rulecolor = \color{black!30!white},
	belowcaptionskip = 2mm,
	aboveskip = 1em,
	belowskip = 1em,
	showstringspaces = false,
	columns = fixed,
	basicstyle = {\linespread{1.1}\footnotesize\ttfamily},
	numbers = left,
	numbersep = 2mm,
	numberstyle = {\color{gray}\ttfamily\scriptsize},
	xleftmargin = 1.8em,
	keywordstyle = {\color{darkmagenta}},
	commentstyle = {\color{gray}\slshape},
	stringstyle = {\color{darkgreen}},
	breaklines = true,
	breakatwhitespace	= true,
	tabsize = 2,
	backgroundcolor = \color{black!2!white},
	mathescape = true,
	captionpos = b,
	emph = {continue,and},
	emphstyle = {\color{darkblue}},
	escapechar = ?,
	language = Julia,
}

\newcommand{\indRule}{\color{lightgray}\vrule}


% OTHER SETTINGS - - - - - - - - - - - - - - - - - - - - - -
\tikzset{external/only named = true}
\bibliographystyle{apalike}
\pagestyle{fancy}
\setstretch{1.3}
