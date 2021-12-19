//
//  InfoAboutPerson.swift
//  HomeWork2.3
//
//  Created by Roman on 19.12.2021.
//

struct UserInfo {
    let login: String
    let password: String
    let person: Person
    
    
    static func getInfo() -> UserInfo {
        UserInfo(login: "1",
                 password: "1",
                 person: Person.init(name: "Roman",
                                     firstFact: "Всю жизнь профессионально занимался хоккеем, играл в команде СКА",
                                     secondFact: "Учусь на ios разработчика, так как планирую через 2 года эмигрировать в США, было бы хорошо иметь за спиной востребованную профессию 😁",
                                     thirdFact: "Есть две крутые собаки: французский бульдог и американский булли",
                                     fourthFact: "Люблю кататься на сноуборде",
                                     fifthFact: "В данный момент работаю руководителем направления, разрабытваем  crm систему для детских центров")
        )
    }
}


struct Person {
    let name: String
    let firstFact: String
    let secondFact: String
    let thirdFact: String
    let fourthFact: String
    let fifthFact: String
    
}



