# Ollama models

Three models with distinct conversational styles:

| Model | Style | Temperature | Best for |
|-------|-------|-------------|----------|
| `model-concise` | Brief, direct | 0.5 | TTS, quick answers |
| `model-friendly` | Warm, casual | 0.7 | Conversation, chat |
| `model-formal` | Professional, articulate | 0.3 | Business, technical |

## Usage

```bash
# Concise - short responses optimized for TTS
ollama create concise -f model-concise
ollama run concise

# Friendly - warm, casual conversational tone
ollama create friendly -f model-friendly
ollama run friendly

# Formal - professional, thorough responses
ollama create formal -f model-formal
ollama run formal
```

## Compare all three

Run `./tmux.sh` to open a 3-pane tmux session with all models side-by-side.
