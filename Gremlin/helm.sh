# The cluster ID is an indentifier, so whatever you want. For example: "research-cluster"
GREMLIN_CLUSTER_ID="research-cluster"
# Check the prereqs.md under the Setup section to get the team ID and team secret valus
GREMLIN_TEAM_ID=""
GREMLIN_TEAM_SECRET=""

helm install gremlin gremlin/gremlin \
    --namespace gremlin \
    --set gremlin.secret.managed=true \
    --set gremlin.secret.type=secret \
    --set gremlin.secret.teamID=$GREMLIN_TEAM_ID \
    --set gremlin.secret.clusterID=$GREMLIN_CLUSTER_ID \
    --set gremlin.secret.teamSecret=$GREMLIN_TEAM_SECRET