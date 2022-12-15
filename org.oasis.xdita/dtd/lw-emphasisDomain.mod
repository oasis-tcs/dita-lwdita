<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Lightweight DITA Emphasis Domain                  -->
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
PUBLIC "-//OASIS//ELEMENTS LIGHTWEIGHT DITA Emphasis Domain//EN"
      Delivered as file "lw-emphasisDomain.mod"                      -->

<!-- ============================================================= -->
<!-- SYSTEM:     Lightweight DITA                                  -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for the LwDITA emphasis domain     -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             XXXX                                              -->
<!--                                                               -->
<!--             (C) OASIS                                         -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--                                                               -->
<!--    08 Jun 2021  CE: Created emphasis domain and uploaded to   -->
<!--                     GitHub                                    -->
<!--    04 Oct 2022 KJE: Defined @keyref directly on elements,     -->
<!--                     replacing control-variables entity        -->
<!--    15 Dec 2022 KJE: Changed the element content model to the  -->
<!--                     inline.noimage entity                     -->
<!-- ============================================================= -->

<!--                    LONG NAME: Emphasized text  -->
<!ELEMENT em             (%inline.noimage;)*        >
<!ATTLIST em
             %localization;
             keyref       CDATA          #IMPLIED
             outputclass  CDATA          #IMPLIED
             class CDATA "+ topic/ph emph-d/em ">   

             
                          
<!--                    LONG NAME: Strong text  -->
<!ELEMENT strong             (%inline.noimage;)*        >
<!ATTLIST strong
                %localization;
                keyref       CDATA          #IMPLIED
                outputclass  CDATA          #IMPLIED
                class CDATA "+ topic/ph emph-d/strong ">