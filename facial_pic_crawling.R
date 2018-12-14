library(RCurl)
library(XML)
library(dplyr)
k=0
for(i in c(1:5)){
    htmlcode <- getURL(paste0("http://www.monopastelent.com/bbs/board.php?bo_table=profile&page=",i)) %>%
      htmlParse %>%
      capture.output
    img_tag_pattern <- "<img.*?>"
    img_tag <- htmlcode %>% regmatches(regexpr(img_tag_pattern, .))
    src_href_pattern <- "(?<=src=\\\").*?(?=\\\")"
    src_href <- img_tag %>% regmatches(regexpr(src_href_pattern, ., perl=T))
    src_href=src_href[grep("thumb", src_href)]
    #src_href=gsub("^.","",src_href)
    #src_href=gsub("^.","",src_href)
    #src_href=gsub("^/","",src_href)
    #src_href=gsub("_200x300","",src_href)
    #src_href=gsub("^/","",src_href)
    #src_href=gsub("^.","",src_href)
    #src_href=paste0("http://www.modelponte.com/gnuboard4/",src_href)
    for(j in src_href %>% length %>% seq){
      #if(src_href[j]=="") next
      k=k+1
      download.file((src_href[j]), paste0("./output/model_pastel", k,".jpeg"))
   }
}
src_href=paste0("http://www.topmodels.co.kr",src_href[grep("data",src_href)])
src_href=src_href[grep("data", src_href)]
paste0("http://www.moonagent.net",src_href[grep("profile",src_href)])

src_href[48]
#     http://www.moonagent.net/data/file/profile_w/3024156829_XUyvExV4_01.jpg

paste0("http://www.kianaent.com",src_href[2])

htmlcode <- getURL("http://www.monopastelent.com/bbs/board.php?bo_table=profile") %>%
  htmlParse %>%
  capture.output

download.file("http://needsthem.com/data/file/model_ns1/thumb-3555203410_sIQdZvfi_1bb8e0f4a013ded123c83402950ee23684ee8a05_200x300.jpg", paste0("./output/_adultmodel", 01, ".jpeg"))
src_href=gsub("thumb/thumb_","",src_href)

