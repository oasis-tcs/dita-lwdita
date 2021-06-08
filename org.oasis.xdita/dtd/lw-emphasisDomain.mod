<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Lightweight DITA Emphasis Domain              -->
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
<!--    08 Jun 2021  CE: Created emphasis domain and uploaded to
                         GitHub                                    -->
<!--                                                               -->
<!-- ============================================================= -->

<!--                    LONG NAME: Emphasized text  -->
<!ELEMENT em             (%all-inline;)*        >
<!ATTLIST em
             %localization;
             %variable-content;
             outputclass  CDATA          #IMPLIED
             class CDATA "+ topic/ph emph-d/em ">   

             
                          
<!--                    LONG NAME: Strong text  -->
<!ELEMENT strong             (%all-inline;)*        >
<!ATTLIST strong
                %localization;
                %variable-content;
                outputclass  CDATA          #IMPLIED
                class CDATA "+ topic/ph emph-d/strong ">