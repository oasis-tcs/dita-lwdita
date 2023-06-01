<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Lightweight DITA Map                              -->
<!--  VERSION:   1.0                                               -->
<!--  DATE:      XXX                                               -->
<!--                                                               -->
<!--    26 Oct 2021  ES: split common entites element to their     -->
<!--                     own files                                 -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an
      appropriate system identifier:
PUBLIC "-//OASIS//ELEMENTS LIGHTWEIGHT DITA Map//EN"
      Delivered as file "lw-map.mod"                               -->

<!-- ============================================================= -->
<!-- SYSTEM:     Lightweight DITA                                  -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for Lightweight DITA maps              -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             XXXX                                              -->
<!--                                                               -->
<!--             (C) OASIS                                         -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--    25 Nov 2014 KJE: Upload files to DITA TC SVN repo          -->
<!--    16 May 2016  MG: Upload files to GitHub repo               -->
<!--    04 Jun 2017  AH: Added <keydef> and <linktext>             -->
<!--    11 Jun 2017 KJE: Added headers and update logs             -->
<!--    13 Jun 2017  CE: Added XDITA constraint token              -->
<!--    13 Jun 2017  CE: Made map ID optional                      -->
<!--    13 Jun 2017  CE: Added props to <keydef>                   -->
<!--    14 Jun 2017  CE: Added <image>, <xref> to <ph>; add <alt>  -->
<!--    14 Jun 2017 RDA: Corrected use of @outputclass,            -->
<!--                     make localization attributes universal,   -->
<!--                     add scope/format where needed             -->
<!--    20 Jun 2017  CE: Added prefix lw- to filename              -->
<!--    25 Jul 2017  CE: Changed public identifier to LIGHTWEIGHT  -->
<!--                     DITA                                      -->
<!--    10 Feb 2018  AH: Added @processing-role to <topicref>      -->
<!--    20 Sep 2018  CE: Added processing entity for <topicref>    -->
<!--    27 May 2021 KJE: Updated for DITA 2.0                      -->
<!--    26 Oct 2021  ES: split common entites to its own file      -->
<!--    04 Oct 2022 KJE: Added @outputclass to <topicmeta>         -->
<!--    31 May 2023  FW: Removed <data>                            -->
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    SPECIALIZATIONS ATTRIBUTE OVERRIDE         -->
<!-- ============================================================= -->

<!ENTITY included-domains "">
<!ENTITY excluded-attributes "">

<!-- ============================================================= -->
<!--                    EXTENSION POINTS                           -->
<!-- ============================================================= -->

<!ENTITY % ph  "ph">

<!-- ============================================================= -->
<!--                    COMMON DECLARATIONS                       -->
<!-- ============================================================= -->

<!--common attributes-->
<!ENTITY  % processing-role
            'processing-role (normal | resource-only)      #IMPLIED'>


<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

           
             
<!--                    LONG NAME: Key Definition  -->
<!ELEMENT keydef	(topicmeta?)        >
<!ATTLIST keydef
              %localization;
              %filters;
              %reference-content;
              keys
                        CDATA
                                  #REQUIRED
              processing-role
                        CDATA       #FIXED      'resource-only'
              outputclass  CDATA          #IMPLIED
              class CDATA "+ map/topicref mapgroup-d/keydef "
>

<!--                    LONG NAME: Key text                        -->
<!ELEMENT keytext         (#PCDATA | %ph;)*  >
<!ATTLIST keytext
             %localization;
             outputclass  CDATA          #IMPLIED
             class CDATA "- map/keytext ">
             
<!--                    LONG NAME: Map  -->
<!ELEMENT map		(topicmeta?, (topicref | keydef)*)  >
<!ATTLIST map
             %localization;
	           ditaarch:DITAArchVersion CDATA "2.0"
             id                       ID          #IMPLIED
             specializations          CDATA       "&included-domains;"
             xmlns:ditaarch           CDATA       #FIXED "http://dita.oasis-open.org/architecture/2005/"
             outputclass              CDATA        #IMPLIED
             class CDATA "- map/map ">

<!--                    LONG NAME: Navigation title -->
<!ELEMENT navtitle (#PCDATA|%ph;)* >
<!ATTLIST navtitle
             %localization;
             outputclass  CDATA          #IMPLIED
             class CDATA "+ topic/titlealt alternativeTitles-d/navtitle ">             
             
<!--                    LONG NAME: Metadata-->
<!ELEMENT topicmeta     (navtitle?, keytext?, othermeta*) >
<!ATTLIST topicmeta
             %localization;
             outputclass  CDATA          #IMPLIED
             class CDATA "- map/topicmeta ">            
             
<!--                    LONG NAME: Topic or Map Reference  -->
<!ELEMENT topicref	(topicmeta?, topicref*)        >
<!ATTLIST topicref
             %filters;
             %localization;
             %reference-content;
	           %reuse;
	           keyref       CDATA          #IMPLIED
             keys         CDATA          #IMPLIED
             outputclass  CDATA          #IMPLIED
             class        CDATA "- map/topicref ">            



