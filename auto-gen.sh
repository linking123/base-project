# build folder
mkdir -p 01Demand/{demand-doc,demand-change} 02PlanAndRisk/{plan,meetting-summary,risk} 03Design/{UI,system,api,database} 04Coding 05Account 06Test 07Deploy/{deploy-history,deploy-doc} 08Safety 09End 10Ops

# add readme
touch 01Demand/readme.md 02PlanAndRisk/readme.md 03Design/readme.md 04Coding/readme.md 05Account/readme.md 06Test/readme.md 07Deploy/readme.md 08Safety/readme.md 09End/readme.md 10Ops/readme.md

# git init
git init
# git add
git add .
# git commit
git commit -m 'init base project folder'
