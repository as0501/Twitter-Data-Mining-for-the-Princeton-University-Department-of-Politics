#import twitteR package
install.packages("rtweet")
library("rtweet")

# name assigned to created app
appname <- "Legislator Analysis"

# consumer key 
key <- #####

# consumer secret 
secret <- ####

#access token and secret
accesstoken <- ####
accesssecret <-####

#setup
twitter_token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret, access_token = accesstoken,
access_secret = accesssecret)

#Laura Hall
repLauraHalltweets <- get_timelines("@RepLauraHallD19",
                        n = 10000, 
                        language = 'en',
                        token = twitter_token)
#Farthest Tweet
repLauraHalltweets$created_at[3177]

#NAACP tweets
tfnaacpLH = grepl("national association for the advancement of colored people", repLauraHalltweets$text)
tfnaacpLH = grepl("naacp", repLauraHalltweets$text)
which(tfnaacpLH == TRUE)
repLauraHalltweets$created_at[2331]
#also at 527, 1115, 1116, 1117

#BLM tweets
tfblacklivesmatterLH = grepl("Black Lives Matter", repLauraHalltweets$text)
which( tfblacklivesmatterLH == TRUE)
tfblmLH = grepl("Black Lives Matter", repLauraHalltweets$text)
which( tfblmLH == TRUE)
 

#Angela Williams
repAngelaWilliamstweets <- get_timelines("@COSenWilliams", 
                                    n = 10000, 
                                    language = 'en',
                                    token = twitter_token)
repAngelaWilliamstweets$created_at[2706]

#BLM tweets
tfblmAW = grepl("Black Lives Matter", repAngelaWilliamstweets$text)
which( tfblmAW == TRUE)
#at 38, 49
tfblmAW = grepl("BLM", repAngelaWilliamstweets$text)
which( tfblmAW == TRUE)

#NAACP tweets
tfnaacpAW = grepl("national association for the advancement of colored people", repAngelaWilliamstweets$text)
which(tfnaacpAW == TRUE)
tfnaacpAW = grepl("naacp", repAngelaWilliamstweets$text)
which(tfnaacpAW == TRUE)



#Tony Exum
repTonyExumTweets <- get_timelines("@TonyExum", 
                                         n = 10000, 
                                         language = 'en',
                                         token = twitter_token)
repTonyExumTweets$created_at[287]

#BLM tweets
tfblmTE = grepl("Black Lives Matter", repTonyExumTweets$text)
which( tfblmTE == TRUE)
repTonyExumTweets$created_at[8]
# 8
tfblmTE = grepl("BLM", repTonyExumTweets$text)
which( tfblmTE == TRUE)

#NAACP tweets
tfnaacpTE = grepl("national association for the advancement of colored people", repTonyExumTweets$text)
which(tfnaacpTE == TRUE)
tfnaacpTE = grepl("naacp", repTonyExumTweets$text)
which(tfnaacpTE == TRUE)

#James Coleman
repJamesColemanTweets <- get_timelines("@repjamescoleman", 
                                n = 10000, 
                                language = 'en',
                                token = twitter_token)
repJamesColemanTweets$created_at[1167]

#BLM tweets
tfblmJC = grepl("Black Lives Matter", repJamesColemanTweets$text)
which( tfblmJC == TRUE)
tfblmJC = grepl("BLM", repJamesColemanTweets$text)
which( tfblmJC == TRUE)

#NAACP tweets
tfnaacpJC = grepl("national association for the advancement of colored people", repJamesColemanTweets$text)
which(tfnaacpJC == TRUE)
tfnaacpJC = grepl("naacp", repJamesColemanTweets$text)
which(tfnaacpJC == TRUE)

#Rhonda Fields
senRhondaFieldsTweets <- get_timelines("@SenRhondaFields", 
                                       n = 10000, 
                                       language = 'en',
                                       token = twitter_token)
senRhondaFieldsTweets$created_at[3211]

#BLM tweets
tfblmRF = grepl("Black Lives Matter", senRhondaFieldsTweets$text)
which( tfblmRF == TRUE)
senRhondaFieldsTweets$created_at[73]
#73
tfblmRF = grepl("BLM", senRhondaFieldsTweets$text)
which( tfblmRF == TRUE)

#NAACP tweets
tfnaacpRF = grepl("national association for the advancement of colored people", senRhondaFieldsTweets$text)
which(tfnaacpRF == TRUE)
tfnaacpRF = grepl("naacp", senRhondaFieldsTweets$text)
which(tfnaacpRF == TRUE)


#Dominique Jackson
repDominiqueJackson <- get_timelines("@Jackson4CO", 
                                       n = 10000, 
                                       language = 'en',
                                       token = twitter_token)
repDominiqueJackson$created_at[1098]

#BLM tweets
tfblmDJ = grepl("Black Lives Matter", repDominiqueJackson$text)
which( tfblmDJ == TRUE)
tfblmDJ = grepl("BLM", repDominiqueJackson$text)
which( tfblmDJ == TRUE)
#368

#NAACP tweets
tfnaacpDJ = grepl("national association for the advancement of colored people", repDominiqueJackson$text)
which(tfnaacpDJ == TRUE)
tfnaacpDJ = grepl("naacp", repDominiqueJackson$text)
which(tfnaacpDJ == TRUE)

#Larry B Butler - has only 1 tweet
repLarryButlerTweets <- get_timelines("@RepLarryBButler", 
                                     n = 10000, 
                                     language = 'en',
                                     token = twitter_token)
repLarryButlerTweets$created_at[1]

#BLM tweets
tfblmLB = grepl("Black Lives Matter", repLarryButlerTweets$text)
which( tfblmLB == TRUE)
tfblmLB = grepl("BLM", repLarryButlerTweets$text)
which( tfblmLB == TRUE)

#NAACP tweets
tfnaacpLB = grepl("national association for the advancement of colored people", repLarryButlerTweets$text)
which(tfnaacpLB == TRUE)
tfnaacpLB = grepl("naacp", repLarryButlerTweets$text)
which(tfnaacpLB == TRUE)


#Elgie Sims
senElgieSimsTweets <- get_timelines("@ElgieSims", 
                                      n = 10000, 
                                      language = 'en',
                                      token = twitter_token)
senElgieSimsTweets$created_at[2771]

#BLM tweets
tfblmES = grepl("Black Lives Matter", senElgieSimsTweets$text)
which( tfblmES == TRUE)
#2375
tfblmES = grepl("BLM", senElgieSimsTweets$text)
which( tfblmES == TRUE)

#NAACP tweets
tfnaacpES = grepl("national association for the advancement of colored people", senElgieSimsTweets$text)
which(tfnaacpES == TRUE)
tfnaacpES = grepl("naacp", senElgieSimsTweets$text)
which(tfnaacpES == TRUE)


#Arthur L. Turner
repArthurLTurnerTweets <- get_timelines("@ArthurLTurner", 
                                    n = 10000, 
                                    language = 'en',
                                    token = twitter_token)
repArthurLTurnerTweets$created_at[42]

#BLM tweets
tfblmAT = grepl("Black Lives Matter", repArthurLTurnerTweets$text)
which( tfblmAT == TRUE)
tfblmAT = grepl("BLM", repArthurLTurnerTweets$text)
which( tfblmAT == TRUE)

#NAACP tweets
tfnaacpAT = grepl("national association for the advancement of colored people", repArthurLTurnerTweets$text)
which(tfnaacpAT == TRUE)
tfnaacpAT = grepl("naacp", repArthurLTurnerTweets$text)
which(tfnaacpAT == TRUE)


#Jehan Gordon-Booth
repJehanGordonBoothTweets <- get_timelines("@RepJGB", 
                                    n = 10000, 
                                    language = 'en',
                                    token = twitter_token)
repJehanGordonBoothTweets$created_at[322]

#BLM tweets
tfblmJB = grepl("Black Lives Matter", repJehanGordonBoothTweets$text)
which( tfblmJB == TRUE)
tfblmJB = grepl("BLM", repJehanGordonBoothTweets$text)
which( tfblmJB == TRUE)

#NAACP tweets
tfnaacpJB = grepl("national association for the advancement of colored people",repJehanGordonBoothTweets$text)
which(tfnaacpJB == TRUE)
tfnaacpJB = grepl("naacp", repJehanGordonBoothTweets$text)
which(tfnaacpJB == TRUE)

#Ras Smith
repRasSmithTweets <- get_timelines("@rassmith62", 
                                           n = 10000, 
                                           language = 'en',
                                           token = twitter_token)
repRasSmithTweets$created_at[781]

#BLM tweets
tfblmRS = grepl("Black Lives Matter", repRasSmithTweets$text)
which( tfblmRS == TRUE)
repRasSmithTweets$created_at[74]
#74
tfblmRS = grepl("BLM", repRasSmithTweets$text)
which( tfblmRS == TRUE)
#17  40 120 134 142

#NAACP tweets
tfnaacpJB = grepl("national association for the advancement of colored people",repRasSmithTweets$text)
which(tfnaacpJB == TRUE)
tfnaacpJB = grepl("naacp", repRasSmithTweets$text)
which(tfnaacpJB == TRUE)


#Ruth Ann Gaines
repRuthAnnGainesTweets <- get_timelines("@RepRuthAGaines", 
                                   n = 10000, 
                                   language = 'en',
                                   token = twitter_token)
repRuthAnnGainesTweets$created_at[177]

#BLM tweets
tfblmRG = grepl("Black Lives Matter", repRuthAnnGainesTweets$text)
which( tfblmRG == TRUE)
tfblmRG = grepl("BLM", repRuthAnnGainesTweets$text)
which( tfblmRG == TRUE)


#NAACP tweets
tfnaacpRG = grepl("national association for the advancement of colored people",repRuthAnnGainesTweets$text)
which(tfnaacpJB == TRUE)
tfnaacpRG = grepl("naacp", repRuthAnnGainesTweets$text)
which(tfnaacpRG == TRUE)
repRuthAnnGainesTweets$created_at[116]
#116


#Ako Abdul-Samad
repAkoAbdulSamadTweets <- get_timelines("@akoabdulsamad", 
                                        n = 10000, 
                                        language = 'en',
                                        token = twitter_token)
repAkoAbdulSamadTweets$created_at[1333]

#BLM tweets
tfblmAS = grepl("Black Lives Matter", repAkoAbdulSamadTweets$text)
which( tfblmAS == TRUE)
repAkoAbdulSamadTweets$created_at[4]
#4
tfblmAS = grepl("BLM", repAkoAbdulSamadTweets$text)
which( tfblmAS == TRUE)

#naacp
tfnaacpAS = grepl("national association for the advancement of colored people",repAkoAbdulSamadTweets$text)
which(tfnaacpAS == TRUE)
tfnaacpAS = grepl("naacp", repAkoAbdulSamadTweets$text)
which(tfnaacpAS == TRUE)


#Oletha Faust-Goudeau
senOlethaFaustGoudeauTweets <- get_timelines("@oletha29", 
                                        n = 10000, 
                                        language = 'en',
                                        token = twitter_token)
senOlethaFaustGoudeauTweets$created_at[57]

#BLM tweets
tfblmOG = grepl("Black Lives Matter", senOlethaFaustGoudeauTweets$text)
which( tfblmOG == TRUE)
tfblmOG = grepl("BLM", senOlethaFaustGoudeauTweets$text)
which( tfblmOG == TRUE)

#naacp
tfnaacpOG = grepl("national association for the advancement of colored people",senOlethaFaustGoudeauTweets$text)
which(tfnaacpOG == TRUE)
tfnaacpOG = grepl("naacp", senOlethaFaustGoudeauTweets$text)
which(tfnaacpOG == TRUE)
#7
senOlethaFaustGoudeauTweets$created_at[7]


#Gail Finney
repGailFinneyTweets <- get_timelines("@RepFinney", 
                                             n = 10000, 
                                             language = 'en',
                                             token = twitter_token)
repGailFinneyTweets$created_at[2996]

#BLM tweets
tfblmGF = grepl("Black Lives Matter", repGailFinneyTweets$text)
which( tfblmGF == TRUE)
#975 1678 1837
repGailFinneyTweets$created_at[1837]
tfblmGF = grepl("BLM", repGailFinneyTweets$text)
which( tfblmGF == TRUE)

#naacp
tfnaacpGF = grepl("national association for the advancement of colored people",repGailFinneyTweets$text)
which(tfnaacpGF == TRUE)
tfnaacpGF = grepl("naacp", repGailFinneyTweets$text)
which(tfnaacpGF == TRUE)
#2296 2313 2353 2354
repGailFinneyTweets$created_at[2354]
 

#KC Ohaebosim
senKCOhaebosimTweets <- get_timelines("@KCForSenate", 
                                     n = 10000, 
                                     language = 'en',
                                     token = twitter_token)
senKCOhaebosimTweets$created_at[5]

#BLM tweets
tfblmKC = grepl("Black Lives Matter", senKCOhaebosimTweets$text)
which( tfblmKC == TRUE)
tfblmKC = grepl("BLM", senKCOhaebosimTweets$text)
which( tfblmKC == TRUE)

#naacp
tfnaacpKC = grepl("national association for the advancement of colored people",senKCOhaebosimTweets$text)
which(tfnaacpKC == TRUE)
tfnaacpKC = grepl("naacp", senKCOhaebosimTweets$text)
which(tfnaacpKC == TRUE)

#Joe Bouie
senJoeBouieTweets <- get_timelines("@DocJoeBouie", 
                                      n = 10000, 
                                      language = 'en',
                                      token = twitter_token)
senJoeBouieTweets$created_at[162]
#BLM tweets
tfblmJBo = grepl("Black Lives Matter", senJoeBouieTweets$text)
which( tfblmJBo == TRUE)
tfblmJBo = grepl("BLM", senJoeBouieTweets$text)
which( tfblmJBo == TRUE)

#naacp
tfnaacpJBo = grepl("national association for the advancement of colored people",senJoeBouieTweets$text)
which(tfnaacpJBo == TRUE)
tfnaacpJBo = grepl("naacp", senJoeBouieTweets$text)
which(tfnaacpJBo == TRUE)


#Vincent Pierre
repVincentPierreTweets <- get_timelines("@VincentPierre15", 
                                   n = 10000, 
                                   language = 'en',
                                   token = twitter_token)
repVincentPierreTweets$created_at[77]

#BLM tweets
tfblmVP = grepl("Black Lives Matter", repVincentPierreTweets$text)
which( tfblmVP == TRUE)
tfblmVP = grepl("BLM", repVincentPierreTweets$text)
which( tfblmVP == TRUE)

#naacp
tfnaacpVP = grepl("national association for the advancement of colored people",repVincentPierreTweets$text)
which(tfnaacpVP == TRUE)
tfnaacpVP = grepl("naacp", repVincentPierreTweets$text)
which(tfnaacpVP == TRUE)


#Vanessa Atterbeary
repVanessaAtterbearyTweets <- get_timelines("@VAtterbeary", 
                                        n = 10000, 
                                        language = 'en',
                                        token = twitter_token)
repVanessaAtterbearyTweets$created_at[1825]
#BLM tweets
tfblmVA = grepl("Black Lives Matter", repVanessaAtterbearyTweets$text)
which( tfblmVA == TRUE)
tfblmVA = grepl("BLM", repVanessaAtterbearyTweets$text)
which( tfblmVA == TRUE)

#naacp
tfnaacpVA = grepl("national association for the advancement of colored people",repVanessaAtterbearyTweets$text)
which(tfnaacpVA == TRUE)
tfnaacpVA = grepl("naacp", repVanessaAtterbearyTweets$text)
which(tfnaacpVA == TRUE)
repVanessaAtterbearyTweets$created_at[1064]
#496 1064


#Del Darryl Barnes
delDarrylBarnesTweets <- get_timelines("@DelDBarnes", 
                                            n = 10000, 
                                            language = 'en',
                                            token = twitter_token)
delDarrylBarnesTweets$created_at[308]

#BLM tweets
tfblmDB = grepl("Black Lives Matter", delDarrylBarnesTweets$text)
which( tfblmDB == TRUE)
tfblmDB = grepl("BLM", delDarrylBarnesTweets$text)
which( tfblmDB == TRUE)

#naacp
tfnaacpDB = grepl("national association for the advancement of colored people",delDarrylBarnesTweets$text)
which(tfnaacpDB == TRUE)
tfnaacpDB = grepl("naacp", delDarrylBarnesTweets$text)
which(tfnaacpDB == TRUE)



#Edward Price
repEdwardPriceTweets <- get_timelines("@edprice4senate", 
                                       n = 10000, 
                                       language = 'en',
                                       token = twitter_token)
repEdwardPriceTweets$created_at[33]

#BLM tweets
tfblmEP = grepl("Black Lives Matter", repEdwardPriceTweets$text)
which( tfblmEP == TRUE)
tfblmEP = grepl("BLM", repEdwardPriceTweets$text)
which( tfblmEP == TRUE)

#naacp
tfnaacpEP = grepl("national association for the advancement of colored people",repEdwardPriceTweets$text)
which(tfnaacpEP == TRUE)
tfnaacpEP = grepl("naacp", repEdwardPriceTweets$text)
which(tfnaacpEP == TRUE)

#Tony Knotts
delTonyKnottsTweets <- get_timelines("@VoteKnotts", 
                                      n = 10000, 
                                      language = 'en',
                                      token = twitter_token)
delTonyKnottsTweets$created_at[239]

#BLM tweets
tfblmTK = grepl("Black Lives Matter", delTonyKnottsTweets$text)
which( tfblmTK == TRUE)
tfblmTK = grepl("BLM", delTonyKnottsTweets$text)
which( tfblmTK == TRUE)

#naacp
tfnaacpTK = grepl("national association for the advancement of colored people",delTonyKnottsTweets$text)
which(tfnaacpTK == TRUE)
tfnaacpTK = grepl("naacp", delTonyKnottsTweets$text)
which(tfnaacpTK == TRUE)


#Cory McCray
senCoryMcCrayTweets <- get_timelines("@SenatorMcCray", 
                                     n = 10000, 
                                     language = 'en',
                                     token = twitter_token)
senCoryMcCrayTweets$created_at[3019]

#BLM tweets
tfblmCM = grepl("Black Lives Matter", senCoryMcCrayTweets$text)
which( tfblmCM == TRUE)
tfblmTK = grepl("BLM", senCoryMcCrayTweets$text)
which( tfblmTK == TRUE)

#naacp
tfnaacpCM = grepl("national association for the advancement of colored people",senCoryMcCrayTweets$text)
which(tfnaacpCM == TRUE)
tfnaacpCM = grepl("naacp", senCoryMcCrayTweets$text)
which(tfnaacpCM == TRUE)

#Edith Patterson
delEdithPattersonTweets <- get_timelines("@EdithPatterson", 
                                     n = 10000, 
                                     language = 'en',
                                     token = twitter_token)
delEdithPattersonTweets$created_at[187]

#BLM tweets
tfblmEPa = grepl("Black Lives Matter", delEdithPattersonTweets$text)
which( tfblmEPa == TRUE)
tfblmEPa = grepl("BLM", delEdithPattersonTweets$text)
which( tfblmEPa == TRUE)
#28 
delEdithPattersonTweets$text[28]

#naacp
tfnaacpEPa = grepl("national association for the advancement of colored people",delEdithPattersonTweets$text)
which(tfnaacpEPa == TRUE)
tfnaacpEPa = grepl("naacp", delEdithPattersonTweets$text)
which(tfnaacpEPa == TRUE)


#Angela Angel
delAngelaAngelTweets <- get_timelines("@Angel4Dist25", 
                                         n = 10000, 
                                         language = 'en',
                                         token = twitter_token)
delAngelaAngelTweets$created_at[78]

#BLM tweets
tfblmAA = grepl("Black Lives Matter", delAngelaAngelTweets$text)
which( tfblmAA == TRUE)
tfblmAA = grepl("BLM", delAngelaAngelTweets$text)
which( tfblmAA == TRUE)

#naacp
tfnaacpAA = grepl("national association for the advancement of colored people",delAngelaAngelTweets$text)
which(tfnaacpAA == TRUE)
tfnaacpAA = grepl("naacp", delAngelaAngelTweets$text)
which(tfnaacpAA == TRUE)




#Cecil Brockman 
RepCecilBrockmanTweets <- get_timelines("@CecilBrockman", 
                                       n = 10000, 
                                       language = 'en',
                                       token = twitter_token)
RepCecilBrockmanTweets$created_at[942]


#BLM tweets
tfblmCB = grepl("Black Lives Matter", RepCecilBrockmanTweets$text)
which( tfblmCB == TRUE)
tfblmCB = grepl("BLM", RepCecilBrockmanTweets$text)
which( tfblmCB == TRUE)

#naacp
tfnaacpCB = grepl("national association for the advancement of colored people",RepCecilBrockmanTweets$text)
which(tfnaacpCB == TRUE)
tfnaacpCB = grepl("naacp", RepCecilBrockmanTweets$text)
which(tfnaacpCB == TRUE)
#530
RepCecilBrockmanTweets$created_at[530]

#Evelyn Terry
RepEvelynTerry <- get_timelines("@2682_306", 
                                        n = 10000, 
                                        language = 'en',
                                        token = twitter_token)
RepEvelynTerry$created_at[828]
#BLM tweets
tfblmET = grepl("Black Lives Matter", RepEvelynTerry$text)
which( tfblmET == TRUE)
tfblmET = grepl("BLM", RepEvelynTerry$text)
which( tfblmET == TRUE)
RepEvelynTerry$created_at[281]

#naacp
tfnaacpET = grepl("national association for the advancement of colored people",RepEvelynTerry$text)
which(tfnaacpET == TRUE)
tfnaacpET = grepl("naacp", RepEvelynTerry$text)
which(tfnaacpET == TRUE)
RepEvelynTerry$text[570]

#Rep Garland Pierce
RepGarlandPierce <- get_timelines("@RepGPierce1", 
                                n = 10000, 
                                language = 'en',
                                token = twitter_token)
RepGarlandPierce$created_at[65]
#BLM tweets
tfblmGP = grepl("Black Lives Matter", RepGarlandPierce$text)
which( tfblmGP == TRUE)
tfblmET = grepl("BLM", RepGarlandPierce$text)
which( tfblmGP == TRUE)

#naacp
tfnaacpGP = grepl("national association for the advancement of colored people",RepGarlandPierce$text)
which(tfnaacpGP == TRUE)
tfnaacpGP = grepl("naacp", RepGarlandPierce$text)
which(tfnaacpGP == TRUE)

#Rep Anastasia P. Williams
repAnastasiaWilliamsTweets <- get_timelines("@rep_williams9", 
                                         n = 10000, 
                                         language = 'en',
                                         token = twitter_token)
repAnastasiaWilliamsTweets$created_at[547]
#BLM tweets
tfblmAWi = grepl("Black Lives Matter", repAnastasiaWilliamsTweets$text)
which( tfblmAWi == TRUE)
tfblmAWi = grepl("BLM", repAnastasiaWilliamsTweets$text)
which( tfblmAWi == TRUE)
repAnastasiaWilliamsTweets$created_at[18]

#naacp
tfnaacpAWi = grepl("national association for the advancement of colored people",repAnastasiaWilliamsTweets$text)
which(tfnaacpAWi == TRUE)
tfnaacpAWi = grepl("naacp", repAnastasiaWilliamsTweets$text)
which(tfnaacpAWi == TRUE)

#Roger Bruce
repRogerBruceTweets <- get_timelines("@RepRogerBruce61", 
                                            n = 10000, 
                                            language = 'en',
                                            token = twitter_token)
repRogerBruceTweets$created_at[377]

#BLM tweets
tfblmRB = grepl("Black Lives Matter", repRogerBruceTweets$text)
which( tfblmRB == TRUE)
tfblmRB = grepl("BLM", repRogerBruceTweets$text)
which( tfblmRB == TRUE)

#naacp
tfnaacpRB = grepl("national association for the advancement of colored people",repRogerBruceTweets$text)
which(tfnaacpRB == TRUE)
tfnaacpRB = grepl("naacp", repRogerBruceTweets$text)
which(tfnaacpRB == TRUE)

#Dar'shun Kendrick 
repDarshunKendrick <- get_timelines("@DarshunKendrick", 
                                     n = 10000, 
                                     language = 'en',
                                     token = twitter_token)
repDarshunKendrick$created_at[3211]


#Dewey McClain
repDeweyMcClain <- get_timelines("@DewMac52", 
                                    n = 10000, 
                                    language = 'en',
                                    token = twitter_token)
repDeweyMcClain$created_at[1011]

#BLM tweets
tfblmDC = grepl("Black Lives Matter", repDeweyMcClain$text)
which( tfblmDC == TRUE)
tfblmDC = grepl("BLM", repDeweyMcClain$text)
which( tfblmDC == TRUE)

#naacp
tfnaacpDC = grepl("national association for the advancement of colored people",repDeweyMcClain$text)
which(tfnaacpDC == TRUE)
tfnaacpDC = grepl("naacp", repDeweyMcClain$text)
which(tfnaacpDC == TRUE)

#Rep. Renitta Shannon
repRenittaShannonTweets <- get_timelines("@RenittaShannon", 
                                 n = 10000, 
                                 language = 'en',
                                 token = twitter_token)
repRenittaShannonTweets$created_at[3208]

#Del Lashrecse Aird
delLashrecseAird <- get_timelines("@delegateaird", 
                                         n = 10000, 
                                         language = 'en',
                                         token = twitter_token)
delLashrecseAird$created_at[2010]

#BLM tweets
tfblmLA = grepl("Black Lives Matter", delLashrecseAird$text)
which( tfblmLA == TRUE)
#111
delLashrecseAird$created_at[111]
tfblmLA = grepl("BLM", delLashrecseAird$text)
which( tfblmLA == TRUE)
#40 45  53  84  86  90  95 107 
delLashrecseAird$created_at[40]

#naacp
tfnaacpLA = grepl("national association for the advancement of colored people",delLashrecseAird$text)
which(tfnaacpLA == TRUE)
tfnaacpLA = grepl("naacp", delLashrecseAird$text)
which(tfnaacpLA == TRUE)
#1256
delLashrecseAird$created_at[1256]

#Rep Inez E. Dickens
repInezDickensTweets <- get_timelines("@IE_Dickens", 
                                  n = 10000, 
                                  language = 'en',
                                  token = twitter_token)
repInezDickensTweets$created_at[127]

#BLM tweets
tfblmID = grepl("Black Lives Matter", repInezDickensTweets$text)
which( tfblmID == TRUE)
tfblmID = grepl("BLM", repInezDickensTweets$text)
which( tfblmID == TRUE)

#naacp
tfnaacpID = grepl("national association for the advancement of colored people",repInezDickensTweets$text)
which(tfnaacpID == TRUE)
tfnaacpID = grepl("naacp", repInezDickensTweets$text)
which(tfnaacpID == TRUE)

#Assemblywoman Pamela Hunter
pamelaHunterTweets <- get_timelines("@PamelaHunter128", 
                                n = 10000, 
                                language = 'en',
                                token = twitter_token)
pamelaHunterTweets$created_at[233]

#BLM tweets
tfblmPH = grepl("Black Lives Matter", pamelaHunterTweets$text)
which( tfblmPH == TRUE)
tfblmPH = grepl("BLM", pamelaHunterTweets$text)
which( tfblmPH == TRUE)

#naacp
tfnaacpPH = grepl("national association for the advancement of colored people",pamelaHunterTweets$text)
which(tfnaacpPH == TRUE)
tfnaacpPH = grepl("naacp", pamelaHunterTweets$text)
which(tfnaacpPH == TRUE)

# Assemblyman N. Nick Perry
NNickPerryTweets <- get_timelines("@NNickPerry", 
                                    n = 10000, 
                                    language = 'en',
                                    token = twitter_token)
NNickPerryTweets$created_at[1564]

#BLM tweets
tfblmNP = grepl("Black Lives Matter", NNickPerryTweets$text)
which( tfblmNP == TRUE)
tfblmNP = grepl("BLM", NNickPerryTweets$text)
which( tfblmNP == TRUE)

#naacp
tfnaacpNP = grepl("national association for the advancement of colored people",NNickPerryTweets$text)
which(tfnaacpNP == TRUE)
tfnaacpNP = grepl("naacp", NNickPerryTweets$text)
which(tfnaacpNP == TRUE)
#932 75
NNickPerryTweets$created_at[75]    

# Assemblyman Clyde Vanel
ClydeVanelTweets <- get_timelines("@clydevanel", 
                                  n = 10000, 
                                  language = 'en',
                                  token = twitter_token)
ClydeVanelTweets$created_at[1277]

#BLM tweets
tfblmCV = grepl("Black Lives Matter", ClydeVanelTweets$text)
which( tfblmCV == TRUE)
tfblmCV = grepl("BLM", ClydeVanelTweets$text)
which( tfblmCV == TRUE)
ClydeVanelTweets$created_at[41]

#naacp
tfnaacpCV = grepl("national association for the advancement of colored people",ClydeVanelTweets$text)
which(tfnaacpCV == TRUE)
tfnaacpCV = grepl("naacp", ClydeVanelTweets$text)
which(tfnaacpCV == TRUE)
ClydeVanelTweets$created_at[56]

# Assemblyman William McCurdy II
willMcCurdyTweets <- get_timelines("@WillMcCurdyII", 
                                  n = 10000, 
                                  language = 'en',
                                  token = twitter_token)
willMcCurdyTweets$created_at[3191]
#BLM tweets
tfblmWM = grepl("Black Lives Matter", willMcCurdyTweets$text)
which( tfblmWM == TRUE)
tfblmWM = grepl("BLM", willMcCurdyTweets$text)
which( tfblmWM == TRUE)
willMcCurdyTweets$created_at[96]


#naacp
tfnaacpWM = grepl("national association for the advancement of colored people",willMcCurdyTweets$text)
which(tfnaacpWM == TRUE)
tfnaacpWM = grepl("naacp", willMcCurdyTweets$text)
which(tfnaacpWM == TRUE)

#Assemblywoman Brittney Miller
brittneyMillerTweets <- get_timelines("@BrittMiller4AD5", 
                                   n = 10000, 
                                   language = 'en',
                                   token = twitter_token)
brittneyMillerTweets$created_at[3213]


#Assemblyman Tyrone Thompson
tyroneThompsonTweets <- get_timelines("@Thompson4AD17", 
                                      n = 10000, 
                                      language = 'en',
                                      token = twitter_token)
tyroneThompsonTweets$created_at[3105]
#blm tweets
tfblmTT = grepl("Black Lives Matter", tyroneThompsonTweets$text)
which( tfblmTT == TRUE)
tfblmTT = grepl("BLM", tyroneThompsonTweets$text)
which( tfblmTT == TRUE)

#naacp
tfnaacpTT = grepl("national association for the advancement of colored people",tyroneThompsonTweets$text)
which(tfnaacpTT == TRUE)
tfnaacpTT = grepl("naacp", tyroneThompsonTweets$text)
which(tfnaacpTT == TRUE)
#212  381  519 1252 1818 2087 2604
tyroneThompsonTweets$created_at[2604]


# Rep Jill Upson
repJillUpsonTweets <- get_timelines("@Upson4WV", 
                                      n = 10000, 
                                      language = 'en',
                                      token = twitter_token)
repJillUpsonTweets$created_at[3171]

#Rep. Deborah Dixon
repDeborahDixon <- get_timelines("@renaydixon", 
                                    n = 10000, 
                                    language = 'en',
                                    token = twitter_token)
repDeborahDixon$created_at[18]

#blm tweets
tfblmDD = grepl("Black Lives Matter", repDeborahDixon$text)
which( tfblmDD == TRUE)
tfblmDD = grepl("BLM", repDeborahDixon$text)
which( tfblmDD == TRUE)
#naacp
tfnaacpDD = grepl("national association for the advancement of colored people",repDeborahDixon$text)
which(tfnaacpDD == TRUE)
tfnaacpDD = grepl("naacp", repDeborahDixon$text)
which(tfnaacpDD == TRUE)

#Tyrone Ellis
tyroneEllisTweets <- get_timelines("@TyellisTyrone", 
                                 n = 10000, 
                                 language = 'en',
                                 token = twitter_token)
tyroneEllisTweets$created_at[5]

#blm tweets
tfblmTEl = grepl("Black Lives Matter", tyroneEllisTweets$text)
which( tfblmTEl == TRUE)
tfblmTEl = grepl("BLM", tyroneEllisTweets$text)
which( tfblmTEl == TRUE)
#naacp
tfnaacpTEl = grepl("national association for the advancement of colored people",tyroneEllisTweets$text)
which(tfnaacpTEl == TRUE)
tfnaacpTEl = grepl("naacp", tyroneEllisTweets$text)
which(tfnaacpTEl == TRUE)

#Rep Kabir Karriem
repKabirKarriemTweets <- get_timelines("@karriemandco", 
                                   n = 10000, 
                                   language = 'en',
                                   token = twitter_token)
repKabirKarriemTweets$created_at[25]
#blm tweets
tfblmKK = grepl("Black Lives Matter", repKabirKarriemTweets$text)
which( tfblmKK == TRUE)
repKabirKarriemTweets$created_at[8]

tfblmKK = grepl("BLM", repKabirKarriemTweets$text)
which( tfblmKK == TRUE)
#naacp
tfnaacpKK = grepl("national association for the advancement of colored people",repKabirKarriemTweets$text)
which(tfnaacpKK == TRUE)
tfnaacpKK = grepl("naacp", repKabirKarriemTweets$text)
which(tfnaacpKK == TRUE)

#Sen Oletha Faust-Goudeau
senOlethaFaustGoudeauTweets <- get_timelines("@oletha29", 
                                       n = 10000, 
                                       language = 'en',
                                       token = twitter_token)
senOlethaFaustGoudeauTweets$created_at[57]

#blm tweets
tfblmOF = grepl("Black Lives Matter", senOlethaFaustGoudeauTweets$text)
which( tfblmOF == TRUE)
tfblmOF = grepl("BLM", senOlethaFaustGoudeauTweets$text)
which( tfblmOF == TRUE)

#naacp
tfnaacpOF = grepl("national association for the advancement of colored people",senOlethaFaustGoudeauTweets$text)
which(tfnaacpOF == TRUE)
tfnaacpOF = grepl("naacp", senOlethaFaustGoudeauTweets$text)
which(tfnaacpOF == TRUE)
senOlethaFaustGoudeauTweets$created_at[7]


# Sen Barbara A. Robinson
senBarbaraRobinsonTweets <- get_timelines("@SenatorBAR", 
                                             n = 10000, 
                                             language = 'en',
                                             token = twitter_token)
senBarbaraRobinsonTweets$created_at[505]

#blm tweets
tfblmBR = grepl("Black Lives Matter", senBarbaraRobinsonTweets$text)
which( tfblmBR == TRUE)
tfblmBR = grepl("BLM", senBarbaraRobinsonTweets$text)
which( tfblmBR == TRUE)

#naacp
tfnaacpBR = grepl("national association for the advancement of colored people",senBarbaraRobinsonTweets$text)
which(tfnaacpBR == TRUE)
tfnaacpBR = grepl("naacp", senBarbaraRobinsonTweets$text)
which(tfnaacpBR == TRUE)

#Sen William Smith 
senWilliamSmithTweets <- get_timelines("@Willcsmithjr", 
                                          n = 10000, 
                                          language = 'en',
                                          token = twitter_token)
senWilliamSmithTweets$created_at[3184]

#blm tweets
tfblmWS = grepl("Black Lives Matter", senWilliamSmithTweets$text)
which( tfblmWS == TRUE)
#4 17
senWilliamSmithTweets$created_at[4]
tfblmWS = grepl("BLM", senWilliamSmithTweets$text)
which( tfblmWS == TRUE)

#naacp
tfnaacpWS = grepl("national association for the advancement of colored people",senWilliamSmithTweets$text)
which(tfnaacpWS == TRUE)
tfnaacpWS = grepl("naacp", senWilliamSmithTweets$text)
which(tfnaacpWS == TRUE)

#Assemblywoman Angela R. Bryant
angelaRBryantTweets <- get_timelines("@angelareb", 
                                       n = 10000, 
                                       language = 'en',
                                       token = twitter_token)
angelaRBryantTweets$created_at[2388]

#blm tweets
tfblmAB = grepl("Black Lives Matter", angelaRBryantTweets$text)
which( tfblmAB == TRUE)
#594 15
angelaRBryantTweets$created_at[15]
tfblmAB = grepl("BLM", angelaRBryantTweets$text)
which( tfblmAB == TRUE)

#naacp
tfnaacpAB = grepl("national association for the advancement of colored people",angelaRBryantTweets$text)
which(tfnaacpAB == TRUE)
tfnaacpAB = grepl("naacp", angelaRBryantTweets$text)
which(tfnaacpAB == TRUE) 
#1463 1702 1707 1709 1790 1791 1792 1794 2344
angelaRBryantTweets$created_at[2344]

#Sen Floyd McKissick
senFloydMcKissick <- get_timelines("@FloydMcKissick", 
                                     n = 10000, 
                                     language = 'en',
                                     token = twitter_token)
senFloydMcKissick$created_at[720]

#blm tweets
tfblmFM = grepl("Black Lives Matter", senFloydMcKissick$text)
which( tfblmFM == TRUE)
tfblmFM = grepl("BLM", senFloydMcKissick$text)
which( tfblmFM == TRUE)

#naacp
tfnaacpFM = grepl("national association for the advancement of colored people",senFloydMcKissick$text)
which(tfnaacpFM == TRUE)
tfnaacpFM = grepl("naacp", senFloydMcKissick$text)
which(tfnaacpFM == TRUE)
senFloydMcKissick$created_at[460]

# Sen Lew Frederick
senLewFrederickTweets <- get_timelines("@LewFrederick", 
                                   n = 10000, 
                                   language = 'en',
                                   token = twitter_token)
senLewFrederickTweets$created_at[2388]

#blm tweets
tfblmLF = grepl("Black Lives Matter", senLewFrederickTweets$text)
which( tfblmLF == TRUE)
tfblmLF = grepl("BLM", senLewFrederickTweets$text)
which( tfblmLF == TRUE)

#naacp
tfnaacpLF = grepl("national association for the advancement of colored people",senLewFrederickTweets$text)
which(tfnaacpLF == TRUE)
tfnaacpFM = grepl("naacp", senLewFrederickTweets$text)
which(tfnaacpLF == TRUE)

#Sen Rosalyn Dance
senRosalynDanceTweets <- get_timelines("@RosalynDance", 
                                 n = 10000, 
                                 language = 'en',
                                 token = twitter_token)
senRosalynDanceTweets$created_at[826]
#blm tweets
tfblmRD = grepl("Black Lives Matter", senRosalynDanceTweets$text)
which( tfblmRD == TRUE)
tfblmRD = grepl("BLM", senRosalynDanceTweets$text)
which( tfblmRD == TRUE)

#naacp
tfnaacpRD = grepl("national association for the advancement of colored people",senRosalynDanceTweets$text)
which(tfnaacpRD == TRUE)
tfnaacpRD = grepl("naacp", senRosalynDanceTweets$text)
which(tfnaacpRD == TRUE)

#Aaron D. Ford
senAaronFordTweets <- get_timelines("@AaronDFordNV", 
                                       n = 10000, 
                                       language = 'en',
                                       token = twitter_token)
senAaronFordTweets$created_at[3206]

#blm tweets
tfblmRD = grepl("Black Lives Matter", senRosalynDanceTweets$text)
which( tfblmRD == TRUE)
tfblmRD = grepl("BLM", senRosalynDanceTweets$text)
which( tfblmRD == TRUE)

#naacp
tfnaacpRD = grepl("national association for the advancement of colored people",senRosalynDanceTweets$text)
which(tfnaacpRD == TRUE)
tfnaacpRD = grepl("naacp", senRosalynDanceTweets$text)
which(tfnaacpRD == TRUE)


#rep Vincent Gregory
repVincentGregoryTweets <- get_timelines("@VoteVince2014", 
                                    n = 10000, 
                                    language = 'en',
                                    token = twitter_token)
repVincentGregoryTweets$created_at[15]

#blm tweets
tfblmVG = grepl("Black Lives Matter", repVincentGregoryTweets$text)
which( tfblmVG == TRUE)
tfblmVG = grepl("BLM", repVincentGregoryTweets$text)
which( tfblmVG == TRUE)

#naacp
tfnaacpVG = grepl("national association for the advancement of colored people",repVincentGregoryTweets$text)
which(tfnaacpVG == TRUE)
tfnaacpVG = grepl("naacp", repVincentGregoryTweets$text)
which(tfnaacpVG == TRUE)

# rep Jewell Jones
repJewellJonesTweets <- get_timelines("@OnlyJJones", 
                                         n = 10000, 
                                         language = 'en',
                                         token = twitter_token)
repJewellJonesTweets$created_at[109]

#blm tweets
tfblmJJ = grepl("Black Lives Matter", repJewellJonesTweets$text)
which( tfblmJJ == TRUE)
tfblmJJ = grepl("BLM", repJewellJonesTweets$text)
which( tfblmJJ == TRUE)

#naacp
tfnaacpJJ = grepl("national association for the advancement of colored people",repJewellJonesTweets$text)
which(tfnaacpJJ == TRUE)
tfnaacpJJ = grepl("naacp", repJewellJonesTweets$text)
which(tfnaacpJJ == TRUE)

#Congressman Al Green
repAlGreenTweets <- get_timelines("@RepAlGreen", 
                                      n = 10000, 
                                      language = 'en',
                                      token = twitter_token)
repAlGreenTweets$created_at[2398]
#blm tweets
tfblmAG = grepl("Black Lives Matter", repAlGreenTweets$text)
which( tfblmAG == TRUE)
repAlGreenTweets$created_at[1909]
tfblmAG = grepl("BLM", repAlGreenTweets$text)
which( tfblmAG == TRUE)

#naacp
tfnaacpAG = grepl("national association for the advancement of colored people",repAlGreenTweets$text)
which(tfnaacpAG == TRUE)
tfnaacpAG = grepl("naacp", repAlGreenTweets$text)
which(tfnaacpAG == TRUE)

# Rep Jerome Barnes
repJeromeBarnesTweets <- get_timelines("@RepBarn28", 
                                  n = 10000, 
                                  language = 'en',
                                  token = twitter_token)
repJeromeBarnesTweets$created_at[762]
#blm tweets
tfblmJBa = grepl("Black Lives Matter", repAlGreenTweets$text)
which( tfblmJBa == TRUE)
repAlGreenTweets$created_at[1909]
tfblmJBa = grepl("BLM", repAlGreenTweets$text)
which( tfblmJBa == TRUE)

#naacp
tfnaacpJBa = grepl("national association for the advancement of colored people",repAlGreenTweets$text)
which(tfnaacpJBa == TRUE)
tfnaacpJBa = grepl("naacp", repAlGreenTweets$text)
which(tfnaacpJBa == TRUE)

# SenTommie Pierson, Jr.
senTommiePiersonTweets <- get_timelines("@tommiepiersonjr", 
                                       n = 10000, 
                                       language = 'en',
                                       token = twitter_token)
senTommiePiersonTweets$created_at[403]

#blm tweets
tfblmTP = grepl("Black Lives Matter", senTommiePiersonTweets$text)
which( tfblmTP == TRUE)
tfblmTP = grepl("BLM", senTommiePiersonTweets$text)
which( tfblmTP == TRUE)

#naacp
tfnaacpTP = grepl("national association for the advancement of colored people",senTommiePiersonTweets$text)
which(tfnaacpTP == TRUE)
tfnaacpTP = grepl("naacp", senTommiePiersonTweets$text)
which(tfnaacpTP == TRUE)


#Sen Brenda Gilmore
senBrendaGilmoreTweets <- get_timelines("@SenatorGilmore", 
                                        n = 10000, 
                                        language = 'en',
                                        token = twitter_token)
senBrendaGilmoreTweets$created_at[3030]

#blm tweets
tfblmBG = grepl("Black Lives Matter", senBrendaGilmoreTweets$text)
which( tfblmBG == TRUE)
senBrendaGilmoreTweets$created_at[136]
tfblmBG = grepl("BLM", senBrendaGilmoreTweets$text)
which( tfblmBG == TRUE)

#naacp
tfnaacpBG = grepl("national association for the advancement of colored people",senBrendaGilmoreTweets$text)
which(tfnaacpBG == TRUE)
tfnaacpBG = grepl("naacp", senBrendaGilmoreTweets$text)
which(tfnaacpBG == TRUE)
senBrendaGilmoreTweets$created_at[1756]
#219  298  301  303  304  306  328  895 1756

# Rick Staples
rickStaplesKnoxTweets <- get_timelines("@RickStaplesKnox", 
                                        n = 10000, 
                                        language = 'en',
                                        token = twitter_token)
rickStaplesKnoxTweets$created_at[7]

#blm tweets
tfblmRSt = grepl("Black Lives Matter", rickStaplesKnoxTweets$text)
which( tfblmRSt == TRUE)
tfblmRSt = grepl("BLM", rickStaplesKnoxTweets$text)
which( tfblmRSt == TRUE)

#naacp
tfnaacpRSt = grepl("national association for the advancement of colored people",rickStaplesKnoxTweets$text)
which(tfnaacpRSt == TRUE)
tfnaacpRSt = grepl("naacp", rickStaplesKnoxTweets$text)
which(tfnaacpRSt == TRUE)

# Assemblyman David Crowley
davidCrowleyTweets <- get_timelines("@DavidCCrowley", 
                                       n = 10000, 
                                       language = 'en',
                                       token = twitter_token)
davidCrowleyTweets$created_at[977]

#blm tweets
tfblmDCr = grepl("Black Lives Matter", davidCrowleyTweets$text)
which( tfblmDCr == TRUE)
tfblmDCr = grepl("BLM", davidCrowleyTweets$text)
which( tfblmDCr == TRUE)

#naacp
tfnaacpDCr = grepl("national association for the advancement of colored people",davidCrowleyTweets$text)
which(tfnaacpDCr == TRUE)
tfnaacpDCr = grepl("naacp", davidCrowleyTweets$text)
which(tfnaacpDCr == TRUE)

