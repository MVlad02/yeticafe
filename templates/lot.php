<main>
    <nav class="nav">
        <ul class="nav__list container">
            <?php foreach ($categories as $category) {?>
                <li class="nav__item">
                    <a href="all-lots.html"><?= $category["category_name"]?></a>
                </li>
            <?php } ?>
        </ul>
    </nav>
    <section class="lot-item container">
        <h2><?= $tgoods['goods_name']?></h2> <!-- Имя -->
        <div class="lot-item__content">
            <div class="lot-item__left">
                <div class="lot-item__image">
                    <img src="<?= $tgoods['goods_img']?>" width="730" height="548" alt="Сноуборд">
                </div>
                <p class="lot-item__category">Категория: <span><?= $tgoods['category_name']?></span></p>
                <p class="lot-item__description"><?= $tgoods['goods_inf']?></p>
            </div>
            <div class="lot-item__right">
                <div class="lot-item__state">
                    <div class="lot-item__timer timer">
                        10:54
                    </div>
                    <div class="lot-item__cost-state">
                        <div class="lot-item__rate">
                            <span class="lot-item__amount">Текущая цена</span>
                            <span class="lot-item__cost"><?= $tgoods['goods_price']?></span>
                        </div>
                        <div class="lot-item__min-cost">
                            Мин. ставка <span><?= $tgoods['goods_price'] + $tgoods['goods_stav']?></span>
                        </div>
                    </div>
                    <form class="lot-item__form" action="https://echo.htmlacademy.ru" method="post" autocomplete="off">
                        <p class="lot-item__form-item form__item form__item--invalid">
                            <label for="cost">Ваша ставка</label>
                            <input id="cost" type="text" name="cost" placeholder="12 000">
                            <span class="form__error">Введите наименование лота</span>
                        </p>
                        <button type="submit" class="button">Сделать ставку</button>
                    </form>
                </div>

            </div>
        </div>
    </section>
</main>
