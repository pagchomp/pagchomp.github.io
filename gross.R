heroes <- read.csv("C:\\Users\\brett\\Desktop\\dotes.txt", header = F, stringsAsFactors = F)
heroes <- unlist(strsplit(heroes[,1], " minimap"))
heroes <- heroes[seq(1, 226, 2)]
imgs <- gsub(' ','_',heroes)

imgs <- gsub('-', '', imgs)
imgs[imgs == "Magnus"] <- "Magnataur"
imgs[imgs == "Underlord"] <- "Abyssal_Underlord"
imgs[imgs == "Timbersaw"] <- "Shredder"
imgs[imgs == "Centaur_Warrunner"] <- "Centaur"
imgs[imgs == "Io"] <- "Wisp"
imgs[imgs == "Treant_Protector"] <- "Treant"
imgs[imgs == "Outworld_Devourer"] <- "Obsidian_Destroyer"
imgs[imgs == "Lifestealer"] <- "Life_Stealer"
imgs[imgs == "Queen_of_Pain"] <- "Queenofpain"
imgs[imgs == "Wraith_King"] <- "Skeleton_King"
imgs[imgs == "Doom"] <- "Doom_Bringer"
imgs[imgs == "Shadow_Fiend"] <- "Nevermore"
imgs[imgs == "Nature's_Prophet"] <- "Furion"
imgs[imgs == "Clockwerk"] <- "Rattletrap"
imgs[imgs == "Zeus"] <- "Zuus"
imgs[imgs == "Windranger"] <- "Windrunner"
imgs[imgs == "Vengeful_Spirit"] <- "Vengefulspirit"
imgs[imgs == "Necrophos"] <- "Necrolyte"

imgs <- tolower(imgs)
heroes <- data.frame(Hero = heroes, Image = paste0("<img src=http://cdn.dota2.com/apps/dota2/images/heroes/", imgs, "_full.png>"))
write.table(heroes, "E:\\Projects\\pagchomp.github.io\\heroes.csv", 
            row.names = F,
            quote = F,
            sep = ",")
sample(heroes[,1], 1)
