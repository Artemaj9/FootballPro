////
////  CarouselView.swift
////
//
//import SwiftUI
//
//struct CarouselView: View {
//    @StateObject var viewModel = CarouselLogic()
//    
//    @State var startingOffsetX: CGFloat = UIScreen.main.bounds.width * 0
//    @State var endingOffsetX: CGFloat = 0
//    @State var currentDragOffsetX:CGFloat = 0
//    
//    var body: some View {
//        VStack {
//            ScrollViewReader { scrollProxy in
//                ScrollView(.horizontal, showsIndicators: false) {
//                        HStack {
//                            ForEach(1..<10) { index in
//                                GeometryReader { geometry in
//                                    Image("player\(index)")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: UIScreen.main.bounds.width * 0.9)
//                                        .offset(x: currentDragOffsetX)
//                                        .opacity(getScrollOpacity(geometry: geometry))
//                                        .scaleEffect(getScrollOpacity(geometry: geometry))
//                                        .gesture(DragGesture(minimumDistance: 1, coordinateSpace: .global)
//                                            .onChanged { value in
//                                                withAnimation(.spring()) {
//                                                    currentDragOffsetX = value.translation.width
//                                                }
//                                            }
//                                            .onEnded { _ in
//                                                let idToScroll = viewModel.scrollto(
//                                                    id: index,
//                                                    offsetX: viewModel.currentDragOffsetX
//                                                )
//                                                viewModel.currentBackground = idToScroll
//                                                
//                                                withAnimation {
//                                                    scrollProxy.scrollTo(
//                                                        idToScroll,
//                                                        anchor: .center
//                                                    )
//                                                    
//                                                    viewModel.scrollFlag = viewModel.scrollFlag(
//                                                        id: index, offsetX: viewModel.currentDragOffsetX
//                                                    )
//                                                    
//                                                    if viewModel.scrollFlag {
//                                                        viewModel.setUpTimer()
//                                                    } else {
//                                                        viewModel.currentDragOffsetX = 0
//                                                    }
//                                                }
//                                            }
//                                        )
//                                }
//                                .frame(width: 240, height: 240)
//                                
//                            }
//                            Color.clear
//                                .frame(width:  UIScreen.main.bounds.width * 0.4)
//                    }
//                   
//                        .padding()
//                }
//                .onReceive(NotificationCenter.default.publisher(
//                    for: Notification.Name("ScrollToEpisode"))
//                ) { notification in
//                    if let episodeIndex = notification.object as? Int {
//                        withAnimation {
//                            scrollProxy.scrollTo(episodeIndex, anchor: .center)
//                        }
//                    }
//                }
//                .onReceive(NotificationCenter.default.publisher(
//                    for: Notification.Name("ScrollToNextEpisode"))
//                ) { notification in
//                    if let episodeIndex = notification.object as? Int {
//                        withAnimation {
//                            scrollProxy.scrollTo(episodeIndex, anchor: .center)
//                        }
//                    }
//                }
//            }
//        }
//    }
//    
//    func getScrollOpacity(geometry: GeometryProxy) -> Double {
//        let maxX = UIScreen.main.bounds.width
//        
//        // Координата верхней границы контейнера
//        let currentX = geometry.frame(in: .global).midX
//        
//        let opacity: Double
//        
//        //координата, с которой начинает убывать прозрачнотсь
//        let xInitial = maxX
//        let xInitial2 = 0*maxX
//        
//        // координата, на которой прозрачность становится нулевой
//        let xFinal = 1.7*maxX
//        let xFinal2 = -0.7*maxX
//        
//        // угловой коэффициент линейной зависимости
//        let k = 1 / (xInitial - xFinal)
//        let kTop = 1 / (xInitial2 - xFinal2)
//        
//        // свободный коэффициент в линейной зависимости
//        let b = -k*xFinal
//        let bTop = -kTop*xFinal2
//        
//        if currentX < xInitial && currentX > xInitial2 {
//            opacity = 1
//        } else if currentX >= xInitial {
//            opacity = k * currentX + b
//        } else  {
//            opacity = kTop * currentX + bTop
//        }
//        
//        return opacity
//    }
//    
//    func getPercentage(geo: GeometryProxy) -> Double {
//        let maxDistance = UIScreen.main.bounds.width / 2
//        let currentX = geo.frame(in: .global).midX
//        return Double(1 - (currentX / maxDistance))
//    }
//    
//    func scrollto(id: Int, offsetX: CGFloat) -> Int {
//        print("Scroll to id \(id), offset: \(offsetX)")
//        var idToScroll: Int
//        if offsetX > 100 {
//            idToScroll = id != 0 ? id - 1 : id
//        } else if abs(offsetX) <= 100  {
//            idToScroll = id
//        } else {
//            idToScroll = id + 1
//        }
//        print("trying to set episode \(idToScroll)")
//       // player.setCurrentEpisode(index: idToScroll)
//        return idToScroll
//    }
//    
//    func scrollFlag(id: Int, offsetX: CGFloat) -> Bool {
//        var flag: Bool
//        if offsetX > 100 && id != 0 {
//            flag = true
//        } else if abs(offsetX) <= 100  {
//            flag = false
//        } else {
//            flag = true
//        }
//        return flag
//    }
//    
//}
//
//#Preview {
//    CarouselView()
//}
