# homebrew-orxhestra

Homebrew tap for [orxhestra](https://github.com/NicolaiLassen/orxhestra) and [orxhestra-code](https://github.com/NicolaiLassen/orxhestra-code).

## Install

```bash
brew tap NicolaiLassen/orxhestra
```

### orxhestra — LLM agent framework

```bash
brew install orxhestra
```

```bash
orx                              # interactive coding agent
orx --model openai/gpt-5.4      # use any LLM
orx my-agent.yaml                # run a custom agent
```

### orxhestra-code — coding agent

```bash
brew install orxhestra-code
```

```bash
orx-coder                                    # default model
orx-coder --model openai/gpt-5.4            # use any LLM
orx-coder --model anthropic/claude-sonnet-4-6
```

## Update

```bash
brew upgrade orxhestra
brew upgrade orxhestra-code
```
