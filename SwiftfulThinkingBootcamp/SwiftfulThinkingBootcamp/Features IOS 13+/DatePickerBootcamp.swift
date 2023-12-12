//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 23/11/23.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2021)) ?? Date()
    let endingDate: Date = Date()
    
    // Formatando data p/ retirar os milisegundos
    var dateFormater: DateFormatter {
        let formarter = DateFormatter()
        formarter.dateStyle = .medium
        formarter.timeStyle = .short
        return formarter
    }
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                Text("SELECTED DATE IS:")
                Text(dateFormater.string(from: selectedDate))
                    .font(.title)
                //MARK: EXAMPLE 1
                //DatePicker(selection: $selectedDate, label: {Text("Date")})
                
                //MARK: EXAMPLE 2
                // SELECT ITENS custom
                //   DatePicker("Select uma data", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                
                //MARK: EXAMPLE 3 Delimitando Range of Year
                DatePicker("Select a date", selection: $selectedDate, in:
                            startingDate...endingDate, displayedComponents: [.date]
                )
                .datePickerStyle(.graphical)
                //.datePickerStyle(.compact)
                //.datePickerStyle(.wheel)
                .tint(Color.green)
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
