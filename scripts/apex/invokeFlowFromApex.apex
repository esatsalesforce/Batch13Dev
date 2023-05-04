/*Map<string,Object> inputs = new Map<string,Object>();
inputs.put('Account Id','0018d00000VT4tLAAT');
inputs.put('AccountName','Test Auto Launch');
inputs.put('AccountOwnerId','0058d000006zODcAAM' );
inputs.put('CreatedByName', 'esat ess');

Flow.Interview invokeFlow = new Flow.Interview.X17_Account_Auto_Launch_Flow(inputs);
invokeFlow.start();*/

Map<String,Object> inputs = new Map<String,Object>();
inputs.put('AccountId', '0018d00000VT4tLAAT');
inputs.put('AccountName', 'Test Auto Launch');
inputs.put('AccountOwnerId','0058d000006zODcAAM');
inputs.put('CreatedByName', 'esat ess');

Flow.Interview invokeFlow = new Flow.Interview.X17_Account_Auto_Launch_Flow(inputs);
invokeFlow.start();