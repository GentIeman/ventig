<header class="header">
    <nav class="header__nav">
        <a class="header__logo" tabindex="-1" href="./main.php"></a>
        <ul class="header__list">
            <li class="header__item">
                <a href="./main.php"
                   class="header__link btn btn_hover btn_focus {if count($smarty.get)<1}btn_active{/if}">Главная</a>
            </li>
            <li class="header__item">
                <a href="./main.php?section=posts&action=novelties"
                   class="header__link btn btn_hover btn_focus {if isset($novelties) == true}btn_active {/if}">Новинки</a>
            </li>
            <li class="header__item">
                <a href="./main.php?section=posts&action=classic_posts"
                   class="header__link btn btn_hover btn_focus {if isset($classic_posts) == true} btn_active {/if}">Классика</a>
            </li>
            <li class="header__item">
                <a href="./main.php?section=posts&action=search"
                   class="header__link btn btn_hover btn_focus icon-small search-icon {if isset($search) === true} btn_active {/if}"
                   title="Поиск"></a>
            </li>
            {if !empty($user)}
                <li class="header__item">
                    <a href="./main.php?section=profile&action=profile&id={$user.id}"
                       class="header__link btn btn_hover btn_focus icon-small profile-icon {if isset($profile) === true} btn_active {/if}"
                       title="Профиль"></a>
                </li>
            {else}
                <li class="header__item">
                    <a href="./main.php?section=profile&action=auth"
                       class="header__link btn btn_hover btn_focus icon-small profile-icon {if isset($auth) === true} btn_active {/if}"
                       title="Профиль"></a>
                </li>
            {/if}
        </ul>
    </nav>
</header>