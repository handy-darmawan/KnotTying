import SwiftUI

struct ContentView: View {
    @State var page = 1
    var body: some View {
        VStack {
            if page == 1 {
                FrontView(page: $page)
            } else if page == 2 {
                IntroductionView(page: $page)
            } else if page == 3{
                HomeView(page: $page)
            }
        }
    }
}
