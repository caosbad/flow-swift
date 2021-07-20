// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: flow/entities/block_seal.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Flow_Entities_BlockSeal {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var blockID: Data = Data()

  var executionReceiptID: Data = Data()

  var executionReceiptSignatures: [Data] = []

  var resultApprovalSignatures: [Data] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "flow.entities"

extension Flow_Entities_BlockSeal: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BlockSeal"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "block_id"),
    2: .standard(proto: "execution_receipt_id"),
    3: .standard(proto: "execution_receipt_signatures"),
    4: .standard(proto: "result_approval_signatures"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.blockID) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.executionReceiptID) }()
      case 3: try { try decoder.decodeRepeatedBytesField(value: &self.executionReceiptSignatures) }()
      case 4: try { try decoder.decodeRepeatedBytesField(value: &self.resultApprovalSignatures) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.blockID.isEmpty {
      try visitor.visitSingularBytesField(value: self.blockID, fieldNumber: 1)
    }
    if !self.executionReceiptID.isEmpty {
      try visitor.visitSingularBytesField(value: self.executionReceiptID, fieldNumber: 2)
    }
    if !self.executionReceiptSignatures.isEmpty {
      try visitor.visitRepeatedBytesField(value: self.executionReceiptSignatures, fieldNumber: 3)
    }
    if !self.resultApprovalSignatures.isEmpty {
      try visitor.visitRepeatedBytesField(value: self.resultApprovalSignatures, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Flow_Entities_BlockSeal, rhs: Flow_Entities_BlockSeal) -> Bool {
    if lhs.blockID != rhs.blockID {return false}
    if lhs.executionReceiptID != rhs.executionReceiptID {return false}
    if lhs.executionReceiptSignatures != rhs.executionReceiptSignatures {return false}
    if lhs.resultApprovalSignatures != rhs.resultApprovalSignatures {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
