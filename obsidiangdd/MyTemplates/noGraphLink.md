<%*
let destination = await tp.system.prompt("Where do you want to go? :D", "MyNote");
let link = tp.user.openFile(destination);
tR += `[${destination}](${link})`;
%>