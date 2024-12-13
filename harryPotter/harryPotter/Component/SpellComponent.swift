import SwiftUI

struct SpellComponent: View {
    
    let spell: Spell
    
    var body: some View {
        HStack{
            Image("spell")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            VStack(spacing: 20){
                
                
                Text(spell.spell)
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                Text("\(spell.use)")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
        }
        .frame(width: 330, height: 200)
        .padding()
        .background(Color.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 5)
        .padding()
    }
}

#Preview {
    SpellComponent(spell: Spell(spell: "Expelliarmus", use: "Disarming Charm"))
}
