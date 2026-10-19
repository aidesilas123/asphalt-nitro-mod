package com.google.gson.internal;

import com.google.gson.g;
import com.google.gson.h;
import com.google.gson.i;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.k;
import com.google.gson.o;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Streams {

    private static final class b extends Writer {
        private final Appendable a;
        private final a b = new a();

        private static class a implements CharSequence {
            private char[] a;
            private String b;

            private a() {
            }

            void a(char[] cArr) {
                this.a = cArr;
                this.b = null;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.a[i];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.a.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.a, i, i2 - i);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                if (this.b == null) {
                    this.b = new String(this.a);
                }
                return this.b;
            }
        }

        b(Appendable appendable) {
            this.a = appendable;
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence) throws IOException {
            this.a.append(charSequence);
            return this;
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence, int i, int i2) throws IOException {
            this.a.append(charSequence, i, i2);
            return this;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            this.a.append((char) i);
        }

        @Override // java.io.Writer
        public void write(String str, int i, int i2) throws IOException {
            Objects.requireNonNull(str);
            this.a.append(str, i, i2 + i);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            this.b.a(cArr);
            this.a.append(this.b, i, i2 + i);
        }
    }

    private Streams() {
        throw new UnsupportedOperationException();
    }

    public static g parse(JsonReader jsonReader) throws k {
        boolean z;
        try {
            try {
                jsonReader.peek();
                z = false;
            } catch (EOFException e2) {
                e = e2;
                z = true;
            }
            try {
                return TypeAdapters.V.b(jsonReader);
            } catch (EOFException e3) {
                e = e3;
                if (z) {
                    return i.a;
                }
                throw new o(e);
            }
        } catch (MalformedJsonException e4) {
            throw new o(e4);
        } catch (IOException e5) {
            throw new h(e5);
        } catch (NumberFormatException e6) {
            throw new o(e6);
        }
    }

    public static void write(g gVar, JsonWriter jsonWriter) throws IOException {
        TypeAdapters.V.d(jsonWriter, gVar);
    }

    public static Writer writerForAppendable(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new b(appendable);
    }
}
