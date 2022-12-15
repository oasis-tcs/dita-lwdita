<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Lightweight DITA Common Module                    -->
<!--  VERSION:   1.0                                               -->
<!--  DATE:      XXX                                               -->
<!--                                                               -->
<!--    26 Oct 2021  ES: split common entites element to their     -->
<!--                     own files                                 -->
<!--    04 Oct 2022 KJE: Defined @keyref directly on elements,     -->
<!--                     replacing control-variables entity        -->
<!-- ============================================================= -->

<!--                    LONG NAME: Alternative content  -->
<!ELEMENT alt           (#PCDATA|%ph;|%data;)*        >
<!ATTLIST alt
             %localization;
             keyref       CDATA          #IMPLIED
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/alt ">
             
<!--                    LONG NAME: Image  -->
<!ELEMENT image             (alt?)        >
<!ATTLIST image
             %localization;
             %reference-content;
             height       NMTOKEN        #IMPLIED
             width        NMTOKEN        #IMPLIED
             keyref       CDATA          #IMPLIED
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/image ">   

<!--                    LONG NAME: Data  -->
<!ELEMENT data             (#PCDATA|%data;)*        >
<!ATTLIST data
                %filters;
                %localization;
                %reference-content;
                keyref       CDATA          #IMPLIED
                outputclass  CDATA          #IMPLIED
                name         CDATA          #IMPLIED
                value        CDATA          #IMPLIED
                class CDATA "- topic/data ">

<!--                    LONG NAME: Phrase content  -->
<!ELEMENT ph             (%inline;)*        >
<!ATTLIST ph
                %filters;
                %localization;
                keyref       CDATA          #IMPLIED
                outputclass  CDATA          #IMPLIED
                class CDATA "- topic/ph ">
                
<!--                    LONG NAME: Reference  -->
<!ELEMENT xref          (%inline.noxref;)*        >
<!ATTLIST xref
             %filters;
             %localization;
             %reference-content;
             keyref       CDATA          #IMPLIED
             outputclass  CDATA          #IMPLIED
             class CDATA "- topic/xref ">




             




