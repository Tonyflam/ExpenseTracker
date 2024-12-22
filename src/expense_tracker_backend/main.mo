import Text "mo:base/Text";
import Nat "mo:base/Nat";
import List "mo:base/List";
import Bool "mo:base/Bool";
import Result "mo:base/Result";
import Float "mo:base/Float";
import Int "mo:base/Int";


actor expense_tracker{

  type Expense = {
  id: Int;
  description: Text;
  category: Text;
  amount: Float;
};
  stable var expensestore : List.List<Expense> = List.nil<Expense>();

  public func addExpense(expenseDes : Text, expenseCat: Text, exAmount: Float): async Text{
    let newExpense : Expense = {id =+ 1; description = expenseDes; category = expenseCat; amount = exAmount};
    expensestore := List.push( newExpense, expensestore);
    return "Expense Added sucessfully";
  };

  public func expenseView(): async[Expense]{
    return List.toArray(expensestore);

  };

  public func deleteExpense(idInput: Nat): async Result.Result <Text, Text>{
    let expenseExist = List.find<Expense>(expensestore, func(expense: Expense) : Bool{expense.id == idInput},
    );
    switch(expenseExist){
      case(?expense){
        expensestore := List.filter<Expense>(expensestore, func(expense: Expense) : Bool{expense.id != idInput;},
        );
        return #ok("Expense Succesfully Deleted!");
       };
      case(null){
        return #err("Expense not found!");
      };

    }
  };
  public func filterExpense(categoryIn: Text): async [Expense]{
    return List.toArray(
      List.filter<Expense>(expensestore, func(expense: Expense) : Bool{expense.category == categoryIn}
      )
    );
  }
};
