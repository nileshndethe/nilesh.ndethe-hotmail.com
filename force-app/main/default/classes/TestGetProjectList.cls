@IsTest
public class TestGetProjectList{
	
	public static GetProjectList parse(String json) {
		return (GetProjectList) System.JSON.deserialize(json, GetProjectList.class);
	}
	
	 static testMethod void testParse() {
		System.debug('json is empty ');
         String json = '{'+
		'    \"data\": {'+
		'        \"totalProjectCount\": 11,'+
		'        \"filterInd\": null,'+
		'        \"projectList\": ['+
		'            {'+
		'                \"lockedBy\": null,'+
		'                \"projectAssumptions\": null,'+
		'                \"organizationProjects\": null,'+
		'                \"organization\": null,'+
		'                \"portfolio\": false,'+
		'                \"changesPending\": false,'+
		'                \"solicitedOrgId\": null,'+
		'                \"notes\": null,'+
		'                \"parentId\": null,'+
		'                \"portfolioProjectList\": null,'+
	
		'                \"solicitedProjectId\": null,'+
		'                \"percentCompletion\": 71.14,'+
		'                \"projectDetailLogs\": null,'+
		'                \"isLocked\": null,'+
		'                \"solicitedUsers\": null,'+
		'                \"portfolioProjectId\": null,'+
		'                \"partialSolicitationInd\": null,'+
		'                \"consolidateInd\": null,'+
		'                \"projectDescription\": \"3712\",'+
		'                \"shortName\": \"NDTest1\",'+
		'                \"cs\": null,'+
		'                \"financeRmId\": null,'+
		'                \"goal\": null,'+
		'                \"listedAt\": null,'+
		'                \"published\": 0,'+
		'                \"numberRejections\": null,'+
		'                \"primaryUser\": null,'+
		'                \"review\": 0,'+
		'                \"salesRmId\": null,'+
		'                \"scsEvaluation\": null,'+
		'                \"scsScore\": null,'+
		'                \"projectUsers\": null,'+
		'                \"parentInd\": false,'+
		'                \"coBrandInd\": false,'+
		'                \"orgIdList\": null,'+
		'                \"createdAt\": 1400589246000,'+
		'                \"createdBy\": \"rparker@minvestments.com\",'+
		'                \"updatedAt\": 1400663769000,'+
		'                \"updatedBy\": \"rparker@minvestments.com\",'+
		'                \"orgId\": 82,'+
		'                \"projectId\": 3712,'+
		'                \"isActive\": true,'+
		'                \"value\": null,'+
		'                \"status\": \"Active\",'+
		'                \"stage\": null'+
		'            },'+
		'            {'+
		'                \"lockedBy\": null,'+
		'                \"projectAssumptions\": null,'+
		'                \"organizationProjects\": null,'+
		'                \"organization\": null,'+
		'                \"portfolio\": false,'+
		'                \"changesPending\": false,'+
		'                \"solicitedOrgId\": null,'+
		'                \"notes\": null,'+
		'                \"parentId\": null,'+
		'                \"portfolioProjectList\": null,'+
	
		'                \"solicitedProjectId\": null,'+
		'                \"percentCompletion\": 71.14,'+
		'                \"projectDetailLogs\": null,'+
		'                \"isLocked\": null,'+
		'                \"solicitedUsers\": null,'+
		'                \"portfolioProjectId\": null,'+
		'                \"partialSolicitationInd\": null,'+
		'                \"consolidateInd\": null,'+
		'                \"projectDescription\": \"3711\",'+
		'                \"shortName\": \"Test1\",'+
		'                \"cs\": null,'+
		'                \"financeRmId\": null,'+
		'                \"goal\": null,'+
		'                \"listedAt\": null,'+
		'                \"published\": 0,'+
		'                \"numberRejections\": null,'+
		'                \"primaryUser\": null,'+
		'                \"review\": 0,'+
		'                \"salesRmId\": null,'+
		'                \"scsEvaluation\": null,'+
		'                \"scsScore\": null,'+
		'                \"projectUsers\": null,'+
		'                \"parentInd\": false,'+
		'                \"coBrandInd\": false,'+
		'                \"orgIdList\": null,'+
		'                \"createdAt\": 1400503378000,'+
		'                \"createdBy\": \"rparker@minvestments.com\",'+
		'                \"updatedAt\": 1400589944000,'+
		'                \"updatedBy\": \"rparker@minvestments.com\",'+
		'                \"orgId\": 82,'+
		'                \"projectId\": 3711,'+
		'                \"isActive\": true,'+
		'                \"value\": null,'+
		'                \"status\": \"Active\",'+
		'                \"stage\": null'+
		'            },'+
		'            {'+
		'                \"lockedBy\": null,'+
		'                \"projectAssumptions\": null,'+
		'                \"organizationProjects\": null,'+
		'                \"organization\": null,'+
		'                \"portfolio\": false,'+
		'                \"changesPending\": false,'+
		'                \"solicitedOrgId\": null,'+
		'                \"notes\": null,'+
		'                \"parentId\": null,'+
		'                \"portfolioProjectList\": null,'+
	
		'                \"solicitedProjectId\": null,'+
		'                \"percentCompletion\": 71.14,'+
		'                \"projectDetailLogs\": null,'+
		'                \"isLocked\": null,'+
		'                \"solicitedUsers\": null,'+
		'                \"portfolioProjectId\": null,'+
		'                \"partialSolicitationInd\": null,'+
		'                \"consolidateInd\": null,'+
		'                \"projectDescription\": \"3709\",'+
		'                \"shortName\": \"Test\",'+
		'                \"cs\": null,'+
		'                \"financeRmId\": null,'+
		'                \"goal\": null,'+
		'                \"listedAt\": null,'+
		'                \"published\": 0,'+
		'                \"numberRejections\": null,'+
		'                \"primaryUser\": null,'+
		'                \"review\": 0,'+
		'                \"salesRmId\": null,'+
		'                \"scsEvaluation\": null,'+
		'                \"scsScore\": null,'+
		'                \"projectUsers\": null,'+
		'                \"parentInd\": false,'+
		'                \"coBrandInd\": false,'+
		'                \"orgIdList\": null,'+
		'                \"createdAt\": 1400481393000,'+
		'                \"createdBy\": \"rparker@minvestments.com\",'+
		'                \"updatedAt\": 1400481448000,'+
		'                \"updatedBy\": \"rparker@minvestments.com\",'+
		'                \"orgId\": 82,'+
		'                \"projectId\": 3709,'+
		'                \"isActive\": true,'+
		'                \"value\": null,'+
		'                \"status\": \"Active\",'+
		'                \"stage\": null'+
		'            },'+
		'            {'+
		'                \"lockedBy\": null,'+
		'                \"projectAssumptions\": null,'+
		'                \"organizationProjects\": null,'+
		'                \"organization\": null,'+
		'                \"portfolio\": true,'+
		'                \"changesPending\": false,'+
		'                \"solicitedOrgId\": null,'+
		'                \"notes\": null,'+
		'                \"parentId\": null,'+
		'                \"portfolioProjectList\": ['+
		'                    {'+
		'                        \"lockedBy\": null,'+
		'                        \"projectAssumptions\": null,'+
		'                        \"organizationProjects\": null,'+
		'                        \"organization\": null,'+
		'                        \"portfolio\": false,'+
		'                        \"changesPending\": false,'+
		'                        \"solicitedOrgId\": 78,'+
		'                        \"notes\": \"Finalize pricing assumptions\",'+
		'                        \"parentId\": 2640,'+
		'                        \"portfolioProjectList\": null,'+
	
		'                        \"solicitedProjectId\": null,'+
		'                        \"percentCompletion\": 98.73,'+
		'                        \"projectDetailLogs\": null,'+
		'                        \"isLocked\": null,'+
		'                        \"solicitedUsers\": null,'+
		'                        \"portfolioProjectId\": null,'+
		'                        \"partialSolicitationInd\": null,'+
		'                        \"consolidateInd\": null,'+
		'                        \"projectDescription\": \"Raiders  - 1.9 MW DC - NJ  - 733\",'+
		'                        \"shortName\": \"North Carolina Avenue\",'+
		'                        \"cs\": null,'+
		'                        \"financeRmId\": null,'+
		'                        \"goal\": null,'+
		'                        \"listedAt\": null,'+
		'                        \"published\": 0,'+
		'                        \"numberRejections\": null,'+
		'                        \"primaryUser\": null,'+
		'                        \"review\": 0,'+
		'                        \"salesRmId\": null,'+
		'                        \"scsEvaluation\": \"-Project is being viewed as the aggregate of 4 projects. Land costs hinder project economics; however, if more projects can be added that don\'t have land expenses, the sunk land costs can be spread over more projects and lessen the burden.\\n- Site lease or land purchase agreement not available. If provided it will significantly improve SCScore. \\n- PPA extensions have opt out clause; thus only 15 year PPA was considered for economic analysis. If wording of PPA can be changed such that extensions are guaranteed, then 20-25 year PPA can be modeled and economics will improve.\\n- Need break-out of basis vs. non-basis eligible costs\\n- Developer fee + development costs together create above market development fee and hurt economics\\n- Site improvement costs hurt economics. Need to understand what these costs are for.\\n- O&M costs provided were significantly above market. For purposes of analysis used SCS defaults. Need to clarify.\\n-Need to discuss SREC assumptions\\n- Yield estimate is higher than default average. Need to clarify.\",'+
		'                        \"scsScore\": null,'+
		'                        \"projectUsers\": null,'+
		'                        \"parentInd\": false,'+
		'                        \"coBrandInd\": false,'+
		'                        \"orgIdList\": null,'+
		'                        \"createdAt\": 1382975646000,'+
		'                        \"createdBy\": \"motif@gomercatus.com\",'+
		'                        \"updatedAt\": 1400045436000,'+
		'                        \"updatedBy\": \"rparker@minvestments.com\",'+
		'                        \"orgId\": 82,'+
		'                        \"projectId\": 733,'+
		'                        \"isActive\": true,'+
		'                        \"value\": null,'+
		'                        \"status\": \"Active\",'+
		'                        \"stage\": null'+
		'                    },'+
		'                    {'+
		'                        \"lockedBy\": null,'+
		'                        \"projectAssumptions\": null,'+
		'                        \"organizationProjects\": null,'+
		'                        \"organization\": null,'+
		'                        \"portfolio\": false,'+
		'                        \"changesPending\": false,'+
		'                        \"solicitedOrgId\": 71,'+
		'                        \"notes\": \"Schedule internal conference call to finalize PSA\",'+
		'                        \"parentId\": 2640,'+
		'                        \"portfolioProjectList\": null,'+
	
		'                        \"solicitedProjectId\": null,'+
		'                        \"percentCompletion\": 98.73,'+
		'                        \"projectDetailLogs\": null,'+
		'                        \"isLocked\": null,'+
		'                        \"solicitedUsers\": null,'+
		'                        \"portfolioProjectId\": null,'+
		'                        \"partialSolicitationInd\": null,'+
		'                        \"consolidateInd\": null,'+
		'                        \"projectDescription\": \"49ers  - 5.75 MW DC - MA  - 735\",'+
		'                        \"shortName\": \"Pennsylvania Railroad\",'+
		'                        \"cs\": null,'+
		'                        \"financeRmId\": null,'+
		'                        \"goal\": null,'+
		'                        \"listedAt\": null,'+
		'                        \"published\": 0,'+
		'                        \"numberRejections\": null,'+
		'                        \"primaryUser\": null,'+
		'                        \"review\": 0,'+
		'                        \"salesRmId\": null,'+
		'                        \"scsEvaluation\": \"- Interconnection Agreement executed with $196k upgrade costs listed;  $109k of this has been paid\\n- Developer lists site as fully permitted but not yet under construction\\n- NMC agreement status unclear (provided on Adams\' project but lists this location as included in the proposal);  Terms of $0.08 / kWh with 2% escalator assumed by 49ers, but summary lists $0.11 as the effective rate.\\n- No system yield provided other than loose estimate in PPA of output for a 3 MW system (not consistent with updated system size);  Need to verify as this amount seems high relative to the other nearby projects\\n- No system or remaining Development costs estimated;  Mercatus used Default values as a baseline.\\n- No SREC documentation or estimates provided;  Mercatus used Default values as a baseline.\\n- No information or financials provided to assess off-taker creditworthiness\\n- Land for project under purchase contract;  Lease typically preferred\\n- No opex estimates provided;  Mercatus used Default values as a baseline.  This includes property taxes.\",'+
		'                        \"scsScore\": null,'+
		'                        \"projectUsers\": null,'+
		'                        \"parentInd\": false,'+
		'                        \"coBrandInd\": false,'+
		'                        \"orgIdList\": null,'+
		'                        \"createdAt\": 1382977403000,'+
		'                        \"createdBy\": \"motif@gomercatus.com\",'+
		'                        \"updatedAt\": 1400232637000,'+
		'                        \"updatedBy\": \"rparker@minvestments.com\",'+
		'                        \"orgId\": 82,'+
		'                        \"projectId\": 735,'+
		'                        \"isActive\": true,'+
		'                        \"value\": null,'+
		'                        \"status\": \"Active\",'+
		'                        \"stage\": null'+
		'                    }'+
		'                ],'+
	
		'                \"solicitedProjectId\": null,'+
		'                \"percentCompletion\": 99.19,'+
		'                \"projectDetailLogs\": null,'+
		'                \"isLocked\": null,'+
		'                \"solicitedUsers\": null,'+
		'                \"portfolioProjectId\": null,'+
		'                \"partialSolicitationInd\": null,'+
		'                \"consolidateInd\": null,'+
		'                \"projectDescription\": \"n/a  - 7.65 MW DC - NJ  - 2640\",'+
		'                \"shortName\": \"Test Portfolio 3\",'+
		'                \"cs\": null,'+
		'                \"financeRmId\": null,'+
		'                \"goal\": null,'+
		'                \"listedAt\": null,'+
		'                \"published\": 0,'+
		'                \"numberRejections\": null,'+
		'                \"primaryUser\": null,'+
		'                \"review\": 0,'+
		'                \"salesRmId\": null,'+
		'                \"scsEvaluation\": null,'+
		'                \"scsScore\": null,'+
		'                \"projectUsers\": null,'+
		'                \"parentInd\": false,'+
		'                \"coBrandInd\": false,'+
		'                \"orgIdList\": null,'+
		'                \"createdAt\": 1390494972000,'+
		'                \"createdBy\": \"Monopoly@example.com\",'+
		'                \"updatedAt\": 1400652034000,'+
		'                \"updatedBy\": \"rparker@minvestments.com\",'+
		'                \"orgId\": 82,'+
		'                \"projectId\": 2640,'+
		'                \"isActive\": true,'+
		'                \"value\": null,'+
		'                \"status\": \"Active\",'+
		'                \"stage\": null'+
		'            },'+
		'            {'+
		'                \"lockedBy\": null,'+
		'                \"projectAssumptions\": null,'+
		'                \"organizationProjects\": null,'+
		'                \"organization\": null,'+
		'                \"portfolio\": true,'+
		'                \"changesPending\": false,'+
		'                \"solicitedOrgId\": null,'+
		'                \"notes\": null,'+
		'                \"parentId\": null,'+
		'                \"portfolioProjectList\": ['+
		'                    {'+
		'                        \"lockedBy\": null,'+
		'                        \"projectAssumptions\": null,'+
		'                        \"organizationProjects\": null,'+
		'                        \"organization\": null,'+
		'                        \"portfolio\": false,'+
		'                        \"changesPending\": false,'+
		'                        \"solicitedOrgId\": 77,'+
		'                        \"notes\": \"Inactive - lost to competitor\",'+
		'                        \"parentId\": 2483,'+
		'                        \"portfolioProjectList\": null,'+
	
		'                        \"solicitedProjectId\": null,'+
		'                        \"percentCompletion\": 98.96,'+
		'                        \"projectDetailLogs\": null,'+
		'                        \"isLocked\": null,'+
		'                        \"solicitedUsers\": null,'+
		'                        \"portfolioProjectId\": null,'+
		'                        \"partialSolicitationInd\": null,'+
		'                        \"consolidateInd\": null,'+
		'                        \"projectDescription\": \"Giants  - 1 MW DC - GA  - 720\",'+
		'                        \"shortName\": \"Baltic Avenue\",'+
		'                        \"cs\": null,'+
		'                        \"financeRmId\": null,'+
		'                        \"goal\": null,'+
		'                        \"listedAt\": null,'+
		'                        \"published\": 0,'+
		'                        \"numberRejections\": null,'+
		'                        \"primaryUser\": null,'+
		'                        \"review\": 0,'+
		'                        \"salesRmId\": null,'+
		'                        \"scsEvaluation\": \"- Local Utility has proposed, a solar energy purchase program that encourages new opportunities for solar development in the state of GA.  Local Utility does not intend to build or own solar facilities as part of this program. Instead, it will act as a technology facilitator by allowing independent solar developers the opportunity to build the solar facilities with local utility agreeing to purchase the power generated from such facilities.\\n- Utility Scale Solar:\\n   - 120 MW (60MW in each of 2013 and 2014) from 1MW – 20MW per site\\n   - Competitive RFP process with PPA rates not exceeding $0.12/kWh\\n- Distribution Generation (Commercial Applications):\\n   - 90 MW (45MW in each of 2013 and 2014) will come from Small and Medium Scale Distributed Solar projects (1MW and under per site) with PPA rates fixed at $0.13/kWh (Small or Medium Scale) or at an escalating price schedule (Medium Scale only)\\n   - Small Scale Solar\\n   - 22MW (11MW in each of 2013 and 2014) up to and including 100kw per site\\n   - Medium Scale Solar\\n   - 68MW (34 MW in each of 2013 and 2014) from 100kW – 1MW per site\\n- Utility notified Giants 4/15/13 of its awarded projects (awarded on 8 separate 1MW sites);  Have 190 days to complete projects\\n- Participants retain all SRECs\\n- Project costs updated to reflect Financier views needed to target returns (Developer original purchase price of $2.30 total installed cost)\\n- Utility notified GPA 4/15/13 of its awarded projects;  Have 190 days to complete projects\\n- No PVSyst support provided with yield assumption;  Memo lists Atlanta as the point of reference, but this is not near any of the project sites\\n- PPA pricing option of $0.13 / kWh flat for 20 years or escalating structure starting at $0.0853 / kWh for 20 years with variable escalator (collateral security favoring GPC required if fixed structure chosen)\\n- No project documentation provided for review or verification (unclear status of some key milestones)\\n- No assumptions provided for monitoring, admin, etc.;  Mercatus assumed these were included in O&M fees\\n- Unclear if Developer is offering all 8 MW;  Only 1 MW cited in Memo\",'+
		'                        \"scsScore\": null,'+
		'                        \"projectUsers\": null,'+
		'                        \"parentInd\": false,'+
		'                        \"coBrandInd\": false,'+
		'                        \"orgIdList\": null,'+
		'                        \"createdAt\": 1382720988000,'+
		'                        \"createdBy\": \"motif@gomercatus.com\",'+
		'                        \"updatedAt\": 1389302526000,'+
		'                        \"updatedBy\": \"jadams@gomercatus.com\",'+
		'                        \"orgId\": 82,'+
		'                        \"projectId\": 720,'+
		'                        \"isActive\": true,'+
		'                        \"value\": null,'+
		'                        \"status\": \"Inactive\",'+
		'                        \"stage\": null'+
		'                    },'+
		'                    {'+
		'                        \"lockedBy\": null,'+
		'                        \"projectAssumptions\": null,'+
		'                        \"organizationProjects\": null,'+
		'                        \"organization\": null,'+
		'                        \"portfolio\": false,'+
		'                        \"changesPending\": false,'+
		'                        \"solicitedOrgId\": 75,'+
		'                        \"notes\": \"Confirm CUPs\",'+
		'                        \"parentId\": 2483,'+
		'                        \"portfolioProjectList\": null,'+
	
		'                        \"solicitedProjectId\": null,'+
		'                        \"percentCompletion\": 98.7,'+
		'                        \"projectDetailLogs\": null,'+
		'                        \"isLocked\": null,'+
		'                        \"solicitedUsers\": null,'+
		'                        \"portfolioProjectId\": null,'+
		'                        \"partialSolicitationInd\": null,'+
		'                        \"consolidateInd\": null,'+
		'                        \"projectDescription\": \"Cowboys  - 2.085 MW DC - CA  - 725\",'+
		'                        \"shortName\": \"Marvin Gardens\",'+
		'                        \"cs\": null,'+
		'                        \"financeRmId\": null,'+
		'                        \"goal\": null,'+
		'                        \"listedAt\": null,'+
		'                        \"published\": 0,'+
		'                        \"numberRejections\": null,'+
		'                        \"primaryUser\": null,'+
		'                        \"review\": 0,'+
		'                        \"salesRmId\": null,'+
		'                        \"scsEvaluation\": \"Challenges\\n- EPC cost and development cost is not provided\\n- Insurance costs appear to be above market. Please clarify.\\n- Purchase price has been redacted from purchase Victor Mesa Linda Llc option agreement.\\n- Lease rate listed in Mercatus, however, site control documents are for land purchase. Need to clarify.\\n- Unclear if Phase I Environmental study was completed. Please clarify.  \\n- Need clarification on PPA expiration date. Unclear if deadline is within expected COD timeline (see Section 2.9 of PPA doc).\",'+
		'                        \"scsScore\": null,'+
		'                        \"projectUsers\": null,'+
		'                        \"parentInd\": false,'+
		'                        \"coBrandInd\": false,'+
		'                        \"orgIdList\": null,'+
		'                        \"createdAt\": 1382957243000,'+
		'                        \"createdBy\": \"motif@gomercatus.com\",'+
		'                        \"updatedAt\": 1389302527000,'+
		'                        \"updatedBy\": \"jadams@gomercatus.com\",'+
		'                        \"orgId\": 82,'+
		'                        \"projectId\": 725,'+
		'                        \"isActive\": true,'+
		'                        \"value\": null,'+
		'                        \"status\": \"Active\",'+
		'                        \"stage\": null'+
		'                    },'+
		'                    {'+
		'                        \"lockedBy\": null,'+
		'                        \"projectAssumptions\": null,'+
		'                        \"organizationProjects\": null,'+
		'                        \"organization\": null,'+
		'                        \"portfolio\": false,'+
		'                        \"changesPending\": false,'+
		'                        \"solicitedOrgId\": 73,'+
		'                        \"notes\": \"Inactive - lost to competitor\",'+
		'                        \"parentId\": 2483,'+
		'                        \"portfolioProjectList\": null,'+
	
		'                        \"solicitedProjectId\": null,'+
		'                        \"percentCompletion\": 97.92,'+
		'                        \"projectDetailLogs\": null,'+
		'                        \"isLocked\": null,'+
		'                        \"solicitedUsers\": null,'+
		'                        \"portfolioProjectId\": null,'+
		'                        \"partialSolicitationInd\": null,'+
		'                        \"consolidateInd\": null,'+
		'                        \"projectDescription\": \"Bengals  - 1.8 MW DC - RI  - 726\",'+
		'                        \"shortName\": \"States Avenue\",'+
		'                        \"cs\": null,'+
		'                        \"financeRmId\": null,'+
		'                        \"goal\": null,'+
		'                        \"listedAt\": null,'+
		'                        \"published\": 0,'+
		'                        \"numberRejections\": null,'+
		'                        \"primaryUser\": null,'+
		'                        \"review\": 0,'+
		'                        \"salesRmId\": null,'+
		'                        \"scsEvaluation\": \"Opportunities\\n- Bankable system size with creditworthy offtaker\\n- Production-based Incentives available in region with standard contract\\n\\nChallenges\\n- Offtaker company name not provided, the name provided by the developer was \\\"\\\"\\\"\\\"Utility\\\"\\\"\\\"\\\"\\n- Host credit rating & off-taker credit rating is AAA. There is no supporting document, please provide the supporting documentation\\n- No developer fee was included by the developer\\n- No IC cost was included by the developer\\n- The first year site lease cost was entered as 10,0000. Please recheck if this was a typo\\n- No production or yield estimates provided to Mercatus, including supporting documentation;  Mercatus assumed baseline yield based on location and system orientation\\n- No offtake rate specified by Developer;  Mercatus utilized state incentives for project size from DSIRE database (http://www.dsireusa.org/incentives/incentive.cfm?Incentive_Code=RI33F&re=0&ee=0)\",'+
		'                        \"scsScore\": null,'+
		'                        \"projectUsers\": null,'+
		'                        \"parentInd\": false,'+
		'                        \"coBrandInd\": false,'+
		'                        \"orgIdList\": null,'+
		'                        \"createdAt\": 1382957833000,'+
		'                        \"createdBy\": \"motif@gomercatus.com\",'+
		'                        \"updatedAt\": 1389302527000,'+
		'                        \"updatedBy\": \"jadams@gomercatus.com\",'+
		'                        \"orgId\": 82,'+
		'                        \"projectId\": 726,'+
		'                        \"isActive\": true,'+
		'                        \"value\": null,'+
		'                        \"status\": \"Inactive\",'+
		'                        \"stage\": null'+
		'                    }'+
		'                ],'+
		
		'                \"solicitedProjectId\": null,'+
		'                \"percentCompletion\": 99.19,'+
		'                \"projectDetailLogs\": null,'+
		'                \"isLocked\": null,'+
		'                \"solicitedUsers\": null,'+
		'                \"portfolioProjectId\": null,'+
		'                \"partialSolicitationInd\": null,'+
		'                \"consolidateInd\": null,'+
		'                \"projectDescription\": \"n/a  - 4.885 MW DC - GA  - 2483\",'+
		'                \"shortName\": \"Monopoly Tranche B\",'+
		'                \"cs\": null,'+
		'                \"financeRmId\": null,'+
		'                \"goal\": null,'+
		'                \"listedAt\": null,'+
		'                \"published\": 0,'+
		'                \"numberRejections\": null,'+
		'                \"primaryUser\": null,'+
		'                \"review\": 0,'+
		'                \"salesRmId\": null,'+
		'                \"scsEvaluation\": null,'+
		'                \"scsScore\": null,'+
		'                \"projectUsers\": null,'+
		'                \"parentInd\": false,'+
		'                \"coBrandInd\": false,'+
		'                \"orgIdList\": null,'+
		'                \"createdAt\": 1389302526000,'+
		'                \"createdBy\": \"jadams@gomercatus.com\",'+
		'                \"updatedAt\": 1400573398000,'+
		'                \"updatedBy\": \"rparker@minvestments.com\",'+
		'                \"orgId\": 82,'+
		'                \"projectId\": 2483,'+
		'                \"isActive\": true,'+
		'                \"value\": null,'+
		'                \"status\": null,'+
		'                \"stage\": null'+
		'            },'+
		'            {'+
		'                \"lockedBy\": null,'+
		'                \"projectAssumptions\": null,'+
		'                \"organizationProjects\": null,'+
		'                \"organization\": null,'+
		'                \"portfolio\": true,'+
		'                \"changesPending\": false,'+
		'                \"solicitedOrgId\": null,'+
		'                \"notes\": null,'+
		'                \"parentId\": null,'+
		'                \"portfolioProjectList\": ['+
		'                    {'+
		'                        \"lockedBy\": null,'+
		'                        \"projectAssumptions\": null,'+
		'                        \"organizationProjects\": null,'+
		'                        \"organization\": null,'+
		'                        \"portfolio\": false,'+
		'                        \"changesPending\": false,'+
		'                        \"solicitedOrgId\": 71,'+
		'                        \"notes\": \"Finalize site visit with Developer Wednesday morning.\",'+
		'                        \"parentId\": 1830,'+
		'                        \"portfolioProjectList\": null,'+
		
		'                        \"solicitedProjectId\": null,'+
		'                        \"percentCompletion\": 98.99,'+
		'                        \"projectDetailLogs\": null,'+
		'                        \"isLocked\": false,'+
		'                        \"solicitedUsers\": null,'+
		'                        \"portfolioProjectId\": null,'+
		'                        \"partialSolicitationInd\": null,'+
		'                        \"consolidateInd\": null,'+
		'                        \"projectDescription\": \"49ers  - 31 MW DC - CA  - 710\",'+
		'                        \"shortName\": \"Oriental Avenue\",'+
		'                        \"cs\": null,'+
		'                        \"financeRmId\": null,'+
		'                        \"goal\": null,'+
		'                        \"listedAt\": null,'+
		'                        \"published\": 0,'+
		'                        \"numberRejections\": null,'+
		'                        \"primaryUser\": null,'+
		'                        \"review\": 0,'+
		'                        \"salesRmId\": null,'+
		'                        \"scsEvaluation\": \"1. Land controlled under option purchase agreement. This expires 3 years from the Effective Date, or Dec 9, 2013.  Schedule suggests $10k of $140k option payments outstanding, but need to confirm status of payments.\\n\\n2. Developer completed Financier checklist with several inconsistencies to Documents.  Listed Site Lease cost of > $500k / yr with 1% escalator, however Land Option purchase suggests $25k per acre for purchase of $2.1m (80 acres).  Land purchase is preferred given high Lease rate listed (worth about 70-80 basis points unlevered).\\n\\n3. Developer listed $8.8m total IC with $7.2m related to Network Upgrades.  Interconnection Agreement draft lists $17.8m total IC costs with $14.8m reimburseable over 5 years as Network Upgrades.  Need to confirm that new IC costs provided by Developer are accurate given the substantial discount to the IC Agreement draft and IC Studies conducted in Q4 2011.\\n\\n4. No EPC pricing provided by Developer.  Mercatus assumed $1.55 total EPC as a baseline for Fixed Tilt.\\n\\n5. Developer modeled energy yield of 1,843 kWh / kWp.  This works out to higher annual production than that provided by Developer with capacity factor in Financier assumption worksheet.  Need to clarify correct production assumption.\\n\\n6. Offtake rate of $77.34 / MWh ($46.40 / MWh prior to COD) + additional amount depending on when Delivery upgrades are completed ($5.10 / MWh within 24 mo, $6.28 / MWh from 24-60 mo, $7.46 / MWh more than 60 mo).\\n\\n7. Offtake Agreement shows COD deadline of 12/31/15.  Developer listed expected COD by 12/31/14 which is well within the timelines.  Need to confirm status.\",'+
		'                        \"scsScore\": null,'+
		'                        \"projectUsers\": null,'+
		'                        \"parentInd\": true,'+
		'                        \"coBrandInd\": false,'+
		'                        \"orgIdList\": null,'+
		'                        \"createdAt\": 1382632533000,'+
		'                        \"createdBy\": \"motif@gomercatus.com\",'+
		'                        \"updatedAt\": 1400480326000,'+
		'                        \"updatedBy\": \"rparker@minvestments.com\",'+
		'                        \"orgId\": 82,'+
		'                        \"projectId\": 710,'+
		'                        \"isActive\": true,'+
		'                        \"value\": null,'+
		'                        \"status\": \"Active\",'+
		'                        \"stage\": null'+
		'                    },'+
		'                    {'+
		'                        \"lockedBy\": null,'+
		'                        \"projectAssumptions\": null,'+
		'                        \"organizationProjects\": null,'+
		'                        \"organization\": null,'+
		'                        \"portfolio\": false,'+
		'                        \"changesPending\": false,'+
		'                        \"solicitedOrgId\": 74,'+
		'                        \"notes\": \"Scrub O&M assumptions with Fiannce team to improve project economics\",'+
		'                        \"parentId\": 1830,'+
		'                        \"portfolioProjectList\": null,'+
		               
		'                        \"solicitedProjectId\": null,'+
		'                        \"percentCompletion\": 98.44,'+
		'                        \"projectDetailLogs\": null,'+
		'                        \"isLocked\": null,'+
		'                        \"solicitedUsers\": null,'+
		'                        \"portfolioProjectId\": null,'+
		'                        \"partialSolicitationInd\": null,'+
		'                        \"consolidateInd\": null,'+
		'                        \"projectDescription\": \"Patriots  - 1.95 MW DC - CA  - 716\",'+
		'                        \"shortName\": \"Pacific Avenue\",'+
		'                        \"cs\": null,'+
		'                        \"financeRmId\": null,'+
		'                        \"goal\": null,'+
		'                        \"listedAt\": null,'+
		'                        \"published\": 0,'+
		'                        \"numberRejections\": null,'+
		'                        \"primaryUser\": null,'+
		'                        \"review\": 0,'+
		'                        \"salesRmId\": null,'+
		'                        \"scsEvaluation\": \"Opportunities\\n- Bankable system size with creditworthy off-taker\\n- PPA executed, Interconnection Study Complete\\n\\nChallenges\\n- Interconnection costs high with about 50% reimburseable\\n- Application for Planning Commision Action is an application of CUP, Environmental Study, Site Plan and Zone Change. Land Owners have signed but Applicant has not. Unsure of status of Application and need update on expected approval timeframe. \\n- Per Financial Model the project size is 1.95 MW DC while in PPA the gross generation capacity is 2310 KW which creates confusion. Note: max size in PPA is 1.5MW AC.\\n- A copy of an email from Utility was provided with the System Impact Study attached. The email indicated the study was complete and there are no constraints. However, access to the report was not provided and progress to the IA is unknown.\",'+
		'                        \"scsScore\": null,'+
		'                        \"projectUsers\": null,'+
		'                        \"parentInd\": true,'+
		'                        \"coBrandInd\": false,'+
		'                        \"orgIdList\": null,'+
		'                        \"createdAt\": 1382707364000,'+
		'                        \"createdBy\": \"motif@gomercatus.com\",'+
		'                        \"updatedAt\": 1385584112000,'+
		'                        \"updatedBy\": \"Monopoly@example.com\",'+
		'                        \"orgId\": 82,'+
		'                        \"projectId\": 716,'+
		'                        \"isActive\": true,'+
		'                        \"value\": null,'+
		'                        \"status\": \"Active\",'+
		'                        \"stage\": null'+
		'                    },'+
		'                    {'+
		'                        \"lockedBy\": null,'+
		'                        \"projectAssumptions\": null,'+
		'                        \"organizationProjects\": null,'+
		'                        \"organization\": null,'+
		'                        \"portfolio\": false,'+
		'                        \"changesPending\": false,'+
		'                        \"solicitedOrgId\": 71,'+
		'                        \"notes\": \"Schedule conferenc call with brokereage firm to obtain current SREC pricing\",'+
		'                        \"parentId\": 1830,'+
		'                        \"portfolioProjectList\": null,'+
		
		'                        \"solicitedProjectId\": null,'+
		'                        \"percentCompletion\": 99.74,'+
		'                        \"projectDetailLogs\": null,'+
		'                        \"isLocked\": null,'+
		'                        \"solicitedUsers\": null,'+
		'                        \"portfolioProjectId\": null,'+
		'                        \"partialSolicitationInd\": null,'+
		'                        \"consolidateInd\": null,'+
		'                        \"projectDescription\": \"49ers  - 2.645 MW DC - MA  - 718\",'+
		'                        \"shortName\": \"Reading Railroad\",'+
		'                        \"cs\": null,'+
		'                        \"financeRmId\": null,'+
		'                        \"goal\": null,'+
		'                        \"listedAt\": null,'+
		'                        \"published\": 0,'+
		'                        \"numberRejections\": null,'+
		'                        \"primaryUser\": null,'+
		'                        \"review\": 0,'+
		'                        \"salesRmId\": null,'+
		'                        \"scsEvaluation\": \"Opportunities\\n-  Roof Repairs and Interconnection Costs provided as one cost. However, unclear if interconnection costs are reimbursable. As is now, analysis treats both as non-basis eligible costs. Breaking out could prove returns if interconnection cost is reimbursable. \\n- Site lease not executed. Execution of site lease will significantly improve SCScore. \\n- PPA not executed. Execution of documents will also improve SCScore.  \\n\\nChallenges\\n- SREC assumptins are primary driver of project economics and thus financier view of SRECs will be primary determinant of project viability. Need further clarification from financier regarding SREC assumptions. \\n- Site lease cost inhibits project economics\\n- PPA term in draft agreement is for 15 years which does not match lease term. Please clarify\\n- PPA rate in draft agreement section 1.6 states: Contract Price means $0.06 per kWh for years 1-5 with a 2% escalation annually for the remainder of the Term of Service. Summary document provide indicates $0.079 w/ 2% escalator for duration of contract. Please clarify both rate and escalator. \\n- Interconnection complete for Big Joe only. Need updated status for Pacific Packaging IA. \\n- Per IA for Big Joe, upgrade costs are TBD. Please clarify how cost estimations are to be assumed.\",'+
		'                        \"scsScore\": null,'+
		'                        \"projectUsers\": null,'+
		'                        \"parentInd\": false,'+
		'                        \"coBrandInd\": false,'+
		'                        \"orgIdList\": null,'+
		'                        \"createdAt\": 1382718064000,'+
		'                        \"createdBy\": \"motif@gomercatus.com\",'+
		'                        \"updatedAt\": 1391612931000,'+
		'                        \"updatedBy\": \"49ers@example.com\",'+
		'                        \"orgId\": 82,'+
		'                        \"projectId\": 718,'+
		'                        \"isActive\": true,'+
		'                        \"value\": null,'+
		'                        \"status\": \"Active\",'+
		'                        \"stage\": null'+
		'                    }'+
		'                ],'+
		
		'                \"solicitedProjectId\": null,'+
		'                \"percentCompletion\": 99.19,'+
		'                \"projectDetailLogs\": null,'+
		'                \"isLocked\": null,'+
		'                \"solicitedUsers\": null,'+
		'                \"portfolioProjectId\": null,'+
		'                \"partialSolicitationInd\": null,'+
		'                \"consolidateInd\": null,'+
		'                \"projectDescription\": \"n/a  - 35.595 MW DC - CA  - 1830\",'+
		'                \"shortName\": \"Monopoly Tranche A\",'+
		'                \"cs\": null,'+
		'                \"financeRmId\": null,'+
		'                \"goal\": null,'+
		'                \"listedAt\": null,'+
		'                \"published\": 0,'+
		'                \"numberRejections\": null,'+
		'                \"primaryUser\": null,'+
		'                \"review\": 0,'+
		'                \"salesRmId\": null,'+
		'                \"scsEvaluation\": null,'+
		'                \"scsScore\": null,'+
		'                \"projectUsers\": null,'+
		'                \"parentInd\": false,'+
		'                \"coBrandInd\": false,'+
		'                \"orgIdList\": null,'+
		'                \"createdAt\": 1385584110000,'+
		'                \"createdBy\": \"Monopoly@example.com\",'+
		'                \"updatedAt\": 1400573766000,'+
		'                \"updatedBy\": \"rparker@minvestments.com\",'+
		'                \"orgId\": 82,'+
		'                \"projectId\": 1830,'+
		'                \"isActive\": true,'+
		'                \"value\": null,'+
		'                \"status\": null,'+
		'                \"stage\": null'+
		'            },'+
		'            {'+
		'                \"lockedBy\": null,'+
		'                \"projectAssumptions\": null,'+
		'                \"organizationProjects\": null,'+
		'                \"organization\": null,'+
		'                \"portfolio\": false,'+
		'                \"changesPending\": false,'+
		'                \"solicitedOrgId\": 79,'+
		'                \"notes\": \"Receive prelim ECP bids next Thursday\",'+
		'                \"parentId\": null,'+
		'                \"portfolioProjectList\": null,'+
	
		'                \"solicitedProjectId\": null,'+
		'                \"percentCompletion\": 99.49,'+
		'                \"projectDetailLogs\": null,'+
		'                \"isLocked\": null,'+
		'                \"solicitedUsers\": null,'+
		'                \"portfolioProjectId\": null,'+
		'                \"partialSolicitationInd\": null,'+
		'                \"consolidateInd\": null,'+
		'                \"projectDescription\": \"Ravens  - 3.3 MW DC - QA  - 738\",'+
		'                \"shortName\": \"St. Charles Place\",'+
		'                \"cs\": null,'+
		'                \"financeRmId\": null,'+
		'                \"goal\": null,'+
		'                \"listedAt\": null,'+
		'                \"published\": 0,'+
		'                \"numberRejections\": null,'+
		'                \"primaryUser\": null,'+
		'                \"review\": 0,'+
		'                \"salesRmId\": null,'+
		'                \"scsEvaluation\": \"- NMC proposal with multiple projects to City of St. Charles Place\\n- NMC agreement executed; Terms of $0.08 / kWh with 2% escalator assumed by Ravens, but summary lists $0.11 as the effective rate.\\n- Interconnection Agreement executed\\n- Developer lists site as under construction\\n- Installation began 12/28/12 with generation expected 140 days later;  Need status update\\n- System yield not provided other than loose estimate in PPA for output;  Need to verify total output for current system size\\n- No system or remaining Development costs estimated;  Mercatus used Default values as a baseline.\\n- No SREC documentation or estimates provided;  Mercatus used Default values as a baseline.\\n- IC Upgrade costs of $585k listed in ISA\\n- No information or financials provided to assess off-taker creditworthiness\\n- Land leased under 2 agreements ($42,500 annually to current developer)\\n- No opex estimates provided;  Mercatus used Default values as a baseline.  This includes property taxes.\",'+
		'                \"scsScore\": null,'+
		'                \"projectUsers\": null,'+
		'                \"parentInd\": false,'+
		'                \"coBrandInd\": false,'+
		'                \"orgIdList\": null,'+
		'                \"createdAt\": 1382980267000,'+
		'                \"createdBy\": \"motif@gomercatus.com\",'+
		'                \"updatedAt\": 1400612280000,'+
		'                \"updatedBy\": \"rparker@minvestments.com\",'+
		'                \"orgId\": 82,'+
		'                \"projectId\": 738,'+
		'                \"isActive\": true,'+
		'                \"value\": null,'+
		'                \"status\": \"Active\",'+
		'                \"stage\": null'+
		'            },'+
		'            {'+
		'                \"lockedBy\": null,'+
		'                \"projectAssumptions\": null,'+
		'                \"organizationProjects\": null,'+
		'                \"organization\": null,'+
		'                \"portfolio\": false,'+
		'                \"changesPending\": false,'+
		'                \"solicitedOrgId\": 76,'+
		'                \"notes\": \"Finalize SREC assumptions with Developer\",'+
		'                \"parentId\": null,'+
		'                \"portfolioProjectList\": null,'+
		
		'                \"solicitedProjectId\": null,'+
		'                \"percentCompletion\": 98.7,'+
		'                \"projectDetailLogs\": null,'+
		'                \"isLocked\": null,'+
		'                \"solicitedUsers\": null,'+
		'                \"portfolioProjectId\": null,'+
		'                \"partialSolicitationInd\": null,'+
		'                \"consolidateInd\": null,'+
		'                \"projectDescription\": \"Falcons  - 3.5 MW DC - MA  - 737\",'+
		'                \"shortName\": \"Vermont Avenue\",'+
		'                \"cs\": null,'+
		'                \"financeRmId\": null,'+
		'                \"goal\": null,'+
		'                \"listedAt\": null,'+
		'                \"published\": 0,'+
		'                \"numberRejections\": null,'+
		'                \"primaryUser\": null,'+
		'                \"review\": 0,'+
		'                \"salesRmId\": null,'+
		'                \"scsEvaluation\": \"- proposal with multiple projects to City\\n- agreement executed ; Terms of $0.08 / kWh with 2% escalator assumed by Soltas, but summary lists $0.11 as the effective rate.\\n- Interconnection Agreement executed\\n- Developer lists site as under construction\\n- Installation began 11/26/12 with generation expected 100 days later;  Need status update\\n- System yield not provided other than loose estimate in PPA for output;  Need to verify total output for current system size\\n- No system or remaining Development costs estimated;  Mercatus used Default values as a baseline.\\n- No SREC documentation or estimates provided;  Mercatus used Default values as a baseline.\\n- IC Upgrade costs of $575k listed in ISA\\n- No information or financials provided to assess off-taker creditworthiness\\n- Land leased under 2 agreements ($42,500 annually to current developer)\\n- No opex estimates provided;  Mercatus used Default values as a baseline.  This includes property taxes.\",'+
		'                \"scsScore\": null,'+
		'                \"projectUsers\": null,'+
		'                \"parentInd\": false,'+
		'                \"coBrandInd\": false,'+
		'                \"orgIdList\": null,'+
		'                \"createdAt\": 1382980210000,'+
		'                \"createdBy\": \"motif@gomercatus.com\",'+
		'                \"updatedAt\": 1390491873000,'+
		'                \"updatedBy\": \"Monopoly@example.com\",'+
		'                \"orgId\": 82,'+
		'                \"projectId\": 737,'+
		'                \"isActive\": true,'+
		'                \"value\": null,'+
		'                \"status\": \"Active\",'+
		'                \"stage\": null'+
		'            },'+
		'            {'+
		'                \"lockedBy\": null,'+
		'                \"projectAssumptions\": null,'+
		'                \"organizationProjects\": null,'+
		'                \"organization\": null,'+
		'                \"portfolio\": false,'+
		'                \"changesPending\": false,'+
		'                \"solicitedOrgId\": 77,'+
		'                \"notes\": \"Scrub construction costs with Developer to increase AT IRR\",'+
		'                \"parentId\": null,'+
		'                \"portfolioProjectList\": null,'+
	
		'                \"solicitedProjectId\": null,'+
		'                \"percentCompletion\": 98.73,'+
		'                \"projectDetailLogs\": null,'+
		'                \"isLocked\": null,'+
		'                \"solicitedUsers\": null,'+
		'                \"portfolioProjectId\": null,'+
		'                \"partialSolicitationInd\": null,'+
		'                \"consolidateInd\": null,'+
		'                \"projectDescription\": \"Giants  - 1.323 MW DC - CA  - 731\",'+
		'                \"shortName\": \"Connecticut Avenue\",'+
		'                \"cs\": null,'+
		'                \"financeRmId\": null,'+
		'                \"goal\": null,'+
		'                \"listedAt\": null,'+
		'                \"published\": 0,'+
		'                \"numberRejections\": null,'+
		'                \"primaryUser\": null,'+
		'                \"review\": 0,'+
		'                \"salesRmId\": null,'+
		'                \"scsEvaluation\": \"- Project part of Off Taker FIT program; Creditworthy offtaker\\n- Off Taker FIT application filed (no date specified)\\n- No interconnection costs listed;  Given rooftop project, unlikely these will be high\\n- No 8760 provided for review to verify calculation of FIT blended rate\\n- Site control confirmed through Option agreement; No site lease provided with execution, but lease rates and terms listed by Developer\\n- No project timeline provided for review\\n- Developer assumes 50% bonus depreciation for this project\",'+
		'                \"scsScore\": null,'+
		'                \"projectUsers\": null,'+
		'                \"parentInd\": false,'+
		'                \"coBrandInd\": false,'+
		'                \"orgIdList\": null,'+
		'                \"createdAt\": 1382966458000,'+
		'                \"createdBy\": \"motif@gomercatus.com\",'+
		'                \"updatedAt\": 1400249401000,'+
		'                \"updatedBy\": \"rparker@minvestments.com\",'+
		'                \"orgId\": 82,'+
		'                \"projectId\": 731,'+
		'                \"isActive\": true,'+
		'                \"value\": null,'+
		'                \"status\": \"Active\",'+
		'                \"stage\": null'+
		'            },'+
		'            {'+
		'                \"lockedBy\": null,'+
		'                \"projectAssumptions\": null,'+
		'                \"organizationProjects\": null,'+
		'                \"organization\": null,'+
		'                \"portfolio\": false,'+
		'                \"changesPending\": false,'+
		'                \"solicitedOrgId\": 71,'+
		'                \"notes\": \"Review O&M Assumptions with Developer\",'+
		'                \"parentId\": null,'+
		'                \"portfolioProjectList\": null,'+
	
		'                \"solicitedProjectId\": null,'+
		'                \"percentCompletion\": 98.23,'+
		'                \"projectDetailLogs\": null,'+
		'                \"isLocked\": null,'+
		'                \"solicitedUsers\": null,'+
		'                \"portfolioProjectId\": null,'+
		'                \"partialSolicitationInd\": null,'+
		'                \"consolidateInd\": null,'+
		'                \"projectDescription\": \"49ers  - 2.4 MW DC - NM  - 728\",'+
		'                \"shortName\": \"Mediterranean Avenue\",'+
		'                \"cs\": null,'+
		'                \"financeRmId\": null,'+
		'                \"goal\": null,'+
		'                \"listedAt\": null,'+
		'                \"published\": 0,'+
		'                \"numberRejections\": null,'+
		'                \"primaryUser\": null,'+
		'                \"review\": 0,'+
		'                \"salesRmId\": null,'+
		'                \"scsEvaluation\": \"-Project is a joint development whereby Developer is acquiring the project from an early stage developer through a membership interest purchase agreement for the project LLC\\n-PPA and Site lease Executed at 20 yrs, Amendment extends to 25 yrs with increase in PPA price;  COD deadline extended to 6/24/13 (construction to 3/24/13)\\n- Off-taker is component of federally recognized Indian tribe, primary business construction services managing the tribe\'s casino; 2011 operating revenues over $99m and steady over the last 3 years, about 70% from Construction services\\n- Construction commencement date extended to 3/24/13; No verification of construction start provided\\n- Construction / COD dates provided by the Developer in Details are past deadlines listed in PPA / Lease amendment\\n- No permits / studies provided for review or verification of timeline\\n- Interconnection Agreement / Study not completed / provided for review\\n- Developer SREC Assumption not available, REC revenue generated through PPA term to be split as: 12% to Off Taker / 25% to 49ers / 63% to EPC Installer.\",'+
		'                \"scsScore\": null,'+
		'                \"projectUsers\": null,'+
		'                \"parentInd\": false,'+
		'                \"coBrandInd\": false,'+
		'                \"orgIdList\": null,'+
		'                \"createdAt\": 1382963570000,'+
		'                \"createdBy\": \"motif@gomercatus.com\",'+
		'                \"updatedAt\": 1400237915000,'+
		'                \"updatedBy\": \"rparker@minvestments.com\",'+
		'                \"orgId\": 82,'+
		'                \"projectId\": 728,'+
		'                \"isActive\": true,'+
		'                \"value\": null,'+
		'                \"status\": \"Active\",'+
		'                \"stage\": null'+
		'            },'+
		'            {'+
		'                \"lockedBy\": null,'+
		'                \"projectAssumptions\": null,'+
		'                \"organizationProjects\": null,'+
		'                \"organization\": null,'+
		'                \"portfolio\": false,'+
		'                \"changesPending\": false,'+
		'                \"solicitedOrgId\": 80,'+
		'                \"notes\": \"Schedule internal conference call to review Term Sheet\",'+
		'                \"parentId\": null,'+
		'                \"portfolioProjectList\": null,'+
		
		'                \"solicitedProjectId\": null,'+
		'                \"percentCompletion\": 98.44,'+
		'                \"projectDetailLogs\": null,'+
		'                \"isLocked\": null,'+
		'                \"solicitedUsers\": null,'+
		'                \"portfolioProjectId\": null,'+
		'                \"partialSolicitationInd\": null,'+
		'                \"consolidateInd\": null,'+
		'                \"projectDescription\": \"Ravens  - 1.117 MW DC - HI  - 711\",'+
		'                \"shortName\": \"St. James Place\",'+
		'                \"cs\": null,'+
		'                \"financeRmId\": null,'+
		'                \"goal\": null,'+
		'                \"listedAt\": null,'+
		'                \"published\": 0,'+
		'                \"numberRejections\": null,'+
		'                \"primaryUser\": null,'+
		'                \"review\": 0,'+
		'                \"salesRmId\": null,'+
		'                \"scsEvaluation\": \"- Documents are required to support the assumptions loaded. Score will increase upon demonstration of milestone completion. Please provide supporting documentation as well as an overall project timeline to ensure expiration dates are not a risk. \\n- Unknown status of key milestones, such as FIT agreement, site lease, Interconnection, CUP.\\n - Developer listed FIT terms from HELCO at $0.284 / kWh with 3% escaclator for 25 years.  HELCO rules for a system of this size in Tier 3 suggest terms of $0.197 / kWh with 0% escalator for 20 years (if using the 35% state tax credit) or terms of $0.236 / kWh with 0% escalator for 20 years (is using the refundable state tax credit of ~ 24.5%).  This is a key driver that needs to be clarified with the Developer.  Mercatus uses HECO assumptions for baseline.\\n- Site ownershio says the site is owned need clarification whether owned or leased.  Lease rate listed is very low per year for a system this size and should be clarified for accuracy.\\n-Per DSIRE, State Tax Credit Eligibility criteria is that commercial project size should be 1000 KW or greater, or be a combination of projects on the same property that together reach the minimum threshold.   Unclear if this can be prorated for this system over 1 MW for the $500k cap (ex:  with proration, the cap is $558,500.  With no cap, the refundable credit is worth over $870k.  Mercatus assumed a cap of $500k as baseline).\\n- Policy risk exists - legislature to rule in early 2013 on ability to monetize the full 24.5% after refundable adjustment of 30%. As is, the temporary ruling and the associated caps hinder project economics. Need clarification if final ruling has occurred. \\n- Per section 6.d-f of the standard HI FIT agreement, HELCO can curtail the project at will and is not liable. Need to better understand.\\n- Conditional Use Permits can be a significant hurdle in HI. Due to potential for being denied once soil studies are submitted to determine agricultural areas. What is the likelihood of this occurring and what is the timeline for completion or approval? \\n- Need to confirm Interconnection costs provided by Developer.\\n- Developer provided leverage assumptions, however Mercatus used unlevered view as a baseline.\",'+
		'                \"scsScore\": null,'+
		'                \"projectUsers\": null,'+
		'                \"parentInd\": false,'+
		'                \"coBrandInd\": false,'+
		'                \"orgIdList\": null,'+
		'                \"createdAt\": 1382632810000,'+
		'                \"createdBy\": \"motif@gomercatus.com\",'+
		'                \"updatedAt\": 1389726633000,'+
		'                \"updatedBy\": \"jadams@gomercatus.com\",'+
		'                \"orgId\": 82,'+
		'                \"projectId\": 711,'+
		'                \"isActive\": true,'+
		'                \"value\": null,'+
		'                \"status\": \"Active\",'+
		'                \"stage\": null'+
		'            }'+
		'        ]'+
		'    }'+
		'}';
        System.debug('json: ' + json);
		Map<string,string> obj = (Map<string,string>) System.JSON.deserializeUntyped(json);
		List<string> propvalues = new List<string>();
         propvalues = obj.values();
         for(string str : propvalues){
         	System.debug('value:' + str );    
         }
         
         System.assert(obj != null);
	}
}