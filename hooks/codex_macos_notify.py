#!/usr/bin/env python3
import json
import subprocess
import sys


def main() -> int:
    if len(sys.argv) != 2:
        return 1

    notification = json.loads(sys.argv[1])
    if notification.get("type") != "agent-turn-complete":
        return 0

    inputs = notification.get("input-messages", [])
    title = inputs[-1] if inputs else "Codex"
    message = notification.get("last-assistant-message") or "No assistant message available."

    subprocess.run(
        [
            "osascript",
            "-e",
            f"display notification {json.dumps(message, ensure_ascii=False)} with title {json.dumps(title, ensure_ascii=False)}",
        ],
        check=False,
    )
    subprocess.run(["afplay", "/System/Library/Sounds/Glass.aiff"], check=False)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
