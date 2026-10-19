package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.WireFormat;
import com.google.protobuf.q0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: ExtensionSchemaLite.java */
/* JADX INFO: loaded from: classes3.dex */
final class v extends u<GeneratedMessageLite.f> {

    /* JADX INFO: compiled from: ExtensionSchemaLite.java */
    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    v() {
    }

    @Override // com.google.protobuf.u
    int extensionNumber(Map.Entry<?, ?> entry) {
        return ((GeneratedMessageLite.f) entry.getKey()).getNumber();
    }

    @Override // com.google.protobuf.u
    Object findExtensionByNumber(ExtensionRegistryLite extensionRegistryLite, q0 q0Var, int i) {
        return extensionRegistryLite.findLiteExtensionByNumber(q0Var, i);
    }

    @Override // com.google.protobuf.u
    FieldSet<GeneratedMessageLite.f> getExtensions(Object obj) {
        return ((GeneratedMessageLite.ExtendableMessage) obj).extensions;
    }

    @Override // com.google.protobuf.u
    FieldSet<GeneratedMessageLite.f> getMutableExtensions(Object obj) {
        return ((GeneratedMessageLite.ExtendableMessage) obj).ensureExtensionsAreMutable();
    }

    @Override // com.google.protobuf.u
    boolean hasExtensions(q0 q0Var) {
        return q0Var instanceof GeneratedMessageLite.ExtendableMessage;
    }

    @Override // com.google.protobuf.u
    void makeImmutable(Object obj) {
        getExtensions(obj).makeImmutable();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.u
    <UT, UB> UB parseExtension(Object obj, j1 j1Var, Object obj2, ExtensionRegistryLite extensionRegistryLite, FieldSet<GeneratedMessageLite.f> fieldSet, UB ub, y1<UT, UB> y1Var) throws IOException {
        Object field;
        ArrayList arrayList;
        GeneratedMessageLite.g gVar = (GeneratedMessageLite.g) obj2;
        int number = gVar.getNumber();
        if (gVar.descriptor.isRepeated() && gVar.descriptor.isPacked()) {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[gVar.getLiteType().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    j1Var.readDoubleList(arrayList);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    j1Var.readFloatList(arrayList);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    j1Var.readInt64List(arrayList);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    j1Var.readUInt64List(arrayList);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    j1Var.readInt32List(arrayList);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    j1Var.readFixed64List(arrayList);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    j1Var.readFixed32List(arrayList);
                    break;
                case 8:
                    arrayList = new ArrayList();
                    j1Var.readBoolList(arrayList);
                    break;
                case 9:
                    arrayList = new ArrayList();
                    j1Var.readUInt32List(arrayList);
                    break;
                case 10:
                    arrayList = new ArrayList();
                    j1Var.readSFixed32List(arrayList);
                    break;
                case 11:
                    arrayList = new ArrayList();
                    j1Var.readSFixed64List(arrayList);
                    break;
                case 12:
                    arrayList = new ArrayList();
                    j1Var.readSInt32List(arrayList);
                    break;
                case 13:
                    arrayList = new ArrayList();
                    j1Var.readSInt64List(arrayList);
                    break;
                case 14:
                    arrayList = new ArrayList();
                    j1Var.readEnumList(arrayList);
                    ub = (UB) SchemaUtil.filterUnknownEnumList(obj, number, arrayList, gVar.descriptor.getEnumType(), ub, y1Var);
                    break;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + gVar.descriptor.getLiteType());
            }
            fieldSet.setField(gVar.descriptor, arrayList);
        } else {
            Object objValueOf = null;
            if (gVar.getLiteType() != WireFormat.FieldType.ENUM) {
                switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[gVar.getLiteType().ordinal()]) {
                    case 1:
                        objValueOf = Double.valueOf(j1Var.readDouble());
                        break;
                    case 2:
                        objValueOf = Float.valueOf(j1Var.readFloat());
                        break;
                    case 3:
                        objValueOf = Long.valueOf(j1Var.readInt64());
                        break;
                    case 4:
                        objValueOf = Long.valueOf(j1Var.readUInt64());
                        break;
                    case 5:
                        objValueOf = Integer.valueOf(j1Var.readInt32());
                        break;
                    case 6:
                        objValueOf = Long.valueOf(j1Var.readFixed64());
                        break;
                    case 7:
                        objValueOf = Integer.valueOf(j1Var.readFixed32());
                        break;
                    case 8:
                        objValueOf = Boolean.valueOf(j1Var.readBool());
                        break;
                    case 9:
                        objValueOf = Integer.valueOf(j1Var.readUInt32());
                        break;
                    case 10:
                        objValueOf = Integer.valueOf(j1Var.readSFixed32());
                        break;
                    case 11:
                        objValueOf = Long.valueOf(j1Var.readSFixed64());
                        break;
                    case 12:
                        objValueOf = Integer.valueOf(j1Var.readSInt32());
                        break;
                    case 13:
                        objValueOf = Long.valueOf(j1Var.readSInt64());
                        break;
                    case 14:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 15:
                        objValueOf = j1Var.readBytes();
                        break;
                    case 16:
                        objValueOf = j1Var.readString();
                        break;
                    case 17:
                        if (!gVar.isRepeated()) {
                            Object field2 = fieldSet.getField(gVar.descriptor);
                            if (field2 instanceof GeneratedMessageLite) {
                                l1 l1VarSchemaFor = Protobuf.getInstance().schemaFor(field2);
                                if (!((GeneratedMessageLite) field2).isMutable()) {
                                    Object objNewInstance = l1VarSchemaFor.newInstance();
                                    l1VarSchemaFor.mergeFrom(objNewInstance, field2);
                                    fieldSet.setField(gVar.descriptor, objNewInstance);
                                    field2 = objNewInstance;
                                }
                                j1Var.mergeGroupField(field2, l1VarSchemaFor, extensionRegistryLite);
                                return ub;
                            }
                        }
                        objValueOf = j1Var.readGroup(gVar.getMessageDefaultInstance().getClass(), extensionRegistryLite);
                        break;
                    case 18:
                        if (!gVar.isRepeated()) {
                            Object field3 = fieldSet.getField(gVar.descriptor);
                            if (field3 instanceof GeneratedMessageLite) {
                                l1 l1VarSchemaFor2 = Protobuf.getInstance().schemaFor(field3);
                                if (!((GeneratedMessageLite) field3).isMutable()) {
                                    Object objNewInstance2 = l1VarSchemaFor2.newInstance();
                                    l1VarSchemaFor2.mergeFrom(objNewInstance2, field3);
                                    fieldSet.setField(gVar.descriptor, objNewInstance2);
                                    field3 = objNewInstance2;
                                }
                                j1Var.mergeMessageField(field3, l1VarSchemaFor2, extensionRegistryLite);
                                return ub;
                            }
                        }
                        objValueOf = j1Var.readMessage(gVar.getMessageDefaultInstance().getClass(), extensionRegistryLite);
                        break;
                }
            } else {
                int int32 = j1Var.readInt32();
                if (gVar.descriptor.getEnumType().findValueByNumber(int32) == null) {
                    return (UB) SchemaUtil.storeUnknownEnum(obj, number, int32, ub, y1Var);
                }
                objValueOf = Integer.valueOf(int32);
            }
            if (gVar.isRepeated()) {
                fieldSet.addRepeatedField(gVar.descriptor, objValueOf);
            } else {
                int i = a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[gVar.getLiteType().ordinal()];
                if ((i == 17 || i == 18) && (field = fieldSet.getField(gVar.descriptor)) != null) {
                    objValueOf = Internal.mergeMessage(field, objValueOf);
                }
                fieldSet.setField(gVar.descriptor, objValueOf);
            }
        }
        return ub;
    }

    @Override // com.google.protobuf.u
    void parseLengthPrefixedMessageSetItem(j1 j1Var, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<GeneratedMessageLite.f> fieldSet) throws IOException {
        GeneratedMessageLite.g gVar = (GeneratedMessageLite.g) obj;
        fieldSet.setField(gVar.descriptor, j1Var.readMessage(gVar.getMessageDefaultInstance().getClass(), extensionRegistryLite));
    }

    @Override // com.google.protobuf.u
    void parseMessageSetItem(ByteString byteString, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<GeneratedMessageLite.f> fieldSet) throws IOException {
        GeneratedMessageLite.g gVar = (GeneratedMessageLite.g) obj;
        q0.a aVarNewBuilderForType = gVar.getMessageDefaultInstance().newBuilderForType();
        CodedInputStream codedInputStreamNewCodedInput = byteString.newCodedInput();
        aVarNewBuilderForType.mergeFrom(codedInputStreamNewCodedInput, extensionRegistryLite);
        fieldSet.setField(gVar.descriptor, aVarNewBuilderForType.buildPartial());
        codedInputStreamNewCodedInput.checkLastTagWas(0);
    }

    @Override // com.google.protobuf.u
    void serializeExtension(Writer writer, Map.Entry<?, ?> entry) throws IOException {
        GeneratedMessageLite.f fVar = (GeneratedMessageLite.f) entry.getKey();
        if (!fVar.isRepeated()) {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fVar.getLiteType().ordinal()]) {
                case 1:
                    writer.writeDouble(fVar.getNumber(), ((Double) entry.getValue()).doubleValue());
                    break;
                case 2:
                    writer.writeFloat(fVar.getNumber(), ((Float) entry.getValue()).floatValue());
                    break;
                case 3:
                    writer.writeInt64(fVar.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 4:
                    writer.writeUInt64(fVar.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 5:
                    writer.writeInt32(fVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 6:
                    writer.writeFixed64(fVar.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 7:
                    writer.writeFixed32(fVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 8:
                    writer.writeBool(fVar.getNumber(), ((Boolean) entry.getValue()).booleanValue());
                    break;
                case 9:
                    writer.writeUInt32(fVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 10:
                    writer.writeSFixed32(fVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 11:
                    writer.writeSFixed64(fVar.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 12:
                    writer.writeSInt32(fVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 13:
                    writer.writeSInt64(fVar.getNumber(), ((Long) entry.getValue()).longValue());
                    break;
                case 14:
                    writer.writeInt32(fVar.getNumber(), ((Integer) entry.getValue()).intValue());
                    break;
                case 15:
                    writer.writeBytes(fVar.getNumber(), (ByteString) entry.getValue());
                    break;
                case 16:
                    writer.writeString(fVar.getNumber(), (String) entry.getValue());
                    break;
                case 17:
                    writer.writeGroup(fVar.getNumber(), entry.getValue(), Protobuf.getInstance().schemaFor((Class) entry.getValue().getClass()));
                    break;
                case 18:
                    writer.writeMessage(fVar.getNumber(), entry.getValue(), Protobuf.getInstance().schemaFor((Class) entry.getValue().getClass()));
                    break;
            }
        }
        switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fVar.getLiteType().ordinal()]) {
            case 1:
                SchemaUtil.writeDoubleList(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 2:
                SchemaUtil.writeFloatList(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 3:
                SchemaUtil.writeInt64List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 4:
                SchemaUtil.writeUInt64List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 5:
                SchemaUtil.writeInt32List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 6:
                SchemaUtil.writeFixed64List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 7:
                SchemaUtil.writeFixed32List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 8:
                SchemaUtil.writeBoolList(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 9:
                SchemaUtil.writeUInt32List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 10:
                SchemaUtil.writeSFixed32List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 11:
                SchemaUtil.writeSFixed64List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 12:
                SchemaUtil.writeSInt32List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 13:
                SchemaUtil.writeSInt64List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 14:
                SchemaUtil.writeInt32List(fVar.getNumber(), (List) entry.getValue(), writer, fVar.isPacked());
                break;
            case 15:
                SchemaUtil.writeBytesList(fVar.getNumber(), (List) entry.getValue(), writer);
                break;
            case 16:
                SchemaUtil.writeStringList(fVar.getNumber(), (List) entry.getValue(), writer);
                break;
            case 17:
                List list = (List) entry.getValue();
                if (list != null && !list.isEmpty()) {
                    SchemaUtil.writeGroupList(fVar.getNumber(), (List) entry.getValue(), writer, Protobuf.getInstance().schemaFor((Class) list.get(0).getClass()));
                    break;
                }
                break;
            case 18:
                List list2 = (List) entry.getValue();
                if (list2 != null && !list2.isEmpty()) {
                    SchemaUtil.writeMessageList(fVar.getNumber(), (List) entry.getValue(), writer, Protobuf.getInstance().schemaFor((Class) list2.get(0).getClass()));
                    break;
                }
                break;
        }
    }

    @Override // com.google.protobuf.u
    void setExtensions(Object obj, FieldSet<GeneratedMessageLite.f> fieldSet) {
        ((GeneratedMessageLite.ExtendableMessage) obj).extensions = fieldSet;
    }
}
