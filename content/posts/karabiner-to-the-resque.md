---
title: "Karabiner to the Resque"
date: 2020-09-06T01:03:08+03:00
draft: false
---

Recently I had to start using windows for development, and since I was wanna keep using my beloved MacBook, which I used for many years, I had to choose which option will work for me best. There were 3 options to choose from:
1. Use windows workstation via RDP. This may sound costly, but I have a windows machine to spare.
2. Create a Windows VM via Parallels (as this is still the best way to run Windows on Mac). This will involve two additional licenses: one for Parallels, and one for Windows.
3. Use dual boot via BootCamp to run Windows on MacBook natively.

I rejected the third option almost immediately, as I would have no benefit from MacBook except its pretty good hardware. And I love macOS with all its perks. I thought about trying Parallels, but this option has few drawbacks as well. First of all, this will increase CPU usage, as no software can run for free. Even though they did a great job optimizing their virtualization, this will reduce the time my Mac can run on battery.
Given how fast modern networks are, I decided to start with a first option, since it had zero additional cost for me, and to be honest, I’m not even thinking about switching to any of the other options anymore. I found out many benefits to use this approach for my windows development, including the fact that
- I can run pretty heavy builds completely in the background for me, I can just switch out from the RDP window.
- I can still use my preferred browser, all macOS gestures in everyday life, and all soft for macOS that I use daily.
- Etc

But there was a huge drawback for me, years of using macOS keyboard shortcuts have stamped on my brain, and I could not easily switch to windows ones. The thing is Mac relies on the cmd key heavily, while most of the windows shortcuts are Control-based. Luckily enough, many hotkeys map directly, you only need to switch cmd to control.

And here Karabiner comes to the rescue. It is an open-source app that allows you to remap your keyboard keys as you want them to be. And not merely to remap keys, it supports complex modifications. There will be zero benefits to simply remap Cmd to Control, as macOS shortcuts will stop to work. But I wanted the best of both worlds, and here is a way how I achieved it.

In Karabiner you can create complex modifications. Surprisingly, there is no way to create your own complex mods from its UI, but you can define them as JSON files. All you have to do is create a directory for your complex modifications like this `mkdir -p ~/.config/karabiner/assets/complex_modifications` and put your custom rules there. Here is my RDP_remap.json with custom rules:

```json
{
    "title": "Remote Desktop Remapping",
    "rules": [
        {
            "description": "Swap left command and control in RDP",
            "manipulators": [
                {
                    "conditions": [
                        {
                            "bundle_identifiers": [
                                "com\\.microsoft\\.rdc\\.mac"
                            ],
                            "type": "frontmost_application_if"
                        }
                    ],
                    "from": {
                        "key_code": "left_control",
                        "modifiers": {
                            "optional": [
                                "any"
                            ]
                        }
                    },
                    "to": [
                        {
                            "key_code": "left_command"
                        }
                    ],
                    "type": "basic"
                },
                {
                    "conditions": [
                        {
                            "bundle_identifiers": [
                                "com\\.microsoft\\.rdc\\.mac"
                            ],
                            "type": "frontmost_application_if"
                        }
                    ],
                    "from": {
                        "key_code": "left_command",
                        "modifiers": {
                            "optional": [
                                "any"
                            ]
                        }
                    },
                    "to": [
                        {
                            "key_code": "left_control"
                        }
                    ],
                    "type": "basic"
                }
            ]
        },
       {
            "description": "CMD+Tab to Alt+Tab in RDP",
            "manipulators": [
                {
                    "conditions": [
                        {
                            "bundle_identifiers": [
                                "com\\.microsoft\\.rdc\\.mac"
                            ],
                            "type": "frontmost_application_if"
                        }
                    ],
                    "from": {
                        "key_code": "tab",
                        "modifiers": {
                            "mandatory": ["left_control"]
                        }
                    },
                    "to": [
                        {
                            "key_code": "tab",
                            "modifiers": ["left_option"]
                        }
                    ],
                    "type": "basic"
                }
            ]
        }
    ]
  }
```

The first rule swaps left command and control keys. The second one swaps not just a key, but a combination: cmd+tab to alt+tab. Yes, no more frustration to swap between windows inside RPD.

After creating this rules (or more), you can simply enable them in Karabiner -> Preferences -> Complex Modifications -> Add rule. And that’s it, you can enjoy your familiar keybindings without any pain.

I actually have one more modification to share. I never use the control key on my keyboard, as I need it too often, but its location is just not suitable for me. Because of that, I remapped the caps lock to act as a control key. You can do that even without Karabiner, just go to System Preferences -> Keyboard -> Modifier Keys. But since I already have key remapping in Karabiner, I decided to do this change there as well. This change does not require any JSON files creation and can be done by the UI itself. Just go to Simple modification and add items there. And one tip here: remap it to right control, otherwise RDP rules will swap it with cmd. Yes, your actual Mac keyboard doesn’t have one, but who cares 🙂
