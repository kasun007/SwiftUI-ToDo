

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var showAddTaskView = false
    @StateObject var realmManager = RealamManager()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Color(hue: 0.086, saturation: 0.141, brightness: 0.972)
                .ignoresSafeArea()
            
            TasksView().environmentObject(realmManager)
         
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView().environmentObject(realmManager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
