// Copyright (C) 2023 Krishaay Jois
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:knox/consts.dart';

enum Filters { bank, crypto, all }

class BalanceFilterChip extends StatelessWidget {
  const BalanceFilterChip(
      {super.key,
      required this.color,
      required this.onTap,
      required this.active,
      required this.text});
  final Color color;
  final Function onTap;
  final bool active;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: active ? color : kFilterDisabledColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: kSpaceGrotesk.copyWith(
                  color: active ? Colors.white : kFilterDisabledColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
