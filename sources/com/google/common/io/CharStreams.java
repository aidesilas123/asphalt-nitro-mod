package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class CharStreams {

    private static final class a extends Writer {
        private static final a a = new a();

        private a() {
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(char c) {
            return this;
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence) {
            return this;
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence, int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, charSequence == null ? 4 : charSequence.length());
            return this;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        public String toString() {
            return "CharStreams.nullWriter()";
        }

        @Override // java.io.Writer
        public void write(int i) {
        }

        @Override // java.io.Writer
        public void write(String str) {
            Preconditions.checkNotNull(str);
        }

        @Override // java.io.Writer
        public void write(String str, int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2 + i, str.length());
        }

        @Override // java.io.Writer
        public void write(char[] cArr) {
            Preconditions.checkNotNull(cArr);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2 + i, cArr.length);
        }
    }

    private CharStreams() {
    }

    static long a(Reader reader, StringBuilder sb) throws IOException {
        Preconditions.checkNotNull(reader);
        Preconditions.checkNotNull(sb);
        char[] cArr = new char[2048];
        long j = 0;
        while (true) {
            int i = reader.read(cArr);
            if (i == -1) {
                return j;
            }
            sb.append(cArr, 0, i);
            j += (long) i;
        }
    }

    public static Writer asWriter(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new com.google.common.io.a(appendable);
    }

    static long b(Reader reader, Writer writer) throws IOException {
        Preconditions.checkNotNull(reader);
        Preconditions.checkNotNull(writer);
        char[] cArr = new char[2048];
        long j = 0;
        while (true) {
            int i = reader.read(cArr);
            if (i == -1) {
                return j;
            }
            writer.write(cArr, 0, i);
            j += (long) i;
        }
    }

    static CharBuffer c() {
        return CharBuffer.allocate(2048);
    }

    public static long copy(Readable readable, Appendable appendable) throws IOException {
        if (readable instanceof Reader) {
            return appendable instanceof StringBuilder ? a((Reader) readable, (StringBuilder) appendable) : b((Reader) readable, asWriter(appendable));
        }
        Preconditions.checkNotNull(readable);
        Preconditions.checkNotNull(appendable);
        long jRemaining = 0;
        CharBuffer charBufferC = c();
        while (readable.read(charBufferC) != -1) {
            h.b(charBufferC);
            appendable.append(charBufferC);
            jRemaining += (long) charBufferC.remaining();
            h.a(charBufferC);
        }
        return jRemaining;
    }

    private static StringBuilder d(Readable readable) throws IOException {
        StringBuilder sb = new StringBuilder();
        if (readable instanceof Reader) {
            a((Reader) readable, sb);
        } else {
            copy(readable, sb);
        }
        return sb;
    }

    public static long exhaust(Readable readable) throws IOException {
        CharBuffer charBufferC = c();
        long j = 0;
        while (true) {
            long j2 = readable.read(charBufferC);
            if (j2 == -1) {
                return j;
            }
            j += j2;
            h.a(charBufferC);
        }
    }

    public static Writer nullWriter() {
        return a.a;
    }

    public static <T> T readLines(Readable readable, j<T> jVar) throws IOException {
        String strB;
        Preconditions.checkNotNull(readable);
        Preconditions.checkNotNull(jVar);
        k kVar = new k(readable);
        do {
            strB = kVar.b();
            if (strB == null) {
                break;
            }
        } while (jVar.a(strB));
        return jVar.getResult();
    }

    public static List<String> readLines(Readable readable) throws IOException {
        ArrayList arrayList = new ArrayList();
        k kVar = new k(readable);
        while (true) {
            String strB = kVar.b();
            if (strB == null) {
                return arrayList;
            }
            arrayList.add(strB);
        }
    }

    public static void skipFully(Reader reader, long j) throws IOException {
        Preconditions.checkNotNull(reader);
        while (j > 0) {
            long jSkip = reader.skip(j);
            if (jSkip == 0) {
                throw new EOFException();
            }
            j -= jSkip;
        }
    }

    public static String toString(Readable readable) throws IOException {
        return d(readable).toString();
    }
}
