package com.google.firebase.encoders.json;

import android.util.Base64;
import android.util.JsonWriter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.ValueEncoderContext;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class JsonValueObjectEncoderContext implements ObjectEncoderContext, ValueEncoderContext {
    private JsonValueObjectEncoderContext a = null;
    private boolean b = true;
    private final JsonWriter c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Class<?>, ObjectEncoder<?>> f4065d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Class<?>, ValueEncoder<?>> f4066e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ObjectEncoder<Object> f4067f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f4068g;

    JsonValueObjectEncoderContext(@NonNull Writer writer, @NonNull Map<Class<?>, ObjectEncoder<?>> map, @NonNull Map<Class<?>, ValueEncoder<?>> map2, ObjectEncoder<Object> objectEncoder, boolean z) {
        this.c = new JsonWriter(writer);
        this.f4065d = map;
        this.f4066e = map2;
        this.f4067f = objectEncoder;
        this.f4068g = z;
    }

    private boolean o(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    private JsonValueObjectEncoderContext r(@NonNull String str, @Nullable Object obj) throws EncodingException, IOException {
        t();
        this.c.name(str);
        if (obj != null) {
            return h(obj, false);
        }
        this.c.nullValue();
        return this;
    }

    private JsonValueObjectEncoderContext s(@NonNull String str, @Nullable Object obj) throws EncodingException, IOException {
        if (obj == null) {
            return this;
        }
        t();
        this.c.name(str);
        return h(obj, false);
    }

    private void t() throws IOException {
        if (!this.b) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
        JsonValueObjectEncoderContext jsonValueObjectEncoderContext = this.a;
        if (jsonValueObjectEncoderContext != null) {
            jsonValueObjectEncoderContext.t();
            this.a.b = false;
            this.a = null;
            this.c.endObject();
        }
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext a(@NonNull FieldDescriptor fieldDescriptor, long j) throws IOException {
        return k(fieldDescriptor.a(), j);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext b(@NonNull FieldDescriptor fieldDescriptor, int i) throws IOException {
        return j(fieldDescriptor.a(), i);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext d(@NonNull FieldDescriptor fieldDescriptor, @Nullable Object obj) throws IOException {
        return l(fieldDescriptor.a(), obj);
    }

    @NonNull
    public JsonValueObjectEncoderContext f(int i) throws IOException {
        t();
        this.c.value(i);
        return this;
    }

    @NonNull
    public JsonValueObjectEncoderContext g(long j) throws IOException {
        t();
        this.c.value(j);
        return this;
    }

    @NonNull
    JsonValueObjectEncoderContext h(@Nullable Object obj, boolean z) throws IOException {
        int i = 0;
        if (z && o(obj)) {
            Object[] objArr = new Object[1];
            objArr[0] = obj == null ? null : obj.getClass();
            throw new EncodingException(String.format("%s cannot be encoded inline", objArr));
        }
        if (obj == null) {
            this.c.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            this.c.value((Number) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                this.c.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    h(it.next(), false);
                }
                this.c.endArray();
                return this;
            }
            if (obj instanceof Map) {
                this.c.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        l((String) key, entry.getValue());
                    } catch (ClassCastException e2) {
                        throw new EncodingException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e2);
                    }
                }
                this.c.endObject();
                return this;
            }
            ObjectEncoder<?> objectEncoder = this.f4065d.get(obj.getClass());
            if (objectEncoder != null) {
                return q(objectEncoder, obj, z);
            }
            ValueEncoder<?> valueEncoder = this.f4066e.get(obj.getClass());
            if (valueEncoder != null) {
                valueEncoder.a(obj, this);
                return this;
            }
            if (!(obj instanceof Enum)) {
                return q(this.f4067f, obj, z);
            }
            c(((Enum) obj).name());
            return this;
        }
        if (obj instanceof byte[]) {
            return n((byte[]) obj);
        }
        this.c.beginArray();
        if (obj instanceof int[]) {
            int length = ((int[]) obj).length;
            while (i < length) {
                this.c.value(r6[i]);
                i++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i < length2) {
                g(jArr[i]);
                i++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i < length3) {
                this.c.value(dArr[i]);
                i++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i < length4) {
                this.c.value(zArr[i]);
                i++;
            }
        } else if (obj instanceof Number[]) {
            for (Number number : (Number[]) obj) {
                h(number, false);
            }
        } else {
            for (Object obj2 : (Object[]) obj) {
                h(obj2, false);
            }
        }
        this.c.endArray();
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public JsonValueObjectEncoderContext c(@Nullable String str) throws IOException {
        t();
        this.c.value(str);
        return this;
    }

    @NonNull
    public JsonValueObjectEncoderContext j(@NonNull String str, int i) throws IOException {
        t();
        this.c.name(str);
        return f(i);
    }

    @NonNull
    public JsonValueObjectEncoderContext k(@NonNull String str, long j) throws IOException {
        t();
        this.c.name(str);
        return g(j);
    }

    @NonNull
    public JsonValueObjectEncoderContext l(@NonNull String str, @Nullable Object obj) throws IOException {
        return this.f4068g ? s(str, obj) : r(str, obj);
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public JsonValueObjectEncoderContext e(boolean z) throws IOException {
        t();
        this.c.value(z);
        return this;
    }

    @NonNull
    public JsonValueObjectEncoderContext n(@Nullable byte[] bArr) throws IOException {
        t();
        if (bArr == null) {
            this.c.nullValue();
        } else {
            this.c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    void p() throws IOException {
        t();
        this.c.flush();
    }

    JsonValueObjectEncoderContext q(ObjectEncoder<Object> objectEncoder, Object obj, boolean z) throws IOException {
        if (!z) {
            this.c.beginObject();
        }
        objectEncoder.a(obj, this);
        if (!z) {
            this.c.endObject();
        }
        return this;
    }
}
