package com.google.gson.internal.bind;

import com.google.gson.d;
import com.google.gson.g;
import com.google.gson.i;
import com.google.gson.j;
import com.google.gson.l;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: JsonTreeReader.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a extends JsonReader {
    private static final Reader a = new C0274a();
    private static final Object b = new Object();
    private Object[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4226d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String[] f4227e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f4228f;

    /* JADX INFO: renamed from: com.google.gson.internal.bind.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: JsonTreeReader.java */
    class C0274a extends Reader {
        C0274a() {
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    }

    /* JADX INFO: compiled from: JsonTreeReader.java */
    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            a = iArr;
            try {
                iArr[JsonToken.NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[JsonToken.END_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[JsonToken.END_DOCUMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public a(g gVar) {
        super(a);
        this.c = new Object[32];
        this.f4226d = 0;
        this.f4227e = new String[32];
        this.f4228f = new int[32];
        i(gVar);
    }

    private void a(JsonToken jsonToken) throws IOException {
        if (peek() == jsonToken) {
            return;
        }
        throw new IllegalStateException("Expected " + jsonToken + " but was " + peek() + locationString());
    }

    private String e(boolean z) throws IOException {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) f()).next();
        String str = (String) entry.getKey();
        this.f4227e[this.f4226d - 1] = z ? "<skipped>" : str;
        i(entry.getValue());
        return str;
    }

    private Object f() {
        return this.c[this.f4226d - 1];
    }

    private Object g() {
        Object[] objArr = this.c;
        int i = this.f4226d - 1;
        this.f4226d = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    private String getPath(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i = 0;
        while (true) {
            int i2 = this.f4226d;
            if (i >= i2) {
                return sb.toString();
            }
            Object[] objArr = this.c;
            if (objArr[i] instanceof d) {
                i++;
                if (i < i2 && (objArr[i] instanceof Iterator)) {
                    int i3 = this.f4228f[i];
                    if (z && i3 > 0 && (i == i2 - 1 || i == i2 - 2)) {
                        i3--;
                    }
                    sb.append('[');
                    sb.append(i3);
                    sb.append(']');
                }
            } else if ((objArr[i] instanceof j) && (i = i + 1) < i2 && (objArr[i] instanceof Iterator)) {
                sb.append('.');
                String[] strArr = this.f4227e;
                if (strArr[i] != null) {
                    sb.append(strArr[i]);
                }
            }
            i++;
        }
    }

    private void i(Object obj) {
        int i = this.f4226d;
        Object[] objArr = this.c;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.c = Arrays.copyOf(objArr, i2);
            this.f4228f = Arrays.copyOf(this.f4228f, i2);
            this.f4227e = (String[]) Arrays.copyOf(this.f4227e, i2);
        }
        Object[] objArr2 = this.c;
        int i3 = this.f4226d;
        this.f4226d = i3 + 1;
        objArr2[i3] = obj;
    }

    private String locationString() {
        return " at path " + getPath();
    }

    @Override // com.google.gson.stream.JsonReader
    public void beginArray() throws IOException {
        a(JsonToken.BEGIN_ARRAY);
        i(((d) f()).iterator());
        this.f4228f[this.f4226d - 1] = 0;
    }

    @Override // com.google.gson.stream.JsonReader
    public void beginObject() throws IOException {
        a(JsonToken.BEGIN_OBJECT);
        i(((j) f()).entrySet().iterator());
    }

    @Override // com.google.gson.stream.JsonReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.c = new Object[]{b};
        this.f4226d = 1;
    }

    g d() throws IOException {
        JsonToken jsonTokenPeek = peek();
        if (jsonTokenPeek != JsonToken.NAME && jsonTokenPeek != JsonToken.END_ARRAY && jsonTokenPeek != JsonToken.END_OBJECT && jsonTokenPeek != JsonToken.END_DOCUMENT) {
            g gVar = (g) f();
            skipValue();
            return gVar;
        }
        throw new IllegalStateException("Unexpected " + jsonTokenPeek + " when reading a JsonElement.");
    }

    @Override // com.google.gson.stream.JsonReader
    public void endArray() throws IOException {
        a(JsonToken.END_ARRAY);
        g();
        g();
        int i = this.f4226d;
        if (i > 0) {
            int[] iArr = this.f4228f;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public void endObject() throws IOException {
        a(JsonToken.END_OBJECT);
        this.f4227e[this.f4226d - 1] = null;
        g();
        g();
        int i = this.f4226d;
        if (i > 0) {
            int[] iArr = this.f4228f;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public String getPath() {
        return getPath(false);
    }

    @Override // com.google.gson.stream.JsonReader
    public String getPreviousPath() {
        return getPath(true);
    }

    public void h() throws IOException {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) f()).next();
        i(entry.getValue());
        i(new l((String) entry.getKey()));
    }

    @Override // com.google.gson.stream.JsonReader
    public boolean hasNext() throws IOException {
        JsonToken jsonTokenPeek = peek();
        return (jsonTokenPeek == JsonToken.END_OBJECT || jsonTokenPeek == JsonToken.END_ARRAY || jsonTokenPeek == JsonToken.END_DOCUMENT) ? false : true;
    }

    @Override // com.google.gson.stream.JsonReader
    public boolean nextBoolean() throws IOException {
        a(JsonToken.BOOLEAN);
        boolean zN = ((l) g()).n();
        int i = this.f4226d;
        if (i > 0) {
            int[] iArr = this.f4228f;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return zN;
    }

    @Override // com.google.gson.stream.JsonReader
    public double nextDouble() throws IOException {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenPeek != jsonToken && jsonTokenPeek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + jsonTokenPeek + locationString());
        }
        double dO = ((l) f()).o();
        if (!isLenient() && (Double.isNaN(dO) || Double.isInfinite(dO))) {
            throw new MalformedJsonException("JSON forbids NaN and infinities: " + dO);
        }
        g();
        int i = this.f4226d;
        if (i > 0) {
            int[] iArr = this.f4228f;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return dO;
    }

    @Override // com.google.gson.stream.JsonReader
    public int nextInt() throws IOException {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenPeek != jsonToken && jsonTokenPeek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + jsonTokenPeek + locationString());
        }
        int iR = ((l) f()).r();
        g();
        int i = this.f4226d;
        if (i > 0) {
            int[] iArr = this.f4228f;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return iR;
    }

    @Override // com.google.gson.stream.JsonReader
    public long nextLong() throws IOException {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenPeek != jsonToken && jsonTokenPeek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + jsonTokenPeek + locationString());
        }
        long jT = ((l) f()).t();
        g();
        int i = this.f4226d;
        if (i > 0) {
            int[] iArr = this.f4228f;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return jT;
    }

    @Override // com.google.gson.stream.JsonReader
    public String nextName() throws IOException {
        return e(false);
    }

    @Override // com.google.gson.stream.JsonReader
    public void nextNull() throws IOException {
        a(JsonToken.NULL);
        g();
        int i = this.f4226d;
        if (i > 0) {
            int[] iArr = this.f4228f;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public String nextString() throws IOException {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.STRING;
        if (jsonTokenPeek == jsonToken || jsonTokenPeek == JsonToken.NUMBER) {
            String strX = ((l) g()).x();
            int i = this.f4226d;
            if (i > 0) {
                int[] iArr = this.f4228f;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return strX;
        }
        throw new IllegalStateException("Expected " + jsonToken + " but was " + jsonTokenPeek + locationString());
    }

    @Override // com.google.gson.stream.JsonReader
    public JsonToken peek() throws IOException {
        if (this.f4226d == 0) {
            return JsonToken.END_DOCUMENT;
        }
        Object objF = f();
        if (objF instanceof Iterator) {
            boolean z = this.c[this.f4226d - 2] instanceof j;
            Iterator it = (Iterator) objF;
            if (!it.hasNext()) {
                return z ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            }
            if (z) {
                return JsonToken.NAME;
            }
            i(it.next());
            return peek();
        }
        if (objF instanceof j) {
            return JsonToken.BEGIN_OBJECT;
        }
        if (objF instanceof d) {
            return JsonToken.BEGIN_ARRAY;
        }
        if (objF instanceof l) {
            l lVar = (l) objF;
            if (lVar.B()) {
                return JsonToken.STRING;
            }
            if (lVar.y()) {
                return JsonToken.BOOLEAN;
            }
            if (lVar.A()) {
                return JsonToken.NUMBER;
            }
            throw new AssertionError();
        }
        if (objF instanceof i) {
            return JsonToken.NULL;
        }
        if (objF == b) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new MalformedJsonException("Custom JsonElement subclass " + objF.getClass().getName() + " is not supported");
    }

    @Override // com.google.gson.stream.JsonReader
    public void skipValue() throws IOException {
        int i = b.a[peek().ordinal()];
        if (i == 1) {
            e(true);
            return;
        }
        if (i == 2) {
            endArray();
            return;
        }
        if (i == 3) {
            endObject();
            return;
        }
        if (i != 4) {
            g();
            int i2 = this.f4226d;
            if (i2 > 0) {
                int[] iArr = this.f4228f;
                int i3 = i2 - 1;
                iArr[i3] = iArr[i3] + 1;
            }
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public String toString() {
        return a.class.getSimpleName() + locationString();
    }
}
