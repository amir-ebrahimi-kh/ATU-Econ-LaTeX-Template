%% ********************************************************************
%%  Allameh Tabataba'i University Thesis Class (Economics Faculty)
%%  Significantly overhauled, debugged, and mathematically optimized
%%  Modified & Fixed by: github.com/amir-ebrahimi-kh (2026)
%% ********************************************************************

\typeout{^^J=========================================================}
\typeout{ATU Thesis Template - Economics Faculty Edition}
\typeout{Overhauled and Debugged by: github.com/amir-ebrahimi-kh}
\typeout{=========================================================^^J}

\NeedsTeXFormat{LaTeX2e}
\def\allameh-thesisversion{0.3} % نسخه نهایی و بهینه‌شده
\ProvidesClass{allameh-thesis}
              [2015/01/22 v\allameh-thesisversion\space A template for the Allameh Tabataba'i University - Economics Faculty Edition]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,11pt]{book}
%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{listings}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{calc}

% تنظیمات حاشیه صفحات (Margines)
% نکته: حاشیه راست ۴ سانت برای صحافی (شیرازه) تنظیم شده است. 
% اگر می‌خواهید برای مانیتور کاملاً وسط‌چین باشد، اعداد را به صورت (left=3cm, right=3cm) تغییر دهید.
\RequirePackage[top=3cm, bottom=2.5cm, left=2.5cm, right=4cm]{geometry}

\RequirePackage[]{acronym}
\RequirePackage[]{graphicx}
\graphicspath{{figures/}}
\RequirePackage{array}
\newcolumntype{C}[1]{>{\raggedleft\centering\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}
\newcolumntype{M}[1]{>{\raggedleft\centering\arraybackslash}m{#1}}
\RequirePackage{multicol} 
\RequirePackage{fancyhdr}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage{zref-perpage}
\zmakeperpage{footnote}
\RequirePackage{makeidx}
\makeindex
\RequirePackage[]{xcolor}
\RequirePackage[]{hyperref}

\newcommand{\besmwidth}[1]{\def\@besmwidth{#1}}
\def\department#1{\gdef\@department{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\proctorname#1{\gdef\@proctorname{#1}}
\newcommand{\credit}[1]{\def\@credit{#1}}
\newcommand{\defensedate}[1]{\def\@defensedate{#1}}
\newcommand{\grade}[1]{\def\@grade{#1}}
\newcommand{\letgrade}[1]{\def\@letgrade{#1}}
\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\firstinternalreferee}[1]{\def\@firstinternalreferee{#1}}
\newcommand{\secondinternalreferee}[1]{\def\@secondinternalreferee{#1}}
\newcommand{\firstexternalreferee}[1]{\def\@firstexternalreferee{#1}}
\newcommand{\secondexternalreferee}[1]{\def\@secondexternalreferee{#1}}
\newcommand{\viewer}[1]{\def\@viewer{#1}}
\newcommand{\totext}[1]{\def\@totext{#1}}
\newcommand{\ack}[1]{\def\@ack{#1}}
\newcommand{\faabstract}[1]{\def\@faabstract{#1}}
\newcommand{\fakey}[1]{\def\@fakey{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latindepartment#1{\gdef\@latindepartment{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\newcommand{\enabstract}[1]{\def\@enabstract{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\ProcessOptions
%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\mychapter}[1]{%
\phantomsection%
\addcontentsline{toc}{chapter}{#1}\chapter*{#1}\markboth{#1}{#1}%
}

\newcommand{\allamehtitle}{%
\thispagestyle{empty}

\begin{titlepage}
\begin{center}
به نام خداوند بخشنده مهربان 
\\[1em]
\includegraphics[width=2.8cm]{ATU_logo.eps}
\\[1em]
دانشگاه علامه طباطبائی
\\[8pt]
{\Large \bfseries \@faculty}
\end{center}

\vspace{1\baselineskip}
\begin{center}
{\large\bfseries
\if@mscthesis
پایان‌نامه کارشناسی ارشد رشته \@subject
\else
رساله دکتری رشته \@subject
\fi
\\[0.8em]
گرایش: \@field
}
\end{center}

\vskip 5ex
\begin{center}
{\huge\bfseries {\@title}}
\end{center}

\vspace{5ex}
\begin{center}
\large
{\ifx\@firstsupervisor\undefined%
\else
\ifx\@secondsupervisor\undefined%
{\large\bfseries
استاد راهنما:\\
\@firstsupervisor}
\else
{\large\bfseries 
استادان راهنما:\\
\@firstsupervisor{} و \@secondsupervisor}
\fi\fi}
\par\vspace{3ex}
{\ifx\@firstadvisor\undefined%
\else
\ifx\@secondadvisor\undefined%
{\large\bfseries
استاد مشاور:\\
\@firstadvisor}
\else
{\large\bfseries
استادان مشاور:\\
\@firstadvisor{} و \@secondadvisor}
\fi\fi}
\end{center}

\vfill
\begin{center}
{\large\bfseries%
پژوهشگر: \\
\@name\  \@surname}\par
\vspace{3ex}
{\large \bfseries \@thesisdate}
\end{center}
\end{titlepage}

%%%%%%%%%%%%
\pagenumbering{harfi}
\setcounter{page}{1}
\pagestyle{plain}
\newpage
{\large \bfseries \noindent 
\begin{center}\includegraphics[scale=.30]{ATU_logo.eps}
\end{center}\par
{\settextfont[Scale=1.3]{B Nazanin}
\begin{center}
به نام خدا\\
\textbf{منشور اخلاق پژوهش}
\end{center}
با یاری از خداوند سبحان و اعتقاد به این که عالم محضر خداوند است و همواره ناظر به اعمال انسان و به منظور پاس داشت مقام بلند دانش و پژوهش و نظر به اهمیت جایگاه دانشگاه در اعتلای فرهنگ و تمدن بشری ما دانشجویان دانشکده‌های دانشگاه علامه طباطبائی متعهد می گردیم اصول زیر را در انجام فعالیت‌های پژوهشی مد نظر قرار داده و از آن تخطی نکنیم:
\begin{enumerate}
\item  اصل حقیقت جوئی: تلاش در راستای پی جویی حقیقت و وفاداری به آن و دوری از هرگونه پنهان سازی حقیقت،
\item اصل رعایت حقوق: التزام به رعایت کامل حقوق پژوهشگران و پژوهیدگان (انسان، حیوان و نبات) و سایر صاحبان حق،
\item اصل مالکیت مادی و معنوی: تعهد به رعایت کامل حقوق مادی و معنوی دانشگاه و کلیه همکاران پژوهش،
\item اصل منافع ملی: تعهد به رعایت مصالح ملی و در نظر داشتن پیشبرد و توسعه کشور در کلیه مراحل پژوهش،
\item اصل رعایت انصاف و امانت: تعهد به اجتناب از هرگونه جانب داری غیر علمی و حفاظت از اموال، تجهیزات و منابع در اختیار،
\item اصل رازداری: تعهد به صیانت از اسرار و اطلاعات محرمانه افراد، سازمان هاو کشور و کلیه افراد و نهاد‌های مرتبط با تحقیق،
\item اصل احترام: تعهد به رعایت حریم‌ها و حرمت‌ها در انجام تحقیقات و رعایت جانب نقد و خودداری از هرگونه حرمت شکنی،
\item اصل ترویج: تعهد به رواج دانش و اشاعه نتایج تحقیقات و انتقال آن به همکاران علمی و دانشجویان به غیر از مواردی که منع قانونی دارد،
\item اصل برائت: التزام به برائت جوئی از هرگونه رفتار غیر حرفه ای و اعلام موضع نسبت به کسانی که حوزه علم و پژوهش را به شائبه‌های غیر علمی می آلایند.                                         
\end{enumerate}
\begin{center}
\@name \ \@surname
\vskip 2ex
\ifx\@defensedate\undefined\else\@defensedate\fi
\\
امضاء
\end{center}
}
}
\newpage
\noindent
\pagestyle{plain}
{\large \bfseries \noindent 
\begin{center}\includegraphics[scale=.30]{ATU_logo.eps}
\end{center}\par
{\settextfont[Scale=1.3]{B Nazanin}
\begin{center}
\textbf{تعهدنامه اصالت اثر}
\end{center}
اینجانب
\ \@name \ \@surname \ 
دانش آموخته مقطع تحصیلی 
\if@mscthesis کارشناسی ارشد \else دکتری \fi
در رشته 
\ \@subject \
که در تاریخ 
\ifx\@defensedate\undefined\else\@defensedate\fi \ 
از 
\if@mscthesis پایان نامه \else رساله \fi
خود تحت عنوان 
«{\@title}»
با کسب نمره
\ifx\@grade\undefined
\hphantom{    }
\else
\@grade\
\fi
دفاع نموده ام، متعهد می شوم:
\\
\begin{enumerate}
\item این پایان نامه حاصل تحقیق و پژوهش انجام شده توسط اینجانب بوده و درمواردی که از دستاوردهای علمی و پژوهشی دیگران (اعم از مقاله، کتاب، پایان نامه و غیره) استفاده نموده ام، مطابق ضوابط ورویه موجود، نام منبع مورد استفاده و سایر مشخصات آن را در فهرست مربوط ذکر و درج کرده ام.
\item این پایان نامه قبلا برای دریافت هیچ مدرک تحصیلی (هم سطح، پایین تر یا بالاتر) در سایر دانشگاه ها و موسسات آموزش عالی ارائه نشده است.
\item چنانچه بعد از فراغت از تحصیل، قصد استفاده از هرگونه بهره برداری اعم از چاپ کتاب، ثبت اختراع و ازین دست موارد از این پایان نامه را داشته باشم، از حوزه معاونت پژوهشی دانشگاه علامه طباطبائی مجوزهای مربوطه را اخذ نمایم.
\item چنانچه در هر مقطع زمانی خلاف موارد فوق ثابت شود، عواقب ناشی از آن را می پذیرم و دانشگاهی مجاز است با اینجانب مطابق ضوابط و مقررات رفتار نموده و درصورت ابطال مدرک تحصیلی ام هیچ گونه ادعائی نخواهم داشت.
\end{enumerate}
\begin{center}
\@name \ \@surname
\vskip 2ex
\ifx\@defensedate\undefined\else\@defensedate\fi
\\
امضاء
\end{center}
}
}

\cleardoublepage%~
{\minutesfont
\vspace{1em}%
\renewcommand{\arraystretch}{2.25}%
\begin{tabular}{|M{3.4cm}|@{}M{6.95cm}@{}|M{3cm}|}
\hline
\vspace{1pt}
\par
\vspace{-2mm}
{\small 
مدیریت تحصیلات تکمیلی
}
&
\baselineskip=1cm
{\large \bfseries 
تاییدیه هیأت داوران جلسه دفاع از پایان نامه ویژه کتابخانه مرکزی\par
دوره
\if@mscthesis کارشناسی ارشد \else دکتری \fi
}
&
\\ \hline
\multicolumn{3}{|p{14cm}|}{
\baselineskip=1cm
جلسه دفاعیه 
\if@mscthesis پایان‌نامه \else رساله \fi
تحصیلی آقای/خانم:          
\@name \  \@surname
\hfill
 دانشجوی
\if@mscthesis کارشناسی ارشد \else دکتری \fi
\par
 رشتـه/گرایش:       
\@subject/\@field
\par                                        
تحت عنوان:        
\@title
\par                                                                                                                                                                          
و تعداد واحد:   
\hskip 1ex
\ifx\@credit\undefined \else \@credit \fi
\hskip 1ex
در تاریخ 
\ifx\@defensedate\undefined \else \@defensedate\ \fi \
 با حضور اعضای هيأت داوران (به شرح ذیل) تشكيل گرديد.
\par
پس از ارزيابی توسط هيأت داوران، 
\if@mscthesis پايان‌نامه \else رساله \fi
با نمره به عدد 
\ifx\@grade\undefined
\hphantom{    }
\else
\@grade\
\fi
به حروف    
\ifx\@letgrade\undefined
\hphantom{            }
\else
\@letgrade\
\fi                        
و  درجه      
\ifx\@degree\undefined
\hphantom{    }
\else
\@degree\
\fi
 مورد تصويب قرار گرفت.

\vspace{2em}
\begin{tabular}{@{}R{4.2cm}C{5.7cm}C{3cm}@{}}
\multicolumn{1}{c}{\underline{عنوان}} & \underline{نام و نام خانوادگی} & \underline{امضاء}\\[1em]

استاد راهنما:
\if@mscthesis\else 
  \ifx\@secondsupervisor\undefined\else\newline\hphantom{استاد راهنما:}ب:\fi
\fi
& 
\ifx\@firstsupervisor\undefined\else
  \if@mscthesis \@firstsupervisor
  \else الف: \@firstsupervisor \fi
\fi
\ifx\@secondsupervisor\undefined\else\par\@secondsupervisor\fi
& \\[2em]

استاد مشاور:
\if@mscthesis\else
  \ifx\@secondadvisor\undefined\else\newline\hphantom{استاد مشاور:}ب:\fi
\fi
&
\ifx\@firstadvisor\undefined\else
  \if@mscthesis \@firstadvisor
  \else الف: \@firstadvisor \fi
\fi
\ifx\@secondadvisor\undefined\else\par\@secondadvisor\fi
& \\[2em]

% ------------------- Referee Logic -------------------
\if@mscthesis 
  داور: 
  &
  \ifx\@firstinternalreferee\undefined\else\@firstinternalreferee\fi
  & \\[2em]
\else
  داور داخلی: 
  \ifx\@secondinternalreferee\undefined\else\newline\hphantom{داور داخلی:}ب:\fi
  &
  \ifx\@firstinternalreferee\undefined\else الف: \@firstinternalreferee\fi
  \ifx\@secondinternalreferee\undefined\else\par\@secondinternalreferee\fi
  & \\[2em] 
  
  داور خارجی: 
  \ifx\@secondexternalreferee\undefined\else\newline\hphantom{داور خارجی:}ب:\fi
  & 
  \ifx\@firstexternalreferee\undefined\else الف: \@firstexternalreferee\fi
  \ifx\@secondexternalreferee\undefined\else\par\@secondexternalreferee\fi
  & \\[2em] 
\fi
% ------------------------------------------------------

&
\multicolumn{2}{R{7cm}}{
\baselineskip=.7cm
نماينده تحصيلات تكميلی دانشگاه (ناظر)
\par
نام ونام خانوادگی:
\ifx\@viewer\undefined \else \@viewer \fi
\par
امضاء:
}
\\[5em]
\end{tabular} 
}
\\ \hline
\end{tabular}
}% end of \bnazanin font
\newpage
\ifx\@totext\undefined%
\else
\@totext
\fi
\newpage
\ifx\@ack\undefined%
\else
\@ack
\fi
\pagestyle{plain}
}

\def\titlepage{\newpage\centering
 \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature{\vspace{1cm}
\begin{flushleft}
{\scriptsize \@name\ \@surname \\
\ifx\@thesisdate\undefined\else\@thesisdate\fi}
\end{flushleft}}

\newcommand{\latinallamehtitle}{%
\setcounter{page}{2}
\cleardoublepage%~
\newpage
\ifx\@enabstract\undefined%
\else
\@enabstract
\fi
\setcounter{page}{2}
\thispagestyle{empty}{\tiny .} \newpage
\begin{titlepage}
\begin{center}\includegraphics[scale=.60]{ATU_logo.eps}
\end{center}
{\Large \bfseries
Allameh Tabataba'i University
}
\\[10pt]
{\Large \bfseries Faculty of \ifx\@latinfaculty\undefined\else\@latinfaculty\fi}
\par
\vspace{4em}
{\Large
 \if@mscthesis
Thesis Submitted in Partial Fulfillment of the Requirements for the Degree of  \\[1em]
Master of Arts (MA) / Master of Science (MSc)
\else
Thesis Submitted \\[1em]
for the Degree of Ph.D.
\fi
}
\par
\vspace{5em}
{\Large \bfseries Title:}
\par
{\Large\bfseries \ifx\@latintitle\undefined\else\@latintitle\fi}
\baselineskip=1cm \par
\vskip 1.5cm
\ifx\@firstlatinsupervisor\undefined%
\else
\ifx\@secondlatinsupervisor\undefined%
{\large\bfseries
Supervisor:
\@firstlatinsupervisor}
\else
{\large\bfseries
Supervisors:
 \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi
\par
\ifx\@firstlatinadvisor\undefined%
\else
\ifx\@secondlatinadvisor\undefined%
{\large\bfseries
Advisor:
\@firstlatinadvisor}
\else
{\large\bfseries
Advisors:
\@firstlatinadvisor{} and \@secondlatinadvisor}
\fi\fi
\vskip 5mm
{\large\bfseries By:
\ifx\@latinname\undefined\else\@latinname\fi \; \ifx\@latinsurname\undefined\else\@latinsurname\fi}\par
\vskip 5mm
\par
\vskip 1cm
{\large\bfseries Tehran 
\\\ifx\@latinthesisdate\undefined\else\@latinthesisdate\fi}
\par
\vskip 1cm
\par
\vfill
%
\end{titlepage}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\persiangloss[2]{#1\dotfill\lr{#2}\\}
\newcommand\englishgloss[2]{#2\dotfill\lr{#1}\\}
%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
\theoremstyle{definition}
\newtheorem{definition}{تعریف}[section]
\theoremstyle{plain}
\newtheorem{theorem}[definition]{قضیه}
\newtheorem{lemma}[definition]{لم}
\newtheorem{proposition}[definition]{گزاره}
\newtheorem{corollary}[definition]{نتیجه}
\newtheorem{remark}[definition]{ملاحظه}
\theoremstyle{definition}
\newtheorem{example}[definition]{مثال}
\renewcommand{\bibname}{منابع و مآخذ}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\fancyhf{} 
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \if@RTL\raggedleft\else\raggedright\fi \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \huge\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
      \fi
    \fi
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@
    \thispagestyle{empty}
    \newpage
  }}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \if@RTL\raggedleft\else\raggedright\fi
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
    \thispagestyle{empty}
  }}  
  \flushbottom
}

\setlength{\parindent}{1cm}
\setlength{\parskip}{0pt}

\setlength{\footskip}{
\paperheight   -(1in+\voffset+\topmargin+\headheight+\headsep+\textheight)  -1cm
}

\makeatletter
\renewcommand\section{\@startsection{section}{1}{\z@}%
                                   {-1.4cm \@plus -0ex \@minus -0ex}%
                                   {1cm \@plus0ex}%
                                   {\normalfont\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                    {-1.4cm \@plus -0ex \@minus -0ex}%
                                   {1cm \@plus0ex}%
                                     {\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-1.4cm \@plus -0ex \@minus -0ex}%
                                   {1cm \@plus0ex}%
                                     {\normalfont\normalsize\bfseries}}  


\def\bflabel#1{{\textsf{#1}\hfill}}
\renewcommand*\@verridelabel[1]{%
  \@bsphack
  \label{#1}%
  \protected@write\@auxout{}{\string\undonewlabel{#1}}%
  \@overriddenmessage rs{#1}%
  \@esphack
}%
\renewcommand*{\@acf}[1]{%
      \ifAC@starred\else\AC@logged{#1}\fi%
       \acffont{%
          \AC@placelabel{#1}\hskip\z@%\AC@acl{#1}%
          \nolinebreak[3]%
          \acfsfont{\acsfont{\AC@acs{#1}}}%
        }}
 \makeatother
 
\makeatletter
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\vspace*{\fill}
\begin{center}
\end{center}
\vspace{\fill}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother

\makeatletter
\let\origprintindex\printindex
\renewcommand*{\printindex}{%
\cleardoublepage
  \fancypagestyle{plain}{%
    \fancyhf{}%
    \renewcommand{\headrulewidth}{0pt}%
    \renewcommand{\footrulewidth}{0pt}%
  }%
  \tolerance=10000
  \origprintindex
}
\makeatother
%% End of file `allameh-thesis.cls'.