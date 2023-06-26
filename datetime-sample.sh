#!/usr/bin/env bash
set -euxo pipefail

dotnet run datetime --input "今日は何日？"
dotnet run datetime --input "何日ですか？"
dotnet run datetime --input "何日？"
dotnet run datetime --input "今日は何日か教えてください"

dotnet run datetime --input "現在の時間は？"
dotnet run datetime --input "今何時ですか？"
dotnet run datetime --input "何時？"
dotnet run datetime --input "今何時でしょうか・・・？"
dotnet run datetime --input "汝、今何時"
