<script>
  function chLocation(newLocation) { document.location = newLocation; }
</script>

<table cellspacing="0" cellpadding="7" border="0" width="720">
  <tr>
    <td valign="top">
{if $user->can('manage_custom_fields')}
      <table cellspacing="1" cellpadding="3" border="0" width="100%">
        <tr>
          <td width="80%" class="tableHeader">{$i18n.label.thing_name}</td>
          <td></td>
          <td></td>
        </tr>
  {if $options}
    {foreach $options as $key=>$val}
        <tr bgcolor="{cycle values="#f5f5f5,#ffffff"}">
          <td>{$val|escape}</td>
          <td><a href="cf_dropdown_option_edit.php?id={$key}"><img class="table_icon" alt="{$i18n.label.edit}" src="images/icon_edit.png"></a></td>
          <td><a href="cf_dropdown_option_delete.php?id={$key}"><img class="table_icon" alt="{$i18n.label.delete}" src="images/icon_delete.png"></a></td>
        </tr>
    {/foreach}
  {/if}
      </table>

      <table width="100%">
        <tr>
          <td align="center">
            <br>
            <form>
              <input type="button" onclick="chLocation('cf_dropdown_option_add.php?field_id={$field_id}');" value="{$i18n.button.add}">
            </form>
          </td>
        </tr>
      </table>
{/if}
    </td>
  </tr>
</table>
