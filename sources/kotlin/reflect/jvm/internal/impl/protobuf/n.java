package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Stack;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;

/* JADX INFO: compiled from: RopeByteString.java */
/* JADX INFO: loaded from: classes5.dex */
class n extends ByteString {
    private static final int[] b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ByteString f9710d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ByteString f9711e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f9712f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f9713g;
    private int h;

    /* JADX INFO: compiled from: RopeByteString.java */
    private static class b {
        private final Stack<ByteString> a;

        private b() {
            this.a = new Stack<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ByteString b(ByteString byteString, ByteString byteString2) {
            c(byteString);
            c(byteString2);
            ByteString byteStringPop = this.a.pop();
            while (!this.a.isEmpty()) {
                byteStringPop = new n(this.a.pop(), byteStringPop);
            }
            return byteStringPop;
        }

        private void c(ByteString byteString) {
            if (byteString.g()) {
                e(byteString);
                return;
            }
            if (byteString instanceof n) {
                n nVar = (n) byteString;
                c(nVar.f9710d);
                c(nVar.f9711e);
            } else {
                String strValueOf = String.valueOf(byteString.getClass());
                StringBuilder sb = new StringBuilder(strValueOf.length() + 49);
                sb.append("Has a new type of ByteString been created? Found ");
                sb.append(strValueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }

        private int d(int i) {
            int iBinarySearch = Arrays.binarySearch(n.b, i);
            return iBinarySearch < 0 ? (-(iBinarySearch + 1)) - 1 : iBinarySearch;
        }

        private void e(ByteString byteString) {
            int iD = d(byteString.size());
            int i = n.b[iD + 1];
            if (this.a.isEmpty() || this.a.peek().size() >= i) {
                this.a.push(byteString);
                return;
            }
            int i2 = n.b[iD];
            ByteString byteStringPop = this.a.pop();
            while (true) {
                if (this.a.isEmpty() || this.a.peek().size() >= i2) {
                    break;
                } else {
                    byteStringPop = new n(this.a.pop(), byteStringPop);
                }
            }
            n nVar = new n(byteStringPop, byteString);
            while (!this.a.isEmpty()) {
                if (this.a.peek().size() >= n.b[d(nVar.size()) + 1]) {
                    break;
                } else {
                    nVar = new n(this.a.pop(), nVar);
                }
            }
            this.a.push(nVar);
        }
    }

    /* JADX INFO: compiled from: RopeByteString.java */
    private static class c implements Iterator<i> {
        private final Stack<n> a;
        private i b;

        private c(ByteString byteString) {
            this.a = new Stack<>();
            this.b = a(byteString);
        }

        private i a(ByteString byteString) {
            while (byteString instanceof n) {
                n nVar = (n) byteString;
                this.a.push(nVar);
                byteString = nVar.f9710d;
            }
            return (i) byteString;
        }

        private i b() {
            while (!this.a.isEmpty()) {
                i iVarA = a(this.a.pop().f9711e);
                if (!iVarA.isEmpty()) {
                    return iVarA;
                }
            }
            return null;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public i next() {
            i iVar = this.b;
            if (iVar == null) {
                throw new NoSuchElementException();
            }
            this.b = b();
            return iVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: compiled from: RopeByteString.java */
    private class d implements ByteString.a {
        private final c a;
        private ByteString.a b;
        int c;

        private d() {
            c cVar = new c(n.this);
            this.a = cVar;
            this.b = cVar.next().iterator();
            this.c = n.this.size();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Byte next() {
            return Byte.valueOf(nextByte());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.c > 0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString.a
        public byte nextByte() {
            if (!this.b.hasNext()) {
                this.b = this.a.next().iterator();
            }
            this.c--;
            return this.b.nextByte();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: compiled from: RopeByteString.java */
    private class e extends InputStream {
        private c a;
        private i b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9715d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9716e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9717f;

        public e() {
            e();
        }

        private void d() {
            if (this.b != null) {
                int i = this.f9715d;
                int i2 = this.c;
                if (i == i2) {
                    this.f9716e += i2;
                    this.f9715d = 0;
                    if (!this.a.hasNext()) {
                        this.b = null;
                        this.c = 0;
                    } else {
                        i next = this.a.next();
                        this.b = next;
                        this.c = next.size();
                    }
                }
            }
        }

        private void e() {
            c cVar = new c(n.this);
            this.a = cVar;
            i next = cVar.next();
            this.b = next;
            this.c = next.size();
            this.f9715d = 0;
            this.f9716e = 0;
        }

        private int f(byte[] bArr, int i, int i2) {
            int i3 = i2;
            while (true) {
                if (i3 <= 0) {
                    break;
                }
                d();
                if (this.b != null) {
                    int iMin = Math.min(this.c - this.f9715d, i3);
                    if (bArr != null) {
                        this.b.d(bArr, this.f9715d, i, iMin);
                        i += iMin;
                    }
                    this.f9715d += iMin;
                    i3 -= iMin;
                } else if (i3 == i2) {
                    return -1;
                }
            }
            return i2 - i3;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return n.this.size() - (this.f9716e + this.f9715d);
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            this.f9717f = this.f9716e + this.f9715d;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            d();
            i iVar = this.b;
            if (iVar == null) {
                return -1;
            }
            int i = this.f9715d;
            this.f9715d = i + 1;
            return iVar.z(i) & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            Objects.requireNonNull(bArr);
            if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            return f(bArr, i, i2);
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            e();
            f(null, 0, this.f9717f);
        }

        @Override // java.io.InputStream
        public long skip(long j) {
            if (j < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (j > 2147483647L) {
                j = 2147483647L;
            }
            return f(null, 0, (int) j);
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 1;
        while (i > 0) {
            arrayList.add(Integer.valueOf(i));
            int i3 = i2 + i;
            i2 = i;
            i = i3;
        }
        arrayList.add(Integer.MAX_VALUE);
        b = new int[arrayList.size()];
        int i4 = 0;
        while (true) {
            int[] iArr = b;
            if (i4 >= iArr.length) {
                return;
            }
            iArr[i4] = ((Integer) arrayList.get(i4)).intValue();
            i4++;
        }
    }

    private n(ByteString byteString, ByteString byteString2) {
        this.h = 0;
        this.f9710d = byteString;
        this.f9711e = byteString2;
        int size = byteString.size();
        this.f9712f = size;
        this.c = size + byteString2.size();
        this.f9713g = Math.max(byteString.f(), byteString2.f()) + 1;
    }

    static ByteString C(ByteString byteString, ByteString byteString2) {
        n nVar = byteString instanceof n ? (n) byteString : null;
        if (byteString2.size() == 0) {
            return byteString;
        }
        if (byteString.size() != 0) {
            int size = byteString.size() + byteString2.size();
            if (size < 128) {
                return D(byteString, byteString2);
            }
            if (nVar != null && nVar.f9711e.size() + byteString2.size() < 128) {
                byteString2 = new n(nVar.f9710d, D(nVar.f9711e, byteString2));
            } else {
                if (nVar == null || nVar.f9710d.f() <= nVar.f9711e.f() || nVar.f() <= byteString2.f()) {
                    return size >= b[Math.max(byteString.f(), byteString2.f()) + 1] ? new n(byteString, byteString2) : new b().b(byteString, byteString2);
                }
                byteString2 = new n(nVar.f9710d, new n(nVar.f9711e, byteString2));
            }
        }
        return byteString2;
    }

    private static i D(ByteString byteString, ByteString byteString2) {
        int size = byteString.size();
        int size2 = byteString2.size();
        byte[] bArr = new byte[size + size2];
        byteString.d(bArr, 0, 0, size);
        byteString2.d(bArr, 0, size, size2);
        return new i(bArr);
    }

    private boolean E(ByteString byteString) {
        c cVar = new c(this);
        i next = cVar.next();
        c cVar2 = new c(byteString);
        i next2 = cVar2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int size = next.size() - i;
            int size2 = next2.size() - i2;
            int iMin = Math.min(size, size2);
            if (!(i == 0 ? next.A(next2, i2, iMin) : next2.A(next, i, iMin))) {
                return false;
            }
            i3 += iMin;
            int i4 = this.c;
            if (i3 >= i4) {
                if (i3 == i4) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == size) {
                next = cVar.next();
                i = 0;
            } else {
                i += iMin;
            }
            if (iMin == size2) {
                next2 = cVar2.next();
                i2 = 0;
            } else {
                i2 += iMin;
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected void e(byte[] bArr, int i, int i2, int i3) {
        int i4 = i + i3;
        int i5 = this.f9712f;
        if (i4 <= i5) {
            this.f9710d.e(bArr, i, i2, i3);
        } else {
            if (i >= i5) {
                this.f9711e.e(bArr, i - i5, i2, i3);
                return;
            }
            int i6 = i5 - i;
            this.f9710d.e(bArr, i, i2, i6);
            this.f9711e.e(bArr, 0, i2 + i6, i3 - i6);
        }
    }

    public boolean equals(Object obj) {
        int iO;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString)) {
            return false;
        }
        ByteString byteString = (ByteString) obj;
        if (this.c != byteString.size()) {
            return false;
        }
        if (this.c == 0) {
            return true;
        }
        if (this.h == 0 || (iO = byteString.o()) == 0 || this.h == iO) {
            return E(byteString);
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int f() {
        return this.f9713g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected boolean g() {
        return this.c >= b[this.f9713g];
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public boolean h() {
        int iN = this.f9710d.n(0, 0, this.f9712f);
        ByteString byteString = this.f9711e;
        return byteString.n(iN, 0, byteString.size()) == 0;
    }

    public int hashCode() {
        int iL = this.h;
        if (iL == 0) {
            int i = this.c;
            iL = l(i, 0, i);
            if (iL == 0) {
                iL = 1;
            }
            this.h = iL;
        }
        return iL;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString, java.lang.Iterable
    /* JADX INFO: renamed from: i */
    public ByteString.a iterator() {
        return new d();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public CodedInputStream j() {
        return CodedInputStream.newInstance(new e());
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int l(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.f9712f;
        if (i4 <= i5) {
            return this.f9710d.l(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.f9711e.l(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.f9711e.l(this.f9710d.l(i, i2, i6), 0, i3 - i6);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int n(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.f9712f;
        if (i4 <= i5) {
            return this.f9710d.n(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.f9711e.n(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.f9711e.n(this.f9710d.n(i, i2, i6), 0, i3 - i6);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    protected int o() {
        return this.h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public int size() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public String t(String str) throws UnsupportedEncodingException {
        return new String(r(), str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    void y(OutputStream outputStream, int i, int i2) throws IOException {
        int i3 = i + i2;
        int i4 = this.f9712f;
        if (i3 <= i4) {
            this.f9710d.y(outputStream, i, i2);
        } else {
            if (i >= i4) {
                this.f9711e.y(outputStream, i - i4, i2);
                return;
            }
            int i5 = i4 - i;
            this.f9710d.y(outputStream, i, i5);
            this.f9711e.y(outputStream, 0, i2 - i5);
        }
    }
}
