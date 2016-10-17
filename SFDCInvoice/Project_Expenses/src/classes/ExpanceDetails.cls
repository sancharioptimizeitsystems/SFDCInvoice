/*  extension class for Expense
Class to fetch detalis for Total Expense and member names who contributed money
*/
public class ExpanceDetails {                //class name
  public ApexPages.StandardController controller{get;set;}
  public List<Expance__c> Expance{get;set;}``
  public List<Expan__c> expMem{get;set;}
  public Expance__c expObj{get;set;}

/* Constructor */
    public ExpanceDetails(ApexPages.StandardController controller) { 
     this.controller = controller;
     expObj = (Expance__c)controller.getRecord();
     fetchRecord();
    }

/* Method to fetch details for Total amount,contributed money per member,member name and event name */ 
 
 public PageReference fetchRecord()      //method fetchRecord
{
    Expance = [select Id,Name,Amount__c,Date__c,remaining_money__c,(select Id, Name , money_contributed__c,Member__c, Member__r.name from Expense_Member_Details__r) from Expance__c where Id =: expObj.Id];
    if(!expance.isEmpty()){
        expMem = Expance[0].Expense_Member_Details__r;
    }
    return null;
    


}

}