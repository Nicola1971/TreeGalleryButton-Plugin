//<?php
/**
 * TreeGalleryButton
 *
 * Add a new treebutton to open media gallery in a popup or blank page
 *
 * @author    Nicola Lambathakis
 * @category    plugin
 * @version    1.1 RC
 * @license	 http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnManagerTreePrerender
 * @internal    @installset base
 * @internal    @modx_category Manager and Admin
 * @internal    @properties  &TargetWindow=Target Window:;list;popup,blank;popup &AwesomeFonts=Use Awesome Fonts icon:;list;no,yes;no &AwesomeFontsHoverColor=Awesome Fonts hover color:;string;FFFFFF &AwesomeGalleryFontsIcon=Awesome Fonts icon:;string;fa-picture-o
 */

/**
 * TreeGalleryButton RC 1.1
 * author: Nicola Lambathakis http://www.tattoocms.it
 * Add a new treebutton to open media gallery in a popup or black page
 * Event: OnManagerTreePrerender
 * Configuration: &TargetWindow=Target Window:;list;popup,blank;popup &AwesomeFonts=Use Awesome Fonts icon:;list;no,yes;no &AwesomeFontsHoverColor=Awesome Fonts hover color:;string;FFFFFF &AwesomeGalleryFontsIcon=Awesome Fonts icon:;string;fa-picture-o
 */

// Run the main code
include($modx->config['base_path'].'assets/plugins/treegallerybutton/treegallerybutton.php');