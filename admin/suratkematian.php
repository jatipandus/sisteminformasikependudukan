<?php
session_start();
 $admin=$_SESSION['username'];
    include '../conn.php';
                    $query1="SELECT * from data_penduduk, data_kematian where asal = 'asli' and ket = 'mati' and id_kematian='$_GET[kd]' limit 1";
                   
                     $tampil=$conn->query($query1) or die(mysql_error());
                     
?>
<html>
<head>
    <title>Surat Keterangan Kematian</title>
</head>

<style>
<!--
 /* Font Definitions */
 @font-face
    {font-family:Wingdings;
    panose-1:5 0 0 0 0 0 0 0 0 0;
    mso-font-charset:2;
    mso-generic-font-family:auto;
    mso-font-pitch:variable;
    mso-font-signature:0 268435456 0 0 -2147483648 0;}
@font-face
    {font-family:"Cambria Math";
    panose-1:2 4 5 3 5 4 6 3 2 4;
    mso-font-charset:0;
    mso-generic-font-family:roman;
    mso-font-pitch:variable;
    mso-font-signature:-536870145 1107305727 0 0 415 0;}
@font-face
    {font-family:Calibri;
    panose-1:2 15 5 2 2 2 4 3 2 4;
    mso-font-charset:0;
    mso-generic-font-family:swiss;
    mso-font-pitch:variable;
    mso-font-signature:-536859905 -1073732485 9 0 511 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
    {mso-style-unhide:no;
    mso-style-qformat:yes;
    mso-style-parent:"";
    margin-top:0cm;
    margin-right:0cm;
    margin-bottom:8.0pt;
    margin-left:0cm;
    line-height:107%;
    mso-pagination:widow-orphan;
    font-size:11.0pt;
    font-family:"Calibri",sans-serif;
    mso-ascii-font-family:Calibri;
    mso-ascii-theme-font:minor-latin;
    mso-fareast-font-family:Calibri;
    mso-fareast-theme-font:minor-latin;
    mso-hansi-font-family:Calibri;
    mso-hansi-theme-font:minor-latin;
    mso-bidi-font-family:"Times New Roman";
    mso-bidi-theme-font:minor-bidi;
    mso-fareast-language:EN-US;}
p.MsoHeader, li.MsoHeader, div.MsoHeader
    {mso-style-priority:99;
    mso-style-link:"Header Char";
    margin:0cm;
    margin-bottom:.0001pt;
    mso-pagination:widow-orphan;
    tab-stops:center 225.65pt right 451.3pt;
    font-size:11.0pt;
    font-family:"Calibri",sans-serif;
    mso-ascii-font-family:Calibri;
    mso-ascii-theme-font:minor-latin;
    mso-fareast-font-family:Calibri;
    mso-fareast-theme-font:minor-latin;
    mso-hansi-font-family:Calibri;
    mso-hansi-theme-font:minor-latin;
    mso-bidi-font-family:"Times New Roman";
    mso-bidi-theme-font:minor-bidi;
    mso-fareast-language:EN-US;}
p.MsoFooter, li.MsoFooter, div.MsoFooter
    {mso-style-priority:99;
    mso-style-link:"Footer Char";
    margin:0cm;
    margin-bottom:.0001pt;
    mso-pagination:widow-orphan;
    tab-stops:center 225.65pt right 451.3pt;
    font-size:11.0pt;
    font-family:"Calibri",sans-serif;
    mso-ascii-font-family:Calibri;
    mso-ascii-theme-font:minor-latin;
    mso-fareast-font-family:Calibri;
    mso-fareast-theme-font:minor-latin;
    mso-hansi-font-family:Calibri;
    mso-hansi-theme-font:minor-latin;
    mso-bidi-font-family:"Times New Roman";
    mso-bidi-theme-font:minor-bidi;
    mso-fareast-language:EN-US;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
    {mso-style-priority:34;
    mso-style-unhide:no;
    mso-style-qformat:yes;
    margin-top:0cm;
    margin-right:0cm;
    margin-bottom:8.0pt;
    margin-left:36.0pt;
    mso-add-space:auto;
    line-height:107%;
    mso-pagination:widow-orphan;
    font-size:11.0pt;
    font-family:"Calibri",sans-serif;
    mso-ascii-font-family:Calibri;
    mso-ascii-theme-font:minor-latin;
    mso-fareast-font-family:Calibri;
    mso-fareast-theme-font:minor-latin;
    mso-hansi-font-family:Calibri;
    mso-hansi-theme-font:minor-latin;
    mso-bidi-font-family:"Times New Roman";
    mso-bidi-theme-font:minor-bidi;
    mso-fareast-language:EN-US;}
p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, div.MsoListParagraphCxSpFirst
    {mso-style-priority:34;
    mso-style-unhide:no;
    mso-style-qformat:yes;
    mso-style-type:export-only;
    margin-top:0cm;
    margin-right:0cm;
    margin-bottom:0cm;
    margin-left:36.0pt;
    margin-bottom:.0001pt;
    mso-add-space:auto;
    line-height:107%;
    mso-pagination:widow-orphan;
    font-size:11.0pt;
    font-family:"Calibri",sans-serif;
    mso-ascii-font-family:Calibri;
    mso-ascii-theme-font:minor-latin;
    mso-fareast-font-family:Calibri;
    mso-fareast-theme-font:minor-latin;
    mso-hansi-font-family:Calibri;
    mso-hansi-theme-font:minor-latin;
    mso-bidi-font-family:"Times New Roman";
    mso-bidi-theme-font:minor-bidi;
    mso-fareast-language:EN-US;}
p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle, div.MsoListParagraphCxSpMiddle
    {mso-style-priority:34;
    mso-style-unhide:no;
    mso-style-qformat:yes;
    mso-style-type:export-only;
    margin-top:0cm;
    margin-right:0cm;
    margin-bottom:0cm;
    margin-left:36.0pt;
    margin-bottom:.0001pt;
    mso-add-space:auto;
    line-height:107%;
    mso-pagination:widow-orphan;
    font-size:11.0pt;
    font-family:"Calibri",sans-serif;
    mso-ascii-font-family:Calibri;
    mso-ascii-theme-font:minor-latin;
    mso-fareast-font-family:Calibri;
    mso-fareast-theme-font:minor-latin;
    mso-hansi-font-family:Calibri;
    mso-hansi-theme-font:minor-latin;
    mso-bidi-font-family:"Times New Roman";
    mso-bidi-theme-font:minor-bidi;
    mso-fareast-language:EN-US;}
p.MsoListParagraphCxSpLast, li.MsoListParagraphCxSpLast, div.MsoListParagraphCxSpLast
    {mso-style-priority:34;
    mso-style-unhide:no;
    mso-style-qformat:yes;
    mso-style-type:export-only;
    margin-top:0cm;
    margin-right:0cm;
    margin-bottom:8.0pt;
    margin-left:36.0pt;
    mso-add-space:auto;
    line-height:107%;
    mso-pagination:widow-orphan;
    font-size:11.0pt;
    font-family:"Calibri",sans-serif;
    mso-ascii-font-family:Calibri;
    mso-ascii-theme-font:minor-latin;
    mso-fareast-font-family:Calibri;
    mso-fareast-theme-font:minor-latin;
    mso-hansi-font-family:Calibri;
    mso-hansi-theme-font:minor-latin;
    mso-bidi-font-family:"Times New Roman";
    mso-bidi-theme-font:minor-bidi;
    mso-fareast-language:EN-US;}
span.HeaderChar
    {mso-style-name:"Header Char";
    mso-style-priority:99;
    mso-style-unhide:no;
    mso-style-locked:yes;
    mso-style-link:Header;}
span.FooterChar
    {mso-style-name:"Footer Char";
    mso-style-priority:99;
    mso-style-unhide:no;
    mso-style-locked:yes;
    mso-style-link:Footer;}
.MsoChpDefault
    {mso-style-type:export-only;
    mso-default-props:yes;
    mso-ascii-font-family:Calibri;
    mso-ascii-theme-font:minor-latin;
    mso-fareast-font-family:Calibri;
    mso-fareast-theme-font:minor-latin;
    mso-hansi-font-family:Calibri;
    mso-hansi-theme-font:minor-latin;
    mso-bidi-font-family:"Times New Roman";
    mso-bidi-theme-font:minor-bidi;
    mso-fareast-language:EN-US;}
.MsoPapDefault
    {mso-style-type:export-only;
    margin-bottom:8.0pt;
    line-height:107%;}
 /* Page Definitions */
 @page
    {mso-footnote-separator:url("surat%20kp_files/header.htm") fs;
    mso-footnote-continuation-separator:url("surat%20kp_files/header.htm") fcs;
    mso-endnote-separator:url("surat%20kp_files/header.htm") es;
    mso-endnote-continuation-separator:url("surat%20kp_files/header.htm") ecs;}
@page WordSection1
    {size:595.3pt 841.9pt;
    margin:72.0pt 72.0pt 72.0pt 72.0pt;
    mso-header-margin:35.4pt;
    mso-footer-margin:35.4pt;
    mso-paper-source:0;}
div.WordSection1
    {page:WordSection1;}
 /* List Definitions */
 @list l0
    {mso-list-id:207841245;
    mso-list-type:hybrid;
    mso-list-template-ids:594294936 603625328 69271555 69271557 69271553 69271555 69271557 69271553 69271555 69271557;}
@list l0:level1
    {mso-level-start-at:0;
    mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Symbol;
    mso-fareast-font-family:Calibri;
    mso-fareast-theme-font:minor-latin;
    mso-bidi-font-family:"Times New Roman";
    mso-bidi-theme-font:minor-bidi;}
@list l0:level2
    {mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:"Courier New";}
@list l0:level3
    {mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Wingdings;}
@list l0:level4
    {mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Symbol;}
@list l0:level5
    {mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:"Courier New";}
@list l0:level6
    {mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Wingdings;}
@list l0:level7
    {mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Symbol;}
@list l0:level8
    {mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:"Courier New";}
@list l0:level9
    {mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Wingdings;}
@list l1
    {mso-list-id:355079537;
    mso-list-type:hybrid;
    mso-list-template-ids:2031152824 1217329878 69271555 69271557 69271553 69271555 69271557 69271553 69271555 69271557;}
@list l1:level1
    {mso-level-start-at:0;
    mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Symbol;
    mso-fareast-font-family:Calibri;
    mso-fareast-theme-font:minor-latin;
    mso-bidi-font-family:"Times New Roman";
    mso-bidi-theme-font:minor-bidi;}
@list l1:level2
    {mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:"Courier New";}
@list l1:level3
    {mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Wingdings;}
@list l1:level4
    {mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Symbol;}
@list l1:level5
    {mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:"Courier New";}
@list l1:level6
    {mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Wingdings;}
@list l1:level7
    {mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Symbol;}
@list l1:level8
    {mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:"Courier New";}
@list l1:level9
    {mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Wingdings;}
@list l2
    {mso-list-id:785584813;
    mso-list-type:hybrid;
    mso-list-template-ids:-548755868 -1041962848 69271555 69271557 69271553 69271555 69271557 69271553 69271555 69271557;}
@list l2:level1
    {mso-level-start-at:0;
    mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Symbol;
    mso-fareast-font-family:Calibri;
    mso-fareast-theme-font:minor-latin;
    mso-bidi-font-family:"Times New Roman";
    mso-bidi-theme-font:minor-bidi;}
@list l2:level2
    {mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:"Courier New";}
@list l2:level3
    {mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Wingdings;}
@list l2:level4
    {mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Symbol;}
@list l2:level5
    {mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:"Courier New";}
@list l2:level6
    {mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Wingdings;}
@list l2:level7
    {mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Symbol;}
@list l2:level8
    {mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:"Courier New";}
@list l2:level9
    {mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Wingdings;}
@list l3
    {mso-list-id:1184703954;
    mso-list-type:hybrid;
    mso-list-template-ids:1065153000 647109210 69271555 69271557 69271553 69271555 69271557 69271553 69271555 69271557;}
@list l3:level1
    {mso-level-start-at:0;
    mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Symbol;
    mso-fareast-font-family:Calibri;
    mso-fareast-theme-font:minor-latin;
    mso-bidi-font-family:"Times New Roman";
    mso-bidi-theme-font:minor-bidi;}
@list l3:level2
    {mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:"Courier New";}
@list l3:level3
    {mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Wingdings;}
@list l3:level4
    {mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Symbol;}
@list l3:level5
    {mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:"Courier New";}
@list l3:level6
    {mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Wingdings;}
@list l3:level7
    {mso-level-number-format:bullet;
    mso-level-text:\F0B7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Symbol;}
@list l3:level8
    {mso-level-number-format:bullet;
    mso-level-text:o;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:"Courier New";}
@list l3:level9
    {mso-level-number-format:bullet;
    mso-level-text:\F0A7;
    mso-level-tab-stop:none;
    mso-level-number-position:left;
    text-indent:-18.0pt;
    font-family:Wingdings;}
ol
    {margin-bottom:0cm;}
ul
    {margin-bottom:0cm;}
-->
</style>

</head>

<body lang=IN style='tab-interval:36.0pt'>

<div class=WordSection1 style="margin-top:2cm;">

<div align=center>

<table class=MsoTableGrid margin-top=100px border=0 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-yfti-tbllook:1184;mso-padding-alt:
 0cm 5.4pt 0cm 5.4pt;mso-border-insideh:none;mso-border-insidev:none'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes'>
  <td width=627 valign=top style='width:450.8pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <table class=MsoTableGrid border=0 cellspacing=0 cellpadding=0
   style='border-collapse:collapse;border:none;mso-yfti-tbllook:1184;
   mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:none;mso-border-insidev:
   none'>
   <?php $ok=$conn->query("SELECT * FROM profil_desa");
   $desa=mysqli_fetch_array($ok)?>
   <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
    <td width=601 valign=top style='width:450.8pt;padding:0cm 5.4pt 0cm 5.4pt'>
    <p class=MsoNormal align=center style='margin-bottom:0cm;margin-bottom:
    .0001pt;text-align:center;line-height:normal'><span style='font-size:20.0pt;
    mso-bidi-font-size:11.0pt;text-transform:uppercase;'><b>PEMERINTAH KABUPATEN <?php echo $desa['kabupaten']; ?></b><o:p></o:p></span></p>
   
    <p class=MsoNormal align=center style='margin-bottom:0cm;margin-bottom:
    .0001pt;text-align:center;line-height:normal'><span style='font-size:18.0pt;
    mso-bidi-font-size:11.0pt;text-transform:uppercase;'><b>KECAMATAN <?php echo $desa['kecamatan']; ?></b></span></p>
    <p class=MsoNormal align=center style='margin-bottom:0cm;margin-bottom:
    .0001pt;text-align:center;line-height:normal'><span style='font-size:16.0pt;
    mso-bidi-font-size:11.0pt;text-transform:uppercase;'><b><?php echo $desa['desa']; ?></b></span></p>
    <div style='mso-element:para-border-div;border:none;border-bottom:solid windowtext 3.0pt;
    padding:0cm 0cm 1.0pt 0cm'>
    <p class=MsoNormal align=center style='margin-bottom:0cm;margin-bottom:
    .0001pt;text-align:center;line-height:normal;border:none;mso-border-bottom-alt:
    solid windowtext 3.0pt;padding:0cm;mso-padding-alt:0cm 0cm 1.0pt 0cm'><span
    style='font-size:12.0pt;mso-bidi-font-size:11.0pt'><i><?php echo $desa['alamat']; ?></i></span></p>
    </div>
    <p class=MsoNormal align=center style='margin-bottom:0cm;margin-bottom:
    .0001pt;text-align:center;line-height:normal'><span style='font-size:12.0pt;
    mso-bidi-font-size:11.0pt'><o:p>&nbsp;</o:p></span></p>
    </td>
<br>
<br>
<br>
</table>
  <p class=MsoNormal align=center style='margin-bottom:0cm;margin-bottom:
    .0001pt;text-align:center;line-height:normal'><span style='font-size:14.0pt;
    mso-bidi-font-size:11.0pt'><b><u>SURAT PENGANTAR</u></b></span></p>
    <center>Nomor:...../...../<?php echo date('Y'); ?></center>

<br>
<span style='margin-left:2cm'>Yang bertanda tangan dibawah ini Ketua RT ... RW ... </span>menerangkan dengan sebenanya bahwa :
<br><br><br>

<table style='margin-left:2cm'>

<?php while($data=mysqli_fetch_array($tampil))
                    { ?>
                        
    <tr>
        <td>NIK</td>
        <td>: </td>
        <td><?php echo $data['nik']?></td>
    </tr>
    <tr>
        <td>Nama</td>
        <td>: </td>
        <td><?php echo $data['nama']?></td>
    </tr>
    <tr>
        <td>TEMPAT/TGL.LAHIR </td>
        <td>:</td>
        <td><?php echo $data['tempat_lahir']; ?> , <?php echo $data['tgl_lahir'];?>   </td>
    </tr>
    <tr>
        <td>JENIS KELAMIN</td>
        <td>:</td>
        <td><?php echo $data['jk']?></td>
    </tr>

    <tr>
        <td>Tanggal Mati</td>
        <td>:</td>
        <td><?php echo $data['tgl_mati']; ?></td>
    </tr>
    <tr>
        <td>TEMPAT MAKAM</td>
        <td>:</td>
        <td><?php echo $data['tgl_mati']; ?> , <?php echo $data['tgl_lahir'];?>   </td>
    </tr>
    <tr>
        <td>Agama</td>
        <td>:</td>
        <td><?php echo $data['agama']; ?></td>
    </tr>
    <tr>
        <td>Alamat</td>
        <td>:</td>
        <td><?php echo $data['alamat']?>, RT/RW <?php echo $data['rtrw']?>, Desa <?php echo $data['desa']?>, Kecamatan <?php echo $data['kecamatan']?></td>
    </tr>
    <tr>
        <td>KEPERLUAN</td>
        <td>:</td>
        <td colspan="2"> <b>SURAT KEMATIAN</b></td>
        
    </tr>
    <tr>
        <td></td>
        <td>:</td>
        <td colspan="2">..............................................................</td>
        
    </tr>
    <tr>
        <td></td>
        <td>:</td>
        <td colspan="2">..............................................................</td>
        
    </tr>

    <tr>
        <td>CATATAN</td>
        <td>:</td>
        <td colspan="2">..............................................................</td>
        
    </tr>
    <tr>
        <td></td>
        <td>:</td>
        <td colspan="2">..............................................................</td>
        
    </tr>
      

</table>
<br>

Demikian surat ini dapat dipergunakan sebagaimana mestinya

<table border="0" width="100%" >
    <?php $ok=$conn->query("SELECT * FROM profil_desa");
   $desa=mysqli_fetch_array($ok)?>
    <tr>        
        <td align="center">Mengetahui</td>
        <td align="center">Yogyakarta,<?php echo date('d-m-Y') ?></td>
    </tr>
    <tr>
        
        <td align="center">KEPALA DESA</td><br><br>
    </tr>
    <tr><td><br></td></tr>

        <tr>
    
        <td align="center"> <br><?php echo $desa['kepaladesa']; ?></td>
    </tr>
    <tr>
        
        <td align="center"><br>KETUA RW ...</td>
        <td align="center">KETUA RT ...</td>

    </tr>
    <tr>
        
        <td align="center"> <br>.....................</td>
        <td align="center"> <br>.....................</td>
    </tr>
    <tr>
        
        <td></td>
        <td align="right"><font size="1" >admin : <?php echo $admin; ?></td>
    </tr>
</table>
<?php } ?> 
<script>
window.print();
</script>  

</body>
</html>
