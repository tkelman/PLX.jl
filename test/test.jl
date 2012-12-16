# PLX.jl
# Copyright (C) 2012   Simon Kornblith

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.

# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

load("PLX")
using PLX

# Unfortunately, these test files come from the SDK provided by Plexon Inc. and 
# are assumed not to be redistributable 

try
	PLXFile("tests/plexon/ts_freq_zero.plx")
	error("Attempt to read ts_freq_zero.plx should throw")
catch x
end
PLXFile("tests/plexon/strobed_negative.plx")
PLXFile("tests/plexon/waveform_freq_zero.plx")