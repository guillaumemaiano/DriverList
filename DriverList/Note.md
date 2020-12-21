# Notes

## Service

- Swagger (web browser based) fails to connect because of the CORS restrictions
- CURL works fine: 
> curl -X GET "https://service.drivequant.com/v2/drivekit/driver/ranking?rankingDepth=5&rankingPeriod=ALL_TIME&rankingType=safety&groupName=All" -H  "accept: application/json" -H "Authorization: eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqZXJlbXkuYmF5bGVAZHJpdmVxdWFudC5jb20iLCJoeXBlckFkbWluIjpmYWxzZSwiYXVkaWVuY2UiOiJtb2JpbGUiLCJjcmVhdGVkIjoxNjA0Mzk3MjQ5OTc4LCJleHAiOjE2MTIxNzMyNDksImN1c3RvbWVyIjoiVzRuRHZOc3Q5cjdDZDF4bUlCMWVpWmlFIn0.dqQgljBQQJ3S4KzHqa51_ICbe2f7Z_gfuOOQt9piPX9_vos6nEhMryXB6puvRgAcEChAyMjYh6OrP-ZARpMkoQ"
yields:
> {"userRanked":{"pseudo":"jeremy","rank":0,"score":0.0,"previousRank":0,"distance":9109.0,"userId":"jeremy.bayle@drivequant.com"},"driversRanked":[{"pseudo":"PF beta ","rank":1,"score":9.93,"previousRank":0,"distance":29.0,"userId":"pauline+betaios@drivequant.com"},{"pseudo":"PFC ","rank":2,"score":9.8,"previousRank":0,"distance":67.0,"userId":"pauline+cf@drivequant.com"},{"pseudo":"Pau badges","rank":3,"score":9.74,"previousRank":0,"distance":63.0,"userId":"pauline+badges@drivequant.com"},{"pseudo":"David Test","rank":4,"score":9.63,"previousRank":0,"distance":289.0,"userId":"david.bauduin+test3@drivequant.com"},{"pseudo":"David","rank":5,"score":9.3,"previousRank":0,"distance":2677.0,"userId":"david.bauduin@gmail.com"}],"nbDriverRanked":132}%

## UI

Basic storyboard-enabled solution
Localization in English (dev lang) and French (BartyCrouch via brew for clean updates of localized files)

## Tests

Two hours, no time.
