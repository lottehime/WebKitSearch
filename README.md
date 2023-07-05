-------
WebKitSearch
-------

Simple script to search for case insensitive terms within git commits of the WebKit source mirror via a local clone of the repo.
This is designed to help hunt for vulnerabilities to leverage in projects.

-------
Usage
-------

- Place the script in your desired location and make it executable with `chmod +x`.
- Edit your `~/.bashrc` file with your favourite editor and add the alias `alias webkitsearch='/YOUR_PATH/webkitsearch.sh'`, where `YOUR_PATH` is the location you have the script in.
- Navigate to your repo and execute the following from terminal `webkitsearch "my search terms"`,  where `"my search terms"` are what you intend to look for. For instance `use-after-free` .

Commits that match your search terms will have their GitHub pages opened up in your default browser ready for you to check out.
If the particular term you are searching for has many hits, there is a potential to lock up your browser and chew your CPU up for a while. I really should make this work within date ranges as well.
