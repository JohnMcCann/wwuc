git aliases
-----------

List of git aliases will be added

* `genesis`: proper way to init a repo with seperate work clone
    * Input: project\_name
* `introduce`: sets remote of repo
    * Input: project\_name, origin\_remote
* `intro-gitlab`: sets a gitlab remote for repo
    * Input: project\_name, gitlab\_username
* `intro-github`: sets a github remote for repo
    * Input: project\_name, github\_username
* `deathOfASalesman`: only to be used with gensis, removes repo leaving work clone
    * Input: project\_name, origin\_remote
* `omnistart`: does genesis, introduce, and deathOfASaleman
    * Input: project\_name, origin\_remote
* `init-www`: init with remotes for gitlab and github
    * Input: project\_name, gitlab\_username, github\_username
* `addnw`: stage file without whitespace changes
    * Input: file\_name
* `map`: costum summary log of git graph
* `mapall`: map but with detatched branches too
* `mapblame`: map with blame information
* `mapgory`: costum log with full commit message


git ignore
----------

Ignore file that ignores system files that are not typically desirable for tracking with reversion control.


git template
------------

General commit template that guides and promotes good commit messages.
