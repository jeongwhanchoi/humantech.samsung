% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % % LaTeX document class for the Humantech Paper Award  % % %
% % % Modified edition 2022.11.29 by Jeongwhan Choi % % % % % %
% % % First edition 2022.11.05 by Junseok Lee % % % % % % % % %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{humantech}[Samsung Humantech LaTeX class]
\LoadClass[10pt, twoside, twocolumn]{article}
\RequirePackage[a4paper, left=1.5cm, right=1.5cm, top=3cm, bottom=2.5cm]{geometry}

\def\turn#1{\gdef\@turn{#1}}

\usepackage[dvipsnames]{xcolor}
\RequirePackage{fontspec}
\RequirePackage{kotex}
\XeTeXlinebreakpenalty=10000	% Disable line breaking
\hyphenpenalty=10000			% Disable hyphenization
\exhyphenpenalty=10000			% Disable hyphenization

\RequirePackage{setspace}
\linespread{1.08}				% Line spacing 1.08

\RequirePackage{tabularx}
\RequirePackage{multicol}
\RequirePackage{indentfirst}

%% Fonts setting - English: Times New Roman %%
\setmainfont{Times New Roman}[Ligatures=TeX]
\xetexkofontregime{latin}[alphs=latin, puncts=prevfont, colons=prevfont, hyphens=prevfont, parens=latin, cjksymbols=hangul]
\disablecjksymbolspacing
\nonfrenchspacing

\RequirePackage{titlesec}
\titleformat{\section}[block]{\normalfont\fontsize{11}{11}\selectfont\bfseries}{\thesection.}{0.5em}{}
\titlespacing*{\section}{0pt}{2.5ex plus .5ex minus .3ex}{2ex plus .3ex}
\titleformat{\subsection}[block]{\normalfont\fontsize{10}{10}\selectfont}{\thesubsection.}{0.5em}{}
\titlespacing*{\subsection}{0pt}{2ex plus .3ex minus .3ex}{0.8ex plus .3ex}
\titleformat{\subsubsection}[block]{\normalfont\fontsize{10}{10}\selectfont}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.}{0.5em}{}
\titlespacing*{\subsubsection}{0pt}{2ex plus .3ex minus .3ex}{0.8ex plus .3ex}

\RequirePackage{caption}
\captionsetup{
	justification=raggedright,
	singlelinecheck=false,
	labelsep=period,
	labelfont=bf,
	textfont=bf
}
\renewcommand{\figurename}{Fig.}
\def\fps@figure{htbp}
\def\fps@table{htbp}

%% Page and Margin Settings %%
\setlength{\columnsep}{2em}
\setlength{\parindent}{11pt}
\setlength{\parskip}{0.2\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip}
\setlength{\tabcolsep}{0.5em}
\setlength{\textfloatsep}{1.2\baselineskip plus 0.2\baselineskip minus 0.4\baselineskip}
\setlength{\intextsep}{0.7\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip}
\setlength{\floatsep}{0.7\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip}

%% Header & Footer setting %%
\RequirePackage{fancyhdr}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\fancypagestyle{title}{%
	\setlength{\topmargin}{-14pt}
	\setlength{\headsep}{15pt}
	\fancyhf{}
	\fancyhead[L]{\fontsize{12}{12}\selectfont\textbf{\color{gray} \@turn$^\text{th}$ Humantech Paper Award}}
	\fancyfoot[R]{\fontsize{8}{8}\selectfont\color{gray}\thepage}
	\fancyfoot[L]{\fontsize{8}{8}\selectfont\color{gray}
		\begin{tabular}[t]{l}
			본 논문에 포함된 정보의 전부 또는 일부를 무단으로 제3자에게 공개, 배포, 복사 또는 사용하는 것을 엄격히 금지합니다.\\
			본 논문의 모든 저작권은 저자에게 있습니다.
		\end{tabular}
	}
}
\setlength{\topmargin}{-17pt}
\setlength{\headsep}{18pt}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\fontsize{9}{9}\selectfont\color{gray} \@turn$^\text{th}$ Humantech Paper Award}
\fancyfoot[LE,RO]{\fontsize{8}{8}\selectfont\color{gray}\thepage}
\fancyfoot[RE,LO]{\fontsize{8}{8}\selectfont\color{gray}
	\begin{tabular}[t]{l}
		본 논문에 포함된 정보의 전부 또는 일부를 무단으로 제3자에게 공개, 배포, 복사 또는 사용하는 것을 엄격히 금지합니다.\\
		본 논문의 모든 저작권은 저자에게 있습니다.
	\end{tabular}
}

%% Title Setting %%
\makeatletter
\renewcommand{\maketitle}{%
	\noindent\begin{tabularx}{\textwidth}{@{\hspace{3pt}}X@{\hspace{3pt}}}
	\rule{0pt}{4.6ex}\textbf{\fontsize{20}{25}\selectfont\@title}\vspace{30pt}\end{tabularx}\\\thispagestyle{title}}
\makeatother

%% Abstract Setting %%
\renewenvironment{abstract}%
	{\noindent\tabularx{\textwidth}{@{\hspace{3pt}}X@{\hspace{3pt}}}%
	\raggedright%
	\frenchspacing%
	% ascii opening
	\XeTeXcharclass "28=\XeTeXcharclassAM % ( LEFT PARENTHESIS
	\XeTeXcharclass "3C=\XeTeXcharclassAM % < LESS-THAN SIGN
	\XeTeXcharclass "5B=\XeTeXcharclassAM % [ LEFT SQUARE BRACKET
	\XeTeXcharclass "60=\XeTeXcharclassAM % ` GRAVE ACCENT
	\XeTeXcharclass "7B=\XeTeXcharclassAM % { LEFT CURLY BRACKET
	\XeTeXcharclass "AB=\XeTeXcharclassAM % « LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
	% ascii closing
	\XeTeXcharclass "29=\XeTeXcharclassAM % ) RIGHT PARENTHESIS
	\XeTeXcharclass "3E=\XeTeXcharclassAM % > GREATER-THAN SIGN
	\XeTeXcharclass "5D=\XeTeXcharclassAM % ] RIGHT SQUARE BRACKET
	\XeTeXcharclass "7D=\XeTeXcharclassAM % } RIGHT CURLY BRACKET
	\XeTeXcharclass "BB=\XeTeXcharclassAM % » RIGHT-POINTING DOUBLE ANGLE
	\bfseries\rule{0pt}{11pt}(Abstract)}%
	{\\\endtabularx\smallskip %
	% ascii opening
	\XeTeXcharclass "28=\XeTeXcharclassAO % ( LEFT PARENTHESIS
	\XeTeXcharclass "3C=\XeTeXcharclassAO % < LESS-THAN SIGN
	\XeTeXcharclass "5B=\XeTeXcharclassAO % [ LEFT SQUARE BRACKET
	\XeTeXcharclass "60=\XeTeXcharclassAO % ` GRAVE ACCENT
	\XeTeXcharclass "7B=\XeTeXcharclassAO % { LEFT CURLY BRACKET
	\XeTeXcharclass "AB=\XeTeXcharclassAO % « LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
	% ascii closing
	\XeTeXcharclass "29=\XeTeXcharclassAC % ) RIGHT PARENTHESIS
	\XeTeXcharclass "3E=\XeTeXcharclassAC % > GREATER-THAN SIGN
	\XeTeXcharclass "5D=\XeTeXcharclassAC % ] RIGHT SQUARE BRACKET
	\XeTeXcharclass "7D=\XeTeXcharclassAC % } RIGHT CURLY BRACKET
	\XeTeXcharclass "BB=\XeTeXcharclassAC % » RIGHT-POINTING DOUBLE ANGLE 
	\\}