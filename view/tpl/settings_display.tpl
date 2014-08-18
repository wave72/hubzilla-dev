<div class="generic-content-wrapper">
<h1>{{$ptitle}}</h1>

<form action="settings/display" id="settings-form" method="post" autocomplete="off" >
<input type='hidden' name='form_security_token' value='{{$form_security_token}}'>

{{include file="field_themeselect.tpl" field=$theme}}
{{include file="field_themeselect.tpl" field=$mobile_theme}}
{{if $expert}}
{{include file="field_checkbox.tpl" field=$user_scalable}}
{{/if}}
{{include file="field_input.tpl" field=$ajaxint}}
{{include file="field_input.tpl" field=$itemspage}}
{{include file="field_checkbox.tpl" field=$nosmile}}


<div class="settings-submit-wrapper" >
<input type="submit" name="submit" class="settings-submit" value="{{$submit}}" />
</div>

<br />
<a href="pdledit">{{$layout_editor}}</a>
<br />

{{if $theme_config}}
<h2>Theme settings</h2>
{{$theme_config}}
{{/if}}

</form>
</div>
