package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.NoSuchElementException;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;

/* JADX INFO: compiled from: BoundedByteString.java */
/* JADX INFO: loaded from: classes5.dex */
class c extends i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f9706d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f9707e;

    /* JADX INFO: compiled from: BoundedByteString.java */
    private class b implements ByteString.a {
        private int a;
        private final int b;

        private b() {
            int iB = c.this.B();
            this.a = iB;
            this.b = iB + c.this.size();
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
            int i = this.a;
            if (i >= this.b) {
                throw new NoSuchElementException();
            }
            byte[] bArr = c.this.b;
            this.a = i + 1;
            return bArr[i];
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    c(byte[] bArr, int i, int i2) {
        super(bArr);
        if (i < 0) {
            StringBuilder sb = new StringBuilder(29);
            sb.append("Offset too small: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 < 0) {
            StringBuilder sb2 = new StringBuilder(29);
            sb2.append("Length too small: ");
            sb2.append(i);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (((long) i) + ((long) i2) <= bArr.length) {
            this.f9706d = i;
            this.f9707e = i2;
            return;
        }
        StringBuilder sb3 = new StringBuilder(48);
        sb3.append("Offset+Length too large: ");
        sb3.append(i);
        sb3.append("+");
        sb3.append(i2);
        throw new IllegalArgumentException(sb3.toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.i
    protected int B() {
        return this.f9706d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.i, kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected void e(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.b, B() + i, bArr, i2, i3);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.i, kotlin.reflect.jvm.internal.impl.protobuf.ByteString, java.lang.Iterable
    /* JADX INFO: renamed from: i */
    public ByteString.a iterator() {
        return new b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.i, kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public int size() {
        return this.f9707e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.i
    public byte z(int i) {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(28);
            sb.append("Index too small: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        if (i < size()) {
            return this.b[this.f9706d + i];
        }
        int size = size();
        StringBuilder sb2 = new StringBuilder(41);
        sb2.append("Index too large: ");
        sb2.append(i);
        sb2.append(", ");
        sb2.append(size);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }
}
