<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Lightweight DITA Topic                            -->
<!--  VERSION:   1.0                                               -->
<!--  DATE:      XXX                                               -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an
      appropriate system identifier:
PUBLIC "-//OASIS//ELEMENTS LIGHTWEIGHT DITA Topic//EN"
      Delivered as file "lw-topic.mod"                                -->

<!-- ============================================================= -->
<!-- SYSTEM:     Lightweight DITA                                  -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for Lightweight DITA topics            -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             XXXX                                              -->
<!--                                                               -->
<!--             (C) OASIS                                         -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--    25 Nov 2014 KJE: Upload files to DITA TC SVN repo          -->
<!--    13 Jul 2015  MG: Made <shortdesc> and <prolog> optional;   -->
<!--                     disabled nested topics                    -->
<!--    16 May 2016  MG: Upload files to GitHub repo               -->
<!--    10 Jul 2016  MG: Removed object element, renamed           -->
<!--                     table-blocks to simple-blocks, added fn   -->
<!--    26 Aug 2016  MG: Added template specialization markup;     -->
<!--                     added @outputclass; added @href to <data> -->
<!--    19 Mar 2017  MG: Allow PCDATA in <data>                    -->
<!--    27 Mar 2017  CE: Added <data> to block entities            -->
<!--    28 Mar 2017  MG: Touch up <data> additions                 -->
<!--    31 Mar 2017  MG: Made <body> optional                      -->
<!--    09 May 2017  CE: Added @width and @height to <video> and   -->
<!--                     <audio>                                   -->
<!--    10 May 2017  CE: Added @iframe to <video>                  -->
<!--    11 May 2017  CE: Removed <fnref>                           -->
<!--    16 May 2017  CE: Removed @width and @height from <audio>   -->
<!--    29 May 2017  MG: Added fn-blocks entity; removed <param>,  -->
<!--                     <specmeta>,<specatt>; removed %spec-atts  -->
<!--    11 Jun 2017 KJE: Added headers and update logs             -->
<!--    13 Jun 2017  CE: Removed filtering from <dt> and <dd>      -->
<!--    13 Jun 2017  CE: Removed <image> from <pre>                -->
<!--    13 Jun 2017  CE: Modified <stentry>, <strow>, <dlentry>,   -->
<!--                     and <li> to allow one-or-more             -->
<!--    14 Jun 2017  CE: Removed <fn> from <body>                  -->
<!--    14 Jun 2017 RDA: Corrected use of @outputclass,            -->
<!--                     make localization attributes universal,   -->
<!--                     add scope/format where needed             -->
<!--    20 Jun 2017  CE: Added prefix lw- to filename              -->
<!--    27 Jun 2017  CE: Added <footnotes>                         -->
<!--    25 Jul 2017  CE: Changed public identifier to LIGHTWEIGHT  -->
<!--                     DITA                                      -->
<!--    17 Aug 2017  CE: Deleted <footnotes> and added <fn> to the -->
<!--                     <body> content model                      -->
<!--    17 Aug 2017  CE: Renamed multimedia elements after 2.0     -->
<!--                     multimedia domain proposal                -->
<!--    18 Sep 2017 RDA: Add value attributes to media control     -->
<!--                     elements, matching main TC proposal       -->
<!--    18 Sep 2017 RDA: Adjust media class atts to match main TC  -->
<!--    16 Oct 2017  CE: Added @props to elements that allow it    -->
<!--                     in DITA 1.3                               -->
<!--    14 Sep 2018  CE: Added %reuse to <shortdesc>               -->
<!--    13 Jul 2019 KJE: Alphabetized element definitions          -->
<!--    22 Jul 2019  CE: Added %reuse to <fig>                     -->
<!--    14 Apr 2020  CE: Added <title>, @colspan, @rowspan,        -->
<!--                     @headers, @scope to <simpletable>         -->
<!--    14 Apr 2020  CE: Added <example>                           -->
<!--    27 May 2021 KJE: Updated for DITA 2.0                      -->
<!--    08 Jun 2021  CE: Added <fallback> to <audio> and <video>   -->
<!--    21 Jun 2021  CE: Added <div> as a wrapper for <fn>         -->
<!--    26 Oct 2021  ES: split common entites element to their     -->
<!--                     own files                                 -->
<!--    04 Oct 2022 KJE: Added @outputclass to <topicmeta>         -->
<!--    15 Dec 2022 KJE: Added <video-poster>; updated <video>     -->
<!--    05 May 2023  FW: Removed <data>, added <metadata>          -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE OVERRIDE          -->
<!-- ============================================================= -->

<!ENTITY included-domains "">
<!ENTITY excluded-attributes "">

<!-- ============================================================= -->
<!--                    EXTENSION POINTS                           -->
<!-- ============================================================= -->


<!ENTITY % fig   "fig">


<!-- ============================================================= -->
<!--                    COMMON DECLARATIONS                        -->
<!-- ============================================================= -->

<!-- common content models -->

<!ENTITY % simple-blocks  "p|ul|ol|dl|pre|audio|video|example|note">
<!ENTITY % fallback-blocks "image|alt|p|ul|ol|dl|pre|note">
<!ENTITY % fn-blocks  "p|ul|ol|dl">
<!ENTITY % all-blocks  "p|ul|ol|dl|pre|audio|video|example|simpletable|fig|note">
<!ENTITY % list-blocks "p|ul|ol|dl|pre|audio|video|example|simpletable|fig|note">
<!ENTITY % fig-blocks  "p|ul|ol|dl|pre|audio|video|example|simpletable">
<!ENTITY % example-blocks "p|ul|ol|dl|pre|audio|video|simpletable|fig|note">

<!-- common attributes -->

<!ENTITY % display-atts
             "scale ( 50|60|70|80|90|100|110|120|140|160|180|200 ) #IMPLIED
              frame ( all|bottom|none|sides|top|topbot )           #IMPLIED
              expanse ( column|page|spread|textline )              #IMPLIED">

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->


<!--                    LONG NAME: Body                  -->
<!ELEMENT body          ((%list-blocks;)*, section*, div?)        >
<!ATTLIST body
             %localization;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/body ">



<!--                    LONG NAME: Description   -->
<!ELEMENT dd             (%list-blocks;)*        >
<!ATTLIST dd
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/dd ">

<!--                    LONG NAME: Description  -->
<!ELEMENT desc		(%inline.noxref;)*        >
<!ATTLIST desc
             %localization;
             %filters;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/desc ">


<!--                    LONG NAME: Description list -->
<!ELEMENT dl             (dlentry)+       >
<!ATTLIST dl
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/dl ">

<!--                    LONG NAME: Description entry -->
<!ELEMENT dlentry             (dt, dd)        >
<!ATTLIST dlentry
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/dlentry ">

<!--                    LONG NAME: Description term  -->
<!ELEMENT dt             (%inline;)*        >
<!ATTLIST dt
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/dt ">

<!--                    LONG NAME: Division  -->
<!ELEMENT div		(fn+)        >
<!ATTLIST div
             %localization;
             %filters;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/div ">


<!--                    LONG NAME: Example  -->
<!ELEMENT example   (title?, (%example-blocks;)*)  >
<!ATTLIST example
             %display-atts;
             %localization;
             %filters;
             %reuse;
             outputclass CDATA #IMPLIED
             class CDATA "- topic/example " >

<!--                    LONG NAME: Figure  -->
<!ELEMENT fig   (title?, desc?, (%fig-blocks;|image|xref)*)    >
<!ATTLIST fig
             %display-atts;
             %localization;
             %filters;
             %reuse;
             outputclass CDATA #IMPLIED
             class CDATA "- topic/fig " >

<!--                    LONG NAME: Footnote  -->
<!ELEMENT fn ( %fn-blocks; )*  >
<!ATTLIST fn
             %filters;
             %localization;
             callout     CDATA          #IMPLIED
             conref      CDATA          #IMPLIED
             id          NMTOKEN        #REQUIRED
             outputclass CDATA          #IMPLIED
             class       CDATA "- topic/fn ">



<!--                    LONG NAME: List item -->
<!ELEMENT li            (%list-blocks;)*        >
<!ATTLIST li
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/li ">

<!--                    LONG NAME: Note  -->
<!ELEMENT note ( %simple-blocks; )*  >
<!ATTLIST note
             %localization;
             %filters;
             %reuse;
             type (caution|warning|danger|trouble|notice|note) "note"
             outputclass  CDATA          #IMPLIED
             class        CDATA "- topic/note ">

<!--                    LONG NAME: Ordered list  -->
<!ELEMENT ol             (li)+        >
<!ATTLIST ol
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/ol ">


<!--                    LONG NAME: Paragraph  -->
<!ELEMENT p             (%inline;)*        >
<!ATTLIST p
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/p ">

<!--                    LONG NAME: Preformatted content -->
<!ELEMENT pre            (#PCDATA|%ph;|xref)*        >
<!ATTLIST pre
             %localization;
             %filters;
             %reuse;
             xml:space  (preserve)               #FIXED 'preserve'
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/pre ">

<!--                    LONG NAME: Metadata             -->
<!ELEMENT metadata (othermeta)*>
<!ATTLIST metadata 
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/metadata ">

<!--                    LONG NAME: Prolog-->
<!ELEMENT prolog (metadata)* >
<!ATTLIST prolog
             %localization;
             %filters;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/prolog ">




<!--                    LONG NAME: Section             -->
<!ELEMENT section       (title?, (%all-blocks;)*)        >
<!ATTLIST section
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/section ">

<!--                    LONG NAME: Short description-->
<!ELEMENT shortdesc     (%inline;)* >
<!ATTLIST shortdesc
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/shortdesc ">

<!--                    LONG NAME: Table -->
<!ELEMENT simpletable (title?, sthead?, strow+)        >
<!ATTLIST simpletable
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/simpletable ">

<!--                    LONG NAME: Table cell -->
<!ELEMENT stentry (%simple-blocks;)*        >
<!ATTLIST stentry
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             colspan  NMTOKEN            #IMPLIED
             rowspan  NMTOKEN            #IMPLIED
             scope (row | col |rowgroup | colgroup) #IMPLIED
             headers  NMTOKENS           #IMPLIED
             class CDATA "- topic/stentry ">

<!--                    LONG NAME: Table header row -->
<!ELEMENT sthead (stentry+)        >
<!ATTLIST sthead
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/sthead ">

<!--                    LONG NAME: Table row -->
<!ELEMENT strow (stentry*)        >
<!ATTLIST strow
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/strow ">

<!--                    LONG NAME: Title -->
<!ELEMENT title (%inline.noxref;)* >
<!ATTLIST title
             %localization;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/title ">

<!--                    LONG NAME: Topic  -->
<!ELEMENT topic   (title, shortdesc?, prolog?, body?)  >
<!ATTLIST topic
             id       ID          #REQUIRED
             xmlns:ditaarch CDATA #FIXED "http://dita.oasis-open.org/architecture/2005/"
	         ditaarch:DITAArchVersion CDATA "2.0"
             specializations CDATA "&included-domains;"
             outputclass  CDATA    #IMPLIED
             %localization;
             class CDATA "- topic/topic ">

<!--                    LONG NAME: Unordered list  -->
<!ELEMENT ul             (li)+        >
<!ATTLIST ul
             %localization;
             %filters;
             %reuse;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/ul ">



<!-- Multimedia elements -->
<!--                    LONG NAME: Audio -->
<!ELEMENT audio ((desc)?,(fallback)?,(media-source)*,(media-track)*)*       >
<!ATTLIST audio
              autoplay   (true | false )    #IMPLIED
              controls   (true | false )    #IMPLIED
              loop       (true |false )     #IMPLIED
              muted      (true |false )     #IMPLIED
              keyref      CDATA             #IMPLIED
              tabindex      NMTOKEN         #IMPLIED
              %localization;
              %filters;
              %reuse;
              %reference-content;
              outputclass  CDATA            #IMPLIED
              class CDATA "- topic/audio ">

<!--       LONG NAME: Fallback  -->
<!ELEMENT fallback   (%fallback-blocks;)* >
<!ATTLIST fallback
             %localization;
             %filters;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/fallback ">


<!--                    LONG NAME: Media source  -->
<!ELEMENT media-source 	EMPTY        >
<!ATTLIST media-source
             %localization;
             %reference-content;
             keyref     CDATA            #IMPLIED
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/media-source ">

<!--                    LONG NAME: Track for captions  -->
<!ELEMENT media-track		(#PCDATA)        >
<!ATTLIST media-track
             %localization;
             %reference-content;
             keyref     CDATA            #IMPLIED
             kind (subtitles | captions | descriptions | chapters | metadata) #IMPLIED
             srclang     CDATA           #IMPLIED
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/media-track ">

<!--                    LONG NAME: Video -->
<!ELEMENT video ((desc)?,(fallback)?,(video-poster)?,(media-source)*,(media-track)*)*       >
<!ATTLIST video
              autoplay     (true | false )    #IMPLIED
              controls     (true | false )    #IMPLIED
              loop         (true |false )     #IMPLIED
              muted        (true |false )     #IMPLIED
              tabindex      NMTOKEN           #IMPLIED
              %localization;
              %filters;
              %reference-content;
              %reuse;
              outputclass  CDATA              #IMPLIED
              height     NMTOKEN              #IMPLIED
              width      NMTOKEN              #IMPLIED
              class CDATA "- topic/video ">
              
<!--                    LONG NAME: Video poster-->
<!ELEMENT video-poster  EMPTY       >
<!ATTLIST video-poster
              %localization;
              %filters;
              %reference-content;
              %reuse;
              keyref     CDATA                #IMPLIED
              outputclass  CDATA              #IMPLIED
              class CDATA "- topic/video-poster ">              
              
