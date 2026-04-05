# SonarHealth Challenge

Challenge técnico iOS desarrollado en Swift. La aplicación implementa un validador de emails con reglas específicas.

## Requisitos de validación

Un email es válido si cumple con el siguiente formato:

- Al menos una letra o número
- Seguido del carácter `@`
- Al menos una letra o número
- Finaliza con `.` seguido de al menos dos letras

**Ejemplos:**

| Email | Resultado |
|-------|-----------|
| `adsa@sonarhealth.co` | ✅ Válido |
| `dasdasd@sonarhealth.c` | ❌ Inválido |

![Preview](https://user-images.githubusercontent.com/62031847/138733409-d0f209f3-d07e-4e2e-a907-1314f535afd4.png)

## Tecnologías

- **Lenguaje:** Swift
- **Plataforma:** iOS
- **IDE:** Xcode

## Estructura

```
testSH/
├── AppDelegate.swift
├── SceneDelegate.swift
├── ViewController.swift
└── General/
    └── Extensions.swift
```

## Instalación

```bash
git clone https://github.com/lucas-dilorenzo/SonarHealth-Challenge.git
cd SonarHealth-Challenge
open testSH/testSH.xcodeproj
```
