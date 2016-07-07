/*
 * Copyright (c) 2010 Brigham Young University
 *
 * This file is part of the BYU RapidSmith Tools.
 *
 * BYU RapidSmith Tools is free software: you may redistribute it
 * and/or modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation, either version 2 of
 * the License, or (at your option) any later version.
 *
 * BYU RapidSmith Tools is distributed in the hope that it will be
 * useful, but WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 *
 * A copy of the GNU General Public License is included with the BYU
 * RapidSmith Tools. It can be found at doc/gpl2.txt. You may also
 * get a copy of the license at <http://www.gnu.org/licenses/>.
 *
 */

package edu.byu.ece.rapidSmith.device.creation;

import java.util.List;

/**
 *  Convenience class to report the current progress of ongoing parsing.
 */
public class XDLRCParseProgressListener extends XDLRCParserListener {

	private int totalTiles;
	private int tilesParsed;

	public XDLRCParseProgressListener() {
		this.totalTiles = 0;
		this.tilesParsed = 0;
	}

	@Override
	protected void enterXdlResourceReport(List<String> tokens) {
		this.totalTiles = 0;
		this.tilesParsed = 0;
	}

	@Override
	/**
	 * Just print a line.
	 */
	protected void exitXdlResourceReport(List<String> tokens) {
		System.out.println();
	}

	@Override
	protected void enterTiles(List<String> tokens) {
		totalTiles = Integer.parseInt(tokens.get(1)) * Integer.parseInt(tokens.get(2));
		System.out.print(String.format("Parsing tile %6d of %6d tiles.", tilesParsed, totalTiles));
	}

	@Override
	protected void enterTile(List<String> tokens) {
		tilesParsed++;
		System.out.print("\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b");
		System.out.print(String.format("Parsing tile %6d of %6d tiles.", tilesParsed, totalTiles));
	}
}
