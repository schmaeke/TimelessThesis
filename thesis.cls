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
\RequirePackage[inner  = 2.25cm,
                outer  = 1.50cm,
								top    = 2.50cm,
								bottom = 3.00cm]{geometry}

% Document fonts
\RequirePackage{paratype}
\RequirePackage{CharisSIL}
\RequirePackage{cascadia-code}
\RequirePackage[notext]{stix}
\RequirePackage[T1]{fontenc}

% Math symbols and formatting
\RequirePackage[fleqn]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{xfrac}

% Formatting
\RequirePackage{fancyhdr}
\RequirePackage[parfill]{parskip}
\RequirePackage{caption}
\RequirePackage{titlesec}
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


% COLORS - - - - - - - - - - - - - - - - - - - - - - - - - -
% tab20 colors (https://matplotlib.org/stable/tutorials/colors/colormaps.html)
\definecolor{blue}{RGB}{58, 116, 180}
\definecolor{lightblue}{RGB}{179, 198, 232}

\definecolor{orange}{RGB}{241, 135, 25}
\definecolor{lightorange}{RGB}{246, 191, 121}

\definecolor{green}{RGB}{75, 158, 40}
\definecolor{lightgreen}{RGB}{164, 221, 136}

\definecolor{red}{RGB}{199, 61, 45}
\definecolor{lightred}{RGB}{243, 158, 152}

\definecolor{purple}{RGB}{144, 105, 190}
\definecolor{lightpurple}{RGB}{194, 177, 214}

\definecolor{brown}{RGB}{133, 89, 76}
\definecolor{lightbrown}{RGB}{191, 158, 149}

\definecolor{pink}{RGB}{216, 126, 195}
\definecolor{lightpink}{RGB}{239, 185, 211}

\definecolor{gray}{RGB}{127, 127, 127}
\definecolor{lightgray}{RGB}{199, 199, 199}

\definecolor{yellow}{RGB}{187, 190, 32}
\definecolor{lightyellow}{RGB}{218, 220, 140}

\definecolor{cyan}{RGB}{83, 187, 206}
\definecolor{lightcyan}{RGB}{169, 216, 228}



% PGFPLOTS color lists
\pgfplotscreateplotcyclelist{plotColorList}{
	blue \\
	orange \\
	green \\
	red \\
	purple \\
	brown \\
	pink \\
	gray \\
	yellow \\
	cyan \\
	lightblue \\
	lightorange \\
	lightgreen \\
	lightred \\
	lightpurple \\
	lightbrown \\
	lightpink \\
	lightgray \\
	lightyellow \\
	lightcyan \\
}

\pgfplotscreateplotcyclelist{plotColorListMark}{
	blue,        mark = square*, mark size = 1.0pt, mark options = {fill = blue!50!white, solid} \\
	orange,      mark = *, mark size = 1.0pt, mark options = {fill = orange!50!white, solid} \\
	green,       mark = triangle*, mark size = 1.0pt, mark options = {fill = green!50!white, solid} \\
	red,         mark = diamond*, mark size = 1.0pt, mark options = {fill = red!50!white, solid} \\
	purple,      mark = pentagon*, mark size = 1.0pt, mark options = {fill = purple!50!white, solid} \\
	brown,       mark = square*, mark size = 1.0pt, mark options = {fill = brown!50!white, solid} \\
	pink,        mark = *, mark size = 1.0pt, mark options = {fill = pink!50!white, solid} \\
	gray,        mark = triangle*, mark size = 1.0pt, mark options = {fill = gray!50!white, solid} \\
	yellow,      mark = diamond*, mark size = 1.0pt, mark options = {fill = yellow!50!white, solid} \\
	cyan,        mark = pentagon*, mark size = 1.0pt, mark options = {fill = cyan!50!white, solid} \\
	lightblue,   mark = square*, mark size = 1.0pt, mark options = {fill = lightblue!50!white, solid} \\
	lightorange, mark = *, mark size = 1.0pt, mark options = {fill = lightorange!50!white, solid} \\
	lightgreen,  mark = triangle*, mark size = 1.0pt, mark options = {fill = lightgreen!50!white, solid} \\
	lightred,    mark = diamond*, mark size = 1.0pt, mark options = {fill = lightred!50!white, solid} \\
	lightpurple, mark = pentagon*, mark size = 1.0pt, mark options = {fill = lightpurple!50!white, solid} \\
	lightbrown,  mark = square*, mark size = 1.0pt, mark options = {fill = lightbrown!50!white, solid} \\
	lightpink,   mark = *, mark size = 1.0pt, mark options = {fill = lightpink!50!white, solid} \\
	lightgray,   mark = triangle*, mark size = 1.0pt, mark options = {fill = lightgray!50!white, solid} \\
	lightyellow, mark = diamond*, mark size = 1.0pt, mark options = {fill = lightyellow!50!white, solid} \\
	lightcyan,   mark = pentagon*, mark size = 1.0pt, mark options = {fill = lightcyan!50!white, solid} \\
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
	allcolors = blue,
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

\setlength{\headheight}{13.6pt}
\renewcommand{\headrulewidth}{0.0mm}
\renewcommand{\footrulewidth}{0.0mm}

\fancyhead[OR]{\sffamily\small\nouppercase\rightmark}
\fancyhead[EL]{\sffamily\small\nouppercase\leftmark}
\fancyhead[ER, OL, C]{}

\fancyfoot[OR, EL]{\sffamily\small\thepage}
\fancyfoot[ER, OL, C]{}

\fancypagestyle{plain}
{
	\fancyhead[OR]{\sffamily\small\nouppercase\rightmark}
	\fancyhead[EL]{\sffamily\small\nouppercase\leftmark}
	\fancyhead[ER, OL, C]{}

	\fancyfoot[OR, EL]{\sffamily\small\thepage}
	\fancyfoot[ER, OL, C]{}
}


% HEADING - - - - - - - - - - - - - - - - - - - - - - - - -
\setcounter{secnumdepth}{3} % number until subsubsection

\titleformat{name = \chapter, numberless}[display]
{}
{}
{0.0cm}
{\sffamily\Huge\bfseries}
[]

\titleformat{name = \chapter}[display]
{}
{}
{0.0cm}
{\sffamily\Huge\bfseries\chaptername\enspace\thechapter\newline\LARGE}
[]

\titlespacing{\chapter}{0cm}{0.0cm}{0.25cm}


\titleformat{name = \section, numberless}[display]
{}
{}
{0.0cm}
{\sffamily\Large\bfseries}
[]

\titleformat{name = \section}[display]
{}
{}
{0.0cm}
{\sffamily\Large\bfseries\thesection\enspace\enspace}
[]

\titlespacing{\section}{0cm}{0.0cm}{0.25cm}


\titleformat{name = \subsection, numberless}[display]
{}
{}
{0.0cm}
{\sffamily\large\bfseries}
[]

\titleformat{name = \subsection}[display]
{}
{}
{0.0cm}
{\sffamily\large\bfseries\thesubsection\enspace\enspace}
[]

\titlespacing{\subsection}{0cm}{0.0cm}{0.25cm}


\titleformat{name = \subsubsection, numberless}[display]
{}
{}
{0.0cm}
{\sffamily\itshape}
[]

\titleformat{name = \subsubsection}[display]
{}
{}
{0.0cm}
{\sffamily\textbf{\thesubsubsection}\itshape\enspace\enspace}
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
				{\color{black!10!white}\hrule height 0.75mm}
				\vskip 4mm
				{\sffamily\Huge\bfseries\@title}
				\vskip 5mm
				{\color{black!10!white}\hrule height 0.75mm}
			\end{spacing}
			\vspace*{\fill}
			{%
				\sffamily\large
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
				\sffamily\bfseries\iflanguage{ngerman}{Erstprüfer}{First Examinor}:   & \sffamily\itshape\firstExaminorName \\
				                                                                      & \sffamily\itshape\firstExaminorField \\
				                                                                      & \\
				\sffamily\bfseries\iflanguage{ngerman}{Zweitprüfer}{Second Examinor}: & \sffamily\itshape\secondExaminorName \\
				                                                                      & \sffamily\itshape\secondExaminorField \\
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
	keywordstyle = {\color{blue}},
	commentstyle = {\color{gray}\slshape},
	stringstyle = {\color{green}},
	breaklines = true,
	breakatwhitespace	= true,
	tabsize = 2,
	backgroundcolor = \color{black!2!white},
	mathescape = true,
	captionpos = b,
	emph = {continue,and},
	emphstyle = {\color{blue}},
	escapechar = ?,
	language = Julia,
}

\newcommand{\indRule}{\color{lightgray}\vrule}

% COLOR BOXES - - - - - - - - - - - - - - - - - - - - - - -
\newtcolorbox{notebox}[1]{%
	colframe = blue,
	colback = blue!10!white,
	coltitle = blue,
	title = {#1:},
	before upper = {{\sffamily\bfseries\tcbtitle}\enspace},
	detach title,
	boxrule = 0.25mm,
	leftrule = 1.5mm,
	arc = 0mm,
	top = 0.75mm,
	right = 0.75mm,
	bottom = 0.75mm,
	left = 0.75mm,
}

\newtcolorbox{importantbox}[1]{%
	colframe = orange,
	colback = orange!10!white,
	coltitle = orange,
	title = {#1:},
	before upper = {{\sffamily\bfseries\tcbtitle}\enspace},
	detach title,
	boxrule = 0.25mm,
	leftrule = 1.5mm,
	arc = 0mm,
	top = 0.75mm,
	right = 0.75mm,
	bottom = 0.75mm,
	left = 0.75mm,
}

\newtcolorbox{alertbox}[1]{%
	colframe = red,
	colback = red!10!white,
	coltitle = red,
	title = {#1:},
	before upper = {{\sffamily\bfseries\tcbtitle}\enspace},
	detach title,
	boxrule = 0.25mm,
	leftrule = 1.5mm,
	arc = 0mm,
	top = 0.75mm,
	right = 0.75mm,
	bottom = 0.75mm,
	left = 0.75mm,
}

% OTHER SETTINGS - - - - - - - - - - - - - - - - - - - - - -
\bibliographystyle{apalike}
\pagestyle{fancy}
\setstretch{1.1}
