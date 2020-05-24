function onUse(cid, item, frompos, item2, topos)
    if item.uid == 10000 then
        queststatus = getPlayerStorageValue(cid,10000)
    if queststatus == -1 or queststatus == 0 then
        doPlayerSendTextMessage(cid,22,"Você pegou um arco top!!") -- a mensagen que ira aparecer quando vc pegar o item
        item_uid = doPlayerAddItem(cid,7438,1) -- item_uid = doPlayerAddItem(cid,2160~id do item~,100~Quantidade~)
        setPlayerStorageValue(cid,10000,1)
    else
        doPlayerSendTextMessage(cid,22,"Esta Vazio . Vc Ja Fes A Quest.") -- ira aprecer quando vc ja tiver pego e tentar dnv
    end
    else
        return 0
    end
        return 1
    end

-- Denunciar post 
--     Postado 14-04-2009 20:40
--     --Function onUse()--
--     Aprenda como usar!
--     Créditos:
--     -Tprocheira
--     Eu andei vendo que a nossa comunidade de está sem muitos programadores, principalmente na área de Lua, então, estive preparando alguns tutoriais, que junto com os tutoriais do tibiaa4e, farão de você o mestre do mundo do OpenTibia!
--     Bem, como devem ter percebido, meus tutoriais são mais direcionados à lua, ou seja, as funções da linguagem, porém, neste tutorial, daria uma "aula" sobre uma função muito usada, a famosa onUse().
    
--     Bem, chega de papo e vamos começar.
--     Se você já teve uma iniciação em lua, deve saber que toda função tem uma sintaxe com seus devidos parâmetros.
--     Esta função não é diferente, porém, existe um diferencial. Esta função é que vai determinar o tipo de script, ou seja, é ela que decide qual tipo de função o seu script fará.
--     Bem, a sintaxe da função onUse é:
--     function onUse(cid, item, fromPosition, itemEx, toPosition)
--     Então, toda vez que você for usar uma função dentro desta function, você terá que usar um destes parâmetros.
--     Por exemplo, na função doTeleportThing() utiliza os seguintes parâmetros:
--     doTeleportThing(uid,  position, true/false
--     No lugar do uid, você normalmente colocaria cid (caso você queira teletransportar o próprio jogador). Se você percebeu, a palavra cid foi declarada na função onUse. Então, se você, no lugar do cid, você colocou player, a função ficaria assim:
--     doTeleportThing(player, position, true/false)
--     Será que entenderam?
--     Como eu não consigo saber, vamos continuar. (lol :p)
--     Este tipo de função é usada em actions (scripts que são executados quando o jogador utiliza um certo item).
--     Como estamos aqui para entender a função e não aprender LUA, vamos agora, entender o que cada parâmetro significa.
--     Parâmetro cid
--     Este parâmetro é referênciado ao jogador em si. Então, qualquer tipo de action que interaja com o jogador, terá este parâmetro no meio.
--     Parâmetro item
--     Este parâmetro é utilizado para indicar o item usado.
--     Parâmetro fromPosition
--     Este parâmetro indica a posição atual do jogador. Era mais conhecido como frompos
--     Parâmetro itemEx
--     Também é conhecido como item2. Este indica o item que foi selecionado com aquelas flechinhas que aparecem quando você clica em um item, como uma pá ou corda.
--     Parâmetro toPosition
--     Conhecido antigamente como topos, ele representa a posição na qual um item foi utilizado (com aquelas mesmas flechinhas).