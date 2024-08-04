:: ============================================
:: Webhook Messenger
:: Version 1.0.0
:: Author: ItzBloxxy
:: Source: 
:: Desc: Make sure to change the webhook to your real webhook!
:: You can customize color and title too!
:: ============================================

@echo off
title Webhook Messenger 1.0.0
color 2
setlocal enabledelayedexpansion

:: Set your webhook URL here
set WEBHOOK_URL=https://discord.com/api/webhooks/yourwebhookhere

:loop
cls
set /p MESSAGE=Enter your message: 
curl -H "Content-Type: application/json" -X POST -d "{\"content\": \"!MESSAGE!\"}" %WEBHOOK_URL%
goto loop