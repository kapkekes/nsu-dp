# nsu-dp-template
Темплейтный репозиторий для сдачи домашних работ по декларативному программированию.

## Проверки перед началом работы

Убедитесь, что файл по пути `.devcontainer\library-scripts\common-debian.sh` от корня репозитория имеет `LF`-эндинги. Для этого откройте его через VS Code и посмотрите в нижний правый угол:

- если вы видите `LF` - всё в порядке, контейнер можно запускать;
- если вы видите `CRLF` - нажмите на надпись; сверху всплывёт выбор эндингов, выбирайте `LF`;

Если в процессе работы снизу справа вы увидите уведомление вида "Install HLS *blah-blah*" - нажмите "Yes, don't ask next time". После этого расширение начнёт самостоятельно управлять HLS и ставить новые версии по мере необходимости.

## Как приступить к выполнению ДЗ

Убедитесь, что вы находитесь в ветке `main`, после чего создайте новую ветку с названием `homework-<номер-ДЗ>` (обязательно прочитайте про нумерацию ниже) и перейдите в неё.

Запустите контейнер, выполните следующую команду:

```bash
stack new Homework<номер-ДЗ> kapkekes/<название-темплейта> --resolver lts-20.26
```

- номер ДЗ должен состоять из двух цифр; если номер меньше десяти - пишите в виде `03`, `04` и так далее;
- название темплейта будет выкладываться с каждой домашкой;
- опция `--resolver lts-20.26` необходима для того, чтобы Stack использовал общий для контейнера GHC;

После того, как Stack создал новый проект, перейдите в него, выполнив `cd Homework<номер-ДЗ>`. Для того, чтобы HLS корректно работал, необходимо выполнить две следующие команды:

```bash
stack build
gen-hie > hie.yaml
```

Первая команда создаст данные, необходимые HLS для анализа вашего кода, а вторая создаст файл с указаниями, где эти данные искать для каждой части проекта.

## Запуск конкретных тестов

После того, как вы дописали код, выполните `stack test`, чтобы прогнать все подготовленные тесты. Если вы хотите запустить только определённые тесты - выполните следующую команду `stack test --ta "--match <требуемая-функция>"`, подставив имя нужной функции.
