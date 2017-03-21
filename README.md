# Philly DevOps Meetup Discussion 3/21/17

This repo holds the source files for my discussion this evening on running Kubernetes on AWS via kops. Everything you need to get started is in here. All of my examples are based on [k8s 1.5.3](https://github.com/kubernetes/kubernetes/tree/v1.5.3) and [kops 1.5.3](https://github.com/kubernetes/kops/tree/1.5.3). In this case, the versions match, but they don't necessarily need to. Even if you are working with older k8s clusters (1.4.x), kops 1.5.x is the way to run.

For further questions, please take a look at the kops guide to running [k8s on AWS](https://github.com/kubernetes/kops/blob/master/docs/aws.md) which has a lot of the details that I'll probably be glossing over. You're also welcome to ping me on PhillyDev or k8s slack. I hang out in #devops and #kops respectively.


## Cluster examples


| Name | Description  |  Link |
| -----| ------------| :------: |
| cluster-1 | Single zone, single master, public topo | [cluster-1](https://github.com/geojaz/phillydevops-20170321/tree/master/default/clusters/cluster-1/cluster-config) |
| cluster-2 | Single zone, single master, private topo | [cluster-2](https://github.com/geojaz/phillydevops-20170321/tree/master/default/clusters/cluster-2/cluster-config) |
| cluster-3 | Existing VPC, multi zone, multi master, private topo| [cluster-3](https://github.com/geojaz/phillydevops-20170321/tree/master/default/clusters/cluster-3/cluster-config) |



## About me

I'm a distributed platform engineer and SRE working at ReactiveOps. We are the "Devops as a service" company and we tend to help small and medium sized businesses migrate and manage their infrastructure in k8s on AWS and GCP. I also help out maintaining the kubernetes/kops project and I enjoy working on bringing kubernetes to more people and making it easier to get involved. Please reach and contact me if you want to talk about something like this, or you just want to drink beer.


| Eric Hole    |           |
| ------------- |:-------------:|
| Email      | [eric.hole@gmail.com](mailto:eric.hole@gmail.com) |
| GitHub    | [geojaz](https://github.com/geojaz)      |
| Twitter| [theholeeric](https://twitter.com/theholeeric)   |
