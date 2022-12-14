#!/usr/bin/env bash
    echo "»»——⍟——«« WELCOME TO PRONOUN TRYOUTS »»——⍟——««"
    echo "
    please enter your NAME and PRONOUNS"
    echo '
    common options:
    type [he] for [he/him/his/his/himself]
    type [she] for [she/her/her/hers/herself]
    type [they] for [they/them/their/theirs/themselves]
    type [oth] for custom pronouns
    type [name] for name only'


function getprns {
    echo "
    please enter your name and pronouns here:
    e.g. Mary she ; Tim oth ; Ann name"
    read -r name pron

    if [ -z "$name" ]; then
    getprns
    fi

    if [ -z "$pron" ]; then
    getprns
    fi
}
getprns

function loadprns {

    if [ "$pron" = "he" ]; then
    sub="he"
    obj="him"
    pod="his"
    pop="his"
    ref="himself"
    sub1="$sub's"
    sub2="$sub's"
    subHave="$sub has"
    # I need subGOES too help argh
    subIs="$sub is"

    elif [ "$pron" = "she" ]; then
    sub="she"
    obj="her"
    pod="her"
    pop="hers"
    ref="herself"
    sub1="$sub's"
    sub2="$sub's"
    subHave="$sub has"
    subIs="$sub is"

    elif [ "$pron" = "they" ]; then
    sub="they"
    obj="them"
    pod="their"
    pop="theirs"
    ref="themself"
    sub1="$sub're"
    sub2="$sub've"
    subHave="$sub have"
    subIs="$sub are"

    elif [ "$pron" = "oth" ]; then
    echo '
    please enter your pronouns:'
    read -r sub obj pod pop ref
    sub1="$sub's"
    sub2="$sub's"
    subHave="$sub has"
    subIs="$sub is"

    elif [ "$pron" = "name" ]; then
    sub="$name"
    obj="$name"
    pod="$name's"
    pop="$name's"
    ref="$name"
    sub1="$sub's"
    sub2="$sub's"
    subHave="$sub has"
    subIs="$sub is"

    else
    getprns

    fi

}
#need to make variables for $adr for Miss, Mr
#Miss, Ma'am, Sir 
#$child for son, daughter, child
#$sib for sister, brother, sibling
#$parent mother, mum; father, dad; parent
loadprns

function getMessage {
    #40 messages so far
    #REMEMBER TO REMIVE ECHO LENGTH BEFORE COMMIT IF YOU HAVEN'T
    arr=(
        "Have I introduced you to $name? $sub1 my sibling. Oh man, I thought I'd introduce $obj to you! $sub1 super cool! We share a flat together with someone else. We all get along really well. I think you'll really like $name, $sub1 really cool." 

        "Huh? What did $name just say? Can you repeat what $sub said?’" 

        "$name is finally free to hang out today, so $sub’ll be joining us at lunchtime." 

        "Say hi, this is my friend $name, I don’t think you’ve met $obj yet but I think you’ll get along with $obj." 

        "We can’t leave now, $name isn’t here yet, let’s wait for $obj a while longer." 

        "Yeah, I'm going over to $name's house tomorrow, 'cause $sub said $sub would help me with the math homework. $name is pretty good at math, y'know? And then I want to meet $pod pet cat. I think later this week $sub'll come over to meet my dog." 

        "Have you met $name yet? $sub1 in my chemistry class. Me and $name sat next to each other one time and talked about birds until the teacher told us to be quiet. I find $pod name very interesting." 

        "$name hasn’t showed up yet, did $sub get lost or something? It’s $pod first time coming here, so let’s wait for $obj a while longer. 
        Oh, there $subIs. Hello! " 

        "$name is free this afternoon if you want to talk to $obj. You can ask $obj about it now. " 

        "Hey $name, let’s have lunch together today, it’s been a while since we caught up. $name, do you prefer pizzahut or domino’s?" 

        "$name left $pod water bottle behind today, I’ll get it for $obj since I’m going back anyway. $sub can get it back tomorrow when we meet again." 

        "Oh, I’ve heard of $name, I think I’ve met $obj once before. $sub seems like a pleasant person, but I don’t really know $obj. If you want to know $obj, why don’t you just talk to $obj?" 

        "I don’t know if $name prefers cheese sauce or ketchup, let’s just get both for $obj. If $sub doesn’t want it, then I’ll just take the sauce." 

        "$name forgot $pod wallet today, do you have some spare cash to lend $obj?" 
        
        "When you’ve finished your part on the document, send it to $name, $sub can take care of the rest." 

        "Hey, it's $name! $sub1 so cute and smart! $name is real good with computers too, $sub helped me out recently. I hope I'll be meeting $obj again soon, I love to hang out with $obj!" 

        "Did you hear about $name’s newest creation? $sub made a beautiful painting of a campground that $pod family took $obj to back when $sub was a child. $name is so talented." 

        "Hey $name, $name is a great name, I just adored every $name I’ve ever met. What I would say to you is go for it and try out, but also don’t feel rushed and pressured to figure it out now. It’s rough to figure who you are, I see some people trying to rush to a conclusion or an answer, but everyone has their own pace, take your time, not saying it has to wait for ever but just, take your time. I wish you all the luck and love 💕" 
        
        "$name is on $pod way to the store. $sub’s gonna buy something for us today. I hope $sub brought $pod wallet and not mine. $sub’s cute but I’m not paying for everything just yet!" 

        "$name is a really cool person. $subIs always there for $pod friends and all $pod friends know this and love $obj for it. $sub should be coming to meet us for a coffee soon. I'm sure $sub'd love to show you some of $pod work." 

        "Yeah, I went and saw a movie with $name yesterday and $sub said it gave $obj great inspiration for project $subIs working on. I hope it goes well for $obj!" 

        "I met a really cool person today named $name! $sub and I talked together for a while about different things we are interested in. $sub told me about $pod favorite movies, and I think $subHave great taste!" 

        "$name asked me to be on one of $pod films the other day, I really love how much $sub cares about those things, but damn I'll need some acting classes, $sub1 my friend 'yknow, I don't want to let $obj down." 

        "Do you know $name? $sub1 my friend, and $sub1 really cool! You should meet $obj, I think you'd get along really well with $obj!" 

        "$name told me about this show $sub2 been watching. $sub said it's really good! $sub said I should check it out sometime." 

        "$name's birthday is soon. $sub invited me to $obj party, but I still need to get a present for $obj! You're $pod best friend, aren't you? Do you know what $sub likes the most? Has $sub been talking about anything $sub'd like to have?" 

        "I met $name at the park yesterday. I haven't seen $obj in quite some time, so it was nice to catch up with $obj! Talking to $obj is always so much fun. I'd love to meet up with $obj soon again!" 

        "Have you seen $name? $sub2 got a new haircut, and it suits $obj really well! I wonder if $sub cut it $ref, or if $sub go to a hairdresser. I should ask $obj when I see $obj again!" 

        "A couple of days ago, I met $name. I got to talk to $obj for a bit and $sub seemed really cool! $sub suggested we go to the cinema together this weekend. Do you maybe want to join us and say hi to them? I'm sure $name would be happy to introduce $ref to you!" 

        "$name and I were supposed to meet up here, but $sub seem to be running late. I've thought about calling them, but maybe $sub1 just stuck in traffic. $sub mentioned the roads tend to be quite busy during this time of the day. I'm sure $sub will be here soon. Oh, wait, I think that's $obj over there! Hi $name!" 

        "Have you seen $name? I borrowed a book from $obj earlier and want to return it to $obj, but I can't seem to find $obj anywhere! If you see $name, can you let $obj know I'm looking for $obj?" 

        "Do you see that person over there? $pod name is $name, and $sub1 my friend! $sub1 super nice, I think you would get along great with $obj. Do you want to go say hi to $obj? I'm sure $sub would be glad to meet you!" 

        "Do you know where $name is? I've been trying to find $obj. I wanted to ask $obj a question, but $pod phone is turned off. Maybe $sub1 busy at the moment. I'll just try to call $obj tomorrow again!" 

        "My partner $name gave me this bouquet, aren’t the flowers so pretty? $sub put my favorite flowers in this bouquet." 

        "Where is $name? $sub1 never late." 

        "$name is going to have a job interview later. Wish $obj luck!" 

        "This is my younger sibling $name. $sub1 very busy with school and work." 

        "$name is the best child any parent can ask for. $sub1 very polite and compassionate." 

        "Do you think I can ask $name to help me with this? I don’t know how to do this and I know $sub1 very good at it. Maybe $sub can give me some advice." 

        "The food here is so good! Thanks for taking us here, $name! See? I told you $name knows all the best restaurants in town!" 
    )
    length=${#arr[*]}
    echo "
    loading..."
    sleep 0.85
    echo "${arr[ $RANDOM % $((length-1)) ]}"
}
getMessage

function newMessage {
    echo '
    Generate another message? [y/n]
    Press [x] to view/edit name and pronouns'

    read -r response

    if [ -z "$response" ]; then
    response=null
    newMessage

    elif [ "$response" = "y" ]; then
    getMessage
    newMessage

    elif [ "$response" = "n" ]; then
    echo "
    Goodbye!"
    exit

    elif [ "$response" = "x" ]; then
    echo "   " "$name" "$pron" "$sub" "$obj" "$pod" "$pop" "$ref"
    function editprn {
        echo "    Edit pronouns? [y/n]"
        read -r edit
        if [ "$edit" = "y" ]; then
        getprns
        loadprns
        getMessage
        newMessage
        elif [ "$edit" = "n" ]; then
        newMessage
        else
        editprn
        fi

    }
    editprn
    
    else
    response=null
    newMessage

    fi

}
newMessage

