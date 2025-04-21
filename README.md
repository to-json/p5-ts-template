# An actually minimal template for p5 and ts

Today I had the unpleasant experience of trying to start a p5 project in
typescript with editor/lsp support and hot reloading. The closest I got
was [this](https://github.com/Gaweph/p5-typescript-starter) which, to be clear,
is quite good, but, makes a few choices I would not.

This one assumes a local p5.min.js and p5.sound.min.js. I obtain them like this:

    git clone https://github.com/to-json/p5-ts-template.git .
    wget https://github.com/processing/p5.js/releases/download/v1.11.5/p5.zip
    unzip p5.zip
    ln -s p5/addons/p5.sound.min.js p5.sound.min.js
    ln -s p5/p5.min.js p5.min.js
    yes | rm -r .git
    git init

Naturally, you may wish to visit the p5 website and obtain a more recent version.

If you are doing several p5 projects, something more like this may be nice:

    mkdir p5-projects
    cd p5-projects
    wget https://github.com/processing/p5.js/releases/download/v1.11.5/p5.zip
    unzip p5.zip

and then for each project

    mkdir project-name
    cd project-name
    git clone https://github.com/to-json/p5-ts-template.git .
    ln -s ../p5/addons/p5.sound.min.js p5.sound.min.js
    ln -s ../p5/p5.min.js p5.min.js
    yes | rm -r .git
    git init

You can start it with `npm start`, which just runs `tsc --watch` in your
project-name root directory, to continuously build your project into `build`,
and `browser-sync start --server -w` to start a browser and initiate automatic
reloads. It's nice that the command does them in parallel, but you can always
run either individually.

Any field that contains names or descriptions has been omitted or left blank,
browse around and put your stank where it goes before publishing. The sketch
is in sketch.ts, and quite empty.

## But wait there's more

I know I said actually minimal but I promise this time more is less. There is
a Makefile included. 

`make go` will do the first version of the p5 install process, including deleting 
my git metadata, delete the Makefile, and git init, so that you have exactly what 
you need, and none of what you do not. 

`make go-sub` does the second version.

`make go-base` just does the download of p5 and deletes itself, no git metadata
removal, for making basedirs.

# Credits

@Gaweph for the base repo
@nofoxtugiv for the pairing sesh and book club that caused this template
@shiffman for prompting the interest in p5 years and years ago
@kentquirk for re-prompting it this genuary

