<?php
if(!defined('INITIALIZED'))
	exit;

$list = $SQL->query('SELECT ' . $SQL->fieldName('name') . ', ' . $SQL->fieldName('id') . ', ' . $SQL->fieldName('group_id') . ' FROM ' . $SQL->tableName('players') . ' WHERE ' . $SQL->fieldName('group_id') . ' IN (' . implode(',', $config['site']['groups_support']) . ') ORDER BY ' . $SQL->fieldName('group_id') . ' DESC');


$main_content .= "
<table border=0 cellpadding=4 cellspacing=1 width=100%>
<tr><td class=\"white\" align=\"center\" bgcolor=\"#505050\"><b>Informação de Contato</b></td></tr>
<tr><td bgcolor=\"#D4C0A1\"><table border=\"0\" cellpadding=\"8\">
<TR><TD>Company Website:</TD><TD><A href='https://furiaot.com'>FuriaOT</A></TD></TR>
<TR><TD>Email de Contato:</TD><TD>furia.suport@gmail.com</TD></TR>
<TR><TD>Dev</TD><TD>Marllon Bruno</TD></TR>
<TR><TD>Web Devloper/Dev:</TD><TD>Guilherme Fontes</TD></TR>
<TR><TD>Mapper:</TD><TD>Eduardo Maricone</TD></TR>
</td></tr></table></td></tr>";

$main_content .= "<table border=0 cellpadding=4 cellspacing=1 width=100%>

<tr><td class=\"white\" align=\"center\" bgcolor=\"#505050\"><b>Aviso Legal</b></td></tr>

<tr><td bgcolor=\"#D4C0A1\"><table border=\"0\" cellpadding=\"8\"><tr><td>
A FuriaOT se isenta de todas as garantias de atualização,
correção, integridade ou qualidade das informações apresentadas
neste site. A FuriaOT não se responsabiliza por lucros
cessantes ou danos especiais, incidentais ou consequentes decorrentes
do uso ou não uso das informações apresentadas. A FuriaOT
reserva-se o direito de complementar, alterar ou excluir partes do
site ou de todo o site, ou mesmo fechar o serviço temporariamente ou finalmente.
</td></tr></table></td></tr>";
$main_content .= "<br><br>";


$main_content .= "<table border=0 cellspacing=1 cellpadding=4 width=100%>
	<td class=\"white\" colspan=\"3\" align=\"left\" bgcolor=\"#505050\"><b>Membros Staff</b></td>
	 <tr bgcolor=\"#D4C0A1\"><td width=\"80%\"><b>Name</b></td><td><b>Group</b></td></tr>";

foreach($list as $i => $supporter)
{
	$bgcolor = (($i++ % 2 == 1) ?  $config['site']['darkborder'] : $config['site']['lightborder']);
	$main_content .= '<tr bgcolor="'.$bgcolor.'"><td>'.htmlspecialchars($supporter['name']).'</a></td><td>' . htmlspecialchars(Website::getGroupName($supporter['group_id'])) . '</td></tr>';
}

$main_content .= "<br><br>";
$main_content .= "</table>";