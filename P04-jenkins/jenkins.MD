Ci/Cd
Contineous intigration and contineous deployment, contineous delivery

We are using jenkins as cicd tool.
Jenkins is java based application

It is the way of integrating the code from source and create artifact. in between source and creating artifact we need to install dependencies, run unit test cases, scans, etc. instead of this manually we can automate through continus integration process... We are using Jenkins for CI.

i know jenkins ci i can do github actions concept is same

code should be in github only if we use github actions.


Master and agent

in ci like jenkins env master cant satisfy all the workload so we can have diff agent with diff configuration while triggering agent we can mention which agent that pipline should run

