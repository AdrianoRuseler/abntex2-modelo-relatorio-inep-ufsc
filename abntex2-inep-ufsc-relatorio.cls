%%
%% Customizações do abnTeX2 (http://www.abntex.net.br/) para o INEP-UFSC
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Adriano Ruseler, ruseler@inep.ufsc.br
%%
%% Further information about abnTeX2 are available on http://www.abntex.net.br/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntex2-inep-ufsc-relatorio}[2015/06/09 v1.0 Modelo baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

\RequirePackage{caption}
\RequirePackage{layouts}

% Fonte 'Times New Roman'
\RequirePackage{mathptmx}

\RequirePackage{hyperref}


\RequirePackage{amsthm}
% ---
\newtheorem{axioma}{Axioma}[chapter]
\newtheorem{postulado}{Postulado}[chapter]
\newtheorem{teorema}{Teorema}[chapter]
\newtheorem{conjectura}{Conjectura}[chapter]
\newtheorem{corolario}{Coral\'ario}[teorema]
\newtheorem{lema}[teorema]{Lema}
\newtheorem{proposicao}{Proposi\c{c}\~ao}[teorema]


\theoremstyle{definition} % Commonly used in definitions, conditions, problems and examples.
\newtheorem{definicao}{Defini\c{c}\~ao}[section]
\newtheorem{exemplo}{Exemplo}[section]
\newtheorem{exercicio}{Exerc\'icio}[section]
\newtheorem{condicao}{Condi\c{c}\~ao}[section]

\theoremstyle{remark}
\newtheorem*{observacao}{Observa\c{c}\~ao}


% \def\<type>autorefname{<new name>}
\renewcommand{\tableautorefname}{Tabela}
\renewcommand{\figureautorefname}{Figura}
\renewcommand{\chapterautorefname}{Cap\'itulo}
\renewcommand{\equationautorefname}{Equa\c{c}\~ao}



% Fontes dos títulos e seções 


% Tamanho da fonte padrão do 'ABNTEX'

% http://tug.org/fonts/
% The three default family font variables and the \familydefault variable should not be confused with their respective switch:
%   http://www.forkosh.com/pstex/latexcommands.htm
% variable	value	activated by

%\encodingdefault	OT1	\normalfont, \textnormal{}
%\familydefault	\rmdefault	\normalfont, \textnormal{}
%\rmdefault	cmr	\rmfamily, \textrm{}
%\ttdefault	cmtt	\ttfamily, \texttt{}
%\sfdefault	cmss	\sffamily, \textsf{}
%\seriesdefault	m	\normalfont, \textnormal{}
%\mddefault	m	\mdseries, \textmd{}
%\bfdefault	bx	\bfseries, \textbf{}
%\shapedefault	n	\normalfont, \textnormal{}
%\updefault	n	\upshape, \textup{}
%\itdefault	it	\itshape, \textit{}
%\scdefault	sc	\scshape, \textsc{}
%\sldefault	sl	\slshape, \textsl{} 

\renewcommand{\familydefault}{cmr} % Fonte padrão utilizada no texto
\renewcommand{\rmdefault}{cmr} % Selects a roman (i.e., serifed) font family
% \renewcommand{\sfdefault}{cmss} % Selects a sans serif font family
% \renewcommand{\ttdefault}{cmtt} % Selects a monospaced (“typewriter”) font family


\renewcommand{\ABNTEXpartfont}{\usefont{T1}{cmr}{bx}{n}} % Apendices, anexos...
%\renewcommand{\ABNTEXpartfontsize}{\fontsize{15pt}{18pt}}
\renewcommand{\ABNTEXchapterfont}{\usefont{T1}{cmr}{bx}{n}}
%\renewcommand{\ABNTEXchapterfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsectionfont}{\usefont{T1}{cmr}{m}{n}}
%\renewcommand{\ABNTEXsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsectionfont}{\usefont{T1}{cmr}{b}{n}}
%\renewcommand{\ABNTEXsubsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsubsectionfont}{\usefont{T1}{cmr}{m}{n}}
%\renewcommand{\ABNTEXsubsubsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsubsubsectionfont}{\usefont{T1}{cmr}{m}{it}}
%\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\fontsize{10.5pt}{12pt}}


\captionsetup[table]{
 %  name=Tabela,
 %  listformat=empty,
 %  justification=justified,
 %  labelsep=colon,
%   position=above,
%   skip=\onelineskip,
 %  width=\linewidth,
   labelfont={normalsize},
   textfont={small},
   font={normalsize}
}

\captionsetup[figure]{
    %  name=Tabela,
	%  listformat=empty,
	%  justification=justified,
	%  labelsep=colon,
	%   position=above,
	%   skip=\onelineskip,
	%  width=\linewidth,
	labelfont={normalsize},
	textfont={small},
	font={normalsize}
}

% Comandos auxiliares
 \newcommand{\showfont}{%
   encoding: \f@encoding{},
   family: \f@family{},
   series: \f@series{},
   shape: \f@shape{},
   size: \f@size{},
baseline: \f@baselineskip{}
%tfsize: \tf@size{},
%sfsize: \sf@size{},
%sssize: \ssf@size{}
 }

% Comandos auxiliares
 \newcommand{\justshowfont}{%
    \f@encoding{},
    \f@family{},
    \f@series{},
    \f@shape{},
    \f@size{},
 \f@baselineskip{}
%tfsize: \tf@size{},
%sfsize: \sf@size{},
%sssize: \ssf@size{}
 }

% Comandos de dados - Disciplina
\providecommand{\imprimirdisciplina}{}
\newcommand{\disciplina}[1]{\renewcommand{\imprimirdisciplina}{#1}}

% Comandos de dados - Professor
\providecommand{\imprimirprofessor}{}
\newcommand{\professor}[1]{\renewcommand{\imprimirprofessor}{#1}}

% ------------------------------------------------------------------------
% ------------------------------------------------------------------------
% IMPRESSOES PADROES DE CAPA E FOLHA DE ROSTO
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------

\newcommand*\varhrulefill[1][0.4pt]{\leavevmode\leaders\hrule height#1\hfill\kern0pt}

% ---
% Impressão da Capa
\renewcommand{\imprimircapa}{%
	\begin{capa}%
		\center
		\includegraphics[width=0.25\textwidth]{Logos/logo-ufsc.pdf}~\\[0.5cm]
%		\ABNTEXchapterfont\bfseries\large{UNIVERSIDADE FEDERAL DE SANTA CATARINA\\PROGRAMA DE P\'OS--GRADUA\c C\~AO EM ENGENHARIA EL\'ETRICA}
		\textsc{\LARGE Universidade Federal}\\[0.25cm] % Name of your university/college
		\textsc{\LARGE de Santa Catarina}\\[0.8cm] % Name of your university/college
		\textsc{\Large Centro Tecnológico}\\[0.4cm] % Major heading such as course name
		\textsc{\large Departamento de Engenharia Elétrica e Eletrônica}\\[1.5cm] % Minor heading such as course title

		\vfill
		\noindent\varhrulefill[0.4mm] \\[0.4cm]
		\ABNTEXchapterfont\bfseries\Large\MakeUppercase{\imprimirtitulo} \\[0.4cm]
		\noindent\varhrulefill[0.4mm] 
		\vfill

		\ABNTEXchapterfont\large\imprimirautor
		
		\vfill
		
		\large\imprimirlocal
		
		\large\imprimirdata
		
		\vspace*{1cm}
	\end{capa}
}
% ---

% folha de rosto 

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}
{\ABNTEXchapterfont\large UNIVERSIDADE FEDERAL DE SANTA CATARINA\\PROGRAMA DE P\'OS--GRADUA\c C\~AO EM ENGENHARIA EL\'ETRICA}

    \vspace*{1cm}

{\ABNTEXchapterfont\large\imprimirautor}

\vspace*{\fill}\vspace*{\fill}

\begin{center}
\ABNTEXchapterfont\bfseries\Large\imprimirtitulo
\end{center}

\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
  \imprimirpreambulo
  \end{minipage}%
  \vspace*{\fill}
}%


%{\large\imprimirorientadorRotulo~\imprimirdisciplina\par}

\abntex@ifnotempty{\imprimircoorientador}{%
  {\large\imprimircoorientadorRotulo~\imprimircoorientador}%
}%

\vspace*{\fill}

{\abntex@ifnotempty{\imprimirinstituicao}{\imprimirinstituicao\vspace*{\fill}}}

{\large\imprimirlocal}

\par

{\large\imprimirdata}
\vspace*{1cm}
\end{center}
}
\makeatother











\newcommand{\imprimefolharosto}{

\begin{center}  % Center everything on the page	


%----------------------------------------------------------------------------------------
%	LOGO SECTION
%----------------------------------------------------------------------------------------

% Upper part of the page. The '~' is needed because \\
% only works if a paragraph has started.
\includegraphics[width=0.25\textwidth]{Logos\logo-ufsc.pdf}~\\[1cm]


%----------------------------------------------------------------------------------------
%	HEADING SECTIONS
%----------------------------------------------------------------------------------------

\textsc{\LARGE Universidade Federal}\\[0.5cm] % Name of your university/college
\textsc{\LARGE de Santa Catarina}\\[1.5cm] % Name of your university/college
\textsc{\Large Centro Tecnológico}\\[0.5cm] % Major heading such as course name
\textsc{\large Departamento de Engenharia Elétrica e Eletrônica}\\[1.5cm] % Minor heading such as course title

%----------------------------------------------------------------------------------------
%	TITLE SECTION
%----------------------------------------------------------------------------------------

\HRule \\[0.4cm]
{ \Huge \bfseries Plano de Ensino -- EEL7200} \\[0.6cm] % Title of your document
{ \huge \bfseries  Eletrônica de Potência II -- Laboratório} \\[0.4cm] % Title of your document
\HRule \\[1.5cm]

%----------------------------------------------------------------------------------------
%	TOPIC SECTION
%----------------------------------------------------------------------------------------

{ \Large \bfseries Curso de Graduação em Engenharia Elétrica} \\[1.5cm] % Title of your document


%----------------------------------------------------------------------------------------
%	AUTHOR SECTION
%----------------------------------------------------------------------------------------

\begin{minipage}{0.5\textwidth}
	\begin{flushleft} \large
		\emph{Autor:}\\
		Prof. Adriano \textsc{Ruseler}, M. Eng. % Your name
	\end{flushleft}
\end{minipage}
~
\begin{minipage}{0.3\textwidth}
	\begin{flushright} \large
		\emph{Semestre:} \\
		2015/2
	\end{flushright}
\end{minipage}\\[3cm]

% If you don't want a supervisor, uncomment the two lines below and remove the section above
%\Large \emph{Author:}\\
%John \textsc{Smith}\\[3cm] % Your name

%----------------------------------------------------------------------------------------
%	DATE SECTION
%----------------------------------------------------------------------------------------

{\large Florianópolis, \today.}\\[3cm] % Date, change the \today to a set date if you want to be precise

%----------------------------------------------------------------------------------------

\vfill % Fill the rest of the page with whitespace
\end{center}
}
\makeatother


