# 📱 Calculadora de IMC

Aplicativo Flutter para calcular o Índice de Massa Corporal (IMC) com interface intuitiva e avatares personalizados.

## 📋 Sobre o Projeto

Este é um aplicativo de calculadora de IMC desenvolvido em Flutter que permite aos usuários:

- Calcular seu IMC baseado em peso e altura
- Visualizar a categoria do IMC (normal, sobrepeso, etc.)
- Selecionar gênero
- Consultar as faixas de IMC

## 🚀 Funcionalidades

- ✅ Cálculo preciso do IMC
- ✅ Seleção de gênero com avatares divertidos
- ✅ Validação de entrada de dados
- ✅ Tela de resultado detalhada
- ✅ Tela informativa com categorias de IMC
- ✅ Design responsivo

## 📱 Screenshots

### Telas do Aplicativo

1. **Tela Principal** - Entrada de peso e altura
2. **Tela de Resultado** - Exibição do IMC calculado
3. **Tela de Categorias** - Informações sobre as faixas de IMC

## 🛠️ Tecnologias Utilizadas

- **Flutter** - Framework de desenvolvimento
- **Dart** - Linguagem de programação
- **Material Design** - Sistema de design
- **StatefulWidget** - Gerenciamento de estado
- **DiceBear API** - Geração de avatares

## 📦 Estrutura do Projeto

```bash
lib/
├── main.dart                         # Ponto de entrada
├── models/
│   └── calculadora_imc.dart          # Lógica de cálculo
├── screens/
│   ├── calculadora_imc_screen.dart   # Tela principal
│   ├── categorias_imc_screen.dart    # Tela de categorias
│   └── resultado_imc_screen.dart     # Tela de resultado
└── widgets/
    └── seletor_genero.dart           # Widget de seleção
```

## 🔧 Como Executar

### Pré-requisitos

- Flutter SDK instalado ([Guia de instalação](https://flutter.dev/docs/get-started/install))
- Dart SDK (incluído com Flutter)
- Editor de código (VS Code, Android Studio, etc.)
- Dispositivo físico ou emulador

### Passos para execução

1. **Clone o repositório**

   ```bash
   git clone https://github.com/MarcusVRdoN/calculadora_imc
   cd calculadora_imc
   ```

2. **Instale as dependências**

   ```bash
   flutter pub get
   ```

3. **Execute o aplicativo**

   ```bash
   flutter run
   ```

### Comandos úteis

```bash
# Verificar dispositivos conectados
flutter devices

# Executar em modo debug
flutter run

# Executar em modo release
flutter run --release

# Fazer build para Android
flutter build apk

# Fazer build para iOS
flutter build ios

# Executar testes
flutter test

# Analisar código
flutter analyze
```

## 📊 Fórmula do IMC

O IMC é calculado usando a seguinte fórmula:

```dart
IMC = peso (kg) / altura² (m)
```

### Categorias de IMC

| IMC | Categoria
|---|---
| < 18.5 | Abaixo do peso
| 18.5 - 24.9 | Normal
| 25.0 - 29.9 | Sobrepeso
| ≥ 30.0 | Obesidade

## 📝 Tarefas Futuras

- [ ] Implementar histórico de cálculos
- [ ] Modo escuro
- [ ] Exportar resultados em PDF

## 📞 Suporte e Contato

### Desenvolvedor

**Marcus Vinícius Ribeiro do Nascimento**

- 📧 Email: <marcus.nascimento@rede.ulbra.br>
- 🎓 Universidade: ULBRA - Educação a Distância
- 📚 Curso: Tecnologia em Análise e Desenvolvimento de Sistemas

### Projeto Acadêmico

Este projeto foi desenvolvido como trabalho de conclusão da disciplina **Desenvolvimento de Sistemas Móveis** da Universidade Luterana do Brasil (ULBRA).

---

## 📄 Licença

Este projeto é desenvolvido para fins acadêmicos como parte do curso de Tecnologia em Análise e Desenvolvimento de Sistemas da ULBRA.