<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Lightweight DITA Common Module                    -->
<!--  VERSION:   1.0                                               -->
<!--  DATE:      XXX                                               -->
<!--                                                               -->
<!--    26 Oct 2021  ES: split common entites element to their     -->
<!--                     own files                                 -->
<!-- ============================================================= -->

<!--                    LONG NAME: Alternative content  -->
<!ELEMENT alt           (#PCDATA|%ph;|%data;)*        >
<!ATTLIST alt
             %localization;
             %variable-content;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/alt ">
             
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

<!--                    LONG NAME: Data  -->
<!ELEMENT data             (#PCDATA|%data;)*        >
<!ATTLIST data
                %localization;
                name       CDATA                            #IMPLIED
                value      CDATA                            #IMPLIED
                %reference-content;
                %variable-content;
                %filters;
                outputclass  CDATA          #IMPLIED
                class CDATA "- topic/data ">

<!--                    LONG NAME: Phrase content  -->
<!ELEMENT ph             (%all-inline;)*        >
<!ATTLIST ph
                %localization;
                %filters;
                %variable-content;
                outputclass  CDATA          #IMPLIED
                class CDATA "- topic/ph ">
                
<!--                    LONG NAME: Reference  -->
<!ELEMENT xref          (%common-inline;)*        >
<!ATTLIST xref
             %reference-content;
             %localization;
             %filters;
             %variable-links;
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/xref ">




             




