Mise + 1Password minimal env loader

Setup

1. Sign in to 1Password CLI for your account:
   eval "$(op signin --account <your-domain-or-shorthand>)"
2. Copy .op-env.example to .op-env and edit values to your vault paths:
   cp .op-env.example .op-env
3. Optionally set OP_ACCOUNT for this shell:
   export OP_ACCOUNT=<your-domain-or-shorthand>

Usage

source ./.1pass.sh
source ./.1pass.sh unset

Mise hooks

This repo includes mise.toml hooks that call the script on enter/leave. Trust once:
mise trust

