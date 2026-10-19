package com.bykv.vk.openvk.preload.a.b;

import com.bykv.vk.openvk.preload.a.b.a.n;
import com.bykv.vk.openvk.preload.a.m;
import com.bykv.vk.openvk.preload.a.o;
import com.bykv.vk.openvk.preload.a.r;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: compiled from: Streams.java */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: compiled from: Streams.java */
    static final class a extends Writer {
        private final Appendable a;
        private final C0095a b = new C0095a();

        /* JADX INFO: renamed from: com.bykv.vk.openvk.preload.a.b.k$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Streams.java */
        static class C0095a implements CharSequence {
            char[] a;

            C0095a() {
            }

            @Override // java.lang.CharSequence
            public final char charAt(int i) {
                return this.a[i];
            }

            @Override // java.lang.CharSequence
            public final int length() {
                return this.a.length;
            }

            @Override // java.lang.CharSequence
            public final CharSequence subSequence(int i, int i2) {
                return new String(this.a, i, i2 - i);
            }
        }

        a(Appendable appendable) {
            this.a = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
        }

        @Override // java.io.Writer
        public final void write(int i) throws IOException {
            this.a.append((char) i);
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) throws IOException {
            C0095a c0095a = this.b;
            c0095a.a = cArr;
            this.a.append(c0095a, i, i2 + i);
        }
    }

    public static com.bykv.vk.openvk.preload.a.k a(com.bykv.vk.openvk.preload.a.d.a aVar) throws o {
        boolean z;
        try {
            try {
                aVar.f();
                z = false;
            } catch (EOFException e2) {
                e = e2;
                z = true;
            }
            try {
                return n.X.a(aVar);
            } catch (EOFException e3) {
                e = e3;
                if (z) {
                    return m.a;
                }
                throw new r(e);
            }
        } catch (com.bykv.vk.openvk.preload.a.d.d e4) {
            throw new r(e4);
        } catch (IOException e5) {
            throw new com.bykv.vk.openvk.preload.a.l(e5);
        } catch (NumberFormatException e6) {
            throw new r(e6);
        }
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }

    public static void a(com.bykv.vk.openvk.preload.a.k kVar, com.bykv.vk.openvk.preload.a.d.c cVar) throws IOException {
        n.X.a(cVar, kVar);
    }
}
