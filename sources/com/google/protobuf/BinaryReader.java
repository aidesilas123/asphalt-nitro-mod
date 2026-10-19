package com.google.protobuf;

import com.applovin.exoplayer2.common.base.Ascii;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.WireFormat;
import com.google.protobuf.d0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
abstract class BinaryReader implements j1 {
    private static final int FIXED32_MULTIPLE_MASK = 3;
    private static final int FIXED64_MULTIPLE_MASK = 7;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private static final class b extends BinaryReader {
        private final byte[] buffer;
        private final boolean bufferIsImmutable;
        private int endGroupTag;
        private final int initialPos;
        private int limit;
        private int pos;
        private int tag;

        public b(ByteBuffer byteBuffer, boolean z) {
            super(null);
            this.bufferIsImmutable = z;
            this.buffer = byteBuffer.array();
            int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            this.pos = iArrayOffset;
            this.initialPos = iArrayOffset;
            this.limit = byteBuffer.arrayOffset() + byteBuffer.limit();
        }

        private boolean isAtEnd() {
            return this.pos == this.limit;
        }

        private byte readByte() throws IOException {
            int i = this.pos;
            if (i == this.limit) {
                throw d0.truncatedMessage();
            }
            byte[] bArr = this.buffer;
            this.pos = i + 1;
            return bArr[i];
        }

        private Object readField(WireFormat.FieldType fieldType, Class<?> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
                case 1:
                    return Boolean.valueOf(readBool());
                case 2:
                    return readBytes();
                case 3:
                    return Double.valueOf(readDouble());
                case 4:
                    return Integer.valueOf(readEnum());
                case 5:
                    return Integer.valueOf(readFixed32());
                case 6:
                    return Long.valueOf(readFixed64());
                case 7:
                    return Float.valueOf(readFloat());
                case 8:
                    return Integer.valueOf(readInt32());
                case 9:
                    return Long.valueOf(readInt64());
                case 10:
                    return readMessage(cls, extensionRegistryLite);
                case 11:
                    return Integer.valueOf(readSFixed32());
                case 12:
                    return Long.valueOf(readSFixed64());
                case 13:
                    return Integer.valueOf(readSInt32());
                case 14:
                    return Long.valueOf(readSInt64());
                case 15:
                    return readStringRequireUtf8();
                case 16:
                    return Integer.valueOf(readUInt32());
                case 17:
                    return Long.valueOf(readUInt64());
                default:
                    throw new RuntimeException("unsupported field type.");
            }
        }

        private <T> T readGroup(l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            T tNewInstance = l1Var.newInstance();
            mergeGroupField(tNewInstance, l1Var, extensionRegistryLite);
            l1Var.makeImmutable(tNewInstance);
            return tNewInstance;
        }

        private int readLittleEndian32() throws IOException {
            requireBytes(4);
            return readLittleEndian32_NoCheck();
        }

        private int readLittleEndian32_NoCheck() {
            int i = this.pos;
            byte[] bArr = this.buffer;
            this.pos = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        private long readLittleEndian64() throws IOException {
            requireBytes(8);
            return readLittleEndian64_NoCheck();
        }

        private long readLittleEndian64_NoCheck() {
            int i = this.pos;
            byte[] bArr = this.buffer;
            this.pos = i + 8;
            return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
        }

        private <T> T readMessage(l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            T tNewInstance = l1Var.newInstance();
            mergeMessageField(tNewInstance, l1Var, extensionRegistryLite);
            l1Var.makeImmutable(tNewInstance);
            return tNewInstance;
        }

        private int readVarint32() throws IOException {
            int i;
            int i2 = this.pos;
            int i3 = this.limit;
            if (i3 == i2) {
                throw d0.truncatedMessage();
            }
            byte[] bArr = this.buffer;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.pos = i4;
                return b;
            }
            if (i3 - i4 < 9) {
                return (int) readVarint64SlowPath();
            }
            int i5 = i4 + 1;
            int i6 = b ^ (bArr[i4] << 7);
            if (i6 < 0) {
                i = i6 ^ (-128);
            } else {
                int i7 = i5 + 1;
                int i8 = i6 ^ (bArr[i5] << Ascii.SO);
                if (i8 >= 0) {
                    i = i8 ^ 16256;
                } else {
                    i5 = i7 + 1;
                    int i9 = i8 ^ (bArr[i7] << Ascii.NAK);
                    if (i9 < 0) {
                        i = i9 ^ (-2080896);
                    } else {
                        i7 = i5 + 1;
                        byte b2 = bArr[i5];
                        i = (i9 ^ (b2 << Ascii.FS)) ^ 266354560;
                        if (b2 < 0) {
                            i5 = i7 + 1;
                            if (bArr[i7] < 0) {
                                i7 = i5 + 1;
                                if (bArr[i5] < 0) {
                                    i5 = i7 + 1;
                                    if (bArr[i7] < 0) {
                                        i7 = i5 + 1;
                                        if (bArr[i5] < 0) {
                                            i5 = i7 + 1;
                                            if (bArr[i7] < 0) {
                                                throw d0.malformedVarint();
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                i5 = i7;
            }
            this.pos = i5;
            return i;
        }

        private long readVarint64SlowPath() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte b = readByte();
                j |= ((long) (b & Ascii.DEL)) << i;
                if ((b & 128) == 0) {
                    return j;
                }
            }
            throw d0.malformedVarint();
        }

        private void requireBytes(int i) throws IOException {
            if (i < 0 || i > this.limit - this.pos) {
                throw d0.truncatedMessage();
            }
        }

        private void requirePosition(int i) throws IOException {
            if (this.pos != i) {
                throw d0.truncatedMessage();
            }
        }

        private void requireWireType(int i) throws IOException {
            if (WireFormat.getTagWireType(this.tag) != i) {
                throw d0.invalidWireType();
            }
        }

        private void skipBytes(int i) throws IOException {
            requireBytes(i);
            this.pos += i;
        }

        private void skipGroup() throws IOException {
            int i = this.endGroupTag;
            this.endGroupTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(this.tag), 4);
            while (getFieldNumber() != Integer.MAX_VALUE && skipField()) {
            }
            if (this.tag != this.endGroupTag) {
                throw d0.parseFailure();
            }
            this.endGroupTag = i;
        }

        private void skipVarint() throws IOException {
            int i = this.limit;
            int i2 = this.pos;
            if (i - i2 >= 10) {
                byte[] bArr = this.buffer;
                int i3 = 0;
                while (i3 < 10) {
                    int i4 = i2 + 1;
                    if (bArr[i2] >= 0) {
                        this.pos = i4;
                        return;
                    } else {
                        i3++;
                        i2 = i4;
                    }
                }
            }
            skipVarintSlowPath();
        }

        private void skipVarintSlowPath() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (readByte() >= 0) {
                    return;
                }
            }
            throw d0.malformedVarint();
        }

        private void verifyPackedFixed32Length(int i) throws IOException {
            requireBytes(i);
            if ((i & 3) != 0) {
                throw d0.parseFailure();
            }
        }

        private void verifyPackedFixed64Length(int i) throws IOException {
            requireBytes(i);
            if ((i & 7) != 0) {
                throw d0.parseFailure();
            }
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public int getFieldNumber() throws IOException {
            if (isAtEnd()) {
                return Integer.MAX_VALUE;
            }
            int varint32 = readVarint32();
            this.tag = varint32;
            if (varint32 == this.endGroupTag) {
                return Integer.MAX_VALUE;
            }
            return WireFormat.getTagFieldNumber(varint32);
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public int getTag() {
            return this.tag;
        }

        @Override // com.google.protobuf.BinaryReader
        public int getTotalBytesRead() {
            return this.pos - this.initialPos;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public <T> void mergeGroupField(T t, l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int i = this.endGroupTag;
            this.endGroupTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(this.tag), 4);
            try {
                l1Var.mergeFrom(t, this, extensionRegistryLite);
                if (this.tag == this.endGroupTag) {
                } else {
                    throw d0.parseFailure();
                }
            } finally {
                this.endGroupTag = i;
            }
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public <T> void mergeMessageField(T t, l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int varint32 = readVarint32();
            requireBytes(varint32);
            int i = this.limit;
            int i2 = this.pos + varint32;
            this.limit = i2;
            try {
                l1Var.mergeFrom(t, this, extensionRegistryLite);
                if (this.pos == i2) {
                } else {
                    throw d0.parseFailure();
                }
            } finally {
                this.limit = i;
            }
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public boolean readBool() throws IOException {
            requireWireType(0);
            return readVarint32() != 0;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readBoolList(List<Boolean> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof BooleanArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw d0.invalidWireType();
                    }
                    int varint32 = this.pos + readVarint32();
                    while (this.pos < varint32) {
                        list.add(Boolean.valueOf(readVarint32() != 0));
                    }
                    requirePosition(varint32);
                    return;
                }
                do {
                    list.add(Boolean.valueOf(readBool()));
                    if (isAtEnd()) {
                        return;
                    } else {
                        i = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            BooleanArrayList booleanArrayList = (BooleanArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw d0.invalidWireType();
                }
                int varint322 = this.pos + readVarint32();
                while (this.pos < varint322) {
                    booleanArrayList.addBoolean(readVarint32() != 0);
                }
                requirePosition(varint322);
                return;
            }
            do {
                booleanArrayList.addBoolean(readBool());
                if (isAtEnd()) {
                    return;
                } else {
                    i2 = this.pos;
                }
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public ByteString readBytes() throws IOException {
            requireWireType(2);
            int varint32 = readVarint32();
            if (varint32 == 0) {
                return ByteString.EMPTY;
            }
            requireBytes(varint32);
            ByteString byteStringWrap = this.bufferIsImmutable ? ByteString.wrap(this.buffer, this.pos, varint32) : ByteString.copyFrom(this.buffer, this.pos, varint32);
            this.pos += varint32;
            return byteStringWrap;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readBytesList(List<ByteString> list) throws IOException {
            int i;
            if (WireFormat.getTagWireType(this.tag) != 2) {
                throw d0.invalidWireType();
            }
            do {
                list.add(readBytes());
                if (isAtEnd()) {
                    return;
                } else {
                    i = this.pos;
                }
            } while (readVarint32() == this.tag);
            this.pos = i;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public double readDouble() throws IOException {
            requireWireType(1);
            return Double.longBitsToDouble(readLittleEndian64());
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readDoubleList(List<Double> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof DoubleArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 1) {
                    do {
                        list.add(Double.valueOf(readDouble()));
                        if (isAtEnd()) {
                            return;
                        } else {
                            i = this.pos;
                        }
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                }
                if (tagWireType != 2) {
                    throw d0.invalidWireType();
                }
                int varint32 = readVarint32();
                verifyPackedFixed64Length(varint32);
                int i3 = this.pos + varint32;
                while (this.pos < i3) {
                    list.add(Double.valueOf(Double.longBitsToDouble(readLittleEndian64_NoCheck())));
                }
                return;
            }
            DoubleArrayList doubleArrayList = (DoubleArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 1) {
                do {
                    doubleArrayList.addDouble(readDouble());
                    if (isAtEnd()) {
                        return;
                    } else {
                        i2 = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i2;
                return;
            }
            if (tagWireType2 != 2) {
                throw d0.invalidWireType();
            }
            int varint322 = readVarint32();
            verifyPackedFixed64Length(varint322);
            int i4 = this.pos + varint322;
            while (this.pos < i4) {
                doubleArrayList.addDouble(Double.longBitsToDouble(readLittleEndian64_NoCheck()));
            }
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public int readEnum() throws IOException {
            requireWireType(0);
            return readVarint32();
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readEnumList(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof IntArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw d0.invalidWireType();
                    }
                    int varint32 = this.pos + readVarint32();
                    while (this.pos < varint32) {
                        list.add(Integer.valueOf(readVarint32()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(readEnum()));
                    if (isAtEnd()) {
                        return;
                    } else {
                        i = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw d0.invalidWireType();
                }
                int varint322 = this.pos + readVarint32();
                while (this.pos < varint322) {
                    intArrayList.addInt(readVarint32());
                }
                return;
            }
            do {
                intArrayList.addInt(readEnum());
                if (isAtEnd()) {
                    return;
                } else {
                    i2 = this.pos;
                }
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public int readFixed32() throws IOException {
            requireWireType(5);
            return readLittleEndian32();
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readFixed32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof IntArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 2) {
                    int varint32 = readVarint32();
                    verifyPackedFixed32Length(varint32);
                    int i3 = this.pos + varint32;
                    while (this.pos < i3) {
                        list.add(Integer.valueOf(readLittleEndian32_NoCheck()));
                    }
                    return;
                }
                if (tagWireType != 5) {
                    throw d0.invalidWireType();
                }
                do {
                    list.add(Integer.valueOf(readFixed32()));
                    if (isAtEnd()) {
                        return;
                    } else {
                        i = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 2) {
                int varint322 = readVarint32();
                verifyPackedFixed32Length(varint322);
                int i4 = this.pos + varint322;
                while (this.pos < i4) {
                    intArrayList.addInt(readLittleEndian32_NoCheck());
                }
                return;
            }
            if (tagWireType2 != 5) {
                throw d0.invalidWireType();
            }
            do {
                intArrayList.addInt(readFixed32());
                if (isAtEnd()) {
                    return;
                } else {
                    i2 = this.pos;
                }
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public long readFixed64() throws IOException {
            requireWireType(1);
            return readLittleEndian64();
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readFixed64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof LongArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 1) {
                    do {
                        list.add(Long.valueOf(readFixed64()));
                        if (isAtEnd()) {
                            return;
                        } else {
                            i = this.pos;
                        }
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                }
                if (tagWireType != 2) {
                    throw d0.invalidWireType();
                }
                int varint32 = readVarint32();
                verifyPackedFixed64Length(varint32);
                int i3 = this.pos + varint32;
                while (this.pos < i3) {
                    list.add(Long.valueOf(readLittleEndian64_NoCheck()));
                }
                return;
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 1) {
                do {
                    longArrayList.addLong(readFixed64());
                    if (isAtEnd()) {
                        return;
                    } else {
                        i2 = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i2;
                return;
            }
            if (tagWireType2 != 2) {
                throw d0.invalidWireType();
            }
            int varint322 = readVarint32();
            verifyPackedFixed64Length(varint322);
            int i4 = this.pos + varint322;
            while (this.pos < i4) {
                longArrayList.addLong(readLittleEndian64_NoCheck());
            }
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public float readFloat() throws IOException {
            requireWireType(5);
            return Float.intBitsToFloat(readLittleEndian32());
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readFloatList(List<Float> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof FloatArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 2) {
                    int varint32 = readVarint32();
                    verifyPackedFixed32Length(varint32);
                    int i3 = this.pos + varint32;
                    while (this.pos < i3) {
                        list.add(Float.valueOf(Float.intBitsToFloat(readLittleEndian32_NoCheck())));
                    }
                    return;
                }
                if (tagWireType != 5) {
                    throw d0.invalidWireType();
                }
                do {
                    list.add(Float.valueOf(readFloat()));
                    if (isAtEnd()) {
                        return;
                    } else {
                        i = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            FloatArrayList floatArrayList = (FloatArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 2) {
                int varint322 = readVarint32();
                verifyPackedFixed32Length(varint322);
                int i4 = this.pos + varint322;
                while (this.pos < i4) {
                    floatArrayList.addFloat(Float.intBitsToFloat(readLittleEndian32_NoCheck()));
                }
                return;
            }
            if (tagWireType2 != 5) {
                throw d0.invalidWireType();
            }
            do {
                floatArrayList.addFloat(readFloat());
                if (isAtEnd()) {
                    return;
                } else {
                    i2 = this.pos;
                }
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        @Deprecated
        public <T> T readGroup(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            requireWireType(3);
            return (T) readGroup(Protobuf.getInstance().schemaFor((Class) cls), extensionRegistryLite);
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        @Deprecated
        public <T> T readGroupBySchemaWithCheck(l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            requireWireType(3);
            return (T) readGroup(l1Var, extensionRegistryLite);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        @Deprecated
        public <T> void readGroupList(List<T> list, l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int i;
            if (WireFormat.getTagWireType(this.tag) != 3) {
                throw d0.invalidWireType();
            }
            int i2 = this.tag;
            do {
                list.add(readGroup(l1Var, extensionRegistryLite));
                if (isAtEnd()) {
                    return;
                } else {
                    i = this.pos;
                }
            } while (readVarint32() == i2);
            this.pos = i;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        @Deprecated
        public <T> void readGroupList(List<T> list, Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            readGroupList(list, Protobuf.getInstance().schemaFor((Class) cls), extensionRegistryLite);
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public int readInt32() throws IOException {
            requireWireType(0);
            return readVarint32();
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readInt32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof IntArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 0) {
                    do {
                        list.add(Integer.valueOf(readInt32()));
                        if (isAtEnd()) {
                            return;
                        } else {
                            i = this.pos;
                        }
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                }
                if (tagWireType != 2) {
                    throw d0.invalidWireType();
                }
                int varint32 = this.pos + readVarint32();
                while (this.pos < varint32) {
                    list.add(Integer.valueOf(readVarint32()));
                }
                requirePosition(varint32);
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 0) {
                do {
                    intArrayList.addInt(readInt32());
                    if (isAtEnd()) {
                        return;
                    } else {
                        i2 = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i2;
                return;
            }
            if (tagWireType2 != 2) {
                throw d0.invalidWireType();
            }
            int varint322 = this.pos + readVarint32();
            while (this.pos < varint322) {
                intArrayList.addInt(readVarint32());
            }
            requirePosition(varint322);
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public long readInt64() throws IOException {
            requireWireType(0);
            return readVarint64();
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readInt64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof LongArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 0) {
                    do {
                        list.add(Long.valueOf(readInt64()));
                        if (isAtEnd()) {
                            return;
                        } else {
                            i = this.pos;
                        }
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                }
                if (tagWireType != 2) {
                    throw d0.invalidWireType();
                }
                int varint32 = this.pos + readVarint32();
                while (this.pos < varint32) {
                    list.add(Long.valueOf(readVarint64()));
                }
                requirePosition(varint32);
                return;
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 0) {
                do {
                    longArrayList.addLong(readInt64());
                    if (isAtEnd()) {
                        return;
                    } else {
                        i2 = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i2;
                return;
            }
            if (tagWireType2 != 2) {
                throw d0.invalidWireType();
            }
            int varint322 = this.pos + readVarint32();
            while (this.pos < varint322) {
                longArrayList.addLong(readVarint64());
            }
            requirePosition(varint322);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public <K, V> void readMap(Map<K, V> map, MapEntryLite.b<K, V> bVar, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            requireWireType(2);
            int varint32 = readVarint32();
            requireBytes(varint32);
            int i = this.limit;
            this.limit = this.pos + varint32;
            try {
                Object field = bVar.defaultKey;
                Object field2 = bVar.defaultValue;
                while (true) {
                    int fieldNumber = getFieldNumber();
                    if (fieldNumber == Integer.MAX_VALUE) {
                        map.put(field, field2);
                        return;
                    }
                    if (fieldNumber == 1) {
                        field = readField(bVar.keyType, null, null);
                    } else if (fieldNumber != 2) {
                        try {
                            if (!skipField()) {
                                throw new d0("Unable to parse map entry.");
                            }
                        } catch (d0.a unused) {
                            if (!skipField()) {
                                throw new d0("Unable to parse map entry.");
                            }
                        }
                    } else {
                        field2 = readField(bVar.valueType, bVar.defaultValue.getClass(), extensionRegistryLite);
                    }
                }
            } finally {
                this.limit = i;
            }
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public <T> T readMessage(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            requireWireType(2);
            return (T) readMessage(Protobuf.getInstance().schemaFor((Class) cls), extensionRegistryLite);
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public <T> T readMessageBySchemaWithCheck(l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            requireWireType(2);
            return (T) readMessage(l1Var, extensionRegistryLite);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public <T> void readMessageList(List<T> list, l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int i;
            if (WireFormat.getTagWireType(this.tag) != 2) {
                throw d0.invalidWireType();
            }
            int i2 = this.tag;
            do {
                list.add(readMessage(l1Var, extensionRegistryLite));
                if (isAtEnd()) {
                    return;
                } else {
                    i = this.pos;
                }
            } while (readVarint32() == i2);
            this.pos = i;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public <T> void readMessageList(List<T> list, Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            readMessageList(list, Protobuf.getInstance().schemaFor((Class) cls), extensionRegistryLite);
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public int readSFixed32() throws IOException {
            requireWireType(5);
            return readLittleEndian32();
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readSFixed32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof IntArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 2) {
                    int varint32 = readVarint32();
                    verifyPackedFixed32Length(varint32);
                    int i3 = this.pos + varint32;
                    while (this.pos < i3) {
                        list.add(Integer.valueOf(readLittleEndian32_NoCheck()));
                    }
                    return;
                }
                if (tagWireType != 5) {
                    throw d0.invalidWireType();
                }
                do {
                    list.add(Integer.valueOf(readSFixed32()));
                    if (isAtEnd()) {
                        return;
                    } else {
                        i = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 2) {
                int varint322 = readVarint32();
                verifyPackedFixed32Length(varint322);
                int i4 = this.pos + varint322;
                while (this.pos < i4) {
                    intArrayList.addInt(readLittleEndian32_NoCheck());
                }
                return;
            }
            if (tagWireType2 != 5) {
                throw d0.invalidWireType();
            }
            do {
                intArrayList.addInt(readSFixed32());
                if (isAtEnd()) {
                    return;
                } else {
                    i2 = this.pos;
                }
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public long readSFixed64() throws IOException {
            requireWireType(1);
            return readLittleEndian64();
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readSFixed64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof LongArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 1) {
                    do {
                        list.add(Long.valueOf(readSFixed64()));
                        if (isAtEnd()) {
                            return;
                        } else {
                            i = this.pos;
                        }
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                }
                if (tagWireType != 2) {
                    throw d0.invalidWireType();
                }
                int varint32 = readVarint32();
                verifyPackedFixed64Length(varint32);
                int i3 = this.pos + varint32;
                while (this.pos < i3) {
                    list.add(Long.valueOf(readLittleEndian64_NoCheck()));
                }
                return;
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 1) {
                do {
                    longArrayList.addLong(readSFixed64());
                    if (isAtEnd()) {
                        return;
                    } else {
                        i2 = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i2;
                return;
            }
            if (tagWireType2 != 2) {
                throw d0.invalidWireType();
            }
            int varint322 = readVarint32();
            verifyPackedFixed64Length(varint322);
            int i4 = this.pos + varint322;
            while (this.pos < i4) {
                longArrayList.addLong(readLittleEndian64_NoCheck());
            }
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public int readSInt32() throws IOException {
            requireWireType(0);
            return CodedInputStream.decodeZigZag32(readVarint32());
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readSInt32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof IntArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw d0.invalidWireType();
                    }
                    int varint32 = this.pos + readVarint32();
                    while (this.pos < varint32) {
                        list.add(Integer.valueOf(CodedInputStream.decodeZigZag32(readVarint32())));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(readSInt32()));
                    if (isAtEnd()) {
                        return;
                    } else {
                        i = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw d0.invalidWireType();
                }
                int varint322 = this.pos + readVarint32();
                while (this.pos < varint322) {
                    intArrayList.addInt(CodedInputStream.decodeZigZag32(readVarint32()));
                }
                return;
            }
            do {
                intArrayList.addInt(readSInt32());
                if (isAtEnd()) {
                    return;
                } else {
                    i2 = this.pos;
                }
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public long readSInt64() throws IOException {
            requireWireType(0);
            return CodedInputStream.decodeZigZag64(readVarint64());
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readSInt64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof LongArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw d0.invalidWireType();
                    }
                    int varint32 = this.pos + readVarint32();
                    while (this.pos < varint32) {
                        list.add(Long.valueOf(CodedInputStream.decodeZigZag64(readVarint64())));
                    }
                    return;
                }
                do {
                    list.add(Long.valueOf(readSInt64()));
                    if (isAtEnd()) {
                        return;
                    } else {
                        i = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw d0.invalidWireType();
                }
                int varint322 = this.pos + readVarint32();
                while (this.pos < varint322) {
                    longArrayList.addLong(CodedInputStream.decodeZigZag64(readVarint64()));
                }
                return;
            }
            do {
                longArrayList.addLong(readSInt64());
                if (isAtEnd()) {
                    return;
                } else {
                    i2 = this.pos;
                }
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public String readString() throws IOException {
            return readStringInternal(false);
        }

        public String readStringInternal(boolean z) throws IOException {
            requireWireType(2);
            int varint32 = readVarint32();
            if (varint32 == 0) {
                return "";
            }
            requireBytes(varint32);
            if (z) {
                byte[] bArr = this.buffer;
                int i = this.pos;
                if (!c2.isValidUtf8(bArr, i, i + varint32)) {
                    throw d0.invalidUtf8();
                }
            }
            String str = new String(this.buffer, this.pos, varint32, Internal.UTF_8);
            this.pos += varint32;
            return str;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readStringList(List<String> list) throws IOException {
            readStringListInternal(list, false);
        }

        public void readStringListInternal(List<String> list, boolean z) throws IOException {
            int i;
            int i2;
            if (WireFormat.getTagWireType(this.tag) != 2) {
                throw d0.invalidWireType();
            }
            if (!(list instanceof h0) || z) {
                do {
                    list.add(readStringInternal(z));
                    if (isAtEnd()) {
                        return;
                    } else {
                        i = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            h0 h0Var = (h0) list;
            do {
                h0Var.add(readBytes());
                if (isAtEnd()) {
                    return;
                } else {
                    i2 = this.pos;
                }
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readStringListRequireUtf8(List<String> list) throws IOException {
            readStringListInternal(list, true);
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public String readStringRequireUtf8() throws IOException {
            return readStringInternal(true);
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public int readUInt32() throws IOException {
            requireWireType(0);
            return readVarint32();
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readUInt32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof IntArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType != 0) {
                    if (tagWireType != 2) {
                        throw d0.invalidWireType();
                    }
                    int varint32 = this.pos + readVarint32();
                    while (this.pos < varint32) {
                        list.add(Integer.valueOf(readVarint32()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(readUInt32()));
                    if (isAtEnd()) {
                        return;
                    } else {
                        i = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i;
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 != 0) {
                if (tagWireType2 != 2) {
                    throw d0.invalidWireType();
                }
                int varint322 = this.pos + readVarint32();
                while (this.pos < varint322) {
                    intArrayList.addInt(readVarint32());
                }
                return;
            }
            do {
                intArrayList.addInt(readUInt32());
                if (isAtEnd()) {
                    return;
                } else {
                    i2 = this.pos;
                }
            } while (readVarint32() == this.tag);
            this.pos = i2;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public long readUInt64() throws IOException {
            requireWireType(0);
            return readVarint64();
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public void readUInt64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof LongArrayList)) {
                int tagWireType = WireFormat.getTagWireType(this.tag);
                if (tagWireType == 0) {
                    do {
                        list.add(Long.valueOf(readUInt64()));
                        if (isAtEnd()) {
                            return;
                        } else {
                            i = this.pos;
                        }
                    } while (readVarint32() == this.tag);
                    this.pos = i;
                    return;
                }
                if (tagWireType != 2) {
                    throw d0.invalidWireType();
                }
                int varint32 = this.pos + readVarint32();
                while (this.pos < varint32) {
                    list.add(Long.valueOf(readVarint64()));
                }
                requirePosition(varint32);
                return;
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int tagWireType2 = WireFormat.getTagWireType(this.tag);
            if (tagWireType2 == 0) {
                do {
                    longArrayList.addLong(readUInt64());
                    if (isAtEnd()) {
                        return;
                    } else {
                        i2 = this.pos;
                    }
                } while (readVarint32() == this.tag);
                this.pos = i2;
                return;
            }
            if (tagWireType2 != 2) {
                throw d0.invalidWireType();
            }
            int varint322 = this.pos + readVarint32();
            while (this.pos < varint322) {
                longArrayList.addLong(readVarint64());
            }
            requirePosition(varint322);
        }

        public long readVarint64() throws IOException {
            long j;
            long j2;
            long j3;
            int i;
            int i2 = this.pos;
            int i3 = this.limit;
            if (i3 == i2) {
                throw d0.truncatedMessage();
            }
            byte[] bArr = this.buffer;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.pos = i4;
                return b;
            }
            if (i3 - i4 < 9) {
                return readVarint64SlowPath();
            }
            int i5 = i4 + 1;
            int i6 = b ^ (bArr[i4] << 7);
            if (i6 >= 0) {
                int i7 = i5 + 1;
                int i8 = i6 ^ (bArr[i5] << Ascii.SO);
                if (i8 >= 0) {
                    i5 = i7;
                    j = i8 ^ 16256;
                } else {
                    i5 = i7 + 1;
                    int i9 = i8 ^ (bArr[i7] << Ascii.NAK);
                    if (i9 < 0) {
                        i = i9 ^ (-2080896);
                    } else {
                        long j4 = i9;
                        int i10 = i5 + 1;
                        long j5 = j4 ^ (((long) bArr[i5]) << 28);
                        if (j5 >= 0) {
                            j3 = 266354560;
                        } else {
                            i5 = i10 + 1;
                            long j6 = j5 ^ (((long) bArr[i10]) << 35);
                            if (j6 < 0) {
                                j2 = -34093383808L;
                            } else {
                                i10 = i5 + 1;
                                j5 = j6 ^ (((long) bArr[i5]) << 42);
                                if (j5 >= 0) {
                                    j3 = 4363953127296L;
                                } else {
                                    i5 = i10 + 1;
                                    j6 = j5 ^ (((long) bArr[i10]) << 49);
                                    if (j6 < 0) {
                                        j2 = -558586000294016L;
                                    } else {
                                        int i11 = i5 + 1;
                                        long j7 = (j6 ^ (((long) bArr[i5]) << 56)) ^ 71499008037633920L;
                                        if (j7 < 0) {
                                            i5 = i11 + 1;
                                            if (bArr[i11] < 0) {
                                                throw d0.malformedVarint();
                                            }
                                        } else {
                                            i5 = i11;
                                        }
                                        j = j7;
                                    }
                                }
                            }
                            j = j6 ^ j2;
                        }
                        j = j5 ^ j3;
                        i5 = i10;
                    }
                }
                this.pos = i5;
                return j;
            }
            i = i6 ^ (-128);
            j = i;
            this.pos = i5;
            return j;
        }

        @Override // com.google.protobuf.BinaryReader, com.google.protobuf.j1
        public boolean skipField() throws IOException {
            int i;
            if (isAtEnd() || (i = this.tag) == this.endGroupTag) {
                return false;
            }
            int tagWireType = WireFormat.getTagWireType(i);
            if (tagWireType == 0) {
                skipVarint();
                return true;
            }
            if (tagWireType == 1) {
                skipBytes(8);
                return true;
            }
            if (tagWireType == 2) {
                skipBytes(readVarint32());
                return true;
            }
            if (tagWireType == 3) {
                skipGroup();
                return true;
            }
            if (tagWireType != 5) {
                throw d0.invalidWireType();
            }
            skipBytes(4);
            return true;
        }
    }

    private BinaryReader() {
    }

    /* synthetic */ BinaryReader(a aVar) {
        this();
    }

    public static BinaryReader newInstance(ByteBuffer byteBuffer, boolean z) {
        if (byteBuffer.hasArray()) {
            return new b(byteBuffer, z);
        }
        throw new IllegalArgumentException("Direct buffers not yet supported");
    }

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ int getFieldNumber() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ int getTag();

    public abstract int getTotalBytesRead();

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ <T> void mergeGroupField(T t, l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ <T> void mergeMessageField(T t, l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ boolean readBool() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readBoolList(List<Boolean> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ ByteString readBytes() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readBytesList(List<ByteString> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ double readDouble() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readDoubleList(List<Double> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ int readEnum() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readEnumList(List<Integer> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ int readFixed32() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readFixed32List(List<Integer> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ long readFixed64() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readFixed64List(List<Long> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ float readFloat() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readFloatList(List<Float> list) throws IOException;

    @Override // com.google.protobuf.j1
    @Deprecated
    public abstract /* synthetic */ <T> T readGroup(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    @Override // com.google.protobuf.j1
    @Deprecated
    public abstract /* synthetic */ <T> T readGroupBySchemaWithCheck(l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    @Override // com.google.protobuf.j1
    @Deprecated
    public abstract /* synthetic */ <T> void readGroupList(List<T> list, l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    @Override // com.google.protobuf.j1
    @Deprecated
    public abstract /* synthetic */ <T> void readGroupList(List<T> list, Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ int readInt32() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readInt32List(List<Integer> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ long readInt64() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readInt64List(List<Long> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ <K, V> void readMap(Map<K, V> map, MapEntryLite.b<K, V> bVar, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ <T> T readMessage(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ <T> T readMessageBySchemaWithCheck(l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ <T> void readMessageList(List<T> list, l1<T> l1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ <T> void readMessageList(List<T> list, Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ int readSFixed32() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readSFixed32List(List<Integer> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ long readSFixed64() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readSFixed64List(List<Long> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ int readSInt32() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readSInt32List(List<Integer> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ long readSInt64() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readSInt64List(List<Long> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ String readString() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readStringList(List<String> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readStringListRequireUtf8(List<String> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ String readStringRequireUtf8() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ int readUInt32() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readUInt32List(List<Integer> list) throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ long readUInt64() throws IOException;

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ void readUInt64List(List<Long> list) throws IOException;

    @Override // com.google.protobuf.j1
    public boolean shouldDiscardUnknownFields() {
        return false;
    }

    @Override // com.google.protobuf.j1
    public abstract /* synthetic */ boolean skipField() throws IOException;
}
