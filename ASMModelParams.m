#import "ASMModelParams.h"
#import <objectbase.h>  //for probes


@implementation ASMModelParams


+createBegin: (id) aZone
{
  ASMModelParams * obj;
  id <ProbeMap> probeMap;

  obj = [super createBegin: aZone];

  probeMap = [EmptyProbeMap createBegin: aZone];
  [probeMap setProbedClass: [self class]];
  probeMap = [probeMap createEnd];
  
    [probeMap addProbe: [probeLibrary getProbeForVariable: "numBFagents"
				    inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "initholding"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "initialcash"
  	            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "minholding"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "mincash"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "intrate"
  			            inClass: [self class]]];

  [probeMap addProbe: [probeLibrary getProbeForVariable: "baseline"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "mindividend"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "maxdividend"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "amplitude"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "period"
  			            inClass: [self class]]];

  [probeMap addProbe: [probeLibrary getProbeForVariable: "maxprice"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "minprice"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "taup"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "exponentialMAs" 
				    inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "sptype"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "maxiterations" 
				    inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "minexcess"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "eta"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "etamin"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "etamax"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "rea"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "reb"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "randomSeed"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "tauv"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "lambda"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "maxbid"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "initvar"
  			            inClass: [self class]]];
  [probeMap addProbe: [probeLibrary getProbeForVariable: "maxdev"
  			            inClass: [self class]]];
  [probeLibrary setProbeMap: probeMap For: [self class]];
return obj;

}

@end