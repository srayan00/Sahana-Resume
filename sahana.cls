% Intro Options
\ProvidesClass{rahulworld-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{blindtext}
\usepackage{lipsum}
\usepackage{amsmath}
\usepackage{tikz}
\usepackage{enumitem}


% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{34495E}
\definecolor{headings}{HTML}{0E6655}
\definecolor{subheadings}{HTML}{333333}
\definecolor{smcolor}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/calibri/]{Calibri}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/calibri/]{Calibri}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/calibri/]{CALIBRIB}\selectfont #1 \normalfont}


% Header command
% \newcommand{\headername}{\color{headings}
% \fontspec[Path = fonts/calibri/]{Calibri}\fontsize{24pt}{32pt}\selectfont\raggedright}{} {0em}{}
\newcommand{\headername}[1]{\color{subheadings}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{24pt}{12pt}\selectfont\vspace{10pt}\centering {#1} \normalfont}
\titlespacing{\section}{0pt}{0pt}{0pt}


%contact info command
\newcommand{\namesection}[2]{
\centering{
\fontsize{24pt}{12pt}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\selectfont #1 
} \\[5pt]
\centering{
\color{subheadings}
\fontspec[Path = fonts/calibri/]{Calibri}\fontsize{11pt}{14pt}\selectfont #2}
\noindent\makebox[\linewidth]{\color{primary}\rule{\paperwidth}{0.4pt}}
%\vspace{-15pt}
}

% Headings command
\titleformat{\section}{\color{headings}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{16pt}{24pt}\selectfont\raggedright}{} {0em}{}

\newcommand{\SectionHead}[1]{\smash{\begin{tabular}{l} \hline #1 \\ \hline \end{tabular}\hspace*{-\tabcolsep}}}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{11pt}{12pt}\selectfont\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}

\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{11pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\hspace*{0pt}\hfill\vspace{3pt}\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Item Description command
\newcommand{\itemdes}[1]{\color{subheadings}\raggedright\vspace{2pt}\fontspec[Path = fonts/calibri/]{Calibri}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

% Descriptors command
\newcommand{\descriptright}[1]{\color{subheadings}\raggedright\hspace*{0pt}\hfill\fontspec[Path = fonts/calibri/]{CALIBRII}\fontsize{11pt}{12pt}\selectfont {#1 \\} \normalfont}

% Descriptors datecolor
\newcommand{\datecolor}[1]{\color{smcolor}\raggedright\scshape\fontspec[Path = fonts/calibri/]{CALIBRII}\fontsize{11pt}{13pt}\selectfont {#1 } \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{4pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\begin{itemize}[leftmargin =*]
\setlength{\itemsep}{0.2pt}
\setlength{\topsep}{0.2pt}
\parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}


%Location command
\newcommand{\location}[1]{\color{subheadings}\fontspec[Path = fonts/calibri/]{CALIBRII}\fontsize{11pt}{12pt}\selectfont {#1 \\} \normalfont}

% Proficiency scale
\newcommand{\grade}[1]{%
\begin{tikzpicture}
\clip (1em-.3em,-.3em) rectangle (5em +.5em ,.3em);
\begin{scope}
\clip (1em-.3em,-.3em) rectangle (#1em +.5em ,.3em);
\foreach \x in {1,2,...,5}{
 \path[fill= headings] (\x em,0) circle (.25em);
}
\end{scope}
\foreach \x in {1,2,...,5}{
 \draw (\x em,0) circle (.25em);
}
\end{tikzpicture}%
}
