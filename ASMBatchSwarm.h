#import <objectbase.h>
#import <activity.h>
#import <collections.h>
#import <simtools.h>
#import "ASMModelSwarm.h"

@interface ASMBatchSwarm: Swarm
{
  int loggingFrequency;
  int experimentDuration;

  id displayActions;
  id displaySchedule;
  id stopSchedule;

  ASMModelSwarm * asmModelSwarm;
 
  id output;
}

+ createBegin: aZone;
- buildObjects;
- buildActions;
- activateIn: swarmContext;

- expostParamWrite;
- go;
- stopRunning;
-(void) drop;
@end

