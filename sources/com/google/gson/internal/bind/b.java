package com.google.gson.internal.bind;

import com.google.gson.d;
import com.google.gson.g;
import com.google.gson.i;
import com.google.gson.j;
import com.google.gson.l;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: JsonTreeWriter.java */
/* JADX INFO: loaded from: classes3.dex */
public final class b extends JsonWriter {
    private static final Writer a = new a();
    private static final l b = new l("closed");
    private final List<g> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4229d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f4230e;

    /* JADX INFO: compiled from: JsonTreeWriter.java */
    class a extends Writer {
        a() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    }

    public b() {
        super(a);
        this.c = new ArrayList();
        this.f4230e = i.a;
    }

    private g e() {
        return this.c.get(r0.size() - 1);
    }

    private void f(g gVar) {
        if (this.f4229d != null) {
            if (!gVar.i() || getSerializeNulls()) {
                ((j) e()).n(this.f4229d, gVar);
            }
            this.f4229d = null;
            return;
        }
        if (this.c.isEmpty()) {
            this.f4230e = gVar;
            return;
        }
        g gVarE = e();
        if (!(gVarE instanceof d)) {
            throw new IllegalStateException();
        }
        ((d) gVarE).n(gVar);
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter beginArray() throws IOException {
        d dVar = new d();
        f(dVar);
        this.c.add(dVar);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter beginObject() throws IOException {
        j jVar = new j();
        f(jVar);
        this.c.add(jVar);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.c.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.c.add(b);
    }

    public g d() {
        if (this.c.isEmpty()) {
            return this.f4230e;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.c);
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter endArray() throws IOException {
        if (this.c.isEmpty() || this.f4229d != null) {
            throw new IllegalStateException();
        }
        if (!(e() instanceof d)) {
            throw new IllegalStateException();
        }
        this.c.remove(r0.size() - 1);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter endObject() throws IOException {
        if (this.c.isEmpty() || this.f4229d != null) {
            throw new IllegalStateException();
        }
        if (!(e() instanceof j)) {
            throw new IllegalStateException();
        }
        this.c.remove(r0.size() - 1);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter jsonValue(String str) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter name(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.c.isEmpty() || this.f4229d != null) {
            throw new IllegalStateException();
        }
        if (!(e() instanceof j)) {
            throw new IllegalStateException();
        }
        this.f4229d = str;
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter nullValue() throws IOException {
        f(i.a);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(double d2) throws IOException {
        if (isLenient() || !(Double.isNaN(d2) || Double.isInfinite(d2))) {
            f(new l(Double.valueOf(d2)));
            return this;
        }
        throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d2);
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(float f2) throws IOException {
        if (isLenient() || !(Float.isNaN(f2) || Float.isInfinite(f2))) {
            f(new l(Float.valueOf(f2)));
            return this;
        }
        throw new IllegalArgumentException("JSON forbids NaN and infinities: " + f2);
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(long j) throws IOException {
        f(new l(Long.valueOf(j)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(Boolean bool) throws IOException {
        if (bool == null) {
            return nullValue();
        }
        f(new l(bool));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        if (!isLenient()) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        f(new l(number));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        f(new l(str));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(boolean z) throws IOException {
        f(new l(Boolean.valueOf(z)));
        return this;
    }
}
