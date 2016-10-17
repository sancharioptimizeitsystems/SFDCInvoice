@isTest
public class ExpenseTest {     

 public testMethod static void myTest(){
      
        Expance__c expense = new Expance__c();
        expense.Amount__c=1000;
        insert expense;
        Member__c member = new Member__c();
        member.Email__c='abc@abc.com';
        insert member;
        Expan__c expmem = new Expan__c();
        expmem.Member__c=member.Id;
        expmem.Expense__c=expense.Id;
        expmem.money_contributed__c=100;
        insert expmem;
        
       ExpanceDetails expExt = new ExpanceDetails(new ApexPages.StandardController(expense));
        
      
}
}