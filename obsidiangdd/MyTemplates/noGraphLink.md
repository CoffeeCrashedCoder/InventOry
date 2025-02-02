<%*
let destination = await tp.system.prompt("Hiiiiiiiii :D", "MyNote");
let link = tp.user.openFile(destination);
tR += `[${destination}](${link})`;
%>