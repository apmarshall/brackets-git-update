# Brackets Git Update

The Adobe Brackets editor is great. The process for updating it isn't.

*The Problem:* Every time Adobe releases a new update of the Brackets editor, I need to download the full installer package and re-install the app. This is (a) more time consuming than it needs to be and (b) results in a lot of duplicate code being downloaded over and over again.

*The Solution:* Set up Brackets for hacking and then just pull the upstream updates. Only download the updates, not the whole app. Get them with a single command.

*Problem With the Solution:* You still need to update the shell app, which means either (a) downloading the whole package anyway to get the latest verstion of the app, or (b) cloning brackets-shell and rebuilding it manually every time there's an update.

*The Better Solution:* Make a script which handles pulling down the upstream updates for both Brackets and Bracket-shell, rebuilding shell, and re-syncing it to the local Brackets repo. One command to do it all.
