import Foundation

// 1. Envia o Ola Mundo
print("Ola Mundo!")
print("-------------------")

// 2. Tenta ler a entrada padrao (STDIN) e converter para um numero inteiro
if let input = readLine(), let numero = Int(input) {
    print("Voce escolheu o numero: \(numero)")
    print("Tabuada do \(numero):")
    
    // 3. Loop para calcular e mostrar a tabuada de 1 a 10
    for i in 1...10 {
        print("\(numero) x \(i) = \(numero * i)")
    }
} else {
    print("Nenhum numero foi detectado ou a entrada nao e valida.")
}