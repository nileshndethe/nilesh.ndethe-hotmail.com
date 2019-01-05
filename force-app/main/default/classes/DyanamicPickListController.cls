public with sharing class DyanamicPickListController {

    public string SelectedItem {get; set;}
    
    public List<SelectOption> lstItem{get; set;}
    private List<SelectOption> lstItem1;
    private List<SelectOption> lstItem2;
    
   private List<SelectOption> mergeList = new List<SelectOption>();
    
    public DyanamicPickListController()
    {
        lstItem1 = new List<SelectOption>();
        lstItem1.add(new SelectOption ('a', 'a'));
        lstItem1.add(new SelectOption ('b', 'b'));
        lstItem1.add(new SelectOption ('c', 'c'));
        
         lstItem2 = new List<SelectOption>();
        lstItem2.add(new SelectOption ('x', 'x'));
        lstItem2.add(new SelectOption ('y', 'y'));
        lstItem2.add(new SelectOption ('z', 'z'));
    }
    
    public PageReference GetFirstList()
    {
        lstItem = lstItem1;
        return null;
    }
    
    public PageReference GetSecondList()
    {
        lstItem = lstItem2;
        return null;
    }
    Public PageReference MergeLists()
    {
        mergeList.addAll(lstItem1);
       mergeList.addAll(lstItem2);
        //lstItem1.addAll(lstItem2);
        //lstItem = lstItem1;
        lstItem = mergeList;
        return null;
    }
}