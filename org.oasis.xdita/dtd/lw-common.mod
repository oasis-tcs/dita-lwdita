<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Lightweight DITA Common Module                    -->
<!--  VERSION:   1.0                                               -->
<!--  DATE:      XXX                                               -->
<!--                                                               -->
<!--    26 Oct 2021  ES: split common entities element to their    -->
<!--                     own files                                 -->
<!--    04 Oct 2022 KJE: Defined @keyref directly on elements,     -->
<!--                     replacing control-variables entity        -->
<!--    31 May 2023  FW: Added <othermeta>, removed <data>         -->
<!-- ============================================================= -->

<!--                    LONG NAME: Alternative content  -->
<!ELEMENT alt           (#PCDATA|%ph;)*        >
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

<!--                    LONG NAME: Other Metadata                  -->
<!ELEMENT othermeta        EMPTY>
<!ATTLIST othermeta
             %localization;
             name         CDATA          #REQUIRED
             content      CDATA          #REQUIRED
             class        CDATA "- topic/othermeta ">            




             




