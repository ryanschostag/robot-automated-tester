"""
Module for managing Windows Firewall rules using netsh.
"""
import subprocess


class FirewallKeywords:
    """
    Keywords for managing Windows Firewall rules using netsh.
    """
    def add_firewall_rule(self, name, port, protocol="TCP", action="allow", direction="in"):
        """
        Adds a firewall rule using netsh.
        """
        command = [
            "netsh", "advfirewall", "firewall", "add", "rule",
            f"name={name}",
            f"dir={direction}",
            f"action={action}",
            f"protocol={protocol}",
            f"localport={port}"
        ]
        result = subprocess.run(command, capture_output=True, text=True)
        if result.returncode != 0:
            raise Exception(f"Failed to add rule: {result.stderr}")
        return result.stdout

    def rule_exists(self, name : str) -> bool:
        command = ["netsh", "advfirewall", "firewall", "show", "rule", f"name={name}"]
        result = subprocess.run(command, capture_output=True, text=True)
        return "No rules match the specified criteria" not in result.stdout

    def delete_firewall_rule(self, name : str):
        """
        Deletes the firewall rule by name.
        """
        command = ["netsh", "advfirewall", "firewall", "delete", "rule", f"name={name}"]
        subprocess.run(command, capture_output=True, text=True)
