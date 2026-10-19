package com.google.common.hash;

import com.google.common.base.Preconditions;
import java.io.OutputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class Funnels {

    private enum ByteArrayFunnel implements k<byte[]> {
        INSTANCE;

        @Override // com.google.common.hash.k
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void o(byte[] bArr, v vVar) {
            vVar.a(bArr);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.byteArrayFunnel()";
        }
    }

    private enum IntegerFunnel implements k<Integer> {
        INSTANCE;

        @Override // com.google.common.hash.k
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void o(Integer num, v vVar) {
            vVar.putInt(num.intValue());
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.integerFunnel()";
        }
    }

    private enum LongFunnel implements k<Long> {
        INSTANCE;

        @Override // com.google.common.hash.k
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void o(Long l, v vVar) {
            vVar.putLong(l.longValue());
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.longFunnel()";
        }
    }

    private enum UnencodedCharsFunnel implements k<CharSequence> {
        INSTANCE;

        @Override // com.google.common.hash.k
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void o(CharSequence charSequence, v vVar) {
            vVar.c(charSequence);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.unencodedCharsFunnel()";
        }
    }

    private static class a<E> implements k<Iterable<? extends E>>, Serializable {
        private final k<E> a;

        a(k<E> kVar) {
            this.a = (k) Preconditions.checkNotNull(kVar);
        }

        @Override // com.google.common.hash.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void o(Iterable<? extends E> iterable, v vVar) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                this.a.o(it.next(), vVar);
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return this.a.equals(((a) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return a.class.hashCode() ^ this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 26);
            sb.append("Funnels.sequentialFunnel(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class b extends OutputStream {
        final v a;

        b(v vVar) {
            this.a = (v) Preconditions.checkNotNull(vVar);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 24);
            sb.append("Funnels.asOutputStream(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            this.a.b((byte) i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            this.a.a(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            this.a.d(bArr, i, i2);
        }
    }

    private static class c implements k<CharSequence>, Serializable {
        private final Charset a;

        private static class a implements Serializable {
            private static final long serialVersionUID = 0;
            private final String a;

            a(Charset charset) {
                this.a = charset.name();
            }

            private Object readResolve() {
                return Funnels.stringFunnel(Charset.forName(this.a));
            }
        }

        c(Charset charset) {
            this.a = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.hash.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void o(CharSequence charSequence, v vVar) {
            vVar.e(charSequence, this.a);
        }

        public boolean equals(Object obj) {
            if (obj instanceof c) {
                return this.a.equals(((c) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return c.class.hashCode() ^ this.a.hashCode();
        }

        public String toString() {
            String strName = this.a.name();
            StringBuilder sb = new StringBuilder(String.valueOf(strName).length() + 22);
            sb.append("Funnels.stringFunnel(");
            sb.append(strName);
            sb.append(")");
            return sb.toString();
        }

        Object writeReplace() {
            return new a(this.a);
        }
    }

    private Funnels() {
    }

    public static OutputStream asOutputStream(v vVar) {
        return new b(vVar);
    }

    public static k<byte[]> byteArrayFunnel() {
        return ByteArrayFunnel.INSTANCE;
    }

    public static k<Integer> integerFunnel() {
        return IntegerFunnel.INSTANCE;
    }

    public static k<Long> longFunnel() {
        return LongFunnel.INSTANCE;
    }

    public static <E> k<Iterable<? extends E>> sequentialFunnel(k<E> kVar) {
        return new a(kVar);
    }

    public static k<CharSequence> stringFunnel(Charset charset) {
        return new c(charset);
    }

    public static k<CharSequence> unencodedCharsFunnel() {
        return UnencodedCharsFunnel.INSTANCE;
    }
}
