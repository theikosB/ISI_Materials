% =================================================
%  Custom Document Class for Function Spaces Notes
% =================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{functionspaces}[2025/08/18 v1.0 Custom class]

% ======== BASE CLASS ========
\LoadClass[12pt]{article}

% ======== PACKAGES ========
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{amsmath, amsthm, amssymb, amsfonts, dsfont}
\RequirePackage{thmtools}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{float}
\RequirePackage{framed}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{tcolorbox}
\RequirePackage{etoolbox}
\RequirePackage{csquotes}
\tcbuselibrary{theorems,skins,breakable}
\RequirePackage{titlesec}
\RequirePackage{lmodern}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{mwe}
\RequirePackage{lipsum}
\RequirePackage{tikz}
\usetikzlibrary{positioning}
\RequirePackage{hyperref}[colorlinks=true,linkcolor=PrimaryBlue,citecolor=PrimaryBlue,urlcolor=PrimaryBlue]

% ======== COLOR DEFINITIONS ========
\definecolor{PrimaryBlue}{RGB}{25,118,210}
\definecolor{SectionGray}{RGB}{100,100,100}
\colorlet{LightGray}{White!90!Periwinkle}
\colorlet{LightOrange}{Orange!15}
\colorlet{LightGreen}{Green!15}

% ======== PAGE LAYOUT ========
\setstretch{1.2}
\geometry{
    textheight=9in,
    textwidth=5.5in,
    top=1in,
    headheight=18pt,
    headsep=25pt,
    footskip=30pt
}

% ======== HEADERS/FOOTERS ========
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\small\scshape Function Spaces}
\fancyhead[R]{\small\scshape Course Notes}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

% ======== TITLE FORMATTING ========
\newcommand{\HRule}[1]{\rule{\linewidth}{#1}}
\titleformat{\section}
  {\normalfont\Large\bfseries\color{Blue}}
  {\thesection}{1em}{}
  [\vspace{2pt}\titlerule]
\titleformat{\subsection}
  {\normalfont\large\bfseries\color{PrimaryBlue}}
  {\thesubsection}{1em}{}
\titleformat{\subsubsection}
  {\normalfont\normalsize\bfseries\color{SectionGray}}
  {\thesubsubsection}{1em}{}

% ======== THEOREM ENVIRONMENTS ========
\declaretheoremstyle[name=Theorem]{thmsty}
\declaretheorem[style=thmsty,numberwithin=section]{theorem}
\tcolorboxenvironment{theorem}{
    colback=White,
    boxrule=0.5pt,
    arc=4pt,
    before skip=12pt,
    after skip=12pt,
    fontupper=\normalfont,
    breakable
}

\declaretheoremstyle[name=Proposition]{prosty}
\declaretheorem[style=prosty,numberlike=theorem]{proposition}
\tcolorboxenvironment{proposition}{
    colback=LightOrange,
    boxrule=0.5pt,
    arc=4pt,
    before skip=12pt,
    after skip=12pt,
    fontupper=\normalfont,
    breakable
}

\declaretheoremstyle[name=Lemma]{lemsty}
\declaretheorem[style=lemsty,numberlike=theorem]{lemma}
\tcolorboxenvironment{lemma}{
    colback=LightGreen,
    boxrule=0.5pt,
    arc=4pt,
    before skip=12pt,
    after skip=12pt,
    fontupper=\normalfont,
    breakable
}

\declaretheoremstyle[name=Corollary]{colsty}
\declaretheorem[style=colsty,numberlike=theorem]{corollary}
\tcolorboxenvironment{corollary}{
    boxrule=0.5pt,
    arc=4pt,
    before skip=12pt,
    after skip=12pt,
    fontupper=\normalfont,
    breakable
}

% ======== NEW ENVIRONMENTS ========
% counter (reset at each section)
\newcounter{defn}[section]
\renewcommand{\thedefn}{\thesection.\arabic{defn}}

\newtcolorbox{definition}[1][]{
  enhanced,
  breakable,
  colback=white,
  colframe=Green,
  boxrule=1pt,
  arc=4pt,
  fonttitle=\bfseries\color{White},
  before skip=12pt,
  after skip=12pt,
  % increment the counter and typeset the header; show "- <title>" only if optional arg nonempty
  title={\refstepcounter{defn} Definition~\thedefn\ifstrempty{#1}{}{ -~#1}},
}

\newtcolorbox{example}[1][]{
  enhanced,
  breakable,
  colback=white,
  colframe=PrimaryBlue,
  boxrule=1pt,
  arc=4pt,
  before skip=12pt,
  after skip=12pt,
  colbacktitle=PrimaryBlue,
  fonttitle=\bfseries\color{white},
  before upper=\refstepcounter{defn}, % <-- step counter here
  title={Example~\thedefn\ifstrempty{#1}{}{ -~#1}}
}

\newtcolorbox{remark}[1][]{
  enhanced,
  breakable,
  colback=white,
  colframe=Black,
  boxrule=1pt,
  arc=4pt,
  before skip=12pt,
  after skip=12pt,
  colbacktitle=Black,
  fonttitle=\bfseries\color{white},
  before upper=\refstepcounter{defn}, % <-- step counter here
  title={Reamark~\thedefn\ifstrempty{#1}{}{ -~#1}}
}


% ======== CUSTOM TITLEPAGE COMMAND ========
\newcommand{\maketitlepage}{%
  \begin{center}
    \includegraphics[width=1\textwidth]{images/logo.jpeg} \\[1cm]
    {\Huge\bfseries\color{PrimaryBlue} Function Spaces}\\[0.5cm]
    {\Large Sibaprasad Barik}\\[1cm]
    \noindent\rule{0.6\linewidth}{1.2pt}\\[1cm]
    {\large Comprehensive Lecture Notes}\\[0.5cm]
    \vfill
    {\large \textbf{Daibik Barik}}\\
    {\large BMAT2316}\\
    {\large Indian Statistical Institute Bangalore}\\[1cm]
  \end{center}
  \newpage
  \pagenumbering{arabic}
}
