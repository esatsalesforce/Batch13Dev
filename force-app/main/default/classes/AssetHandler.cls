public with sharing class AssetHandler {
    public static void assetHandlerUpdate(List<asset> astTriggerNew,
                                        List<asset> astTriggerOld,
                                        Map<id, asset> astTriggerNewMap,
                                        Map<id, asset> astTriggerOldMap) {
       if (astTriggerNewMap!=null) {
        Set<id> astIdSet = astTriggerNewMap.keySet();
        for (id assetId : astIdSet) {
            if (astTriggerNewMap.get(assetId).status!=astTriggerOldMap.get(assetId).status && astTriggerNewMap.get(assetId).status == 'Shipped') {
                astTriggerNewMap.get(assetId).Description='Asset is shipped';
            }
            if(astTriggerNewMap.get(assetId).Status !=astTriggerOldMap.get(assetId).status && astTriggerNewMap.get(assetId).status=='Installed'){
                astTriggerNewMap.get(assetId).Description ='Asset is Installed';
            }
        }
        }else{
            for (asset eachAsset : astTriggerNew) {
                if (eachAsset.status=='Shipped') {
                    eachAsset.Description='Asset is shipped';
                }else if( eachAsset.status=='Installed'){
                    eachAsset.Description='Asset is Installed';
                }
            }
       }
    }
}