<a href="index.php?logout=yes">{$LOGOUT}</a>
<br><br>

{if $arrMainMenu|@count>1}
<div class="container">  
<div class="row">
<div class="span6">  
<ul class="nav nav-tabs">  
<li class="active">  
{foreach from=$arrMainMenu key=idMenu item=menu}
{if $idMenu eq $idMainMenuSelected}
<li><a href="index.php?menu={$idMenu}">{$menu.Name}</a></li>
{else}
<li><a href="index.php?menu={$idMenu}">{$menu.Name}</a></li>
{/if}
{/foreach}
{/if}
<br><br>
                  {foreach from=$arrSubMenu key=idSubMenu item=subMenu}
                  {if $idSubMenu eq $idSubMenuSelected}
                  <a href="index.php?menu={$idSubMenu} ">{$subMenu.Name}</a>
                  {else}
                  <a href="index.php?menu={$idSubMenu} ">{$subMenu.Name}</a>
                  {/if}
                  {/foreach}
<br><br>
    {if !empty($idSubMenu2Selected)}
      {foreach from=$arrSubMenu2 key=idSubMenu2 item=subMenu2}
          {if $idSubMenu2 eq $idSubMenu2Selected}
          <a href="index.php?menu={$idSubMenu2}">{$subMenu2.Name}</a>
	  {else}
 	  <a href="index.php?menu={$idSubMenu2}">{$subMenu2.Name}</a>
         {/if} 
       {/foreach}   
    {/if}
<br><br>
