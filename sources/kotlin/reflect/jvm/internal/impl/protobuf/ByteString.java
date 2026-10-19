package kotlin.reflect.jvm.internal.impl.protobuf;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ByteString implements Iterable<Byte> {
    public static final ByteString a = new i(new byte[0]);

    public interface a extends Iterator<Byte> {
        byte nextByte();
    }

    public static final class b extends OutputStream {
        private static final byte[] a = new byte[0];
        private final int b;
        private final ArrayList<ByteString> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9681d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private byte[] f9682e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9683f;

        b(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("Buffer size < 0");
            }
            this.b = i;
            this.c = new ArrayList<>();
            this.f9682e = new byte[i];
        }

        private byte[] a(byte[] bArr, int i) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
            return bArr2;
        }

        private void b(int i) {
            this.c.add(new i(this.f9682e));
            int length = this.f9681d + this.f9682e.length;
            this.f9681d = length;
            this.f9682e = new byte[Math.max(this.b, Math.max(i, length >>> 1))];
            this.f9683f = 0;
        }

        private void d() {
            int i = this.f9683f;
            byte[] bArr = this.f9682e;
            if (i >= bArr.length) {
                this.c.add(new i(this.f9682e));
                this.f9682e = a;
            } else if (i > 0) {
                this.c.add(new i(a(bArr, i)));
            }
            this.f9681d += this.f9683f;
            this.f9683f = 0;
        }

        public synchronized int e() {
            return this.f9681d + this.f9683f;
        }

        public synchronized ByteString f() {
            d();
            return ByteString.copyFrom(this.c);
        }

        public String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(e()));
        }

        @Override // java.io.OutputStream
        public synchronized void write(int i) {
            if (this.f9683f == this.f9682e.length) {
                b(1);
            }
            byte[] bArr = this.f9682e;
            int i2 = this.f9683f;
            this.f9683f = i2 + 1;
            bArr[i2] = (byte) i;
        }

        @Override // java.io.OutputStream
        public synchronized void write(byte[] bArr, int i, int i2) {
            byte[] bArr2 = this.f9682e;
            int length = bArr2.length;
            int i3 = this.f9683f;
            if (i2 <= length - i3) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.f9683f += i2;
            } else {
                int length2 = bArr2.length - i3;
                System.arraycopy(bArr, i, bArr2, i3, length2);
                int i4 = i2 - length2;
                b(i4);
                System.arraycopy(bArr, i + length2, this.f9682e, 0, i4);
                this.f9683f = i4;
            }
        }
    }

    ByteString() {
    }

    private static ByteString a(Iterator<ByteString> it, int i) {
        if (i == 1) {
            return it.next();
        }
        int i2 = i >>> 1;
        return a(it, i2).c(a(it, i - i2));
    }

    public static ByteString copyFrom(Iterable<ByteString> iterable) {
        Collection arrayList;
        if (iterable instanceof Collection) {
            arrayList = (Collection) iterable;
        } else {
            arrayList = new ArrayList();
            Iterator<ByteString> it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
        }
        return arrayList.isEmpty() ? a : a(arrayList.iterator(), arrayList.size());
    }

    public static ByteString copyFrom(byte[] bArr) {
        return copyFrom(bArr, 0, bArr.length);
    }

    public static ByteString copyFrom(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new i(bArr2);
    }

    public static ByteString copyFromUtf8(String str) {
        try {
            return new i(str.getBytes(C.UTF8_NAME));
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UTF-8 not supported?", e2);
        }
    }

    public static b newOutput() {
        return new b(128);
    }

    public ByteString c(ByteString byteString) {
        int size = size();
        int size2 = byteString.size();
        if (((long) size) + ((long) size2) < 2147483647L) {
            return n.C(this, byteString);
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("ByteString would be too long: ");
        sb.append(size);
        sb.append("+");
        sb.append(size2);
        throw new IllegalArgumentException(sb.toString());
    }

    public void d(byte[] bArr, int i, int i2, int i3) {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i2 < 0) {
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Target offset < 0: ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        if (i3 < 0) {
            StringBuilder sb3 = new StringBuilder(23);
            sb3.append("Length < 0: ");
            sb3.append(i3);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
        int i4 = i + i3;
        if (i4 > size()) {
            StringBuilder sb4 = new StringBuilder(34);
            sb4.append("Source end offset < 0: ");
            sb4.append(i4);
            throw new IndexOutOfBoundsException(sb4.toString());
        }
        int i5 = i2 + i3;
        if (i5 <= bArr.length) {
            if (i3 > 0) {
                e(bArr, i, i2, i3);
            }
        } else {
            StringBuilder sb5 = new StringBuilder(34);
            sb5.append("Target end offset < 0: ");
            sb5.append(i5);
            throw new IndexOutOfBoundsException(sb5.toString());
        }
    }

    protected abstract void e(byte[] bArr, int i, int i2, int i3);

    protected abstract int f();

    protected abstract boolean g();

    public abstract boolean h();

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: i */
    public abstract a iterator();

    public boolean isEmpty() {
        return size() == 0;
    }

    public abstract CodedInputStream j();

    protected abstract int l(int i, int i2, int i3);

    protected abstract int n(int i, int i2, int i3);

    protected abstract int o();

    public byte[] r() {
        int size = size();
        if (size == 0) {
            return Internal.a;
        }
        byte[] bArr = new byte[size];
        e(bArr, 0, 0, size);
        return bArr;
    }

    public abstract int size();

    public abstract String t(String str) throws UnsupportedEncodingException;

    public String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    public String v() {
        try {
            return t(C.UTF8_NAME);
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UTF-8 not supported?", e2);
        }
    }

    void x(OutputStream outputStream, int i, int i2) throws IOException {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i2 < 0) {
            StringBuilder sb2 = new StringBuilder(23);
            sb2.append("Length < 0: ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        int i3 = i + i2;
        if (i3 <= size()) {
            if (i2 > 0) {
                y(outputStream, i, i2);
            }
        } else {
            StringBuilder sb3 = new StringBuilder(39);
            sb3.append("Source end offset exceeded: ");
            sb3.append(i3);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
    }

    abstract void y(OutputStream outputStream, int i, int i2) throws IOException;
}
