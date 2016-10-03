(* Ocsigen-start
 * http://www.ocsigen.org/ocsigen-start
 *
 * Copyright (C) Université Paris Diderot, CNRS, INRIA, Be Sport.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, with linking exception;
 * either version 2.1 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
*)

(** Data types *)


[%%shared.start]

type userid = int64 [@@deriving json]

type user = {
    userid : userid;
    fn : string;
    ln : string;
    avatar : string option;
  } [@@deriving json]

(** Action links *)
type actionlinkkey_info = {
  userid        : userid;
  email         : string;
  validity      : int64;
  autoconnect   : bool;
  action        : [ `AccountActivation | `PasswordReset | `Custom of string ];
  data          : string;
}

type groupid = int64 [@@deriving json]

type group = {
  id    : groupid;
  name  : string;
  desc  : string option;
}
