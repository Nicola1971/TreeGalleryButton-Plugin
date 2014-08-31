//<?php
/**
 * TreeGalleryButton
 *
 * Add a new treebutton to open media gallery in a popup or black page
 *
 * @author    Nicola Lambathakis
 * @category    plugin
 * @version    1.0 RC
 * @license	 http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnManagerTreePrerender
 * @internal    @installset base
 * @internal    @modx_category Manager and Admin
 * @internal    @properties  &TargetWindow=Target Window:;list;popup,blank;popup &AwesomeFonts=Use Awesome Fonts icon:;list;no,yes;no &AwesomeFontsHoverColor=Awesome Fonts hover color:;string;FFFFFF &AwesomeGalleryFontsIcon=Awesome Fonts icon:;string;fa-picture-o
 */

/**
 * TreeGalleryButton RC 1.0
 * author: Nicola Lambathakis http://www.tattoocms.it
 * Add a new treebutton to open media gallery in a popup or black page
 * Event: OnManagerTreePrerender
 * Configuration: &TargetWindow=Target Window:;list;popup,blank;popup &AwesomeFonts=Use Awesome Fonts icon:;list;no,yes;no &AwesomeFontsHoverColor=Awesome Fonts hover color:;string;FFFFFF &AwesomeGalleryFontsIcon=Awesome Fonts icon:;string;fa-picture-o
 */

GLOBAL $manager_theme;
$PluginPath = isset($PluginPath) ? $PluginPath : '../assets/plugins/treeegallerrybutton/';

$TargetWindow = isset($TargetWindow) ? $TargetWindow : 'popup';
$AwesomeFonts = isset($AwesomeFonts) ? $AwesomeFonts : 'no';
$AwesomeFontsHoverColor = isset($AwesomeFontsHoverColor) ? $AwesomeFontsHoverColor : 'FFFFFF';
$AwesomeGalleryFontsIcon = isset($AwesomeGalleryFontsIcon) ? $AwesomeGalleryFontsIcon : 'fa-list-alt';

//button icons and links
$GalleryButtonIconPopup = isset($GalleryButtonIconPopup) ? $GalleryButtonIconPopup : '<a class="TrbuttonGallery treeButton" onclick="window.open(\'media/browser/mcpuk/browse.php?&type=images\',\'Gallery\',\'width=800,height=600,top=\'+((screen.height-600)/2)+\',left=\'+((screen.width-800)/2)+\',toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no\')"><img src="'.$PluginPath.'images/gallery.png" /></a>';

$GalleryButtonAwesomePopup = isset($GalleryButtonAwesomePopup) ? $GalleryButtonAwesomePopup : '<a class="TrbuttonGallery" onclick="window.open(\'media/browser/mcpuk/browse.php?&type=images\',\'Gallery\',\'width=800,height=600,top=\'+((screen.height-600)/2)+\',left=\'+((screen.width-800)/2)+\',toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no\')"><i class="fa '.$AwesomeGalleryFontsIcon.' fa-lg"></i></a>';

$GalleryButtonIconBlank = isset($GalleryButtonIconBlank) ? $GalleryButtonIconBlank : '<a class="TrbuttonGallery treeButton" href="media/browser/mcpuk/browse.php?&type=images" alt="Gallery" target="_blank"><img src="'.$PluginPath.'images/gallery.png" /></a>';

$GalleryButtonAwesomeBlank = isset($GalleryButtonAwesomeBlank) ? $GalleryButtonAwesomeBlank : '<a class="TrbuttonGallery" href="media/browser/mcpuk/browse.php?&type=images" alt="Gallery" target="_blank"><i class="fa '.$AwesomeGalleryFontsIcon.' fa-lg"></i></a>';
//styles
$iconstyle = '<style>
	.TrbuttonGallery {
	position: absolute;
	left: 210px;
    top: 2px;
	padding-top:4px;
	height:16px;
	width:16px;
	cursor: pointer;}
	</style>';
$awesomestyle = '<style>
	.TrbuttonGallery i{
	position: absolute;
	left: 210px;
    top: 3px;
	padding-top:4px;
	height:16px;
	width:16px;
	cursor: pointer;}
	a.TrbuttonElements i:hover {color: #'.$AwesomeFontsHoverColor.'!important;)
	</style>';
// run event
$e = &$modx->Event;
$output ='';

switch($e->name) {
    case 'OnManagerTreePrerender':
	// buttons
if ($TargetWindow == popup) {
	if ($AwesomeFonts == no) {
	$output = '
	'.$iconstyle.'
    '.$GalleryButtonIconPopup.'
    ';
	}
	if ($AwesomeFonts == yes) {
	$output = '
	'.$awesomestyle.'
    '.$GalleryButtonAwesomePopup.'
    ';
}
if ($TargetWindow == blank) {
	if ($AwesomeFonts == no) {
	$output = '
	'.$iconstyle.'
    '.$GalleryButtonIconBlank.'
    ';
	}
	if ($AwesomeFonts == yes) {
	$output = '
	'.$awesomestyle.'
    '.$GalleryButtonAwesomeBlank.'
    ';
	}
  }
}
 	//end button

    break;
    default:
        $output = '';
    break;
}
$e->output($output);

return;