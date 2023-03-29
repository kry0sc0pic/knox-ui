<!--
 Copyright (C) 2023 Krishaay Jois
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU Affero General Public License as
 published by the Free Software Foundation, either version 3 of the
 License, or (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU Affero General Public License for more details.
 
 You should have received a copy of the GNU Affero General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
-->

![logo](docs/logo.png)
<hr>

### Knox is a contactless payments app powered by quantum key distribution ~~and superdense coding~~.
<br>

This was built as a capstone project for the  [Introduction to Quantum Computing with IBM Quantum Course.](https://www.qubitbyqubit.org/course-info)

## Knox Repositories
|Component | Repository |
--- | ---
|Frontend| [kry0sc0pic/knox-ui](https://github.com/kry0sc0pic/knox-ui)|
| Backend | //TODO |
| POS Device | //TODO |
| QKD Demo | [abirtanjinadnan/qkd_project](https://github.com/abirtanjinadnan/qkd_project) | 


> 🚧 **The Knox Frontend only works with phones which have NFC Features** 🚧


## Frontend Setup
```sh
git clone https://github.com/kry0sc0pic/knox-ui.git
```
OR
```sh
gh repo clone kry0sc0pic/knox-ui
```
```sh
cd knox-ui
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```
```sh
flutter run
```
To build an apk
```
flutter build apk --release
```
Use the apk which is generated in the `build/app/outputs/flutter-apk` folder.

## Contributors
- [Krishaay Jois](https://github.com/kry0sc0pic)
- [Anaya Satavalekar]()
- [Tanjin Adnan Abir](https://github.com/abirtanjinadnan)
- [Muralika M](https://github.com/muralikapj)
- [Kauã Eduardo Ecker](https://github.com/KauaEduardoEcker)

## License
[GNU AGPLv3](https://choosealicense.com/licenses/agpl-3.0/)
