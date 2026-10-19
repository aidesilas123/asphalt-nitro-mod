package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.NoSuchElementException;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;

/* JADX INFO: compiled from: LiteralByteString.java */
/* JADX INFO: loaded from: classes5.dex */
class i extends ByteString {
    protected final byte[] b;
    private int c = 0;

    /* JADX INFO: compiled from: LiteralByteString.java */
    private class b implements ByteString.a {
        private int a;
        private final int b;

        private b() {
            this.a = 0;
            this.b = i.this.size();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Byte next() {
            return Byte.valueOf(nextByte());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a < this.b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString.a
        public byte nextByte() {
            try {
                byte[] bArr = i.this.b;
                int i = this.a;
                this.a = i + 1;
                return bArr[i];
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new NoSuchElementException(e2.getMessage());
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    i(byte[] bArr) {
        this.b = bArr;
    }

    static int C(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    boolean A(i iVar, int i, int i2) {
        if (i2 > iVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i + i2 > iVar.size()) {
            int size2 = iVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
        byte[] bArr = this.b;
        byte[] bArr2 = iVar.b;
        int iB = B() + i2;
        int iB2 = B();
        int iB3 = iVar.B() + i;
        while (iB2 < iB) {
            if (bArr[iB2] != bArr2[iB3]) {
                return false;
            }
            iB2++;
            iB3++;
        }
        return true;
    }

    protected int B() {
        return 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected void e(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.b, i, bArr, i2, i3);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString) || size() != ((ByteString) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof i) {
            return A((i) obj, 0, size());
        }
        if (obj instanceof n) {
            return obj.equals(this);
        }
        String strValueOf = String.valueOf(obj.getClass());
        StringBuilder sb = new StringBuilder(strValueOf.length() + 49);
        sb.append("Has a new type of ByteString been created? Found ");
        sb.append(strValueOf);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int f() {
        return 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected boolean g() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public boolean h() {
        int iB = B();
        return Utf8.isValidUtf8(this.b, iB, size() + iB);
    }

    public int hashCode() {
        int iL = this.c;
        if (iL == 0) {
            int size = size();
            iL = l(size, 0, size);
            if (iL == 0) {
                iL = 1;
            }
            this.c = iL;
        }
        return iL;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString, java.lang.Iterable
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public ByteString.a iterator() {
        return new b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public CodedInputStream j() {
        return CodedInputStream.e(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int l(int i, int i2, int i3) {
        return C(i, this.b, B() + i2, i3);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int n(int i, int i2, int i3) {
        int iB = B() + i2;
        return Utf8.partialIsValidUtf8(i, this.b, iB, i3 + iB);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int o() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public int size() {
        return this.b.length;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public String t(String str) throws UnsupportedEncodingException {
        return new String(this.b, B(), size(), str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    void y(OutputStream outputStream, int i, int i2) throws IOException {
        outputStream.write(this.b, B() + i, i2);
    }

    public byte z(int i) {
        return this.b[i];
    }
}
