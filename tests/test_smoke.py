"""The fast tests of agent-sandbox. CI fails when pytest finds no test (exit 5): keep at least one."""
import tomllib


def test_agent_toml_names_the_repository():
    with open("agent.toml", "rb") as f:
        assert tomllib.load(f)["repo"] == "Larspolo/agent-sandbox"
