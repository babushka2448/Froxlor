$header
	<form action="{$linker->getLink(array('section' => 'tickets'))}" method="post">
		<input type="hidden" name="s" value="$s"/>
		<input type="hidden" name="page" value="$page"/>
		<input type="hidden" name="send" value="send" />
		<table cellpadding="5" cellspacing="0" border="0" align="center" class="maintable">
			<tr>
				<td class="maintitle_search_left"><b><img src="images/Classic/title.gif" alt="" />&nbsp;{$lng['menue']['ticket']['ticket']}</b></td>
				<td class="maintitle_search_right" colspan="9">{$searchcode}</td>
			</tr>
			<if ($userinfo['tickets_used'] < $userinfo['tickets'] || $userinfo['tickets'] == '-1') && 15 < $tickets_count >
			<tr>
				<td class="field_display_border_left" colspan="10"><a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'new'))}">{$lng['ticket']['ticket_new']}</a></td>
			</tr>
			</if>
			<tr>
				<td class="field_display_border_left">{$lng['ticket']['lastchange']}&nbsp;&nbsp;{$arrowcode['lastchange']}</td>
				<td class="field_display">{$lng['ticket']['ticket_answers']}&nbsp;&nbsp;{$arrowcode['ticket_answers']}</td>
				<td class="field_display">{$lng['ticket']['subject']}&nbsp;&nbsp;{$arrowcode['subject']}</td>
				<td class="field_display">{$lng['ticket']['status']}&nbsp;&nbsp;{$arrowcode['status']}</td>
				<td class="field_display">{$lng['ticket']['lastreplier']}&nbsp;&nbsp;{$arrowcode['lastreplier']}</td>
				<td class="field_display">{$lng['ticket']['priority']}&nbsp;&nbsp;{$arrowcode['priority']}</td>
				<td class="field_display_search" colspan="4">{$sortcode}</td>
			</tr>
			$tickets
			<if $pagingcode != ''>
			<tr>
				<td class="field_display_border_left" colspan="10" style=" text-align: center; ">{$pagingcode}</td>
			</tr>
			</if>
			<if ($userinfo['tickets_used'] < $userinfo['tickets'] || $userinfo['tickets'] == '-1') && $countcustomers !=0 >
			<tr>
				<td class="field_display_border_left" colspan="10"><a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'new'))}">{$lng['ticket']['ticket_new']}</a></td>
			</tr>
			</if>
			<if $countcustomers == 0 >
			<tr>
				<td class="field_display_border_left" colspan="10"><a href="{$linker->getLink(array('section' => 'customers', 'page' => 'customers', 'action' => 'add'))}">{$lng['admin']['ticket_nocustomeraddingavailable']}</a></td>
			</tr>
			</if>			
		</table>
	</form>
	<br />
	<br />
$footer
