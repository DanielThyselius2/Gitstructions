hejsan världen!

Dagens git-kommandon:
- fetch
    uppdaterar vår lokala chache av remote git-repo
- clone
    hämtar ner (kopierar) en repo från en remote
    Går att göra via http eller ssh
- push
    Tar lokala ändringar och `pushar` (flyttar) dem till vår remote 
    använd -u för att sätta en upstream
    ex: `push -u origin dev`
    ex med annat namn på remote:
    > `push -u origin dev:anotherName` 
- pull
    En shorthand för `git fetch` sen `git merge` 
    använd `git pull --rebase` för att göra en rebase i stället för en merge
- commit
    commits the changes in staging area
    använd --amend för att ändra senaste commit (lokalt)
 