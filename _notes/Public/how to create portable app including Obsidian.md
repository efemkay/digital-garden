---
title: how to create portable app including Obsidian
---

## **First, Check If It Hasn’t Already Been Done**
- Before you go down the route of making a non-portable app portable yourself, it’s a good idea to check if someone else hasn’t already done the work for you. Of course, you are unlikely to find any paid software this way! However, plenty of popular free applications have been converted into portable versions, ready to download. 
	- ![](https://helpdeskgeek.com/wp-content/pictures/2019/11/Portable-Apps-Website.jpg)
- We recommend [PortableApps.com](https://portableapps.com/) which comes with its own launcher and app management interface. Simply download the installer, install it to an external drive and pick all the app from the list you want.
## **Creating a Portable App With Enigma Virtual Box**

Here’s how:
1. Download Enigma Virtual Box from [https://enigmaprotector.com/en/downloads.html 2](https://enigmaprotector.com/en/downloads.html) and install it.
2. Run the app and it will look like this:
	- ![](https://i.imgur.com/VZUvOXu.png)
3. Right click on your Obsidian app, right click on the word “Obsidian”, then click on Properties:
	- ![](https://i.imgur.com/ipcIGNx.png)
4. Copy the path to `obsidian.exe`:
	- ![](https://i.imgur.com/b84BJU5.png)
	- Paste that into the **Enter Input File Name** field:
	- ![](https://i.imgur.com/JnDq0fj.png)
5. Add any path you like for output file name.
6. Click on Add, then Add Folder Recursive:
	- ![](https://i.imgur.com/4rAJeWo.png)
7. Paste in the same folder from the `Obsidian.exe` step, click OK and choose `%DEFAULT FOLDER%`:
	- ![](https://i.imgur.com/Q7pfr9a.png)
8. Click **Process**, and it will create the portable app for you.
	- ![](https://i.imgur.com/oEqMMBQ.png)
	- I have tested this app on a computer without Obsidian installed, running from a USB stick, and it worked perfectly.

## References
- [Create a Portable Version of Any Application in Windows (helpdeskgeek.com)](https://helpdeskgeek.com/how-to/create-a-portable-version-of-any-application-in-windows/)
- [Run in Portable Mode? - Feature requests - Obsidian Forum](https://forum.obsidian.md/t/run-in-portable-mode/915/69)

## Metadata
- topic:: 
	- related:: [[00 Obsidian]]
- updated:: [[2022-08-26]]
- reviewed:: [[2022-08-26]]
- #FleetingNote 
