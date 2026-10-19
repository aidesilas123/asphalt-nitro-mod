package com.google.protobuf;

import com.applovin.exoplayer2.common.base.Ascii;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: ArrayDecoders.java */
/* JADX INFO: loaded from: classes3.dex */
final class h {

    /* JADX INFO: compiled from: ArrayDecoders.java */
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
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BOOL.ordinal()] = 11;
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

    /* JADX INFO: compiled from: ArrayDecoders.java */
    static final class b {
        public final ExtensionRegistryLite extensionRegistry;
        public int int1;
        public long long1;
        public Object object1;

        b() {
            this.extensionRegistry = ExtensionRegistryLite.getEmptyRegistry();
        }

        b(ExtensionRegistryLite extensionRegistryLite) {
            Objects.requireNonNull(extensionRegistryLite);
            this.extensionRegistry = extensionRegistryLite;
        }
    }

    private h() {
    }

    static int decodeBoolList(int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) {
        BooleanArrayList booleanArrayList = (BooleanArrayList) jVar;
        int iDecodeVarint64 = decodeVarint64(bArr, i2, bVar);
        booleanArrayList.addBoolean(bVar.long1 != 0);
        while (iDecodeVarint64 < i3) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint64, bVar);
            if (i != bVar.int1) {
                break;
            }
            iDecodeVarint64 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            booleanArrayList.addBoolean(bVar.long1 != 0);
        }
        return iDecodeVarint64;
    }

    static int decodeBytes(byte[] bArr, int i, b bVar) throws d0 {
        int iDecodeVarint32 = decodeVarint32(bArr, i, bVar);
        int i2 = bVar.int1;
        if (i2 < 0) {
            throw d0.negativeSize();
        }
        if (i2 > bArr.length - iDecodeVarint32) {
            throw d0.truncatedMessage();
        }
        if (i2 == 0) {
            bVar.object1 = ByteString.EMPTY;
            return iDecodeVarint32;
        }
        bVar.object1 = ByteString.copyFrom(bArr, iDecodeVarint32, i2);
        return iDecodeVarint32 + i2;
    }

    static int decodeBytesList(int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) throws d0 {
        int iDecodeVarint32 = decodeVarint32(bArr, i2, bVar);
        int i4 = bVar.int1;
        if (i4 < 0) {
            throw d0.negativeSize();
        }
        if (i4 > bArr.length - iDecodeVarint32) {
            throw d0.truncatedMessage();
        }
        if (i4 == 0) {
            jVar.add(ByteString.EMPTY);
        } else {
            jVar.add(ByteString.copyFrom(bArr, iDecodeVarint32, i4));
            iDecodeVarint32 += i4;
        }
        while (iDecodeVarint32 < i3) {
            int iDecodeVarint322 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint322, bVar);
            int i5 = bVar.int1;
            if (i5 < 0) {
                throw d0.negativeSize();
            }
            if (i5 > bArr.length - iDecodeVarint32) {
                throw d0.truncatedMessage();
            }
            if (i5 == 0) {
                jVar.add(ByteString.EMPTY);
            } else {
                jVar.add(ByteString.copyFrom(bArr, iDecodeVarint32, i5));
                iDecodeVarint32 += i5;
            }
        }
        return iDecodeVarint32;
    }

    static double decodeDouble(byte[] bArr, int i) {
        return Double.longBitsToDouble(decodeFixed64(bArr, i));
    }

    static int decodeDoubleList(int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) {
        DoubleArrayList doubleArrayList = (DoubleArrayList) jVar;
        doubleArrayList.addDouble(decodeDouble(bArr, i2));
        int i4 = i2 + 8;
        while (i4 < i3) {
            int iDecodeVarint32 = decodeVarint32(bArr, i4, bVar);
            if (i != bVar.int1) {
                break;
            }
            doubleArrayList.addDouble(decodeDouble(bArr, iDecodeVarint32));
            i4 = iDecodeVarint32 + 8;
        }
        return i4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static int decodeExtension(int i, byte[] bArr, int i2, int i3, GeneratedMessageLite.ExtendableMessage<?, ?> extendableMessage, GeneratedMessageLite.g<?, ?> gVar, y1<UnknownFieldSetLite, UnknownFieldSetLite> y1Var, b bVar) throws IOException {
        FieldSet<GeneratedMessageLite.f> fieldSet = extendableMessage.extensions;
        int i4 = i >>> 3;
        if (gVar.descriptor.isRepeated() && gVar.descriptor.isPacked()) {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[gVar.getLiteType().ordinal()]) {
                case 1:
                    DoubleArrayList doubleArrayList = new DoubleArrayList();
                    int iDecodePackedDoubleList = decodePackedDoubleList(bArr, i2, doubleArrayList, bVar);
                    fieldSet.setField(gVar.descriptor, doubleArrayList);
                    return iDecodePackedDoubleList;
                case 2:
                    FloatArrayList floatArrayList = new FloatArrayList();
                    int iDecodePackedFloatList = decodePackedFloatList(bArr, i2, floatArrayList, bVar);
                    fieldSet.setField(gVar.descriptor, floatArrayList);
                    return iDecodePackedFloatList;
                case 3:
                case 4:
                    LongArrayList longArrayList = new LongArrayList();
                    int iDecodePackedVarint64List = decodePackedVarint64List(bArr, i2, longArrayList, bVar);
                    fieldSet.setField(gVar.descriptor, longArrayList);
                    return iDecodePackedVarint64List;
                case 5:
                case 6:
                    IntArrayList intArrayList = new IntArrayList();
                    int iDecodePackedVarint32List = decodePackedVarint32List(bArr, i2, intArrayList, bVar);
                    fieldSet.setField(gVar.descriptor, intArrayList);
                    return iDecodePackedVarint32List;
                case 7:
                case 8:
                    LongArrayList longArrayList2 = new LongArrayList();
                    int iDecodePackedFixed64List = decodePackedFixed64List(bArr, i2, longArrayList2, bVar);
                    fieldSet.setField(gVar.descriptor, longArrayList2);
                    return iDecodePackedFixed64List;
                case 9:
                case 10:
                    IntArrayList intArrayList2 = new IntArrayList();
                    int iDecodePackedFixed32List = decodePackedFixed32List(bArr, i2, intArrayList2, bVar);
                    fieldSet.setField(gVar.descriptor, intArrayList2);
                    return iDecodePackedFixed32List;
                case 11:
                    BooleanArrayList booleanArrayList = new BooleanArrayList();
                    int iDecodePackedBoolList = decodePackedBoolList(bArr, i2, booleanArrayList, bVar);
                    fieldSet.setField(gVar.descriptor, booleanArrayList);
                    return iDecodePackedBoolList;
                case 12:
                    IntArrayList intArrayList3 = new IntArrayList();
                    int iDecodePackedSInt32List = decodePackedSInt32List(bArr, i2, intArrayList3, bVar);
                    fieldSet.setField(gVar.descriptor, intArrayList3);
                    return iDecodePackedSInt32List;
                case 13:
                    LongArrayList longArrayList3 = new LongArrayList();
                    int iDecodePackedSInt64List = decodePackedSInt64List(bArr, i2, longArrayList3, bVar);
                    fieldSet.setField(gVar.descriptor, longArrayList3);
                    return iDecodePackedSInt64List;
                case 14:
                    IntArrayList intArrayList4 = new IntArrayList();
                    int iDecodePackedVarint32List2 = decodePackedVarint32List(bArr, i2, intArrayList4, bVar);
                    SchemaUtil.filterUnknownEnumList((Object) extendableMessage, i4, (List<Integer>) intArrayList4, gVar.descriptor.getEnumType(), (Object) null, (y1<UT, Object>) y1Var);
                    fieldSet.setField(gVar.descriptor, intArrayList4);
                    return iDecodePackedVarint32List2;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + gVar.descriptor.getLiteType());
            }
        }
        Object objValueOf = null;
        if (gVar.getLiteType() == WireFormat.FieldType.ENUM) {
            i2 = decodeVarint32(bArr, i2, bVar);
            if (gVar.descriptor.getEnumType().findValueByNumber(bVar.int1) == null) {
                SchemaUtil.storeUnknownEnum(extendableMessage, i4, bVar.int1, null, y1Var);
                return i2;
            }
            objValueOf = Integer.valueOf(bVar.int1);
        } else {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[gVar.getLiteType().ordinal()]) {
                case 1:
                    objValueOf = Double.valueOf(decodeDouble(bArr, i2));
                    i2 += 8;
                    break;
                case 2:
                    objValueOf = Float.valueOf(decodeFloat(bArr, i2));
                    i2 += 4;
                    break;
                case 3:
                case 4:
                    i2 = decodeVarint64(bArr, i2, bVar);
                    objValueOf = Long.valueOf(bVar.long1);
                    break;
                case 5:
                case 6:
                    i2 = decodeVarint32(bArr, i2, bVar);
                    objValueOf = Integer.valueOf(bVar.int1);
                    break;
                case 7:
                case 8:
                    objValueOf = Long.valueOf(decodeFixed64(bArr, i2));
                    i2 += 8;
                    break;
                case 9:
                case 10:
                    objValueOf = Integer.valueOf(decodeFixed32(bArr, i2));
                    i2 += 4;
                    break;
                case 11:
                    i2 = decodeVarint64(bArr, i2, bVar);
                    objValueOf = Boolean.valueOf(bVar.long1 != 0);
                    break;
                case 12:
                    i2 = decodeVarint32(bArr, i2, bVar);
                    objValueOf = Integer.valueOf(CodedInputStream.decodeZigZag32(bVar.int1));
                    break;
                case 13:
                    i2 = decodeVarint64(bArr, i2, bVar);
                    objValueOf = Long.valueOf(CodedInputStream.decodeZigZag64(bVar.long1));
                    break;
                case 14:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 15:
                    i2 = decodeBytes(bArr, i2, bVar);
                    objValueOf = bVar.object1;
                    break;
                case 16:
                    i2 = decodeString(bArr, i2, bVar);
                    objValueOf = bVar.object1;
                    break;
                case 17:
                    int i5 = (i4 << 3) | 4;
                    l1 l1VarSchemaFor = Protobuf.getInstance().schemaFor((Class) gVar.getMessageDefaultInstance().getClass());
                    if (gVar.isRepeated()) {
                        int iDecodeGroupField = decodeGroupField(l1VarSchemaFor, bArr, i2, i3, i5, bVar);
                        fieldSet.addRepeatedField(gVar.descriptor, bVar.object1);
                        return iDecodeGroupField;
                    }
                    Object field = fieldSet.getField(gVar.descriptor);
                    if (field == null) {
                        field = l1VarSchemaFor.newInstance();
                        fieldSet.setField(gVar.descriptor, field);
                    }
                    return mergeGroupField(field, l1VarSchemaFor, bArr, i2, i3, i5, bVar);
                case 18:
                    l1 l1VarSchemaFor2 = Protobuf.getInstance().schemaFor((Class) gVar.getMessageDefaultInstance().getClass());
                    if (gVar.isRepeated()) {
                        int iDecodeMessageField = decodeMessageField(l1VarSchemaFor2, bArr, i2, i3, bVar);
                        fieldSet.addRepeatedField(gVar.descriptor, bVar.object1);
                        return iDecodeMessageField;
                    }
                    Object field2 = fieldSet.getField(gVar.descriptor);
                    if (field2 == null) {
                        field2 = l1VarSchemaFor2.newInstance();
                        fieldSet.setField(gVar.descriptor, field2);
                    }
                    return mergeMessageField(field2, l1VarSchemaFor2, bArr, i2, i3, bVar);
            }
        }
        if (gVar.isRepeated()) {
            fieldSet.addRepeatedField(gVar.descriptor, objValueOf);
        } else {
            fieldSet.setField(gVar.descriptor, objValueOf);
        }
        return i2;
    }

    static int decodeExtensionOrUnknownField(int i, byte[] bArr, int i2, int i3, Object obj, q0 q0Var, y1<UnknownFieldSetLite, UnknownFieldSetLite> y1Var, b bVar) throws IOException {
        GeneratedMessageLite.g gVarFindLiteExtensionByNumber = bVar.extensionRegistry.findLiteExtensionByNumber(q0Var, i >>> 3);
        if (gVarFindLiteExtensionByNumber == null) {
            return decodeUnknownField(i, bArr, i2, i3, t0.getMutableUnknownFields(obj), bVar);
        }
        GeneratedMessageLite.ExtendableMessage extendableMessage = (GeneratedMessageLite.ExtendableMessage) obj;
        extendableMessage.ensureExtensionsAreMutable();
        return decodeExtension(i, bArr, i2, i3, extendableMessage, gVarFindLiteExtensionByNumber, y1Var, bVar);
    }

    static int decodeFixed32(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    static int decodeFixed32List(int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) {
        IntArrayList intArrayList = (IntArrayList) jVar;
        intArrayList.addInt(decodeFixed32(bArr, i2));
        int i4 = i2 + 4;
        while (i4 < i3) {
            int iDecodeVarint32 = decodeVarint32(bArr, i4, bVar);
            if (i != bVar.int1) {
                break;
            }
            intArrayList.addInt(decodeFixed32(bArr, iDecodeVarint32));
            i4 = iDecodeVarint32 + 4;
        }
        return i4;
    }

    static long decodeFixed64(byte[] bArr, int i) {
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    static int decodeFixed64List(int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) {
        LongArrayList longArrayList = (LongArrayList) jVar;
        longArrayList.addLong(decodeFixed64(bArr, i2));
        int i4 = i2 + 8;
        while (i4 < i3) {
            int iDecodeVarint32 = decodeVarint32(bArr, i4, bVar);
            if (i != bVar.int1) {
                break;
            }
            longArrayList.addLong(decodeFixed64(bArr, iDecodeVarint32));
            i4 = iDecodeVarint32 + 8;
        }
        return i4;
    }

    static float decodeFloat(byte[] bArr, int i) {
        return Float.intBitsToFloat(decodeFixed32(bArr, i));
    }

    static int decodeFloatList(int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) {
        FloatArrayList floatArrayList = (FloatArrayList) jVar;
        floatArrayList.addFloat(decodeFloat(bArr, i2));
        int i4 = i2 + 4;
        while (i4 < i3) {
            int iDecodeVarint32 = decodeVarint32(bArr, i4, bVar);
            if (i != bVar.int1) {
                break;
            }
            floatArrayList.addFloat(decodeFloat(bArr, iDecodeVarint32));
            i4 = iDecodeVarint32 + 4;
        }
        return i4;
    }

    static int decodeGroupField(l1 l1Var, byte[] bArr, int i, int i2, int i3, b bVar) throws IOException {
        Object objNewInstance = l1Var.newInstance();
        int iMergeGroupField = mergeGroupField(objNewInstance, l1Var, bArr, i, i2, i3, bVar);
        l1Var.makeImmutable(objNewInstance);
        bVar.object1 = objNewInstance;
        return iMergeGroupField;
    }

    static int decodeGroupList(l1 l1Var, int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) throws IOException {
        int i4 = (i & (-8)) | 4;
        int iDecodeGroupField = decodeGroupField(l1Var, bArr, i2, i3, i4, bVar);
        jVar.add(bVar.object1);
        while (iDecodeGroupField < i3) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeGroupField, bVar);
            if (i != bVar.int1) {
                break;
            }
            iDecodeGroupField = decodeGroupField(l1Var, bArr, iDecodeVarint32, i3, i4, bVar);
            jVar.add(bVar.object1);
        }
        return iDecodeGroupField;
    }

    static int decodeMessageField(l1 l1Var, byte[] bArr, int i, int i2, b bVar) throws IOException {
        Object objNewInstance = l1Var.newInstance();
        int iMergeMessageField = mergeMessageField(objNewInstance, l1Var, bArr, i, i2, bVar);
        l1Var.makeImmutable(objNewInstance);
        bVar.object1 = objNewInstance;
        return iMergeMessageField;
    }

    static int decodeMessageList(l1<?> l1Var, int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) throws IOException {
        int iDecodeMessageField = decodeMessageField(l1Var, bArr, i2, i3, bVar);
        jVar.add(bVar.object1);
        while (iDecodeMessageField < i3) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeMessageField, bVar);
            if (i != bVar.int1) {
                break;
            }
            iDecodeMessageField = decodeMessageField(l1Var, bArr, iDecodeVarint32, i3, bVar);
            jVar.add(bVar.object1);
        }
        return iDecodeMessageField;
    }

    static int decodePackedBoolList(byte[] bArr, int i, Internal.j<?> jVar, b bVar) throws IOException {
        BooleanArrayList booleanArrayList = (BooleanArrayList) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i, bVar);
        int i2 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i2) {
            iDecodeVarint32 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            booleanArrayList.addBoolean(bVar.long1 != 0);
        }
        if (iDecodeVarint32 == i2) {
            return iDecodeVarint32;
        }
        throw d0.truncatedMessage();
    }

    static int decodePackedDoubleList(byte[] bArr, int i, Internal.j<?> jVar, b bVar) throws IOException {
        DoubleArrayList doubleArrayList = (DoubleArrayList) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i, bVar);
        int i2 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i2) {
            doubleArrayList.addDouble(decodeDouble(bArr, iDecodeVarint32));
            iDecodeVarint32 += 8;
        }
        if (iDecodeVarint32 == i2) {
            return iDecodeVarint32;
        }
        throw d0.truncatedMessage();
    }

    static int decodePackedFixed32List(byte[] bArr, int i, Internal.j<?> jVar, b bVar) throws IOException {
        IntArrayList intArrayList = (IntArrayList) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i, bVar);
        int i2 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i2) {
            intArrayList.addInt(decodeFixed32(bArr, iDecodeVarint32));
            iDecodeVarint32 += 4;
        }
        if (iDecodeVarint32 == i2) {
            return iDecodeVarint32;
        }
        throw d0.truncatedMessage();
    }

    static int decodePackedFixed64List(byte[] bArr, int i, Internal.j<?> jVar, b bVar) throws IOException {
        LongArrayList longArrayList = (LongArrayList) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i, bVar);
        int i2 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i2) {
            longArrayList.addLong(decodeFixed64(bArr, iDecodeVarint32));
            iDecodeVarint32 += 8;
        }
        if (iDecodeVarint32 == i2) {
            return iDecodeVarint32;
        }
        throw d0.truncatedMessage();
    }

    static int decodePackedFloatList(byte[] bArr, int i, Internal.j<?> jVar, b bVar) throws IOException {
        FloatArrayList floatArrayList = (FloatArrayList) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i, bVar);
        int i2 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i2) {
            floatArrayList.addFloat(decodeFloat(bArr, iDecodeVarint32));
            iDecodeVarint32 += 4;
        }
        if (iDecodeVarint32 == i2) {
            return iDecodeVarint32;
        }
        throw d0.truncatedMessage();
    }

    static int decodePackedSInt32List(byte[] bArr, int i, Internal.j<?> jVar, b bVar) throws IOException {
        IntArrayList intArrayList = (IntArrayList) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i, bVar);
        int i2 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i2) {
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            intArrayList.addInt(CodedInputStream.decodeZigZag32(bVar.int1));
        }
        if (iDecodeVarint32 == i2) {
            return iDecodeVarint32;
        }
        throw d0.truncatedMessage();
    }

    static int decodePackedSInt64List(byte[] bArr, int i, Internal.j<?> jVar, b bVar) throws IOException {
        LongArrayList longArrayList = (LongArrayList) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i, bVar);
        int i2 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i2) {
            iDecodeVarint32 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            longArrayList.addLong(CodedInputStream.decodeZigZag64(bVar.long1));
        }
        if (iDecodeVarint32 == i2) {
            return iDecodeVarint32;
        }
        throw d0.truncatedMessage();
    }

    static int decodePackedVarint32List(byte[] bArr, int i, Internal.j<?> jVar, b bVar) throws IOException {
        IntArrayList intArrayList = (IntArrayList) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i, bVar);
        int i2 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i2) {
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            intArrayList.addInt(bVar.int1);
        }
        if (iDecodeVarint32 == i2) {
            return iDecodeVarint32;
        }
        throw d0.truncatedMessage();
    }

    static int decodePackedVarint64List(byte[] bArr, int i, Internal.j<?> jVar, b bVar) throws IOException {
        LongArrayList longArrayList = (LongArrayList) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i, bVar);
        int i2 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i2) {
            iDecodeVarint32 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            longArrayList.addLong(bVar.long1);
        }
        if (iDecodeVarint32 == i2) {
            return iDecodeVarint32;
        }
        throw d0.truncatedMessage();
    }

    static int decodeSInt32List(int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) {
        IntArrayList intArrayList = (IntArrayList) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i2, bVar);
        intArrayList.addInt(CodedInputStream.decodeZigZag32(bVar.int1));
        while (iDecodeVarint32 < i3) {
            int iDecodeVarint322 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint322, bVar);
            intArrayList.addInt(CodedInputStream.decodeZigZag32(bVar.int1));
        }
        return iDecodeVarint32;
    }

    static int decodeSInt64List(int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) {
        LongArrayList longArrayList = (LongArrayList) jVar;
        int iDecodeVarint64 = decodeVarint64(bArr, i2, bVar);
        longArrayList.addLong(CodedInputStream.decodeZigZag64(bVar.long1));
        while (iDecodeVarint64 < i3) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint64, bVar);
            if (i != bVar.int1) {
                break;
            }
            iDecodeVarint64 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            longArrayList.addLong(CodedInputStream.decodeZigZag64(bVar.long1));
        }
        return iDecodeVarint64;
    }

    static int decodeString(byte[] bArr, int i, b bVar) throws d0 {
        int iDecodeVarint32 = decodeVarint32(bArr, i, bVar);
        int i2 = bVar.int1;
        if (i2 < 0) {
            throw d0.negativeSize();
        }
        if (i2 == 0) {
            bVar.object1 = "";
            return iDecodeVarint32;
        }
        bVar.object1 = new String(bArr, iDecodeVarint32, i2, Internal.UTF_8);
        return iDecodeVarint32 + i2;
    }

    static int decodeStringList(int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) throws d0 {
        int iDecodeVarint32 = decodeVarint32(bArr, i2, bVar);
        int i4 = bVar.int1;
        if (i4 < 0) {
            throw d0.negativeSize();
        }
        if (i4 == 0) {
            jVar.add("");
        } else {
            jVar.add(new String(bArr, iDecodeVarint32, i4, Internal.UTF_8));
            iDecodeVarint32 += i4;
        }
        while (iDecodeVarint32 < i3) {
            int iDecodeVarint322 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint322, bVar);
            int i5 = bVar.int1;
            if (i5 < 0) {
                throw d0.negativeSize();
            }
            if (i5 == 0) {
                jVar.add("");
            } else {
                jVar.add(new String(bArr, iDecodeVarint32, i5, Internal.UTF_8));
                iDecodeVarint32 += i5;
            }
        }
        return iDecodeVarint32;
    }

    static int decodeStringListRequireUtf8(int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) throws d0 {
        int iDecodeVarint32 = decodeVarint32(bArr, i2, bVar);
        int i4 = bVar.int1;
        if (i4 < 0) {
            throw d0.negativeSize();
        }
        if (i4 == 0) {
            jVar.add("");
        } else {
            int i5 = iDecodeVarint32 + i4;
            if (!c2.isValidUtf8(bArr, iDecodeVarint32, i5)) {
                throw d0.invalidUtf8();
            }
            jVar.add(new String(bArr, iDecodeVarint32, i4, Internal.UTF_8));
            iDecodeVarint32 = i5;
        }
        while (iDecodeVarint32 < i3) {
            int iDecodeVarint322 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint322, bVar);
            int i6 = bVar.int1;
            if (i6 < 0) {
                throw d0.negativeSize();
            }
            if (i6 == 0) {
                jVar.add("");
            } else {
                int i7 = iDecodeVarint32 + i6;
                if (!c2.isValidUtf8(bArr, iDecodeVarint32, i7)) {
                    throw d0.invalidUtf8();
                }
                jVar.add(new String(bArr, iDecodeVarint32, i6, Internal.UTF_8));
                iDecodeVarint32 = i7;
            }
        }
        return iDecodeVarint32;
    }

    static int decodeStringRequireUtf8(byte[] bArr, int i, b bVar) throws d0 {
        int iDecodeVarint32 = decodeVarint32(bArr, i, bVar);
        int i2 = bVar.int1;
        if (i2 < 0) {
            throw d0.negativeSize();
        }
        if (i2 == 0) {
            bVar.object1 = "";
            return iDecodeVarint32;
        }
        bVar.object1 = c2.decodeUtf8(bArr, iDecodeVarint32, i2);
        return iDecodeVarint32 + i2;
    }

    static int decodeUnknownField(int i, byte[] bArr, int i2, int i3, UnknownFieldSetLite unknownFieldSetLite, b bVar) throws d0 {
        if (WireFormat.getTagFieldNumber(i) == 0) {
            throw d0.invalidTag();
        }
        int tagWireType = WireFormat.getTagWireType(i);
        if (tagWireType == 0) {
            int iDecodeVarint64 = decodeVarint64(bArr, i2, bVar);
            unknownFieldSetLite.storeField(i, Long.valueOf(bVar.long1));
            return iDecodeVarint64;
        }
        if (tagWireType == 1) {
            unknownFieldSetLite.storeField(i, Long.valueOf(decodeFixed64(bArr, i2)));
            return i2 + 8;
        }
        if (tagWireType == 2) {
            int iDecodeVarint32 = decodeVarint32(bArr, i2, bVar);
            int i4 = bVar.int1;
            if (i4 < 0) {
                throw d0.negativeSize();
            }
            if (i4 > bArr.length - iDecodeVarint32) {
                throw d0.truncatedMessage();
            }
            if (i4 == 0) {
                unknownFieldSetLite.storeField(i, ByteString.EMPTY);
            } else {
                unknownFieldSetLite.storeField(i, ByteString.copyFrom(bArr, iDecodeVarint32, i4));
            }
            return iDecodeVarint32 + i4;
        }
        if (tagWireType != 3) {
            if (tagWireType != 5) {
                throw d0.invalidTag();
            }
            unknownFieldSetLite.storeField(i, Integer.valueOf(decodeFixed32(bArr, i2)));
            return i2 + 4;
        }
        UnknownFieldSetLite unknownFieldSetLiteNewInstance = UnknownFieldSetLite.newInstance();
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iDecodeVarint322 = decodeVarint32(bArr, i2, bVar);
            int i7 = bVar.int1;
            if (i7 == i5) {
                i6 = i7;
                i2 = iDecodeVarint322;
                break;
            }
            i6 = i7;
            i2 = decodeUnknownField(i7, bArr, iDecodeVarint322, i3, unknownFieldSetLiteNewInstance, bVar);
        }
        if (i2 > i3 || i6 != i5) {
            throw d0.parseFailure();
        }
        unknownFieldSetLite.storeField(i, unknownFieldSetLiteNewInstance);
        return i2;
    }

    static int decodeVarint32(int i, byte[] bArr, int i2, b bVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            bVar.int1 = i3 | (b2 << 7);
            return i4;
        }
        int i5 = i3 | ((b2 & Ascii.DEL) << 7);
        int i6 = i4 + 1;
        byte b3 = bArr[i4];
        if (b3 >= 0) {
            bVar.int1 = i5 | (b3 << Ascii.SO);
            return i6;
        }
        int i7 = i5 | ((b3 & Ascii.DEL) << 14);
        int i8 = i6 + 1;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            bVar.int1 = i7 | (b4 << Ascii.NAK);
            return i8;
        }
        int i9 = i7 | ((b4 & Ascii.DEL) << 21);
        int i10 = i8 + 1;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            bVar.int1 = i9 | (b5 << Ascii.FS);
            return i10;
        }
        int i11 = i9 | ((b5 & Ascii.DEL) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                bVar.int1 = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    static int decodeVarint32(byte[] bArr, int i, b bVar) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return decodeVarint32(b2, bArr, i2, bVar);
        }
        bVar.int1 = b2;
        return i2;
    }

    static int decodeVarint32List(int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) {
        IntArrayList intArrayList = (IntArrayList) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i2, bVar);
        intArrayList.addInt(bVar.int1);
        while (iDecodeVarint32 < i3) {
            int iDecodeVarint322 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint322, bVar);
            intArrayList.addInt(bVar.int1);
        }
        return iDecodeVarint32;
    }

    static int decodeVarint64(long j, byte[] bArr, int i, b bVar) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        long j2 = (j & 127) | (((long) (b2 & Ascii.DEL)) << 7);
        int i3 = 7;
        while (b2 < 0) {
            int i4 = i2 + 1;
            byte b3 = bArr[i2];
            i3 += 7;
            j2 |= ((long) (b3 & Ascii.DEL)) << i3;
            i2 = i4;
            b2 = b3;
        }
        bVar.long1 = j2;
        return i2;
    }

    static int decodeVarint64(byte[] bArr, int i, b bVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j < 0) {
            return decodeVarint64(j, bArr, i2, bVar);
        }
        bVar.long1 = j;
        return i2;
    }

    static int decodeVarint64List(int i, byte[] bArr, int i2, int i3, Internal.j<?> jVar, b bVar) {
        LongArrayList longArrayList = (LongArrayList) jVar;
        int iDecodeVarint64 = decodeVarint64(bArr, i2, bVar);
        longArrayList.addLong(bVar.long1);
        while (iDecodeVarint64 < i3) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint64, bVar);
            if (i != bVar.int1) {
                break;
            }
            iDecodeVarint64 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            longArrayList.addLong(bVar.long1);
        }
        return iDecodeVarint64;
    }

    static int mergeGroupField(Object obj, l1 l1Var, byte[] bArr, int i, int i2, int i3, b bVar) throws IOException {
        int proto2Message = ((t0) l1Var).parseProto2Message(obj, bArr, i, i2, i3, bVar);
        bVar.object1 = obj;
        return proto2Message;
    }

    static int mergeMessageField(Object obj, l1 l1Var, byte[] bArr, int i, int i2, b bVar) throws IOException {
        int iDecodeVarint32 = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iDecodeVarint32 = decodeVarint32(i3, bArr, iDecodeVarint32, bVar);
            i3 = bVar.int1;
        }
        int i4 = iDecodeVarint32;
        if (i3 < 0 || i3 > i2 - i4) {
            throw d0.truncatedMessage();
        }
        int i5 = i3 + i4;
        l1Var.mergeFrom(obj, bArr, i4, i5, bVar);
        bVar.object1 = obj;
        return i5;
    }

    static int skipField(int i, byte[] bArr, int i2, int i3, b bVar) throws d0 {
        if (WireFormat.getTagFieldNumber(i) == 0) {
            throw d0.invalidTag();
        }
        int tagWireType = WireFormat.getTagWireType(i);
        if (tagWireType == 0) {
            return decodeVarint64(bArr, i2, bVar);
        }
        if (tagWireType == 1) {
            return i2 + 8;
        }
        if (tagWireType == 2) {
            return decodeVarint32(bArr, i2, bVar) + bVar.int1;
        }
        if (tagWireType != 3) {
            if (tagWireType == 5) {
                return i2 + 4;
            }
            throw d0.invalidTag();
        }
        int i4 = (i & (-8)) | 4;
        int i5 = 0;
        while (i2 < i3) {
            i2 = decodeVarint32(bArr, i2, bVar);
            i5 = bVar.int1;
            if (i5 == i4) {
                break;
            }
            i2 = skipField(i5, bArr, i2, i3, bVar);
        }
        if (i2 > i3 || i5 != i4) {
            throw d0.parseFailure();
        }
        return i2;
    }
}
