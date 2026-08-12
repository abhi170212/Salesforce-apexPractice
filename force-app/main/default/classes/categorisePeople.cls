public without  sharing class categorisePeople {
    // Write a method that tells you a person is a Genz or a millanial or Gen Alpha 
    public static String checkCategoryOfPeople(Date dateOfBirth){
        String generationType = '';
        if(dateOfBirth != null){
            Integer birthYearOfThePerson = dateOfBirth.year();

            //--------------------------------------------------------------------------------
            
            if(birthYearOfThePerson >=1981 && birthYearOfThePerson <= 1996){
                generationType = 'Millennials ';
            }else if (birthYearOfThePerson >=1997 && birthYearOfThePerson <= 2012){
                generationType='Gen z';
            }else if(birthYearOfThePerson >= 2013 && birthYearOfThePerson <=2024){
                generationType='Gen Alpha';
            }

            //------------------------------------------------------------------------------------
        }

        return generationType;
    }
}