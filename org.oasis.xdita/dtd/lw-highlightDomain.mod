<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Lightweight DITA Highlighting Domain              -->
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
PUBLIC "-//OASIS//ELEMENTS LIGHTWEIGHT DITA Highlight Domain//EN"
      Delivered as file "lw-highlightDomain.mod"                      -->

<!-- ============================================================= -->
<!-- SYSTEM:     Lightweight DITA                                  -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for the LwDITA highlighting domain     -->
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
<!--    11 Jun 2017 KJE: Added headers and update logs             -->
<!--    14 Jun 2017 RDA: Added @outputclass                        -->
<!--    25 Jul 2017  CE: Changed public identifier to LIGHTWEIGHT  -->
<!--                     DITA                                      -->
<!--    01 Mar 2018  CE: Renamed file to lw-highlightDomain.mod    -->
<!--    14 Jul 2019 KJE: Alphabeticized element declarations       -->
<!--    04 Oct 2022 KJE: Defined @keyref directly on elements,     -->
<!--                     replacing control-variables entity        -->
<!--    15 Dec 2022 KJE: Changed the element content model to the  -->
<!--                     inline.noimage entity; added <tt>         -->
<!--                     element                                   -->
<!-- ============================================================= -->

<!--                    LONG NAME: Bold content  -->
<!ELEMENT b             (%inline.noimage;)*        >
<!ATTLIST b
             %localization;
             keyref       CDATA          #IMPLIED
             outputclass  CDATA          #IMPLIED
             class CDATA "+ topic/ph hi-d/b ">


<!--                    LONG NAME: Italic content  -->
<!ELEMENT i             (%inline.noimage;)*        >
<!ATTLIST i
             %localization;
             keyref       CDATA          #IMPLIED
             outputclass  CDATA          #IMPLIED
             class CDATA "+ topic/ph hi-d/i ">
             
             
<!--                    LONG NAME: Subscript content  -->
<!ELEMENT sub             (%inline.noimage;)*        >
<!ATTLIST sub
             %localization;
             keyref       CDATA          #IMPLIED
             outputclass  CDATA          #IMPLIED
             class CDATA "+ topic/ph hi-d/sub ">             
             
<!--                    LONG NAME: Superscript content  -->
<!ELEMENT sup             (%inline.noimage;)*         >
<!ATTLIST sup
             %localization;
             keyref       CDATA          #IMPLIED
             outputclass  CDATA          #IMPLIED
             class CDATA "+ topic/ph hi-d/sup ">   
             
<!--                    LONG NAME: Teletype content  -->
<!ELEMENT tt             (%inline.noimage;)*          >
<!ATTLIST tt
             %localization;
             keyref       CDATA          #IMPLIED
             outputclass  CDATA          #IMPLIED
             class CDATA "+ topic/ph hi-d/tt ">             

<!--                    LONG NAME: Underlined content  -->
<!ELEMENT u             (%inline.noimage;)*          >
<!ATTLIST u
             %localization;
             keyref       CDATA          #IMPLIED
             outputclass  CDATA          #IMPLIED
             class CDATA "+ topic/ph hi-d/u ">




