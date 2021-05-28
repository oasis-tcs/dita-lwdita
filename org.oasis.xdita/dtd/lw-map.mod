<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Lightweight DITA Map                              -->
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
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    SPECIALIZATIONS ATTRIBUTE OVERRIDE         -->
<!-- ============================================================= -->

<!ENTITY included-domains "">
<!ENTITY excluded-attributes "">

<!-- ============================================================= -->
<!--                    EXTENSION POINTS                 -->
<!-- ============================================================= -->

<!ENTITY % ph  "ph">
<!ENTITY % data  "data">
<!ENTITY % filter-adds " ">

<!-- ============================================================= -->
<!--                    COMMON DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % common-inline  "#PCDATA|%ph;|image|%data;">
<!ENTITY % all-inline  "#PCDATA|%ph;|image|xref|%data;">


<!--common attributes-->
<!ENTITY % filters
            'props      CDATA                              #IMPLIED
             %filter-adds;                          ' >
<!ENTITY % reuse
            'id      NMTOKEN                            #IMPLIED
             conref  CDATA                              #IMPLIED  ' >
<!ENTITY % reference-content
            'href      CDATA                            #IMPLIED
             format    CDATA                            #IMPLIED
             scope     (local | peer | external)        #IMPLIED '>
<!ENTITY % control-variables
            'keys      CDATA                            #IMPLIED '>
<!ENTITY % variable-content
            'keyref      CDATA                            #IMPLIED '>
<!ENTITY % variable-links
            'keyref      CDATA                            #IMPLIED '>
<!ENTITY % localization
            'dir         CDATA                              #IMPLIED
             xml:lang    CDATA                              #IMPLIED
             translate   CDATA                             #IMPLIED '>

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    LONG NAME: Alternative content  -->
<!ELEMENT alt           (#PCDATA|%ph;|%data;)*        >
<!ATTLIST alt
             %localization;
             %variable-content;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/alt ">

<!--                    LONG NAME: Data  -->
<!ELEMENT data             (#PCDATA|%data;)*        >
<!ATTLIST data
             %localization;
             name       CDATA                            #IMPLIED
             value      CDATA                            #IMPLIED
             %reference-content;
             %variable-content;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/data ">
             
<!--                    LONG NAME: Image  -->
<!ELEMENT image             (alt?)        >
<!ATTLIST image
             %reference-content;
             height     NMTOKEN                          #IMPLIED
             width      NMTOKEN                          #IMPLIED
             %localization;
             %variable-content;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/image ">              
             
<!--                    LONG NAME: Key Definition  -->
<!ELEMENT keydef	(topicmeta?, data*)        >
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
             class CDATA "- map/linktext ">
             
<!--                    LONG NAME: Map  -->
<!ELEMENT map		(topicmeta?, (topicref | keydef)*)  >
<!ATTLIST map
             id       ID          #IMPLIED
             xmlns:ditaarch CDATA #FIXED "http://dita.oasis-open.org/architecture/2005/"
	         ditaarch:DITAArchVersion CDATA "2.0"
             specializations    CDATA                    "&included-domains;"
             %localization;
             outputclass  CDATA          #IMPLIED
             class CDATA "- map/map ">

<!--                    LONG NAME: Navigation title -->
<!ELEMENT navtitle (#PCDATA|%ph;)* >
<!ATTLIST navtitle
             %localization;
             outputclass  CDATA          #IMPLIED
             class CDATA "+ topic/titlealt alternativeTitles-d/navtitle ">             
             
<!--                    LONG NAME: Phrase content  -->
<!ELEMENT ph             (%all-inline;)*        >
<!ATTLIST ph
             %localization;
             %variable-content;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/ph ">
             
<!--                    LONG NAME: Metadata-->
<!ELEMENT topicmeta     (navtitle?, keytext?, data*) >
<!ATTLIST topicmeta
             %localization;
             class CDATA "- map/topicmeta ">            
             
<!--                    LONG NAME: Topic or Map Reference  -->
<!ELEMENT topicref	(topicmeta?, topicref*)        >
<!ATTLIST topicref
             %localization;
	     %reuse;
             %filters;
             %reference-content;
	         %control-variables;
             %variable-links;
             %referencing;
             outputclass  CDATA          #IMPLIED
             class CDATA "- map/topicref ">            

<!--                    LONG NAME: Reference  -->
<!ELEMENT xref          (%common-inline;)*        >
<!ATTLIST xref
             %reference-content;
             %localization;
             %variable-links;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/xref ">

