# This file hold the code for frug names matching
# produces dumps to speed up computations
# uses forbidden lists of matching names, checked by hand.
# code taken form the barabasi_lit_checking file
# use this code as  the only interface to the LCS procedure..


forbiddenkeylist = [
    'meglumine',
    'gramine',
    'arcaine',
    'xylazine_hydrochloride',
    'emetine_hydrochloride',
    'tropine',
    'suprofen',
    'vitamin_h',
    'vitamin_f',
    'scotine',
    'tiletamine_hydrochloride',
    'acetone',
    'lylamine',
    'lylamine_hydrochloride',
    'racephedrine_hydrochloride',
    'compound_d',
    
    
    
    ]




suffixlist= ['hydrochloride',
             'dihydrochloride',
             'methylsulfate',
             'acetate',
             'methylsulfate',
             'nitrate',
             'sodium',
             'calcium',
             'disodium',
             'diacetate',
             'chloride',
             'propionate',
             'dipropionate',
             'gluconate',
             'methylbromide',
             'maleate',
             'mononitrate',
             'dinitrate',
             'furoate',
             'fumarate',
             'lactate',
             'succinate',
             'sulfate',
             'mesylate',
             'pamoate',
             'phosphate',
             'etabonate',
             'caproate',
             'hcl',
             'potassium',
             'ca',
             'citrate',
             'polacrilex',
             'pediatric',
             'hydrobromide',
             'isethionate',
             'bitartrate',
             'estolate',
             'magnesium',
             'diolamine',
             'zinc',
             'intensol',
             'hyclate',
             'trioxide',
             ]
             

def suffixsplit(s1,s2):

    matching = False
    
    ss1 = s1.split('_')
    ss2 = s2.split('_')
    
    if len(ss1) == 1 and  len(ss2) == 2 :
        if ss2[-1] in suffixlist and ss1[0] == ss2[0] :
            return True
    elif len(ss1) == 2 and  len(ss2) == 1 :
        if ss1[-1] in suffixlist and ss2[0] == ss1[0] :
            return True
    elif len(ss1) == 2 and  len(ss2) == 2 :
        if ss1[-1] in suffixlist and ss2[-1] in suffixlist and ss1[0] == ss2[0] :
            return True
             
    return False


##########################################
# forbidden matching map

# after string nrmalization
exceptionslist = [
        ('interferon_beta_1b', 'interferon_beta_1a'),
        ('vitamin_c', 'vitamin_a'),
        ('vitamin_c', 'vitamin_d'),
        ('vitamin_c', 'vitamin_a_palmitate'),
        ('vitamin_c', 'vitamin_a_solubilized'),
        ('vitamin_c', 'vitamin_k1'),

        ('vitamin_a','vitamin d'),
        ('vitamin_a','vitamin c'),
        ('vitamin_a','vitamin_d'),
        ('vitamin_a','vitamin_c'),
        ('vitamin_a', '25-hydroxyvitamin d3'),
        ('vitamin_a', '25_hydroxyvitamin_d3'),

        ('vitamin_e', 'vitamin a'),
        ('vitamin_e', 'vitamin c'),        
        ('vitamin_e', 'vitamin d'),
        ('vitamin_e', 'vitamin_a'),
        ('vitamin_e', 'vitamin_c'),        
        ('vitamin_e', 'vitamin_d'),
        ('vitamin_e', '25-hydroxyvitamin d3'),
        ('vitamin_e', '25_hydroxyvitamin_d3'),

        ('vitamin_d', 'vitamin_a'),
        ('vitamin_d', 'vitamin_a_palmitate'),
        ('vitamin_d', 'vitamin_a_solubilized'),
        ('vitamin_d', 'vitamin_k1'),
        
        ('decitabine', 'emtricitabine'),
        ('furan', 'isoflurane'),
        ('furan', 'sevoflurane'),
        ('cholic_acid', 'folic_acid'),
        ('mevastatin', 'atorvastatin'),
        ('troglitazone', 'pioglitazone hydrochloride'),
        ('troglitazone', 'pioglitazone_hydrochloride'),

        ('ramipril', 'amiprilose'),
        ('acetone', 'triamcinolone acetonide'),
        ('acetone', 'triamcinolone_acetonide'),
        ('acetone', 'fluocinolone acetonide'),
        ('acetone', 'fluocinolone_acetonide'),
        ('benzamil', 'phenoxybenzamine hydrochloride'),
        ('benzamil', 'phenoxybenzamine_hydrochloride'),
        ('benzamil', 'trimethobenzamide hydrochloride'),
        ('benzamil', 'trimethobenzamide_hydrochloride'),
        ('niacin', 'triacin_c'),
        ('oxandrolone', 'nandrolone phenpropionate'),
        ('oxandrolone', 'nandrolone_phenpropionate'),
        ('procaine', 'chirocaine'),
        ('acetone', 'nystatin triamcinolone acetonide'),
        ('acetone', 'flucinolone acetonide'),
        ('acetone', 'flucinolone_acetonide'),
        ('acetone', 'fluocinolone_acetonide'),
        ('piracetam', 'levetiracetam'),
        ('enoxacin', 'cinoxacin'),
        ('dyphylline', 'aminophylline dye free'),
        ('dyphylline', 'aminophylline_dye_free'),
        ('dyphylline', 'mersalyl-theophylline'),
        ('dyphylline', 'mersalyl_theophylline'),
         ('soman', 'somavert'),
         ('soman', 'somatuline depot'),
        ('soman', 'somatuline_depot'),
         ('soman', 'lomanate'),
         ('soman', 'bromanyl'),
         ('soman', 'bromanate dm'),
        ('soman', 'bromanate_dm'),
        ('soman', 'pretomanid'),
        ('harman', 'pharmaseal scrub care'),
        ('harman', 'pharmaseal_scrub_care'),
        ('leptin', 'herceptin'),
        ('leptin', 'herceptin hylecta'),
         ('leptin', 'herceptin_hylecta'),
        ('monuron', 'monurol'),
        ('i_bet', 'xcel_umc_beta'),
        ('I_BET', 'interferon_beta'),
        ('i_bet', 'hexa_betalin'),
        ('aicar', 'sodium bicarbonate'),
        ('aicar', 'sodium_bicarbonate'),
        ('aicar', 'amicar'),
        ('acetate', "ringer's acetate"),
        ('acetate', "ringer_s_acetate"),
        ('cymarin', 'silymarin'),
        ('I_BET', 'hexa_betalin'),
        ('rutin', 'delalutin'),
        ('rutin', 'norlutin') ,
        ('rutin', 'mycobutin'),
        ('rutin', 'rifabutin'),
        ('hemado', 'hemady'),
        ('idoxuridine', 'floxuridine'),
        ('palda', 'aldactone'),
        ('trolox', 'metrolotion'),

        ('erastin', 'noberastine'),
        ('moban', 'sulotroban'),
        ('dirithromycin', 'clarithromycin'),
        ('donix', 'vagonixen'),
        ('achromycin', 'azithromycin'),
        ('metrazol', 'tetrazolast'),
        ('pindac', 'indacaterol'),
        ('istin', 'noberastine'),
        ('eureceptor', 'receptor'),
        ('darob', 'daropate'),
        ('flumid', 'roflumilast'),
        ('zocor', 'butixocort'),
        ('torin', 'uft/leucovorin'),
        ('torin', 'leucovorin'),
        ('decitabine', 'capecitabine'),
        ('decitabine', 'gemcitabine'),
        ('clomid', 'temozolomide'),
        ('idoxuridine', 'floxuridine'),
        ('sorafenib', 'regorafenib'),
        ('nintedanib', 'intedanib'),
        ('donix', 'xilonix'),
        ('tolid', 'entolimod'),
        ('liplat', 'oxaliplatin'),
        ('lomir', 'temozolomide'),
        ('pindac', 'sulindac'),
        ('tstat', 'epacadostat'),
        ('danol', 'propranolol'),
        ('ucine', 'avicine'),
        ('ucine', 'vaccine'),
        ('capex', 'capecitabine'),
        ('lidex', 'nimesulide'),

        ('api_2', 'epi_2010'),
        ('gp_1a', 'cgp_13774'),
        ('achromycin', 'clarithromycin'),
        ('compound_d', 'pmid28460551_compound_1'),
        ('compound_58', 'pmid28460551_compound_1'),
        ('compound_12', 'pmid28460551_compound_1'),
        ('compound_10', 'pmid28460551_compound_1'),
        ('mevastatin', 'simvastatin'),
        ('emetine_hydrochloride', 'bromhexine_hydrochloride'),
        ('rutin', 'ibrutinib'),
        ('w_9_hydrochloride', 'abidol_hydrochloride'),
        ('torin', 'cyclosporine'),
        ('w_7_hydrochloride', 'abidol_hydrochloride'),
        ('amt_hydrochloride', 'abidol_hydrochloride'),
        ('moban', 'argatroban'),
        ('dirithromycin', 'clarithromycin'),
        ('i_bet', 'interferon_beta_1b'),
        ('flutamide', 'bicalutamide'),
        ('sin_10', 'angiotensin_1_7'),
        ('tolid', 'rintatolimod'),
        ('zacin', 'levofloxacin'),
        ('achromycin', 'clarithromycin'),
        ('v_sul', 'zinc_sulfate'),
        ('promazine', 'chlorpromazine'),
        ('furacillin', 'piperacillin_tazobactam'),
        ('tstat', 'conestat_alfa'),
        ('sulfona', 'sulfonatoporphyrin'),
        ('danol', 'danoprevir'),
        ('lopid', 'clopidogrel'),
        ('ucine', 'lucinactant'),
        ('mesteron', 'progesterone'),
        ('enison', 'prednisone'),
        ('lidex', 'macrolide'),
        ('ara_a', 'kevzara_sc'),
        ('darob', 'amiodarone'),
        ('ara_c', 'kevzara_sc'),
        ('istin', 'andromustine'),
        ('eureceptor', 'selective_androgen_receptor_degraders'),
        ('delix', 'padeliporfin_di_potassium'),
        ('ucine', 'dendritic_cell_vaccine'),
        ('dopar', 'spio_stasix_nanoparticles'),
        ('acular', 'combination_therapy__prostate_cancer__molecular_express_inc'),
        ('enison', 'prednisone'),
        ('lidex', 'leuprolide'),
        ('darob', 'darolutamide'),
        ('androgel', 'selective_androgen_receptor_degraders'),

        ('istin', 'flezelastine'),
        ('rutin', 'zanubrutinib'),
        ('rutin', 'acalabrutinib'),
        ('w_9_hydrochloride', 'bromhexine_hydrochloride'),
        ('ofloxacin', 'levofloxacin'),
        ('torin', 'chlorine_dioxide'),
        ('w_7_hydrochloride', 'bromhexine_hydrochloride'),
        ('w_7_hydrochloride', 'arbidol_hydrochloride'),
        ('amt_hydrochloride', 'bromhexine_hydrochloride'),
        ('amt_hydrochloride', 'arbidol_hydrochloride'),
        ('i_bet', 'xcel_umc_beta'),
        ('i_bet', 'interferon_beta_1a'),
        ('i_bet', 'interferon_beta'),
        ('zacin', 'indomethacin'),
        ('zacin', 'moxifloxacin'),
        ('v_sul', 'hydroxychloroquine_sulfate'),
        ('v_sul', 'chloroquine_sulfate'),
        ('tstat', 'atorvastatin'),
        ('tstat', 'camostat_mesilate'),
        ('tstat', 'dociparastat_sodium'),
        ('tstat', 'ulinastatin'),
        ('tstat', 'statins'),
        ('tstat', 'camostat_mesylate'),
        ('tstat', 'simvastatin'),
        ('tstat', 'nafamostat_mesilate'),
        ('tstat', 'cobicistat'),
        ('tstat', 'nafamostat_mesylate'),
        ('lopid', 'lopinavir'),
        ('ucine', 'bcg_vaccine'),
        ('ucine', 'colchicine'),
        ('ucine', 'measles_mumps_rubella_vaccine'),
        ('lidex', 'galidesivir'),
        ('lidex', 'piclidenoson'),
        ('compound_d', 'pmid27215781_compound_37'),
        ('compound_58', 'pmid27215781_compound_37'),
        ('compound_12', 'pmid27215781_compound_37'),
        ('compound_10', 'pmid27215781_compound_37'),
        ('tolid', 'leuprolide'),
        ('tstat', 'sirna_therapeutic__lauriad/tablet__prostate_cancer'),
        ('istin', 'andromustine'),
        ('istin', 'estramustine'),
        ('delix', 'abarelix'),
        ('delix', 'degarelix'),
        ('ucine', 'prostate_cancer_vaccine__fk_biotecnologia'),
        ('ucine', 'prostate_dendritic_cell_based_vaccine'),
        ('ucine', 'psma_subunit_vaccine'),
        ('ucine', 'tarp_peptide_pulsed_autologous_dendritic_cell_vaccine'),
        ('ucine', 'hormone_dependent_vaccine'),
        ('ucine', 'cdca1_derived_epitope_peptide_vaccine'),
        ('ucine', 'pep_223/covaccine_ht'),
        ('ucine', 'reic_gene_therapy_vaccine'),
        ('ucine', 'onyvax_105_anti_idiotype_cancer_vaccine_105ad7') ,
        ('ucine', 'human_and_mouse_psma_dna_vaccines'),
        ('ucine', 'therapeutic_peptide_subunit_vaccine'),
        ('ucine', 'tarp_peptide_vaccines'),
        ('ucine', 'recombinant_soluble_psma_protein_vaccine'),
        ('ucine', 'psma_protein_vaccine'),
        ('ucine', 'psma_vrp_therapeutic_vaccine'),
        ('ucine', 'dcvax_prostate_cancer_vaccine'),
        ('ucine', 'cdna_vaccine'),
        ('ucine', 'pro_antigen_cancer_vaccine'),
        ('ucine', 'prostate_cancer_vaccine'),
        ('ucine', 'psa/il_2/gm_csf_vaccine'),
        ('zocor', 'hydrocortisone'),
        ('compound_d', 'pmid27998201_compound_9'),
        ('torin', 'etoricoxib'),
        ('compound_58', 'pmid27998201_compound_9'),
        ('compound_12', 'pmid27998201_compound_9'),
        ('compound_10', 'pmid27998201_compound_9'),
        ('gp_2a', 'gp_2017'),
        ('tolid', 'fontolizumab'),
        ('zacin', 'indomethacin'),
        ('v_sul', 'dimethyl_sulfoxide'),
        ('lomir', 'arthromir'),
        ('tstat', 'sivelestat'),
        ('pipril', 'amiprilose'),
        ('flumid', 'niflumic_acid'),

        ('w_9_hydrochloride', 'arbidol_hydrochloride'),
        ('tolid', 'macrolide'),
        ('furacillin', 'piperacillin'),
        ('tolid', 'leuprolide_acetate'),
        ('tstat', 'iofolastat_i_124'),
        ('tstat', 'prostate_cancer_vaccine__fk_biotecnologia'),
        ('tstat', 'prostate_dendritic_cell_based_vaccine'),
        ('tstat', 'sirna_therapeutics__prostate_cancer'),
        ('tstat', 'dcvax_prostate'),
        ('tstat', 'lm_prostate'),
        ('tstat', 'dcvax_prostate_cancer_vaccine'),
        ('tstat', 'combination_therapy__prostate_cancer__molecular_express_inc'),
        ('tstat', 'prostate_cancer_vaccine'),
        ('tstat', 'prostatix'),
        ('lidex', 'leuprolide_acetate'),
        ('tolid', 'certolizumab'),
        ('tstat', 'apratastat'),
        ('tstat', 'cipemastat'),
        ('ofloxacin', 'moxifloxacin'),

        ('prednisone', 'fluprednisolone'),
        ('bitin', 'ruxolitinib'),
        ('calan', 'inhalant'),
        ('bitin', 'gefitinib'),
        ('platino', 'picoplatin'),
        ('rulid', 'nimesulide'),
        ('neostigmine_bromide', 'pyridostigmine_bromide'),
        ('vitamin_b3', '25_hydroxyvitamin_d3'),
        ('bitin', 'pacritinib'),
        ('ticlid', 'piclidenoson'),
        ('bacitin', 'tofacitinib'),
        ('isonex', 'prednisone'),
        ('artane', 'telmisartan'),
        ('ethymal', 'thymalfasin'),
        ('oxine', 'resiniferatoxin'),
        ('lomustine', 'andromustine'),
        ('calciferols', 'doxercalciferol'),
        ('lasix', 'spio_stasix_nanoparticles'),
        ('bitin', 'prohibitin_tp_01'),
        ('glucor', 'dicoppcopper_gluconate'),
        ('ercar', 'doxercalciferol'),
        ('isonex', 'hydrocortisone'),
        ('diclofenac', 'alclofenac'),
        ('clofen', 'alclofenac'),
        ('bitin', 'baricitinib'),
        ('bacitin', 'tofacitinib'),
        ('enoxin', 'tenoxicam'),
        ('rituximab', 'bavituximab'), 
        ('ercar', 'doxercalciferol'),
        ('diclofenac', 'alclofenac'),
        ('palin', 'vepalimomab'),
        ('pipram', 'setipiprant'),
        ('bleph', 'phenylephrine'),
        ('tamik', 'mequitamium'),
        ('trazon', 'tetrazolast'),
        ('ticar', 'fluticasone'),
        ('ebromin', 'theobromine'),
        ('coban', 'sulotroban'),
        ('ancef', 'cancer'),
        ('ornid', 'eflornithine'),
        ('rulid', 'nimesulide'),
        ('nilutamide', 'bicalutamide'),
        ('oxamic_acid', 'tranexamic_acid'),
        ('suprofen', 'ibuprofen'),
        ('fludrocortisone', 'hydrocortisone'),
        ('palin', 'metenkefalin'),
        ('tamik', '25_hydroxyvitamin_d3'),
        ('vitamin_h', '25_hydroxyvitamin_d3'),
        ('ticar', 'sodium_bicarbonate') ,
        ('ambril', 'ambrisentan'),
        ('vitamin_f', '25_hydroxyvitamin_d3'),
        ('ticlid', 'piclidenoson'),
        ('bacitin', 'tofacitinib'),
        ('lonol', 'spironolactone'),
        ('coban', 'argatroban'),

        ('bitin', 'sunitinib'),
        ('platino', 'oxaliplatin'),
        ('vitamin_b3', 'vitamin_c'),
        ('bitin', 'tofacitinib'),
        ('neostigmine', 'pyridostigmine_bromide'),
        ('prostigmine', 'pyridostigmine_bromide'),
        ('artane', 'losartan'),
        ('oxine', 'bromhexine'),
        ('bitin', 'roscovitine'),
        ('bitin', 'tofacitinib'),
        ('etofylline', 'doxofylline') ,
        ('palin', 'tepoxalin'),
        ('ancef', 'melcancervac'),
        ('tamik', 'bicalutamide'),
        ('tamik', 'ketamine'),
        ('tamik', 'vitamin_c'),
        ('tamik', 'vitamin_d'),
        ('tamik', 'acetaminophen'),
        ('tamik', 'oseltamivir') ,
        ('vitamin_h', 'vitamin_c'),
        ('vitamin_h', 'vitamin_d'),
        ('vitamin_f', 'vitamin_c'),
        ('vitamin_f', 'vitamin_d'),
        ('vitamin_b2', '25_hydroxyvitamin_d3'),
        ('tamik', 'hydroxyflutamide'),
        ('ancef', 'sirna_therapeutic__lauriad/tablet__prostate_cancer'),
        ('ticar', 'anticancer_therapeutic'),
        ('naganin', 'prostaganin'),
        ('mesalazine', 'sulfasalazine'),
        ('amatine', 'fostamatinib'),
        ('ancef', 'melcancervac'),

        ('vitamin_b3', 'vitamin_d'),
        ('vitamin_b2', 'vitamin_c'),
        ('vitamin_b2', 'vitamin_d'),
        ('vitamin_b3', 'vitamin_d'),
        ('artane', 'candesartan'),
        ('artane', 'valsartan'),
        ('oxine', 'bromhexine_hydrochloride'),
        ('etofylline', 'enprofylline'),
        ('palin', 'terbutaline'),
        ('tamik', 'nilutamide'),
        ('tamik', 'erleadaapalutamide'),
        ('tamik', 'enzalutamide'),
        ('tamik', 'bicalutamide'),
        ('tamik', 'darolutamide'),
        ('tamik', 'flutamide'),
        ('ancef', 'anticancer_therapeutic'),
        ('ancef', 'prostate_cancer_vaccine__fk_biotecnologia'),
        ('ancef', 'sirna_therapeutics__prostate_cancer'),
        ('ancef', 'onyvax_105_anti_idiotype_cancer_vaccine_105ad7'),
        ('ancef', 'dcvax_prostate_cancer_vaccine'),
        ('ancef', 'pro_antigen_cancer_vaccine'),
        ('ancef', 'combination_therapy__prostate_cancer__molecular_express_inc'),
        ('ancef', 'prostate_cancer_vaccine'),

        ('vitamin_e', 'vitamin_k1'),
        ('vitamin_e', 'vitamin_a_solubilized'),
        ('vitamin_e', 'vitamin_a'),
        ('vitamin_e', 'vitamin_d'),
        ('vitamin_e', 'vitamin_a_palmitate'),
        ('oxacillin', 'cloxacillin_sodium'),
        ('vitamin_d3', 'vitamin_k1'),

        ('choline_chloride', 'succinylcholine_chloride'),
        ('penciclovir', 'ganciclovir_sodium'),
        ('cholic_acid', 'mycophenolic_acid'),
        ('clofibric_acid', 'fenofibric_acid'),
        ('acetone', 'fluocinonide_acetonide'),
        ('mevastatin', 'fluvastatin_sodium'),
        ('etidronate', 'pamidronate_disodium'),
        ('oxiconazole', 'miconazole_7'),
        ('oxiconazole', 'miconazole_3'),
        ('oxiconazole', 'miconazole'),
        ('oxiconazole', 'miconazole_nitrate'),
        ('oxiconazole', 'miconazole_nitrate_combination_pack'),
        ('furan', 'furadantin'),
        ('venlafaxine', 'desvenlafaxine'),
        ('procaine', 'chloroprocaine_hydrochloride'),
        ('amprenavir', 'fosamprenavir_calcium'),
        ('dexchlorpheniramine', 'chlorpheniramine_polistirex'),
        ('oxyquinoline', 'indium_in_111_oxyquinoline'),
        ('econazole', 'miconazole_7'),
        ('emetine_hydrochloride', 'chloroprocaine_hydrochloride'),
        ('emetine_hydrochloride', 'mexiletine_hydrochloride'),
        ('vitamin_d3', 'vitamin_a_solubilized'),
        ('hemel', 'chemet'),
        ('hemel', 'feraheme'),
        ('tiapride_hydrochloride', 'amiloride_hydrochloride'),
        ('mianserin_hydrochloride', 'lorcaserin_hydrochloride'),
        ('cedur', 'edurant'),
        ('xilamide', 'sulfanilamide'),
        ('bitin', 'claritin_hives_relief_reditab'),
        ('restryl', 'delatestryl'),
        ('restryl', 'ora_testryl'),
        ('anesthesin', 'laryngotracheal_anesthesia_kit'),
        ('enoxin', 'benoxinate_hydrochloride'),
        ('rulid', 'trulicity'),
        ('prostigmine', 'neostigmine_methylsulfate'),
        ('betaserc', 'betaseron'),
        ('cinna', 'cinnasil'),
        ('flunarizine_hydrochloride', 'cetirizine_hydrochloride_hives'),

        ('meglumine', 'fosaprepitant_dimeglumine'),
        ('ornidazole', 'tinidazole'),
        ('biotin', 'neobiotic'),
        ('harmol', 'harmonyl'),
        ('todralazine', 'reserpine__hydralazine_hydrochloride'),
        ('hydrastine_hydrochloride', 'epinastine_hydrochloride'),
        ('oxamic_acid', 'mefenamic_acid'),
        ('gramine', 'pheniramine_maleate'),
        ('butoconazole', 'ketoconazole'),
        ('arcaine', 'sensorcaine'),
        ('arcaine', 'marcaine'),
        ('etofenamate', 'meclofenamate_sodium'),
        ('aciclovir', 'ganciclovir_sodium'),
        ('oxedrine', 'dexedrine') ,
        ('metacycline', 'bristacycline'),
        ('flufenamic_acid', 'mefenamic_acid'),
        ('meclocycline', 'demeclocycline_hydrochloride'),
        ('imipramine', 'trimipramine_maleate'),
        ('nomegestrol', 'megestrol_acetate'),
        ('norcyclobenzaprine', 'cyclobenzaprine_hydrochloride'),
        ('mometasone', 'alclometasone_dipropionate'),
        ('amylocaine', 'xylocaine_dental'),
        ('tropine', 'propine'),
        ('kinetin', 'tussionex_pennkinetic'),
        ('mephenytoin', 'phenytoin'),
        ('tolfenamic_acid', 'mefenamic_acid'),
        ('prostenon', 'epoprostenol_sodium'),
        ('ajmaline_hydrochloride', 'sertraline_hydrochloride'),

        ('aciclovir', 'famciclovir'),
        ('ronidazole', 'metronidazole'),
        ('cyclizine_hydrochloride', 'meclizine_hydrochloride'),
        ('arecholin', 'urecholine'),
        ('mecholine', 'urecholine'),
        ('adrenam', 'adrenaclick'),
        ('adrenam', 'adrenalin'),
        ('decholin', 'urecholine') ,
        ('synthrom', 'synthroid'),
        ('antazoline_hydrochloride', 'naphazoline_hydrochloride'),
        ('spectam', 'spectazole'),
        ('spectam', 'spectamine'),
        ('priscol', 'priscoline'),
        ('ronidazole', 'metronidazole_hydrochloride'),
        ('ronidazol', 'metronidazole'),
        ('ronidazol', 'metronidazole_hydrochloride'),
        ('8_oxyquinoline', 'indium_in_111_oxyquinoline'),
        ('bioquin', 'cardioquin'),
        ('todralazine_hydrochloride', 'reserpine__hydralazine_hydrochloride'),
        ('cirazoline_hydrochloride', 'naphazoline_hydrochloride'),
        ('metixene_hydrochloride', 'thiothixene_hydrochloride_intensol'),
        ('bambuterol_hydrochloride', 'levalbuterol_hydrochloride'),
        ('bambuterol_hydrochloride', 'levalbuterol_hydrochloride'),
        ('flucloxacillin_sodium', 'cloxacillin_sodium'),
        ('flucloxacillin_sodium', 'dicloxacillin_sodium'),
        ('pentazol', 'pentazocine_hydrochloride'),
        ('cetirizine_dihydrochloride', 'levocetirizine_dihydrochloride'),
        ('metixene_hydrochloride', 'thiothixene_hydrochloride'),
        ('ciglitazone', 'rosiglitazone_maleate'),
        ('puromycin_hydrochloride', 'vancomycin_hydrochloride'),
        ('amt_hydrochloride', 'cinacalcet_hydrochloride'),
        ('nisoxetine_hydrochloride', 'paroxetine_hydrochloride'),
        ('ciglitazone', 'rosiglitazone'),
        ('puromycin_hydrochloride', 'lincomycin_hydrochloride'),
        ('amt_hydrochloride', 'tagamet_hydrochloride'),
        ('nisoxetine_hydrochloride', 'duloxetine_hydrochloride'),
        ('nisoxetine_hydrochloride', 'fluoxetine_hydrochloride'),
        ('nisoxetine_hydrochloride', 'atomoxetine_hydrochloride'),
        ('mesna', 'ifosfamide/mesna_kit') ,
        ('ofloxacin', 'ciprofloxacin') ,
('omeprazole', 'esomeprazole_magnesium') ,
('triamcinolone_acetonide', 'nystatin_and_triamcinolone_acetonide') ,
('zidovudine', 'lamivudine/nevirapine/zidovudine_tablets') ,
('ifosfamide', 'ifosfamide/mesna_kit') ,
('nadolol', 'nadolol_and_bendroflumethiazide') ,
('theophylline', 'theophylline_sr') ,
('methyldopa', 'methyldopate_hcl') ,
('lamivudine', 'lamivudine/tenofovir_disoproxil_fumarate_fdc_tabs') ,
('6_mercaptopurine', 'mercaptopurine') ,
('scopolamine', 'methscopolamine_bromide') ,
('hydrochlorothiazide', 'captopril_and_hydrochlorothiazide') ,
('penicillin_g', 'penicillin_g_sodium') ,
('nitrofural', 'nitrofurazone') ,
('chloramphenicol', 'chloramphenicol_sodium_succinate') ,
('ofloxacin', 'ciprofloxacin_hydrochloride') ,
('angiotensin_ii', 'angiotensin_1_7'),
('retinol', 'isotretinoin'),
('benzyl', 'dibenzyline'),
('valerate', 'betamethasone_valerate'),
('benzyl', 'benzyl_benzoate'),
('valerate', 'estradiol_valerate'),
('valerate', 'hydrocortisone_valerate'),
  ]

# matches checked on interenet and found ok:

certifiedlist = [
    ('dipropionate', 'betamethasone_dipropionate'),
    ('erythro', 'erythrocin'),
    ('vitamin_d2', 'vitamin_d'),
    ('adriamycin', 'adriamycin_pfs'),
    ('cytarabine_', 'cytarabine'),
    ('calcitonin', 'calcitonin_salmon'),
    ('doxorubicin_', 'doxorubicin_hydrochloride'),
    ('5_fluorouracil', 'fluorouracil'),
    ('vitamin_d3', '25_hydroxyvitamin_d3'),
    ('conjugated_estrogens', 'synthetic_conjugated_estrogens_a'),
    ('sodum_phenylbutyrate', 'sodium_phenylbutyrate'),
    ('etacrynic_acid', 'ethacrynic_acid'),
    ('nitrofural', 'nitrofurantoin_macrocrystalline') ,
    ('penicillin_g', 'penicillin_g_potassium') ,
        ('heparin', 'unfractionated_heparin'),
        ('prednisolone', 'methylprednisolone'),
        ('progesterone', 'hydroxyprogesterone_caproate'),
        ('captopril', 'captopril_and_hydrochlorothiazide'),
        ('estradiol', 'depo_estradiol'),
        ('vitamin_a', 'vitamin_a_solubilized'),
        ('todralazine_hydrochloride', 'hydralazine_hydrochloride') ,
        ('penicillin_v', 'penicillin_v_potassium'),
        ('nomegestrol_acetate', 'megestrol_acetate'),
        ('idarubicin_hcl', 'idarubicin_hydrochloride_pfs'),
        ('norketamine_hydrochloride', 'ketamine_hydrochloride'),
        ('itavastatin_ca', 'pitavastatin_calcium'),
        ('ergonovine', 'methylergonovine_maleate'),
        ('penicillin_v', 'penicillin_vk'),
        ('tomoxetine_hydrochloride', 'atomoxetine_hydrochloride'),
        ('rosiglitazone_hydrochloride', 'pioglitazone_hydrochloride'),
        ('embelin', 'embeline'),
        ('mitoxantrone_10', 'mitoxantrone_hydrochloride'),
        ('ofloxacin', 'levofloxacin'),
        ('tretinoin', 'isotretinoin'),
        ('ciglitazone', 'pioglitazone'),
        ('olaparib', 'lynparzaolaparib'),
        ('alprox', 'alprostadil'),
        ('oestradiol', 'polyestradiol_phosphate'),
        ('actinomycin_D', 'dactinomycin'),
        ('cocaine', 'xylocaine'),
        ('mevastatin', 'simvastatin'),
        ('corticosterone', 'corticosteroid'),
        ('retinoic_acid', '13_cis_retinoic_acid'),
        ('imatinib_10', 'imatinib_mesylate'),
        ('acetylcysteine', 'n_acetylcysteine'),
        ('cortisone', 'hydrocortisone'),
        ('lovastatin', 'atorvastatin'),
        ('prednisolone', 'methylprednisolone_sodium_succinate'),
        ('prednisolone', 'methylprednisolone_acetate'),
        ('methotrexate', 'methotrexate_subcutaneous_auto_injection'),
        ('estradiol', 'estradiol_patch'),
        ('oestradiol', 'estradiol_patch'),
        ('acyclovir', 'ad_oc_hsvtk/valacyclovir'),
        ('rucaparib', 'rubraca_rucaparib'),
        ('cortisone', 'hydrocortisone'),
        ('mitoxantrone_10', 'mitoxantrone'),
        ('estradiol', 'polyestradiol_phosphate'),
        ('androgel', 'androgen'),
        ('omeprazole', 'esomeprazole'),
        ('fostamatinib_10', 'fostamatinib'),
        ('prednisolone_acetate', 'methylprednisolone_acetate'),
        ('lovastatin', 'simvastatin'),
        ('cyclosporin_a', 'cyclosporine'),
        ('troglitazone', 'pioglitazone'),
        ('methylprednisolone', 'methylprednisolone_acetate'),
        ('l_phenylephrine', 'phenylephrine'),
        ('tnf_alpha', 'l19_tnf_alpha'),
        ('insulin', 'insulin_regimen'),
        ('salicylic_acid', 'acetylsalicylic_acid'),
        ('vitamin_d2', '25_hydroxyvitamin_d3'),
        ('valacyclovir', 'ad_oc_hsvtk/valacyclovir'),
        ('chloroquine', 'hydroxychloroquine'),
        ('retinol', '13_cis_retinoic_acid'),
        ('s_propranolol', 'propranolol'),
        ('colecalciferol', 'cholecalciferol'),
        ('ciclosporin', 'cyclosporine'),
        ('calciferols', 'cholecalciferol'),
        ('prednisone', 'prednisolone'),
        ('interleukin_6', 'interleukin_7'),
        ('sunitinib', 'sunitinib_malate'),
        ('vincristine', 'vincristine_sulfate'),
        ('vincristine', 'vincristine_sulfate_pfs'),
        ('imatinib', 'imatinib_mesylate'),
        ('deferoxamine', 'deferoxamine_mesylate'),
        ('candesartan', 'candesartan_cilexetil'),
        ('thiamine', 'thiamine_hydrochloride'),
        ('propranolol', 'propranolol_hydrochloride'),
        ('propranolol', 'propranolol_hydrochloride_intensol'),
        ('doxorubicin', 'doxorubicin_hydrochloride'),
        ('irinotecan', 'irinotecan_hydrochloride'),
        ('quetiapine', 'quetiapine_fumarate'),
        ('vitamin_d3', 'vitamin_d'),
        ('oxacillin', 'oxacillin_sodium'),
        ('terazosin', 'terazosin_hydrochloride'),
        ('pantoprazole', 'pantoprazole_sodium'),
        ('cortisone', 'cortisone_acetate'),
        ('cortisone', 'hydrocortisone_sodium_succinate'),
        ('quinapril', 'quinapril_hydrochloride'),
        ('betamethasone', 'betamethasone_sodium_phosphate'),
        ('idarubicin', 'idarubicin_hydrochloride_pfs'),
        ('idarubicin', 'idarubicin_hydrochloride'),
        ('chloroquine', 'chloroquine_phosphate'),
        ('chlorpromazine', 'chlorpromazine_hydrochloride'),
        ('ampiroxicam', 'piroxicam'),
        ('atorvastatin', 'atorvastatin_calcium'),
        ('warfarin', 'warfarin_sodium'),
        ('fluvastatin', 'fluvastatin_sodium'),
        ('ethylene_glycol', 'polyethylene_glycol'),
        ('galantamine', 'galantamine_hydrobromide'),
        ('esmolol', 'esmolol_hydrochloride'),
        ('terbinafine', 'terbinafine_hydrochloride'),
        ('ketorolac', 'ketorolac_tromethamine'),
        ('pyridine', 'phenazopyridine_hydrochloride'),
        ('rabeprazole', 'rabeprazole_sodium'),
        ('vinorelbine', 'vinorelbine_tartrate'),
        ('colistin', 'colistimethate_sodium'),
        ('bromfenac', 'bromfenac_sodium'),
        ('etidronate', 'etidronate_disodium'),
        ('oxiconazole', 'oxiconazole_nitrate'),
        ('furan', 'nitrofurantoin'),
        ('daunorubicin', 'daunorubicin_hydrochloride'),
        ('clopidogrel', 'clopidogrel_bisulfate'),
        ('benazepril', 'benazepril_hydrochloride'),
        ('d_tubocurarine_chloride', 'tubocurarine_chloride'),
        ('17_methyltestosterone', 'methyltestosterone'),
        ('balsalazide', 'balsalazide_disodium'),
        ('guanethidine', 'guanethidine_monosulfate'),
        ('tetracaine', 'tetracaine_hydrochloride'),
        ('valacyclovir', 'valacyclovir_hydrochloride'),
        ('sildenafil', 'sildenafil_citrate'),
        ('dexchlorpheniramine', 'dexchlorpheniramine_maleate'),
        ('l_phenylephrine', 'phenylephrine_hydrochloride'),
        ('butenafine', 'butenafine_hydrochloride'),
        ('enrofloxacin', 'ciprofloxacin'),
        ('streptomycin', 'streptomycin_sulfate'),
        ('zopiclone', 'eszopiclone'),
        ('pramoxine', 'pramoxine_hydrochloride'),
        ('econazole', 'econazole_nitrate'),
        ('natulan', 'matulane'),
        ('ridauran', 'ridaura'),
        ('neostigmine', 'neostigmine_methylsulfate'),
        ('anadrol', 'anadrol_50'),
        ('iobenguane', 'iobenguane_sulfate_i'),
        ('s_propranolol', 'propranolol_hydrochloride'),
        ('tioguanine', 'thioguanine'),
        ('tropine', 'atropine'),
        ('dipivefrine', 'dipivefrin_hydrochloride'),
        ('hedspa', 'cintichem_technetium_99m_hedspa'),
        ('rolitetracycline_hydrochloride', 'tetracycline_hydrochloride'),
        ('metformin', 'repaglinide_and_metformin_hydrochloride'),
        ('cetirizine', 'cetirizine_hydrochloride_hives'),
        ('aciclovir', 'valganciclovir_hydrochloride'),
        ('p_aminohippurate', 'aminohippurate_sodium'),
        ('furazol', 'nitrofurazone'),
        ('deoxyglucose', 'fludeoxyglucose_f18'),
        ('camoquine', 'camoquin_hydrochloride'),
        ('imipenem', 'imipenem_and_cilastatin'),
        ('2_deoxyglucose', 'fludeoxyglucose_f18'),



        
    ]

# import code for data fumping on file

from codefordumping import putdatatodump, getdatafromdump

# import file handling utils

from file_handling_util import testexistencedirectory, testexistencefile
 
from generic_util import printmap, printlist

from file_parsing import stringnormalize, stringnormalize2

################################################################

def read_file(file_name):
    res = list()
    r = open(file_name)
    for line in r:
            line = line.split('\n')
            res.append(line[0])
    r.close()
    return(res)

def lcs(S,T):
    m = len(S)
    n = len(T)
    counter = [[0]*(n+1) for x in range(m+1)]
    longest = 0
    lcs_set = set()
    for i in range(m):
        for j in range(n):
            if S[i] == T[j]:
                c = counter[i][j] + 1
                counter[i+1][j+1] = c
                if c > longest:
                    lcs_set = set()
                    longest = c
                    lcs_set.add(S[i-c+1:i+1])
                elif c == longest:
                    lcs_set.add(S[i-c+1:i+1])

    return lcs_set


#################################################################
# init from files the mapping

def init_findmatchingsecondlist(dumpdirectory, dumpfile):
    
    if testexistencedirectory(dumpdirectory) == False :
        print "Wrong directory", dumpdirectory
        assert False
    else :
        if testexistencefile(dumpdirectory, dumpfile) == False :
            drugdumps = {}
        else :
            drugdumps = getdatafromdump(dumpdirectory, dumpfile)

    return drugdumps

##################################################
# dump map to files:

def dump_findmatchingsecondlist(dumpdirectory, dumpfile, mapping):
    
    putdatatodump(dumpdirectory, dumpfile, mapping)

    

##############################################

# given two lsits reports closest match in the second list for all items in the first list

#def findmatchingsecondlist(firstlist , secondlist, dumpdirectory, dumpfile):
def findmatchingsecondlist(firstlist , secondlist, drugdumps):
    
    print "Size first list : " , len(firstlist)
    print "Size second list : " , len(secondlist)

# file upload moved out of this call 
##    if testexistencedirectory(dumpdirectory) == False :
##        print "Wrong directory", dumpdirectory
##        assert False
##    else :
##        if testexistencefile(dumpdirectory, dumpfile) == False :
##            drugdumps = {}
##        else :
##            drugdumps = getdatafromdump(dumpdirectory, dumpfile)
        
    updatedumpfile = False       
        

    #my code
    drug_ct = dict()
    for key in firstlist:
        if key != None :
            keynorm = stringnormalize2(key.lower()) # switched to stringnormalization 2
            if keynorm in forbiddenkeylist :
                continue
            if keynorm in drugdumps.keys() :
                res = drugdumps[keynorm]
#                print 'res', res
                if res == None :
                    continue
                elif (keynorm, res[0][1]) not in exceptionslist :
                    drug_ct[keynorm] = res[0]
                    print res[1]
                    if (keynorm, res[0][1]) in certifiedlist  or suffixsplit(keynorm, res[0][1]) or  keynorm == res[0][1] :
                        print "Certified pair ", (keynorm, res[0][1])
                    else :
                        print "@@@ Drug Lacking certigication or exception", (keynorm, res[0][1])

                    continue
                else :
                    del drugdumps[keynorm]
            else :
                pass
        else :
            continue
        
        
##                else :
##                    drug_ct[keynorm] = res[0]
##                    print res[1]
##                    continue
##            else : 
        updated = False                                     
        for drug in secondlist:
#                    keynorm = stringnormalize(key.lower())
            drugnorm = stringnormalize2(drug.lower()) # switched to stringnormalization 2

            if suffixsplit(keynorm, drugnorm):
                drug_ct[keynorm] = (1.0, drugnorm)
                printstr = "Suffix-based-exact-matching" +  ' '+ str((key,drug))+ ' ' + str((keynorm, drugnorm))
                print printstr
                drugdumps[keynorm] = ((1.0, drugnorm), printstr )
                updated = True
                break
                
            
            long_str = lcs(keynorm,drugnorm)
            for s in long_str:
                ratio = float(len(s))/float(len(keynorm))
                if ratio >= 0.85 :  # used to be 0.8 
                    printstr =  "(st) matching: ratio , lcs, (key,drug) (keynorm,drugnorm " + str(ratio) + ' '  + s  + ' '+ str((key,drug))+ ' ' + str((keynorm, drugnorm))
                    print "matching: ratio , lcs, (key,drug) (keynorm,drugnorm ", ratio, s, (key,drug) , (keynorm, drugnorm)
                    #drug_ct.add(key)
                    if (keynorm, drugnorm) not in exceptionslist :                        
                        if keynorm not in drug_ct.keys() :
                            drug_ct[keynorm] = (ratio, drugnorm)
                            drugdumps[keynorm] = ((ratio, drugnorm), printstr)
                            updated = True
                            if (keynorm, drugnorm) in certifiedlist  or suffixsplit(keynorm, drugnorm) or  keynorm == drugnorm :
                                print "Certified pair ", (keynorm, drugnorm)
                            else :
                                print "@@@ Drug Lacking certigication or exception", (keynorm, drugnorm)
                        else :
                            if drug_ct[keynorm][0] < ratio :
                                drug_ct[keynorm] = (ratio, drugnorm)
                                drugdumps[keynorm] = ((ratio, drugnorm), printstr)
                                updated = True
                                if (keynorm, drugnorm) in certifiedlist  or suffixsplit(keynorm, drugnorm) or  keynorm == drugnorm:
                                    print "Certified pair ", (keynorm, drugnorm)
                                else :
                                    print "@@@ Drug Lacking certigication or exception", (keynorm, drugnorm)
                            else :
                                print "keep the better match (drug, key, record)", drugnorm, keynorm, drug_ct[keynorm] 
                    else :
                        print "Exception list rised ", (keynorm, drugnorm)

        if not updated :
            drugdumps[keynorm] = None
        if updated :
            updatedumpfile = True
            
# file updates moved out of this call                         
##    if updatedumpfile :
##        putdatatodump(dumpdirectory, dumpfile, drugdumps)
    return drug_ct


##################################################################################################################
# 

fda1 = read_file('../FDA_approved_drugs_filtered_unique.txt')
fda2 = [stringnormalize2(s.lower()) for s in fda1]

covid19ct1 = read_file('../ClinicalTrials_drugs_new_myFiltering_unique.txt')
covid19ct2 = [stringnormalize2(s.lower()) for s in covid19ct1]

prostcan1 = read_file('../evaluation_data/TTD_drug_prostate_cancer_filtered_unique.txt')
prostcan2 = [stringnormalize2(s.lower()) for s in prostcan1]

colorectcan1 = read_file('../evaluation_data/TTD_drug_colorectal_cancer_filtered_unique.txt')
colorectcan2 = [stringnormalize2(s.lower()) for s in colorectcan1]

asthma1 = read_file('../evaluation_data/TTD_drug_asthma_filtered_unique.txt')
asthma2 = [stringnormalize2(s.lower()) for s in asthma1]

arthritis1 = read_file('../evaluation_data/TTD_drug_rheumatoid_arthritis_filtered_unique.txt')
arthritis2 = [stringnormalize2(s.lower()) for s in arthritis1]


##
##def filterbyarthritisdata(inlist, conf):
##
##    out = findmatchingsecondlist(inlist , arthritis2, './running-dumps', 'arthritis_filter_dump.txt')
##    printmap( out, "Drug filtered by including only  drugs in rheumatoid arthritis practice")
##    return out
##
##
##
##def filterbyasthmadata(inlist, conf):
##
##    out = findmatchingsecondlist(inlist , asthma2, './running-dumps', 'asthma_filter_dump.txt')
##    printmap( out, "Drug filtered by including only  drugs in asthma practice")
##    return out
##
##
##
##def filterbycolorectcandata(inlist, conf):
##
##    out = findmatchingsecondlist(inlist , colorectcan2, './running-dumps', 'colorectal_cancer_filter_dump.txt')
##    printmap( out, "Drug filtered by including only  drugs in colorectal cancer  practice")
##    return out
##
##
##def filterbyprostcandata(inlist, conf):
##
##    out = findmatchingsecondlist(inlist , prostcan2, './running-dumps', 'prostate_cancer_filter_dump.txt')
##    printmap( out, "Drug filtered by including only  drugs in prostate cancer practice")
##    return out
##
##
##
##def filterbycovid19clinicaltrial(inlist, conf):
##
##    out = findmatchingsecondlist(inlist , covid19ct2, './running-dumps', 'trial_filter_dump.txt')
##    printmap( out, "Drug filtered by includign ony  drugs in covid19 clinical trials")
##    return out
##
## 
##
##def filterbyfdaapproveddrugs(inlist, conf2):  # confiuration of the type (algindex, gedatastring, drugstring) for command_1
##
##    out = findmatchingsecondlist(inlist , fda2, './running-dumps', 'fda_filter_dump.txt')
##    printmap( out, "Drug filtered by includign ony fda approved drugs")
##    return out
##


    
