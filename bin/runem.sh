for jqmo in 09 10; do for jqd in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31; do for lang in EN; do for jqtxt in psy neur ptsd mental bipol schiz; do echo $lang $jqmo $jqd $jqtxt; jq 'select(.language=="'$lang'")|select(.rawText|contains("'$jqtxt'"))|{source,uri,rawText}'  /bigdata/datacollectorsSavedData-symlink-structure/2016/$jqmo/$jqd/* >> /scratch/jussi/2016-$jqmo-$jqd.$lang.$jqtxt.jq.mh; done; done; done; done



"abundant", "1"
"accessible", "1"
"acclaimed", "1"
"accurate", "1"
"adequate", "1"
"admirable", "1"
"adorable", "1"
"adroit", "1"
"advanced", "1"
"advantageous", "1"
"affable", "1"
"affectionate", "1"
"affirmative", "1"
"affluent", "1"
"affordable", "1"
"agreeable", "1"
"alluring", "1"
"amazing", "1"
"ambitious", "1"
"amiable", "1"
"ample", "1"
"amusing", "1"
"angelic", "1"
"appealing", "1"
"appropriate", "1"
"ardent", "1"
"astonishing", "1"
"astounding", "1"
"attractive", "1"
"auspicious", "1"
"authentic", "1"
"authoritative", "1"
"awesome", "1"
"awsome", "1"
"beautiful", "1"
"believable", "1"
"beneficial", "1"
"benevolent", "1"
"best", "1"
"best-known", "1"
"best-performing", "1"
"best-selling", "1"
"blissful", "1"
"blithe", "1"
"blockbuster", "1"
"bonny", "1"
"boundless", "1"
"bountiful", "1"
"brainy", "1"
"brand-new", "1"
"brave", "1"
"breathtaking", "1"
"bright", "1"
"brilliant", "1"
"brisk", "1"
"bullish", "1"
"buoyant", "1"
"calm", "1"
"capable", "1"
"captivating", "1"
"carefree", "1"
"catchy", "1"
"charismatic", "1"
"charitable", "1"
"charming", "1"
"cheap", "1"
"cheerful", "1"
"cheery", "1"
"chic", "1"
"classic", "1"
"classy", "1"
"clean", "1"
"clear", "1"
"clear-cut", "1"
"clever", "1"
"coherent", "1"
"cohesive", "1"
"colorful", "1"
"comely", "1"
"comfortable", "1"
"comfy", "1"
"commendable", "1"
"compassionate", "1"
"compatible", "1"
"competitive", "1"
"complimentary", "1"
"comprehensive", "1"
"conciliatory", "1"
"concise", "1"
"confident", "1"
"congenial", "1"
"conscientious", "1"
"considerate", "1"
"consistent", "1"
"constructive", "1"
"convenient", "1"
"convienient", "1"
"convincing", "1"
"cool", "1"
"correct", "1"
"cost-effective", "1"
"courageous", "1"
"courteous", "1"
"courtly", "1"
"cozy", "1"
"creative", "1"
"credible", "1"
"crisp", "1"
"cushy", "1"
"cute", "1"
"daring", "1"
"dashing", "1"
"dauntless", "1"
"dazzling", "1"
"decent", "1"
"decisive", "1"
"dedicated", "1"
"delectable", "1"
"delicate", "1"
"delicious", "1"
"delightful", "1"
"dependable", "1"
"desirable", "1"
"devout", "1"
"dexterous", "1"
"dignified", "1"
"diligent", "1"
"diplomatic", "1"
"dirt-cheap", "1"
"distinctive", "1"
"distinguished", "1"
"divine", "1"
"durable", "1"
"dynamic", "1"
"eager", "1"
"earnest", "1"
"easy", "1"
"easy-to-use", "1"
"easygoing", "1"
"ebullient", "1"
"economical", "1"
"ecstatic", "1"
"effective", "1"
"efficient", "1"
"effortless", "1"
"effusive", "1"
"elegant", "1"
"eloquent", "1"
"eminent", "1"
"enchanting", "1"
"encouraging", "1"
"endearing", "1"
"energetic", "1"
"engaging", "1"
"engrossing", "1"
"enjoyable", "1"
"entertaining", "1"
"enthusiastic", "1"
"enticing", "1"
"enviable", "1"
"equitable", "1"
"ergonomical", "1"
"erudite", "1"
"ethical", "1"
"euphoric", "1"
"evocative", "1"
"excellent", "1"
"exceptional", "1"
"exciting", "1"
"exellent", "1"
"exhilarating", "1"
"expansive", "1"
"expensive", "1"
"exquisite", "1"
"extraordinary", "1"
"exuberant", "1"
"eye-catching", "1"
"eyecatching", "1"
"fabulous", "1"
"fair", "1"
"famous", "1"
"fancy", "1"
"fantastic", "1"
"fascinating", "1"
"fashionable", "1"
"fast", "1"
"favorite", "1"
"favourite", "1"
"feasible", "1"
"fecilitous", "1"
"feisty", "1"
"felicitous", "1"
"festive", "1"
"fine", "1"
"flashy", "1"
"flattering", "1"
"flawless", "1"
"flexible", "1"
"formidable", "1"
"fortuitous", "1"
"free", "1"
"fresh", "1"
"friendly", "1"
"fun", "1"
"gainful", "1"
"generous", "1"
"genuine", "1"
"glamorous", "1"
"glorious", "1"
"good", "1"
"goood", "1"
"gooood", "1"
"gorgeous", "1"
"graceful", "1"
"grand", "1"
"gratifying", "1"
"great", "1"
"happy", "1"
"harmonious", "1"
"healthy", "1"
"heavenly", "1"
"high-quality", "1"
"hilarious", "1"
"hot", "1"
"ideal", "1"
"illustrious", "1"
"imaginative", "1"
"immaculate", "1"
"immense", "1"
"impeccable", "1"
"important", "1"
"impressive", "1"
"incredible", "1"
"inestimable", "1"
"inexpensive", "1"
"ingenious", "1"
"inspirational", "1"
"inspiring", "1"
"instructive", "1"
"intelligent", "1"
"intricate", "1"
"intriguing", "1"
"intuitive", "1"
"invaluable", "1"
"inventive", "1"
"invigorating", "1"
"invincible", "1"
"irreplaceable", "1"
"irresistible", "1"
"jolly", "1"
"joyful", "1"
"joyous", "1"
"laudable", "1"
"lavish", "1"
"legendary", "1"
"likable", "1"
"likeable", "1"
"lively", "1"
"lovable", "1"
"lovely", "1"
"lucky", "1"
"luminous", "1"
"luxuriant", "1"
"luxurious", "1"
"magical", "1"
"magnificent", "1"
"majestic", "1"
"marvellous", "1"
"marvelous", "1"
"masterful", "1"
"memorable", "1"
"merry", "1"
"meticulous", "1"
"mighty", "1"
"miraculous", "1"
"monumental", "1"
"neat", "1"
"nice", "1"
"nifty", "1"
"nimble", "1"
"noble", "1"
"notable", "1"
"bland", "1"
"noteworthy", "1"
"optimal", "1"
"opulent", "1"
"outstanding", "1"
"peerless", "1"
"perfect", "1"
"phenomenal", "1"
"pleasant", "1"
"pleasing", "1"
"pleasurable", "1"
"plentiful", "1"
"poignant", "1"
"popular", "1"
"posh", "1"
"positive", "1"
"powerful", "1"
"praiseworthy", "1"
"precious", "1"
"preferable", "1"
"premier", "1"
"prestigious", "1"
"priceless", "1"
"prominent", "1"
"proper", "1"
"propitious", "1"
"quaint", "1"
"radiant", "1"
"regal", "1"
"reliable", "1"
"remarkable", "1"
"renowned", "1"
"reputable", "1"
"respectable", "1"
"revolutionary", "1"
"rewarding", "1"
"rich", "1"
"righteous", "1"
"satisfactory", "1"
"sensational", "1"
"sensible", "1"
"sexy", "1"
"sharp", "1"
"significant", "1"
"sleek", "1"
"slick", "1"
"smart", "1"
"spectacular", "1"
"spellbinding", "1"
"splendid", "1"
"stately", "1"
"stellar", "1"
"striking", "1"
"strong", "1"
"stunning", "1"
"stylish", "1"
"sublime", "1"
"successful", "1"
"sufficient", "1"
"suitable", "1"
"sumptuous", "1"
"superb", "1"
"superior", "1"
"supreme", "1"
"supurb", "1"
"swanky", "1"
"sweet", "1"
"tempting", "1"
"tenacious", "1"
"terrific", "1"
"thrilling", "1"
"titillating", "1"
"tolerable", "1"
"top-notch", "1"
"topnotch", "1"
"unforgettable", "1"
"unlimited", "1"
"unmatched", "1"
"unparalleled", "1"
"upscale", "1"
"valuable", "1"
"wonderful", "1"
"world-famous", "1"
"worth-while", "1"
"worthwhile", "1"
"worthy", "1"
"zippy", "1"
