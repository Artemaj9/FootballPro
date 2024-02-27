//
//  CarouselView2.swift
//  FootballProRise
//
//  Created by Artem on 27.02.2024.
//

import SwiftUI

struct CarouselView2: View {
    
            @GestureState private var dragState = DragState.inactive
            @State var carouselLocation = 0
            
            private func onDragEnded(drag: DragGesture.Value) {
                print("drag ended")
                let dragThreshold: CGFloat = 100
                if drag.predictedEndTranslation.width > dragThreshold || drag.translation.width > dragThreshold {
                    carouselLocation = carouselLocation - 1
                } else if (drag.predictedEndTranslation.width) < -dragThreshold || drag.translation.width < -dragThreshold {
                    carouselLocation = carouselLocation + 1
                }
            }
            
            var itemHeight: CGFloat
            var views: [AnyView]
            
            var body: some View {
                ZStack {
                    VStack {
                        Text("\(dragState.translation.width)")
                        Text("Carousel Location = \(carouselLocation)")
                        Text("Relative Location = \(relativeLoc())")
                        Text("\(relativeLoc()) / \(views.count - 1)")
                        Spacer()
                    }
                    
                    VStack {
                        ZStack {
                            ForEach(0..<views.count ) { i  in
                                VStack {
                                    Spacer()
                                   Image("player\(i)")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 230, height: self.getHeight(i))
                                        .shadow(radius: 2)
                                        .shadow(radius: 8)
                                        .opacity(self.getOpacity(i))
                                        .offset(x: self.getOffset(i))
                                        
                                    Spacer()
                                }
                               
                                .zIndex(i == abs(9*10000 + carouselLocation) % 9 ? 5 : 0.9)
                                .scaleEffect(i == abs(9*10000 + carouselLocation) % 9 ? 1 : 0.85)
                                .animation(.easeInOut(duration: 2), value: carouselLocation)
                                
                            }
                            .id(carouselLocation)

                            .gesture(
                            DragGesture()
                                .updating($dragState) { drag, state, transaction in
                                    state = .dragging(traslation: drag.translation)
                                    
                                }
                                .onEnded(onDragEnded)
                            )
                        }
                    }
                }
            }
            
            func relativeLoc() -> Int {
                return ((views.count * 1000) + carouselLocation) % views.count
            }
            
            func getHeight(_ i: Int) -> CGFloat {
                if i == relativeLoc() {
                    return itemHeight
                } else {
                    return itemHeight - 50
                }
            }
            
            func getOffset(_ i: Int) -> CGFloat {
                if (i) == relativeLoc()
                {
                    return self.dragState.translation.width
                }
                
                else if
                    i == relativeLoc() + 1
                        ||
                        (relativeLoc() == views.count - 1 && i == 0)
                {
                    return self.dragState.translation.width + 250 - 80
                }
                else if
                    i == relativeLoc() - 1
                        ||
                        (relativeLoc() == 0 && (i) == views.count - 1)
                { return self.dragState.translation.width - (250 - 80)
                }
                else if i == relativeLoc() + 2
                            || (relativeLoc() == views.count - 1  && i == 1)
                            || (relativeLoc() == views.count - 2  && i == 0)
                {
                    return self.dragState.translation.width + 2 * (250 - 80)
                } else if
                    i == relativeLoc() -  2
                        ||
                        relativeLoc() == 1 && i == views.count - 1
                        ||
                        relativeLoc() == 0 && i == views.count - 2
                {
                    return self.dragState.translation.width - 2 * (250 - 80)
                }
                else if
                    i == relativeLoc() + 3
                        ||
                        (relativeLoc() == views.count - 1 && i == 2)
                        ||
                        (relativeLoc() == views.count - 2 && i == 1)
                        ||
                        (relativeLoc() == views.count - 3 && i == 0)
                {
                    return self.dragState.translation.width + 3 * (250 - 80)
                }
                else if
                    i == relativeLoc() - 3
                        ||
                        (relativeLoc() == 2 && i == views.count - 1)
                        ||
                        (relativeLoc() == 1 && i == views.count - 2)
                        ||
                        (relativeLoc() == 0 && i == views.count - 3)
                {
                    return self.dragState.translation.width - (3 * (250 - 80))
                } else {
                    return 10000
                }
            }
            
            func getzindex(_ i: Int) -> Double {
                if i == relativeLoc() {
                    return 2
                } else {
                    return 1
                }
            }
            
            func getOpacity(_ i: Int) -> Double {
                if i == relativeLoc() {
                    return 1
                } else if
                    
                     i + 1 == relativeLoc()
                    || i - 1 == relativeLoc()
                    //|| i + 2 == relativeLoc()
                    //|| i - 2 == relativeLoc()
                    || (i + 1) - views.count == relativeLoc()
                    || (i - 1) + views.count == relativeLoc()
                   // || (i + 2) - views.count ==  relativeLoc()
                    //|| (i - 2) + views.count == relativeLoc()
                    
                {
                    return 0.5
                } else {
                    return 0
                }
            }
        }


        enum DragState {
            case inactive
            case dragging(traslation: CGSize)
            
            var translation: CGSize {
                switch self {
                case .inactive:
                    return .zero
                case .dragging(let translation):
                    return translation
                }
            }
            
            var isDragging: Bool {
                switch self {
                case .inactive:
                    return false
                case .dragging:
                    return true
                }
            }
        }

#Preview {
    CarouselView2(itemHeight: 254, views: Array(repeating: AnyView(Text("")), count: 9))
}
