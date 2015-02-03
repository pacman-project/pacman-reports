%% ==========================================================================
%%
%%  Class:  PACMANREPORT
%%
%%  Author: Jeremy L. Wyatt
% % Derived from a Class file by: Geert-Jan M. Kruijff
%%          Language Technology Lab
%%          DFKI
%%          Saarbruecken, Germany
%%  Email:  jlw@cs.bham.ac.uk
%%
%%  PACMANREPORT modifies the standard article class for LaTeX2e.
%%
%%  -------------------------------------------------------------------------
%%
%%  Class-options: 
%%  * [ps]   : To be used when creating a PostScript version of the article
%%  * [pdf]  : To be used when creating a PDF version of the article
%%  * [draft]: Turns on draft mode (footer with document information)
%%  * [internal]: Turns on internal mode (footer with restricted circulation)
%% 
%%  Commands for title: 
%%  * \author : Required; author(s) of the paper
%%  * \title  : Required; title of the paper
%%  * \address: Required; address of the author(s)
%%  * \project: Required; project of the authors
%%  * \email  : Required; email address(es) of the author(s)
%%
%%  Commands for headers:
%%  * \headertitle:  by default same as \title, change if necessary
%%  * \headerauthor: by default same as \author, change if necessary
%%
%%  Logo:
%%  * cosylogo.eps:  Searched for in document directory, used in PS mode
%%  * cosylogo.png:  Searched for in document directory, used in PDF mode
%% 
%% =========================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pacmanreport}[2014/02/11 PACMAN ``report'' style]
\typeout{}
\typeout{PACMANREPORT style, Jeremy L Wyatt Feb 2014, Geert-Jan M. Kruijff, July 2009}
\typeout{==============================================}
\RequirePackage{epsfig,tabularx,graphicx}
\usepackage[scaled=0.92]{helvet}
%%\RequirePackage{concrete}

\newcommand{\algref}[1]{Algorithm \ref{#1}}
\newcommand{\defref}[1]{Definition \ref{#1}}
\newcommand{\exeref}[1]{Example \ref{#1}}
\newcommand{\figref}[1]{Figure \ref{#1}}
\newcommand{\secref}[1]{\S\ref{#1}}

\newcommand{\myemail}{}
\newcommand{\email}[1]{\renewcommand{\myemail}{#1}}
\newcommand{\myaddress}{}
\newcommand{\address}[1]{\renewcommand{\myaddress}{#1}}
\newcommand{\myproject}{}
\newcommand{\project}[1]{\renewcommand{\myproject}{#1}}

\newcommand{\myprojectid}{}
\newcommand{\projectid}[1]{\renewcommand{\myprojectid}{#1}}

\newcommand{\mydeliverableid}{}
\newcommand{\deliverableid}[1]{\renewcommand{\mydeliverableid}{#1}}



\newcommand{\myduedate}{}
\newcommand{\duedate}[1]{\renewcommand{\myduedate}{#1}}
\newcommand{\mysubmissiondate}{}
\newcommand{\submissiondate}[1]{\renewcommand{\mysubmissiondate}{#1}}
\newcommand{\myprojectstart}{}
\newcommand{\projectstart}[1]{\renewcommand{\myprojectstart}{#1}}
\newcommand{\myduration}{}
\newcommand{\duration}[1]{\renewcommand{\myduration}{#1}}
\newcommand{\myleadpartner}{}
\newcommand{\leadpartner}[1]{\renewcommand{\myleadpartner}{#1}}
\newcommand{\myrevision}{}
\newcommand{\revision}[1]{\renewcommand{\myrevision}{#1}}
\newcommand{\mydisslevel}{}
\newcommand{\disseminationlevel}[1]{\renewcommand{\mydisslevel}{#1}}

\newcommand{\myauthor}{me}
\newcommand{\mytitle}{title}
\newcommand{\headerauthor}[1]{\renewcommand{\myauthor}{#1}}
\newcommand{\headertitle}[1]{\renewcommand{\mytitle}{#1}}

\newcommand{\mylogo}{images/pacman-logo-long-red.pdf}
\newcommand{\reportlogo}[1]{\renewcommand{\mylogo}{#1}}


\newcommand{\comment}[1]{
        \noindent{\scriptsize \fbox{Comment} \textsf{#1}\\}}
\newcommand{\marginlabel}[1]{
        \mbox{}\marginpar{\raggedleft\hspace{0pt}\scriptsize{\textsf{#1}}}}


\newcommand{\clearemptydoublepage}{\newpage{\pagestyle{empty}\cleardoublepage}}


\newif\if@isps
\newcommand\@isps

\newif\if@ispdf
\newcommand\@ispdf


\newif\if@isdraft
\newcommand\@isdraft

\newif\if@isinternal
\newcommand\@isinternal

\DeclareOption{ps}{\@ispstrue
                \typeout{** PACMANREPORT: PostScript mode on}}
\DeclareOption{pdf}{\@ispdftrue
                \typeout{** PACMANREPORT: PDF mode on}}
\DeclareOption{draft}{\@isdrafttrue
                \typeout{** PACMANREPORT: Draft mode on}}
\DeclareOption{internal}{\@isinternaltrue
                \typeout{** PACMANREPORT: Internal circulation paper}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}


\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
   \hfill   \begin{tabular}{l}
                        \if@isps
                                %% \epsfig{width=45pt,height=45pt,file=cosylogo.eps}\\ 
                               \epsfig{file=logos/pacmanlogo.eps}\\ 
                        \fi
                        \if@ispdf
                               %% \includegraphics[width=45pt,height=45pt]{Logos/cogxlogo.pdf}\\ 
                                \hspace{-10mm}
                                \includegraphics[height=80pt]{\mylogo}\\ 
                        \fi   
                                     
                          {\hspace{-9mm} \fontfamily{phv}\selectfont \small\myproject}\\
                           {\hspace{-9mm} \fontfamily{phv}\selectfont \footnotesize\myprojectid }\\
                            {\hspace{-9mm} \fontfamily{phv}\selectfont \footnotesize\myprojectstart{}  (\myduration months)} \\
                \end{tabular}
    \begin{flushleft}%
  \let \footnote \thanks
    {\LARGE \mydeliverableid:\\  \@title 
     \if@isdraft
        \thanks{Draft Version, \today.}
    \fi
     \if@isinternal
        \thanks{\textsc{Intended for internal circulation only} (\today).}
    \fi
    \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \noindent\begin{tabular}{p{11cm}}
                        \@author  \\[.5em]
                        {\small {\textsl \myaddress}} \\
                        {\small $\langle${\texttt \myemail}}$\rangle$ 
                \end{tabular}
      \par}%
    \vskip .8em%
       
  \end{flushleft}%
  \par
  %\noindent\rule{\linewidth}{.2mm}
  \par
   \footnotesize{
  \noindent\begin{tabular}{ll}
  \textsl{Due date of deliverable: } 	& \myduedate\\
  \textsl{Actual submission date:}  	& \mysubmissiondate\\
  \textsl{Lead partner: }			& \myleadpartner\\
  \textsl{Revision:}				& \myrevision\\
  \textsl{Dissemination level:}		& \mydisslevel\\
  \end{tabular}}
  \par\vspace{3mm}
  \noindent\rule{\linewidth}{.2mm}  
}

\if@titlepage
  \renewenvironment{abstract}{%
      \titlepage
      \null\vfil
      \@beginparpenalty\@lowpenalty
      \begin{flushleft}%
        \bfseries \abstractname
        \@endparpenalty\@M
      \end{flushleft}
      \noindent\rule{\linewidth}{.2mm}
     }%
     {\par    
       \vspace{-.5em}
       \noindent\rule{\linewidth}{.2mm}\par
       \vfil\null\endtitlepage}
\else
  \renewenvironment{abstract}{%
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \footnotesize
        %% \vspace{-1em}
        %\begin{flushleft}%
        %  \noindent{\sc \abstractname.} \hspace{.1em} %\vspace{-.5em}\vspace{\z@}}%
        %\end{flushleft}%
        \noindent\quotation      
      \fi 
      }
      {\if@twocolumn\else\endquotation\fi}
\fi 




%\def\@oddhead{\noindent\rule{\linewidth}{.2mm}\\\par \myauthor, \mytitle}
%\def\@evenhead{\noindent\rule{\linewidth}{.2mm}\\  \myauthor, \mytitle}

\def\@oddhead{\noindent\centerline{\begin{tabular}{lcr} \textsl{\small{\mydeliverableid: \mytitle}} &  \hfill & \textsl{\small{\myauthor}}\end{tabular}} }
\def\@evenhead{\noindent\centerline{\begin{tabular}{lcr} \textsl{\small{\mydeliverableid: \mytitle}} & \hfill & \textsl{\small{\myauthor}}\end{tabular}}}

\def\@evenfoot{\small\thepage\hfil{\slshape\myproject} \if@isinternal / Intended for internal circulation only (\today).\fi}%
\def\@oddfoot{\small{\slshape\myproject} \if@isinternal / Intended for internal circulation only.\fi\hfil\thepage}%

\renewcommand\tableofcontents{%
%%    \vspace{-.5em}
%%     \noindent\rule{\linewidth}{.2mm}\par

%\begin{flushleft}\small\sc Contents\end{flushleft}
    \@starttoc{toc}%
    }


%% ============================================================
%% 
%% Development Log: 
%% * Begin edit: 2004 Oct 8
%% * Last  edit: 2014 Feb 11
%%
%% ------------------------------------------------------------
%% [Oct 8,GJ]  Created class file 
%% [Feb 11, JLW] Modified class file
%%















