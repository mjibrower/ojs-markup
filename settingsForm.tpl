{**
* plugins/generic/markup/settingsForm.tpl
*
* Copyright (c) 2003-2013 John Willinsky
* Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
*
* Document Markup gateway plugin settings
*
*}
{strip} 
{assign var="pageTitle" value="plugins.generic.markup.displayName"}
{include file="common/header.tpl"}
{/strip}

{url|assign:"urlFileManager" page="manager" op="files" path='css'}

<div id="markupSettings">

	<h3>{translate key="plugins.generic.markup.settings"}</h3>
	
	<form method="post" action="{plugin_url path="settings"}"  enctype="multipart/form-data" autocomplete="off">
	{include file="common/formErrors.tpl"}
		
		<table width="100%" class="data">
		
			<tr valign="top">
				<td width="35%" class="label" align="right">
					{fieldLabel name="cslStyle" key="plugins.generic.markup.settings.cslStyle"}
				</td>
				<td width="65%" class="value">
				
				<input type="text" name="cslStyleName" id="cslStyleName" value="{$cslStyleName|escape}" style="width:100%" class="textField" />
				{fieldLabel key="plugins.generic.markup.settings.cslStyleFieldHelp"}
				
				<input name="cslStyle" type="hidden" id="cslStyle" value="{$cslStyle|escape}" />
				
				<br/>
				<br/>
		
				</td>
			</tr>
			
			<tr valign="top">
				<td width="35%" class="label" align="right">
					{fieldLabel name="cssStyles" key="plugins.generic.markup.settings.cssStyles"}
				</td>
				<td width="65%" class="value">
					<div style="width:200px;float:right !important">
						{translate key="plugins.generic.markup.settings.cssStylesHelp"  url=$urlFileManager}						
					</div>
					
					<a href="{$urlFileManager}/article.css" target="_blank">article.css</a><br/>
					<a href="{$urlFileManager}/article_font.css" target="_blank">article_font.css</a><br/>
					<a href="{$urlFileManager}/article_print.css" target="_blank">article_print.css</a><br/>
					<a href="{$urlFileManager}/article_small.css" target="_blank">article_small.css</a><br/>
					<a href="{$urlFileManager}/article_wide.css" target="_blank">article_wide.css</a><br/>
					
					<br clear="all" />
					<br clear="all" />
				</td>
			</tr>
		
			<tr valign="top">
				<td width="35%" class="label" align="right">
					{fieldLabel name="cssHeaderImage" id="cssHeaderImage"  key="plugins.generic.markup.settings.cssHeaderImageURL"}
				</td>
				<td width="65%" class="value">
					<a href="{$urlFileManager}/{$cssHeaderImageName}" target="_blank">{$cssHeaderImageName}</a> <br/>
					<input type="file" name="cssHeaderImage" /><br/>
					{translate key="plugins.generic.markup.settings.cssHeaderImageURLHelp"  url=$urlFileManager}
					<br/>
					<br/>
				</td>
			</tr>
			
			<!-- flag that triggers reviewer-only set of markup documents that don't have author information -->	
			<tr>	
				<td width="35%" class="label" align="right" valign="top">
					{fieldLabel key="plugins.generic.markup.settings.reviewVersion"}
				</td>
				<td width="65%" class="value">
					<input type="checkbox" name="reviewVersion" id="reviewVersion" value="yes" {if $reviewVersion == "yes"}checked="checked"{/if} />
					{translate key="plugins.generic.markup.settings.reviewVersionHelp"}
					<br/>
				</td>
			</tr>
			
			
			<!-- Display installation requirements -->
			<tr>	
				<td colspan="2"><h4>{fieldLabel key="plugins.generic.markup.settings.requirements"}</h4></td>
			</tr>
		
			<tr>	
				<td width="35%" class="label"></td>
				<td width="65%" class="value">
					{fieldLabel key="plugins.generic.markup.settings.markupHostAccountHelp"}
				</td>
			</tr>
			
			<tr>	
				<td width="35%" class="label" align="right" valign="top">
					{fieldLabel key="plugins.generic.markup.settings.markupHostUser"}
				</td>
				<td width="65%" class="value">
					<input type="text" name="markupHostUser" id="markupHostUser" value="{$markupHostUser|escape}" style="width:150px" class="textField" size="20" /><br/>
				</td>
			</tr>
			
			<tr>	
				<td width="35%" class="label" align="right" valign="top">
					{fieldLabel key="plugins.generic.markup.settings.markupHostPass"}
				</td>
				<td width="65%" class="value">
					<input type="password" name="markupHostPass" id="markupHostPass" value="{$markupHostPass|escape}" style="width:150px" class="textField" /><br/>
					<br/>
				</td>
			</tr>

			<tr>	
				<td width="35%" class="label" align="right" valign="top">
					{fieldLabel key="plugins.generic.markup.settings.markupHostURL"}
				</td>
				<td width="65%" class="value">
					<input type="text" name="markupHostURL" id="markupHostURL" value="{$markupHostURL|escape}" style="width:100%" class="textField" /><br/>
					
					{translate key="plugins.generic.markup.settings.markupHostURLHelp"}
				</td>
			</tr>

			<tr>	
				<td width="35%" class="label" align="right" valign="top">
					{fieldLabel key="plugins.generic.markup.settings.php5Support"}
				</td>
				<td width="65%" class="value">
					<b>{$php5Support|escape}</b><br/>
					{translate key="plugins.generic.markup.settings.php5SupportHelp"}
				</td>
			</tr>
					
			<tr>	
				<td width="35%" class="label" align="right" valign="top">
					{translate key="plugins.generic.markup.settings.curlSupport"}
				</td>
				<td width="65%" class="value">
					<b>{$curlSupport|escape}</b><br/>
					
					{fieldLabel key="plugins.generic.markup.settings.curlSupportHelp"}
				</td>
			</tr>
		
			<tr>	
				<td width="35%" class="label" align="right" valign="top">
					{fieldLabel key="plugins.generic.markup.settings.zipSupport"}
				</td>
				<td width="65%" class="value">
					<b>{$zipSupport|escape}</b><br/>
					
					{translate key="plugins.generic.markup.settings.zipSupportHelp"}
				</td>
			</tr>

			<tr>	
				<td width="35%" class="label" align="right" valign="top">
					{fieldLabel key="plugins.generic.markup.settings.pathInfo"}
				</td>
				<td width="65%" class="value">
					<b>{$pathInfo|escape}</b><br/>
					
					{translate key="plugins.generic.markup.settings.pathInfoHelp"}
				</td>
			</tr>
			
		</table>
		<br/>
		
		<input type="submit" name="save" class="button defaultButton" value="{translate key="common.save"}"/>
		<input type="button" class="button" value="{translate key="common.cancel"}" onclick="document.location.href='{url|escape:"quotes" page="manager" op="plugins" escape="false"}'"/>
	</form>
</div>

<script>
{* 
	csl.json is an array of csl values obtained from the document markup server directly:
	
		jsonCallback(
			{"styles": [
				{"label":"...","value":"..."},
				{...}
			] }
		)
		
*}
{literal}
$(document).ready(function() {
	jQuery.support.cors=true;
	jQuery.ajaxSettings.cache=false;
	
	jQuery.ajax({
		url: '{/literal}{$markupHostURL|escape}static/csl-style-index.json?callback=?{literal}',
		dataType: 'jsonp',
		jsonpCallback: 'jsonCallback',
		contentType: 'application/json',
		error: function(e) {console.log(e.message); },
		success: function(cslData) {
			
			$("#cslStyleName").autocomplete({
				source: cslData.styles,
				minLength: 2,
				html: true,
				position: { my : "left bottom", at: "left top" },
				select: function( event, ui ) {
					// yeilds ui.item.value & ui.item.label 
					$(this).val(ui.item.label); //was set to value 
					$("#cslStyle").val(ui.item.value);
					return false; //cancels normal setting of value 
				}
			});
		}
		
	})
	
});
{/literal}
</script>


{include file="common/footer.tpl"}
