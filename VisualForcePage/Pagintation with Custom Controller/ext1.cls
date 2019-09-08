public with sharing class ext1 {
    ApexPages.StandardSetController controller;  
    
    public ext1(ApexPages.StandardSetController controller) {
        this.controller = controller;    
        
    controller.setPageSize(controller.getResultSize());
    }
    
}
