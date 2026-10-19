package com.tapjoy.internal;

import com.facebook.internal.security.CertificateUtil;
import com.json.o2;
import java.io.Closeable;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class h1 implements Closeable {
    public final Writer a;
    public final ArrayList b;
    public final String c;

    public h1(StringWriter stringWriter) {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        arrayList.add(e4.f7892f);
        this.c = CertificateUtil.DELIMITER;
        this.a = stringWriter;
    }

    public final void a(Object obj) throws IOException {
        if (obj == null) {
            j(false);
            this.a.write("null");
            return;
        }
        if (obj instanceof Boolean) {
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            j(false);
            this.a.write(zBooleanValue ? "true" : "false");
            return;
        }
        if (obj instanceof Number) {
            if (obj instanceof Long) {
                long jLongValue = ((Number) obj).longValue();
                j(false);
                this.a.write(Long.toString(jLongValue));
                return;
            }
            if (obj instanceof Double) {
                double dDoubleValue = ((Number) obj).doubleValue();
                if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                    throw new IllegalArgumentException("Numeric values must be finite, but was " + dDoubleValue);
                }
                j(false);
                this.a.append((CharSequence) Double.toString(dDoubleValue));
                return;
            }
            Number number = (Number) obj;
            String string = number.toString();
            if (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN")) {
                throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
            }
            j(false);
            this.a.append((CharSequence) string);
            return;
        }
        if (obj instanceof String) {
            j(false);
            i((String) obj);
            return;
        }
        if (obj instanceof y7) {
            j(false);
            throw null;
        }
        if (obj instanceof Collection) {
            e4 e4Var = e4.a;
            j(true);
            this.b.add(e4Var);
            this.a.write(o2.i.f6490d);
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            e4 e4Var2 = e4.a;
            e4 e4Var3 = e4.b;
            ArrayList arrayList = this.b;
            e4 e4Var4 = (e4) arrayList.get(arrayList.size() - 1);
            if (e4Var4 != e4Var3 && e4Var4 != e4Var2) {
                throw new IllegalStateException("Nesting problem: " + this.b);
            }
            ArrayList arrayList2 = this.b;
            arrayList2.remove(arrayList2.size() - 1);
            this.a.write(o2.i.f6491e);
            return;
        }
        if (!(obj instanceof Map)) {
            if (obj instanceof Date) {
                String str = ((DateFormat) g0.a.get()).format((Date) obj);
                if (str == null) {
                    j(false);
                    this.a.write("null");
                    return;
                } else {
                    j(false);
                    i(str);
                    return;
                }
            }
            if (!(obj instanceof Object[])) {
                throw new IllegalArgumentException("Unknown type: ".concat(obj.getClass().getName()));
            }
            e4 e4Var5 = e4.a;
            j(true);
            this.b.add(e4Var5);
            this.a.write(o2.i.f6490d);
            for (Object obj2 : (Object[]) obj) {
                a(obj2);
            }
            e4 e4Var6 = e4.a;
            e4 e4Var7 = e4.b;
            ArrayList arrayList3 = this.b;
            e4 e4Var8 = (e4) arrayList3.get(arrayList3.size() - 1);
            if (e4Var8 != e4Var7 && e4Var8 != e4Var6) {
                throw new IllegalStateException("Nesting problem: " + this.b);
            }
            ArrayList arrayList4 = this.b;
            arrayList4.remove(arrayList4.size() - 1);
            this.a.write(o2.i.f6491e);
            return;
        }
        e4 e4Var9 = e4.c;
        j(true);
        this.b.add(e4Var9);
        this.a.write("{");
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            String strValueOf = String.valueOf(entry.getKey());
            ArrayList arrayList5 = this.b;
            e4 e4Var10 = (e4) arrayList5.get(arrayList5.size() - 1);
            if (e4Var10 == e4.f7891e) {
                this.a.write(44);
            } else if (e4Var10 != e4.c) {
                throw new IllegalStateException("Nesting problem: " + this.b);
            }
            e4 e4Var11 = e4.f7890d;
            ArrayList arrayList6 = this.b;
            arrayList6.set(arrayList6.size() - 1, e4Var11);
            i(strValueOf);
            a(entry.getValue());
        }
        e4 e4Var12 = e4.c;
        e4 e4Var13 = e4.f7891e;
        ArrayList arrayList7 = this.b;
        e4 e4Var14 = (e4) arrayList7.get(arrayList7.size() - 1);
        if (e4Var14 != e4Var13 && e4Var14 != e4Var12) {
            throw new IllegalStateException("Nesting problem: " + this.b);
        }
        ArrayList arrayList8 = this.b;
        arrayList8.remove(arrayList8.size() - 1);
        this.a.write("}");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.a.close();
        if (((e4) this.b.get(r0.size() - 1)) != e4.f7893g) {
            throw new IOException("Incomplete document");
        }
    }

    public final void i(String str) throws IOException {
        this.a.write("\"");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\f') {
                this.a.write("\\f");
            } else if (cCharAt == '\r') {
                this.a.write("\\r");
            } else if (cCharAt == '\"' || cCharAt == '\\') {
                this.a.write(92);
                this.a.write(cCharAt);
            } else if (cCharAt != 8232 && cCharAt != 8233) {
                switch (cCharAt) {
                    case '\b':
                        this.a.write("\\b");
                        break;
                    case '\t':
                        this.a.write("\\t");
                        break;
                    case '\n':
                        this.a.write("\\n");
                        break;
                    default:
                        if (cCharAt <= 31) {
                            this.a.write(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                        } else {
                            this.a.write(cCharAt);
                        }
                        break;
                }
            } else {
                this.a.write(String.format("\\u%04x", Integer.valueOf(cCharAt)));
            }
        }
        this.a.write("\"");
    }

    public final void j(boolean z) throws IOException {
        ArrayList arrayList = this.b;
        int iOrdinal = ((e4) arrayList.get(arrayList.size() - 1)).ordinal();
        if (iOrdinal == 0) {
            e4 e4Var = e4.b;
            ArrayList arrayList2 = this.b;
            arrayList2.set(arrayList2.size() - 1, e4Var);
            return;
        }
        if (iOrdinal == 1) {
            this.a.append(',');
            return;
        }
        if (iOrdinal == 3) {
            this.a.append((CharSequence) this.c);
            e4 e4Var2 = e4.f7891e;
            ArrayList arrayList3 = this.b;
            arrayList3.set(arrayList3.size() - 1, e4Var2);
            return;
        }
        if (iOrdinal != 5) {
            if (iOrdinal == 6) {
                throw new IllegalStateException("JSON must have only one top-level value.");
            }
            throw new IllegalStateException("Nesting problem: " + this.b);
        }
        if (!z) {
            throw new IllegalStateException("JSON must start with an array or an object.");
        }
        e4 e4Var3 = e4.f7893g;
        ArrayList arrayList4 = this.b;
        arrayList4.set(arrayList4.size() - 1, e4Var3);
    }
}
