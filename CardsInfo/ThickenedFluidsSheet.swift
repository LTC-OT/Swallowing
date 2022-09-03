//
//  ThickenedFluidsSheet.swift
//  Swallowing
//
//  Created by Jaime Fagnilli on 2022-04-26.
//

import SwiftUI

struct ThickenedFluidsSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showMainView = false
    @State var angle: Double = 360
    @State var scale:  CGFloat = 1
    
    @State private var sscale: CGFloat = 1.0
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            ScrollView {
                Spacer(minLength: 40)
                VStack (alignment: .center, spacing: 0){
                    VStack {
                        Text("Thickening Fluids/ Using Resource ThickenUp Clear(Water, Tea/Coffee, Juice and Milk)")
                            .font(.headline)
                            .padding()
                        Text("""
    Directions:
    
    1. Pour measured amount of liquid into a cup
    2. Add thickening powder to hot or cold liquid
    3. Stir briskly for 20-30 seconds until powder is well dissolved
    4. Leave standing for at least 5 minutes or until desired thickness is achieved
    5. Ready to serve
    
    *Note: Follow directions carefully. Any additions to liquids (i.e. cream/milk, sugar for coffee/tea) should be added prior to thickening. Once fluid has set, you cannot add more thickening powder to make it thicker, or liquid to make it thinner.
    
    
    """)
                        .frameStyle()
                        
                        VStack {
                            Text("""
                          People with swallowing difficulties often require their drinks to be specially prepared to allow them to swallow more safely.
                          """).font(.headline)
                                .padding()
                            Text("""
  THIN FLUIDS
  
  For people with good control of liquids in their mouth and throat .
  
  Liquid such as water, juice, milk, tea, coffee. Ice cream, Jell-O and sherbet are considered thin fluids as they melt in the mouth.
  """)
                            .frameStyle()
                            Text("""
MILD THICK (NECTAR)
                         
For people with mild difficulty controlling liquids in their mouth and throat. A nectar thick fluid will flow more slowly than a thin fluid.
                         
Liquids such as tomato juice, buttermilk or some nectar juices . A thickener can be added to thin liquids to achieve nectar thickness.
""")
                            .frameStyle()
                            
                        }
                        
                        
                        VStack {
                            Text("""
 MODERATELY THICK (HONEY)
 
 For people with moderate difficulty controlling liquids in their mouth and throat. A honey thick liquid will flow more slowly than nectar thick liquids.
          
 Fluids that look like liquid honey when poured. Typically  a thickener is used to achieve a honey thick fluid consistency. Milkshakes or smoothies will vary in thickness as they melt.
 """)
                            .frameStyle()
                            
                        }
                        Text("""
 PUDDING/SPOON THICK
          
 For people with severe difficulty controlling fluids in their mouth and throat. Some people may be given fluids in this way  if they refuse to drink from a cup.
          
 Pudding/Spoon thick liquids hold together and are usually given by spoon. A thickener product is used to achieve pudding spoon thickness . Apple sauce and pudding may also thick liquids.
 """)
                        .frameStyle()
                        
                        Text ("Mixing Chart")
                            .font(.headline)
                            .padding()
                        Image ("Mixing Chart")
                            .resizable()
                            .frame(height: 380, alignment: .center)
                            .scaledToFit()
                            .padding()
                        
                        
                    }//VSTACK
                }
                .onAppear {
                    withAnimation(.linear(duration: 2)) {
                        self.angle = 0.5
                        self.scale = 1.5 }
                    
                    withAnimation(Animation.linear.delay(1.75)){
                        self.showMainView = true }
                }
                
            }
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.primary)
                    .font(.headline)
                    .padding(20)
                
            })
            
            
        }//ZSTACK
    }
}

struct ThickenedFluidsSheet_Previews: PreviewProvider {
    static var previews: some View {
        ThickenedFluidsSheet()
    }
}
