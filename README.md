# Automatic-Hand-Sanitizer

An implementation of Automatic Hand Sanitizer (Infra-red) based on 8-bits MCU

Note that there's a design flaw in my automatic hand santizer. I put the capacitive touch sensor in the same GPIO pin as the data port, which causes problem in burning program into the MCU. The capacitive touch sensor HAS TO BE REMOVED like my example before burning program.
