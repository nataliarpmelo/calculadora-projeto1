# Calculadora simples em Python

print("=== Calculadora ===")

num1 = float(input("Digite o primeiro número: "))
num2 = float(input("Digite o segundo número: "))
op = input("Escolha a operação (+, -, *, /): ")

if op == "+":
    resultado = num1 + num2
elif op == "-":
    resultado = num1 - num2
elif op == "*":
    resultado = num1 * num2
elif op == "/":
    if num2 == 0:
        print("Erro: não é possível dividir por zero.")
        resultado = None
    else:
        resultado = num1 / num2
else:
    print("Operação inválida.")
    resultado = None

if resultado is not None:
    print(f"Resultado: {resultado}")
