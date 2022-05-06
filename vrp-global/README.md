# VRP-Global
Global action for the FiveM roleplay mod/Framework VRP.
Do /meall and then your message. ex /meall driving from palido towards the city.

![vrp-global](https://i.imgur.com/rWDJM8G.png)

## Requirements
You will need the following mods/scripts in order for it to work.
- VRP
- MySQL-async

## License
Your are allowed to use the mod/script on your server. You are NOT allowed to claim it as your work, or in anyway rerelease the original or a moddified version as your work.

## Support
The script can be improved in many ways, but its not in my interest to work with fivem scripting.
Ways it can be improved:
- Change the DB calls from raw SQL to a variable.
Pros: Improved security, like making SQL-injection harder.
Cons: Slower speed, but unnoticeable.
- Split the script up in client side and server side (The way it should be made...)
Pros: Security & speed. By splitting it the server can easier access the server side files, and the rest is read and executed on the client. You also prevent the client from downloading server related files.
Cons: None.
