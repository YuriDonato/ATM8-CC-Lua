# ATM8-CC-Lua

Repositório para versionamento de programas Lua destinados aos computadores CC:Tweaked no servidor ATM8 Minecraft.

## Objetivo

Permitir que **Kothas** e **Yuri** editem simultaneamente os programas dos computadores no servidor Minecraft, com deploy automático via webhook do GitHub para um servidor externo hospedado na mesma máquina do servidor.

## Como funciona

1. Os arquivos Lua são organizados na pasta `computer/` por ID do computador
2. Ao fazer commit e push das alterações, o GitHub dispara um webhook
3. O servidor externo (na mesma máquina do servidor Minecraft) recebe a notificação
4. Os arquivos são sincronizados automaticamente para os computadores CC:Tweaked in-game

## Estrutura do projeto

```
ATM8-CC-Lua/
├── computer/          # Programas organizados por ID de computador
│   └── 0/            # Computador ID 0
│       └── teste.lua
├── ids.json          # Mapeamento de IDs de computadores
└── README.md
```

## Configuração

### `ids.json`
Arquivo de mapeamento entre IDs de computadores e diretórios:
```json
{
  "computer": 0
}
```

## Como contribuir

1. Clone o repositório
2. Edite os arquivos Lua na pasta correspondente ao ID do computador alvo
3. Commit e push das alterações
4. O deploy automático cuidará da sincronização com o servidor Minecraft

## Requisitos

- Minecraft com modpack ATM8
- Mod CC:Tweaked (ComputerCraft)
- Servidor externo configurado com webhook para receber atualizações do GitHub
