# this cose is to compute the prec at 20 and RHR of ranvdomly shfuffled data.

import random
import statistics



def printlist(inlist, explanationstring) :

    print "*************************************************************"
    print explanationstring, "size", len(inlist)
    for x in range(len(inlist)) :
        print x, inlist[x]

def generate_random(numitems, numhits, numrounds) :

    assert numhits <= numitems 
    accum_precat20 = []
    accum_rhr = []
    hitlist = [1 for x in range(numhits)]
    nonhitslist = [0 for x in range(numitems-numhits)]

    totallsit= hitlist + nonhitslist

    for i in range(numrounds):
        random.shuffle(totallsit)
        precat20 = 0
        rhr = 0.0
        for y in range(numitems):
            if totallsit[y]== 1 :
                if y < 20 :
                    precat20 += 1
                rhr += 1.0/float(y+1)
        accum_precat20.append(precat20)
        accum_rhr.append(rhr)

#    printlist(accum_precat20, 'prec@20')
#    printlist(accum_rhr, 'rhr')
    precat20_parameters = (statistics.mean(accum_precat20), statistics.stdev(accum_precat20))
    rhr_parameters = (statistics.mean(accum_rhr), statistics.stdev(accum_rhr))
    
    print 'prec@20: ', precat20_parameters, 'rhr: ', rhr_parameters 

    return (precat20_parameters, rhr_parameters)

########################################################
#  testing

#numitems = 100
#numhits = 20
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 3.8 1.54919333848
##rhr 1.1567029922 0.556108072039
##prec@20 3.77 1.53645926425
##rhr 0.996366478522 0.454076688685
##prec@20 3.964 1.60039534655
##rhr 1.03744185854 0.472379049874
##prec@20 4.0033 1.60104511009
##rhr 1.04068589783 0.467349504646
##prec@20 4.00532 1.61029116248
##rhr 1.03903958702 0.470319314123

# covid19 (trials data)

##############################################################
# case DM fda only on trial hits..

##numitems = 342
##numhits =  61
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 3.3 1.33749350985
##rhr 1.00187548487 0.250353129126
##prec@20 3.34 1.49895586555
##rhr 1.07260588909 0.422398710394
##prec@20 3.525 1.68529380679
##rhr 1.12785544564 0.476644380293
##prec@20 3.559 1.66673237194
##rhr 1.14043660017 0.472256824951
##prec@20 3.57018 1.65733588485
##rhr 1.14528688654 0.472459100717
        


############################################################
# case GEO fda only on trial hits. 

##numitems = 93
##numhits = 34
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 7.0 2.05480466766
##rhr 1.79192706601 0.64511092716
##prec@20 7.36 2.11067512776
##rhr 1.80169872725 0.614814438733
##prec@20 7.242 1.9227930552
##rhr 1.86860297075 0.555623178387
##prec@20 7.3304 1.92992442879
##rhr 1.87730335108 0.564996944796
##prec@20 7.3137 1.91783969379
##rhr 1.87087800565 0.564257362883
        

##############################################################
# case DM  on trial hits.. (no fda filter)

##numitems = 656
##numhits =  69
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 2.1 0.994428926012
##rhr 0.706517567467 0.313608736532
##prec@20 2.11 1.27044889863
##rhr 0.691005548692 0.3022607442
##prec@20 2.035 1.31358307712
##rhr 0.724635286223 0.357933994271
##prec@20 2.0925 1.33226170182
##rhr 0.742925556625 0.382723943814
##prec@20 2.10819 1.35072690376
##rhr 0.743608442853 0.384046274893


############################################################
# case GEO  on trial hits. (no fda filter)

##numitems = 132
##numhits =  37
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 5.5 1.26929551764
##rhr 1.61511906679 0.45519217353
##prec@20 5.58 1.93416909835
##rhr 1.57391686805 0.633793678691
##prec@20 5.651 1.87902361074
##rhr 1.53937895087 0.534620787204
##prec@20 5.5994 1.8691894037
##rhr 1.53530581548 0.540766870266
##prec@20 5.6023 1.85910980657
##rhr 1.53101455976 0.536447067514

# asthma 

##############################################################
# case DM fda only on asthma hits..

##numitems = 342
##numhits =  9
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 0.3 0.48304589154
##rhr 0.11806226457 0.0794367762824
##prec@20 0.46 0.657820091459
##rhr 0.154034408115 0.171687045576
##prec@20 0.545 0.715882313993
##rhr 0.173670473466 0.205219772099
##prec@20 0.5298 0.699257360409
##rhr 0.169643649548 0.199459070663
##prec@20 0.52482 0.694657320618
##rhr 0.168725060714 0.197802656772

##############################################################
# case GEO  fda only on asthma hits..

##numitems = 93
##numhits =  2
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 0.6 0.516397779494
##rhr 0.0790095028624 0.037479291557
##prec@20 0.36 0.522619663935
##rhr 0.0845312666096 0.12162022832
##prec@20 0.414 0.557597448806
##rhr 0.114346616367 0.183056507602
##prec@20 0.428 0.579525310024
##rhr 0.112523990784 0.175579793498
##prec@20 0.42998 0.57770281028
##rhr 0.110351057967 0.170627142831


##############################################################
# case DM  on asthma hits.. (no fda filter)

##numitems = 656
##numhits =  10
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 0.5 0.707106781187
##rhr 0.0922745327348 0.0688734756748
##prec@20 0.37 0.562372319965
##rhr 0.119496482548 0.165175291779
##prec@20 0.309 0.534607149975
##rhr 0.111392097911 0.170934647783
##prec@20 0.3102 0.545715805685
##rhr 0.109629441286 0.158338364563
##prec@20 0.30184 0.535290089349
##rhr 0.106954456732 0.151417897917


############################################################
# case GEO  on asthma hits. (no fda filter)

##numitems = 132
##numhits = 3
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 0.4 0.69920589878
##rhr 0.17763354454 0.30437725775
##prec@20 0.59 0.604611904907
##rhr 0.150901642688 0.175209112145
##prec@20 0.436 0.623131039423
##rhr 0.112823909304 0.151751524472
##prec@20 0.4631 0.622155203876
##rhr 0.127512769846 0.182180222948
##prec@20 0.45519 0.614911249741
##rhr 0.124012302504 0.177268442271

# arthritis

#####################################################################
# case DM fda only arthritis

##numitems = 342
##numhits = 23
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 1.6 0.69920589878
##rhr 0.485224255835 0.314086846202
##prec@20 1.2 1.03474976236
##rhr 0.402065262786 0.279967080262
##prec@20 1.293 1.05558763978
##rhr 0.41470740302 0.295246064028
##prec@20 1.3318 1.07713730902
##rhr 0.430376301354 0.308133860634
##prec@20 1.33843 1.08454916789
##rhr 0.429644950915 0.309432954012

#####################################################################
# case GEO fda only arthritis

##numitems = 93
##numhits = 8
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 1.6 0.516397779494
##rhr 0.42610509242 0.284794186757
##prec@20 1.87 1.0115993937
##rhr 0.454620640257 0.330577224107
##prec@20 1.774 1.1181118791
##rhr 0.447502965639 0.33944231556
##prec@20 1.7133 1.11500109092
##rhr 0.435826078821 0.328317812284
##prec@20 1.71593 1.11549391678
##rhr 0.438688268274 0.327282810166


#####################################################################
# case DM  arthritis (no fda filter)

##numitems = 656
##numhits =  25
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 0.7 0.948683298051
##rhr 0.237353601876 0.22105525522
##prec@20 0.77 0.827006284099
##rhr 0.275375738483 0.254319570076
##prec@20 0.774 0.805961272999
##rhr 0.265240624397 0.226567540442
##prec@20 0.7676 0.843481704685
##rhr 0.27255902649 0.244569591144
##prec@20 0.76206 0.844435721128
##rhr 0.269374266876 0.240117293991

#####################################################################
# case GEO  arthritis (no fda filter)

##numitems = 132
##numhits =  11
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 1.6 1.17378779078
##rhr 0.404174860214 0.220273679881
##prec@20 1.66 1.19949484317
##rhr 0.481294007073 0.352708913333
##prec@20 1.686 1.14136177731
##rhr 0.463752322259 0.342853500635
##prec@20 1.6816 1.15401673101
##rhr 0.45918399323 0.333994964242
##prec@20 1.6722 1.14696133989
##rhr 0.458240846649 0.332427923241

###############################################
# crc 

#####################################################################
# case DM fda only crc

##numitems = 342
##numhits = 9
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 0.6 0.843274042712
##rhr 0.140679782145 0.112610555519
##prec@20 0.49 0.717670192394
##rhr 0.182247126585 0.227071448567
##prec@20 0.561 0.711888885842
##rhr 0.17184947717 0.206225775059
##prec@20 0.5226 0.698095963172
##rhr 0.167088534796 0.196050754021
##prec@20 0.52502 0.693670535188
##rhr 0.169110445712 0.199603661942


#####################################################################
# case GEO fda only crc

##numitems = 93
##numhits =  8
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 1.2 0.918936583473
##rhr 0.356858824307 0.320774000312
##prec@20 1.67 1.05461946797
##rhr 0.441767838998 0.319029871337
##prec@20 1.708 1.11623563013
##rhr 0.451550411606 0.3343683795
##prec@20 1.7346 1.1190567764
##rhr 0.444057613519 0.331956184116
##prec@20 1.72191 1.11899440275
##rhr 0.439699967869 0.327125966597

#####################################################################
# case DM  crc (no fda filter)

##numitems = 656
##numhits = 11
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 0.2 0.421637021356
##rhr 0.0711351970602 0.0326635969053
##prec@20 0.45 0.672324476737
##rhr 0.148002722625 0.197879104019
##prec@20 0.321 0.544293354043
##rhr 0.118119106469 0.166552635579
##prec@20 0.3373 0.56529697157
##rhr 0.117078690637 0.15460654274
##prec@20 0.33447 0.565970867033
##rhr 0.11854994899 0.161313115955

#####################################################################
# case GEO  crc (no fda filter)

##numitems = 132
##numhits =  12
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 1.9 0.994428926012
##rhr 0.443392186929 0.145277471728
##prec@20 1.83 1.20650593271
##rhr 0.502406062424 0.348561679095
##prec@20 1.824 1.18085495232
##rhr 0.48207117677 0.319371002086
##prec@20 1.8319 1.20224245836
##rhr 0.500373122108 0.346726349304
##prec@20 1.81455 1.18442911406
##rhr 0.495042925474 0.34140177612
##


#####################################################################
#prc

#####################################################################
# case DM fda only prc

##numitems = 342
##numhits = 10
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 0.5 0.971825315808
##rhr 0.164113510796 0.183304147806
##prec@20 0.6 0.724743075339
##rhr 0.155991010603 0.134185743856
##prec@20 0.602 0.739014304423
##rhr 0.186090234777 0.20247038507
##prec@20 0.5887 0.736197329967
##rhr 0.187440853418 0.20594940048
##prec@20 0.58572 0.732255039979
##rhr 0.186890171482 0.206456885716

#####################################################################
# case GEO fda only prc


##numitems = 93
##numhits =  8
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 2.0 1.05409255339
##rhr 0.35954660121 0.177622437623
##prec@20 1.71 1.10366698242
##rhr 0.440976540855 0.324429648593
##prec@20 1.747 1.10100100055
##rhr 0.442730095489 0.32060759937
##prec@20 1.7249 1.11074000753
##rhr 0.436884682992 0.322837320927
##prec@20 1.70977 1.11533357646
##rhr 0.438704176274 0.327820488953




#####################################################################
# case DM  prc (no fda filter)

##numitems = 656
##numhits = 15
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 0.5 0.527046276695
##rhr 0.169632037374 0.166618320561
##prec@20 0.47 0.658357306813
##rhr 0.179111511745 0.21790514358
##prec@20 0.472 0.644694991164
##rhr 0.17503578274 0.212836275406
##prec@20 0.4561 0.655069234181
##rhr 0.159512269555 0.182828937832
##prec@20 0.45579 0.657852417794
##rhr 0.16072074913 0.186156188972

#####################################################################
# case GEO  prc (no fda filter)

##numitems = 132
##numhits = 12
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 2.2 1.39841179756
##rhr 0.580363372361 0.38682928086
##prec@20 1.77 1.1534314199
##rhr 0.51963710874 0.345550643595
##prec@20 1.721 1.19941552333
##rhr 0.491687795277 0.350101917053
##prec@20 1.8162 1.19019293223
##rhr 0.494996613778 0.340998378515
##prec@20 1.82026 1.18898598363
##rhr 0.4962109877 0.342314627115



###############################################################
# cmap runs

# covid19 no fda filter

##numitems = 1290
##numhits = 77
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 1.5 0.971825315808
##rhr 0.448930605319 0.278954555121
##prec@20 1.06 1.10846148724
##rhr 0.418528418175 0.249269040627
##prec@20 1.221 1.08042876967
##rhr 0.479800480111 0.320610091092
##prec@20 1.1912 1.04821392628
##rhr 0.459846975817 0.300371832386
##prec@20 1.18894 1.04938681549
##rhr 0.462224311689 0.299978171515
##


# asthma no fda filter

##numitems = 1290
##numhits = 19
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 0.3 0.48304589154
##rhr 0.0845230315895 0.0350920862742
##prec@20 0.27 0.54781475893
##rhr 0.123674759481 0.183241917768
##prec@20 0.295 0.527497159474
##rhr 0.114581531191 0.153456465072
##prec@20 0.2945 0.538886620616
##rhr 0.115083579574 0.156052766574
##prec@20 0.29303 0.532114884741
##rhr 0.113896651501 0.151632856172
##

# arthritis no fda filter

##numitems = 1290
##numhits = 30
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 0.3 0.48304589154
##rhr 0.127779102647 0.0948710476908
##prec@20 0.56 0.715202874376
##rhr 0.190841822465 0.204995926267
##prec@20 0.472 0.698357862205
##rhr 0.178752070557 0.186791201669
##prec@20 0.4777 0.685090975685
##rhr 0.18257380026 0.195226016646
##prec@20 0.46466 0.667229747805
##rhr 0.180111122099 0.190827428537

#  crc  no fda filter

##numitems = 1290
##numhits = 10
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 0.1 0.316227766017
##rhr 0.128858529761 0.323258633695
##prec@20 0.11 0.314466037735
##rhr 0.0601627605322 0.118935834851
##prec@20 0.156 0.397267947136
##rhr 0.0566991400944 0.0861991537087
##prec@20 0.1595 0.396075040294
##rhr 0.0613305666875 0.114821934549
##prec@20 0.15494 0.388014306374
##rhr 0.0601391313419 0.11145779052

#  prc  no fda filter

##numitems = 1290
##numhits = 21
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##prec@20 0.8 0.918936583473
##rhr 0.171197244519 0.12839309911
##prec@20 0.35 0.57515917867
##rhr 0.109810334209 0.0825510833334
##prec@20 0.327 0.5571188216
##rhr 0.128456361866 0.168489784494
##prec@20 0.3305 0.566128784094
##rhr 0.128837205732 0.167193659123
##prec@20 0.32731 0.564908271415
##rhr 0.126152459045 0.160190347449


####################################################
# cmp runs with filter
# covid19

##print "*********************************"
##
##numitems = 429
##numhits = 64
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##
###asthma
##print "*********************************"
##numitems = 429
##numhits = 9
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##
###arthritis
##print "*********************************"
##numitems = 429
##numhits = 26
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##
##
###crc
##print "*********************************"
##numitems = 429
##numhits = 7
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##
##
###prc
##print "*********************************"
##numitems = 429
##numhits = 16
##generate_random(numitems, numhits, 10)
##generate_random(numitems, numhits, 100)
##generate_random(numitems, numhits, 1000)
##generate_random(numitems, numhits, 10000)
##generate_random(numitems, numhits, 100000)
##
