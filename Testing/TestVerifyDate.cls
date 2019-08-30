@isTest
private class TestVerifyDate {

    @isTest
    static void checkDTest() {
        Date date1 = Date.newInstance(2018, 1, 1);
        Date date2 = Date.newInstance(2018, 1, 7);
        Date date3 = Date.newInstance(2018, 2, 9);
        
        Integer tD = Date.daysInMonth(date1.year(), date1.month());
        Date lastDay = Date.newInstance(date1.year(), date1.month(), tD);
        
        Date d = VerifyDate.CheckDates(date1, date2);
        Date d2 = VerifyDate.CheckDates(date1, date3);
        System.assertEquals(date2, d);
        System.assertEquals(lastDay, d2);
    }
}