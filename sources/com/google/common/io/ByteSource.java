package com.google.common.io;

import com.google.common.base.Ascii;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.hash.Funnels;
import com.google.common.hash.HashCode;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ByteSource {

    class a extends CharSource {
        final Charset a;

        a(Charset charset) {
            this.a = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.CharSource
        public Reader c() throws IOException {
            return new InputStreamReader(ByteSource.this.f(), this.a);
        }

        @Override // com.google.common.io.CharSource
        public String d() throws IOException {
            return new String(ByteSource.this.h(), this.a);
        }

        public String toString() {
            String string = ByteSource.this.toString();
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 15 + strValueOf.length());
            sb.append(string);
            sb.append(".asCharSource(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class b extends ByteSource {
        final byte[] a;
        final int b;
        final int c;

        b(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        b(byte[] bArr, int i, int i2) {
            this.a = bArr;
            this.b = i;
            this.c = i2;
        }

        @Override // com.google.common.io.ByteSource
        public long d(OutputStream outputStream) throws IOException {
            outputStream.write(this.a, this.b, this.c);
            return this.c;
        }

        @Override // com.google.common.io.ByteSource
        public HashCode e(com.google.common.hash.l lVar) throws IOException {
            return lVar.h(this.a, this.b, this.c);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream f() {
            return new ByteArrayInputStream(this.a, this.b, this.c);
        }

        @Override // com.google.common.io.ByteSource
        public <T> T g(com.google.common.io.d<T> dVar) throws IOException {
            dVar.a(this.a, this.b, this.c);
            return dVar.getResult();
        }

        @Override // com.google.common.io.ByteSource
        public byte[] h() {
            byte[] bArr = this.a;
            int i = this.b;
            return Arrays.copyOfRange(bArr, i, this.c + i);
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> i() {
            return Optional.of(Long.valueOf(this.c));
        }

        public String toString() {
            String strTruncate = Ascii.truncate(BaseEncoding.base16().a(this.a, this.b, this.c), 30, "...");
            StringBuilder sb = new StringBuilder(String.valueOf(strTruncate).length() + 17);
            sb.append("ByteSource.wrap(");
            sb.append(strTruncate);
            sb.append(")");
            return sb.toString();
        }
    }

    private static final class c extends ByteSource {
        final Iterable<? extends ByteSource> a;

        c(Iterable<? extends ByteSource> iterable) {
            this.a = (Iterable) Preconditions.checkNotNull(iterable);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream f() throws IOException {
            return new l(this.a.iterator());
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> i() {
            Iterable<? extends ByteSource> iterable = this.a;
            if (!(iterable instanceof Collection)) {
                return Optional.absent();
            }
            Iterator<? extends ByteSource> it = iterable.iterator();
            long jLongValue = 0;
            while (it.hasNext()) {
                Optional<Long> optionalI = it.next().i();
                if (!optionalI.d()) {
                    return Optional.absent();
                }
                jLongValue += optionalI.c().longValue();
                if (jLongValue < 0) {
                    return Optional.of(Long.MAX_VALUE);
                }
            }
            return Optional.of(Long.valueOf(jLongValue));
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 19);
            sb.append("ByteSource.concat(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static final class d extends b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final d f3916d = new d();

        d() {
            super(new byte[0]);
        }

        @Override // com.google.common.io.ByteSource
        public CharSource a(Charset charset) {
            Preconditions.checkNotNull(charset);
            return CharSource.empty();
        }

        @Override // com.google.common.io.ByteSource.b, com.google.common.io.ByteSource
        public byte[] h() {
            return this.a;
        }

        @Override // com.google.common.io.ByteSource.b
        public String toString() {
            return "ByteSource.empty()";
        }
    }

    protected ByteSource() {
    }

    public static ByteSource concat(Iterable<? extends ByteSource> iterable) {
        return new c(iterable);
    }

    public static ByteSource concat(Iterator<? extends ByteSource> it) {
        return concat(ImmutableList.copyOf(it));
    }

    public static ByteSource concat(ByteSource... byteSourceArr) {
        return concat(ImmutableList.copyOf(byteSourceArr));
    }

    public static ByteSource empty() {
        return d.f3916d;
    }

    public static ByteSource wrap(byte[] bArr) {
        return new b(bArr);
    }

    public CharSource a(Charset charset) {
        return new a(charset);
    }

    public boolean b(ByteSource byteSource) throws Throwable {
        int i;
        Preconditions.checkNotNull(byteSource);
        byte[] bArrB = ByteStreams.b();
        byte[] bArrB2 = ByteStreams.b();
        Closer closerCreate = Closer.create();
        try {
            InputStream inputStream = (InputStream) closerCreate.a(f());
            InputStream inputStream2 = (InputStream) closerCreate.a(byteSource.f());
            do {
                i = ByteStreams.read(inputStream, bArrB, 0, bArrB.length);
                if (i == ByteStreams.read(inputStream2, bArrB2, 0, bArrB2.length) && Arrays.equals(bArrB, bArrB2)) {
                }
                return false;
            } while (i == bArrB.length);
            return true;
        } finally {
        }
    }

    public long c(e eVar) throws Throwable {
        Preconditions.checkNotNull(eVar);
        Closer closerCreate = Closer.create();
        try {
            return ByteStreams.copy((InputStream) closerCreate.a(f()), (OutputStream) closerCreate.a(eVar.b()));
        } finally {
        }
    }

    public long d(OutputStream outputStream) throws Throwable {
        Preconditions.checkNotNull(outputStream);
        try {
            return ByteStreams.copy((InputStream) Closer.create().a(f()), outputStream);
        } finally {
        }
    }

    public HashCode e(com.google.common.hash.l lVar) throws Throwable {
        com.google.common.hash.m mVarE = lVar.e();
        d(Funnels.asOutputStream(mVarE));
        return mVarE.g();
    }

    public abstract InputStream f() throws IOException;

    public <T> T g(com.google.common.io.d<T> dVar) throws Throwable {
        Preconditions.checkNotNull(dVar);
        try {
            return (T) ByteStreams.readBytes((InputStream) Closer.create().a(f()), dVar);
        } finally {
        }
    }

    public byte[] h() throws Throwable {
        Closer closerCreate = Closer.create();
        try {
            InputStream inputStream = (InputStream) closerCreate.a(f());
            Optional<Long> optionalI = i();
            return optionalI.d() ? ByteStreams.e(inputStream, optionalI.c().longValue()) : ByteStreams.toByteArray(inputStream);
        } catch (Throwable th) {
            try {
                throw closerCreate.b(th);
            } finally {
                closerCreate.close();
            }
        }
    }

    public Optional<Long> i() {
        return Optional.absent();
    }
}
