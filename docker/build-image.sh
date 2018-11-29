IMAGE=registry2.swarm.devfactory.com/dockerization/wildfly

cd ..
docker build --label "com.trilogy.company=optiva" --label "com.trilogy.maintainer.email=simone.gianni@aurea.com" --label "com.trilogy.maintainer.skype=simonegianni" --label "com.trilogy.product=tcb" --label "com.trilogy.service=devspace" --label "com.trilogy.stage=build" --label "com.trilogy.team=Eng.Product" -f docker/Dockerfile -t $IMAGE:latest .
# docker push $IMAGE:latest

