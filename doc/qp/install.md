# [[qp]]/install

## clone

```shell
git clone -o bb git@bitbucket.org:ponyatov/qp.git ~/qp
cd ~/qp
make install
./rc
```

## from scratch

```shell
git clone -o bb git@bitbucket.org:ponyatov/qp.git ~/qp
cd ~/qp
ln -fs ~/rc rc
```
```shell
git checkout --orphan shadow
git add -A ; git commit -a -m "."
git push -v -u bb shadow
```
```shell
./rc
```
```
git gui &
code .
```
```shell
mkdir .vscode bin doc lib inc src tmp
```
```shell
echo '!.gitignore' >       ./.gitignore
echo '!.gitignore' > .vscode/.gitignore
echo '!.gitignore' >     bin/.gitignore
echo '!.gitignore' >     doc/.gitignore
echo '!.gitignore' >     lib/.gitignore
echo '!.gitignore' >     inc/.gitignore
echo '!.gitignore' >     src/.gitignore
echo '!.gitignore' >     tmp/.gitignore
```
```shell
touch .vscode/extensions.json
touch .vscode/tasks.json
touch .vscode/settings.json
```
```shell
touch README.md Makefile .doxygen .clang-format
touch apt.txt apt.msys
```
```shell
git push -v
```
