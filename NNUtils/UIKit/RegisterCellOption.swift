//
//  Reusable.swift
//  DevKit
//
//  Created by Nang Nguyen on 4/18/19.
//  Copyright © 2019 Evizi. All rights reserved.
//

import UIKit

public enum RegisterCellOption<CellType> {
    case `class`(_ cellType: CellType.Type)
    case nib(_ cellType: CellType.Type)
}
