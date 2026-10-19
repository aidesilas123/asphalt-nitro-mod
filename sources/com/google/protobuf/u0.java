package com.google.protobuf;

import com.google.protobuf.FieldSet;
import com.google.protobuf.WireFormat;
import com.google.protobuf.f0;
import java.io.IOException;

/* JADX INFO: compiled from: MessageSetSchema.java */
/* JADX INFO: loaded from: classes3.dex */
final class u0<T> implements l1<T> {
    private final q0 defaultInstance;
    private final u<?> extensionSchema;
    private final boolean hasExtensions;
    private final y1<?, ?> unknownFieldSchema;

    private u0(y1<?, ?> y1Var, u<?> uVar, q0 q0Var) {
        this.unknownFieldSchema = y1Var;
        this.hasExtensions = uVar.hasExtensions(q0Var);
        this.extensionSchema = uVar;
        this.defaultInstance = q0Var;
    }

    private <UT, UB> int getUnknownFieldsSerializedSize(y1<UT, UB> y1Var, T t) {
        return y1Var.getSerializedSizeAsMessageSet(y1Var.getFromMessage(t));
    }

    private <UT, UB, ET extends FieldSet.b<ET>> void mergeFromHelper(y1<UT, UB> y1Var, u<ET> uVar, T t, j1 j1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        UB builderFromMessage = y1Var.getBuilderFromMessage(t);
        FieldSet<ET> mutableExtensions = uVar.getMutableExtensions(t);
        while (j1Var.getFieldNumber() != Integer.MAX_VALUE) {
            try {
                if (!parseMessageSetItemOrUnknownField(j1Var, extensionRegistryLite, uVar, mutableExtensions, y1Var, builderFromMessage)) {
                    return;
                }
            } finally {
                y1Var.setBuilderToMessage(t, builderFromMessage);
            }
        }
    }

    static <T> u0<T> newSchema(y1<?, ?> y1Var, u<?> uVar, q0 q0Var) {
        return new u0<>(y1Var, uVar, q0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <UT, UB, ET extends FieldSet.b<ET>> boolean parseMessageSetItemOrUnknownField(j1 j1Var, ExtensionRegistryLite extensionRegistryLite, u<ET> uVar, FieldSet<ET> fieldSet, y1<UT, UB> y1Var, UB ub) throws IOException {
        int tag = j1Var.getTag();
        if (tag != WireFormat.MESSAGE_SET_ITEM_TAG) {
            if (WireFormat.getTagWireType(tag) != 2) {
                return j1Var.skipField();
            }
            Object objFindExtensionByNumber = uVar.findExtensionByNumber(extensionRegistryLite, this.defaultInstance, WireFormat.getTagFieldNumber(tag));
            if (objFindExtensionByNumber == null) {
                return y1Var.mergeOneFieldFrom(ub, j1Var);
            }
            uVar.parseLengthPrefixedMessageSetItem(j1Var, objFindExtensionByNumber, extensionRegistryLite, fieldSet);
            return true;
        }
        int uInt32 = 0;
        Object objFindExtensionByNumber2 = null;
        ByteString bytes = null;
        while (j1Var.getFieldNumber() != Integer.MAX_VALUE) {
            int tag2 = j1Var.getTag();
            if (tag2 == WireFormat.MESSAGE_SET_TYPE_ID_TAG) {
                uInt32 = j1Var.readUInt32();
                objFindExtensionByNumber2 = uVar.findExtensionByNumber(extensionRegistryLite, this.defaultInstance, uInt32);
            } else if (tag2 == WireFormat.MESSAGE_SET_MESSAGE_TAG) {
                if (objFindExtensionByNumber2 != null) {
                    uVar.parseLengthPrefixedMessageSetItem(j1Var, objFindExtensionByNumber2, extensionRegistryLite, fieldSet);
                } else {
                    bytes = j1Var.readBytes();
                }
            } else if (!j1Var.skipField()) {
                break;
            }
        }
        if (j1Var.getTag() != WireFormat.MESSAGE_SET_ITEM_END_TAG) {
            throw d0.invalidEndTag();
        }
        if (bytes != null) {
            if (objFindExtensionByNumber2 != null) {
                uVar.parseMessageSetItem(bytes, objFindExtensionByNumber2, extensionRegistryLite, fieldSet);
            } else {
                y1Var.addLengthDelimited(ub, uInt32, bytes);
            }
        }
        return true;
    }

    private <UT, UB> void writeUnknownFieldsHelper(y1<UT, UB> y1Var, T t, Writer writer) throws IOException {
        y1Var.writeAsMessageSetTo(y1Var.getFromMessage(t), writer);
    }

    @Override // com.google.protobuf.l1
    public boolean equals(T t, T t2) {
        if (!this.unknownFieldSchema.getFromMessage(t).equals(this.unknownFieldSchema.getFromMessage(t2))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.getExtensions(t).equals(this.extensionSchema.getExtensions(t2));
        }
        return true;
    }

    @Override // com.google.protobuf.l1
    public int getSerializedSize(T t) {
        int unknownFieldsSerializedSize = getUnknownFieldsSerializedSize(this.unknownFieldSchema, t) + 0;
        return this.hasExtensions ? unknownFieldsSerializedSize + this.extensionSchema.getExtensions(t).getMessageSetSerializedSize() : unknownFieldsSerializedSize;
    }

    @Override // com.google.protobuf.l1
    public int hashCode(T t) {
        int iHashCode = this.unknownFieldSchema.getFromMessage(t).hashCode();
        return this.hasExtensions ? (iHashCode * 53) + this.extensionSchema.getExtensions(t).hashCode() : iHashCode;
    }

    @Override // com.google.protobuf.l1
    public final boolean isInitialized(T t) {
        return this.extensionSchema.getExtensions(t).isInitialized();
    }

    @Override // com.google.protobuf.l1
    public void makeImmutable(T t) {
        this.unknownFieldSchema.makeImmutable(t);
        this.extensionSchema.makeImmutable(t);
    }

    @Override // com.google.protobuf.l1
    public void mergeFrom(T t, j1 j1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, t, j1Var, extensionRegistryLite);
    }

    @Override // com.google.protobuf.l1
    public void mergeFrom(T t, T t2) {
        SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, t, t2);
        if (this.hasExtensions) {
            SchemaUtil.mergeExtensions(this.extensionSchema, t, t2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00cb A[EDGE_INSN: B:58:0x00cb->B:34:0x00cb BREAK  A[LOOP:1: B:18:0x006d->B:61:0x006d], SYNTHETIC] */
    @Override // com.google.protobuf.l1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void mergeFrom(T r11, byte[] r12, int r13, int r14, com.google.protobuf.h.b r15) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.u0.mergeFrom(java.lang.Object, byte[], int, int, com.google.protobuf.h$b):void");
    }

    @Override // com.google.protobuf.l1
    public T newInstance() {
        q0 q0Var = this.defaultInstance;
        return q0Var instanceof GeneratedMessageLite ? (T) ((GeneratedMessageLite) q0Var).newMutableInstance() : (T) q0Var.newBuilderForType().buildPartial();
    }

    @Override // com.google.protobuf.l1
    public void writeTo(T t, Writer writer) throws IOException {
        for (T t2 : this.extensionSchema.getExtensions(t)) {
            FieldSet.b bVar = (FieldSet.b) t2.getKey();
            if (bVar.getLiteJavaType() != WireFormat.JavaType.MESSAGE || bVar.isRepeated() || bVar.isPacked()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (t2 instanceof f0.b) {
                writer.writeMessageSetItem(bVar.getNumber(), ((f0.b) t2).getField().toByteString());
            } else {
                writer.writeMessageSetItem(bVar.getNumber(), t2.getValue());
            }
        }
        writeUnknownFieldsHelper(this.unknownFieldSchema, t, writer);
    }
}
