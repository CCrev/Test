public class MockDataProj2 {
    public static void dataInput() {
        
        //quiz mock data
        list<Quiz__c> quizList = new list<Quiz__c>();
        
        		quizList.add(new quiz__c(Name='Math 101',
                                        Category__c	='Math'));
                quizList.add(new quiz__c(Name='English 101',
                                        Category__c	='English'));
                quizList.add(new quiz__c(Name='History 101',
                                        Category__c	='History'));
                quizList.add(new quiz__c(Name='Science 101',
                                        Category__c	='Science'));
       
        //inserting into the database for quiz
         database.insert(quizList);
        
        //query through the quiz to get name and id
        list<Quiz__c> queryQuiz = [Select Name, Id From Quiz__c];
        
        //creating questions
        list<Question__c> questionList = new list<Question__c>();
        for(Quiz__c getQuizID: queryQuiz) {
            
            if(getQuizID.Name == 'Math 101') {
                questionList.add(new question__c(Question__c='1+1=',
                                                A__c='1',
                                                B__c='2',
                                                C__c='3',
                                                D__c='4',
                                                Answer__c='B',
                                                Quiz__c=getQuizID.id));
            } else if(getQuizID.Name == 'English 101') {
                questionList.add(new question__c(Question__c='Pro_ect 2',
                                                A__c='A',
                                                B__c='O',
                                                C__c='J',
                                                D__c='E',
                                                Answer__c='C',
                                                Quiz__c=getQuizID.id));
            } else if(getQuizID.Name == 'History 101') {
                questionList.add(new question__c(Question__c='Declaration of Independence was created',
                                                A__c='1722',
                                                B__c='1726',
                                                C__c='1776',
                                                D__c='1774',
                                                Answer__c='C',
                                                Quiz__c=getQuizID.id));
            } else if(getQuizID.Name == 'Science 101') {
                questionList.add(new question__c(Question__c='Water is',
                                                A__c='H20',
                                                B__c='C02',
                                                C__c='H1',
                                                D__c='HC02',
                                                Answer__c='A',
                                                Quiz__c=getQuizID.id));
            }
        }
        
        //inserting into the database for questions
        database.insert(questionList);

    }
}