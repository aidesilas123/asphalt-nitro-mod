package com.google.firebase.encoders.json;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.ValueEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import java.io.IOException;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes3.dex */
public final class JsonDataEncoderBuilder implements EncoderConfig<JsonDataEncoderBuilder> {
    private static final ObjectEncoder<Object> a = new ObjectEncoder() { // from class: com.google.firebase.encoders.json.a
        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) throws IOException {
            JsonDataEncoderBuilder.i(obj, (ObjectEncoderContext) obj2);
            throw null;
        }
    };
    private static final ValueEncoder<String> b = new ValueEncoder() { // from class: com.google.firebase.encoders.json.b
        @Override // com.google.firebase.encoders.ValueEncoder
        public final void a(Object obj, Object obj2) throws IOException {
            ((ValueEncoderContext) obj2).c((String) obj);
        }
    };
    private static final ValueEncoder<Boolean> c = new ValueEncoder() { // from class: com.google.firebase.encoders.json.c
        @Override // com.google.firebase.encoders.ValueEncoder
        public final void a(Object obj, Object obj2) throws IOException {
            ((ValueEncoderContext) obj2).e(((Boolean) obj).booleanValue());
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final TimestampEncoder f4061d = new TimestampEncoder();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Class<?>, ObjectEncoder<?>> f4062e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<Class<?>, ValueEncoder<?>> f4063f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ObjectEncoder<Object> f4064g = a;
    private boolean h = false;

    private static final class TimestampEncoder implements ValueEncoder<Date> {
        private static final DateFormat a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        private TimestampEncoder() {
        }

        @Override // com.google.firebase.encoders.ValueEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(@NonNull Date date, @NonNull ValueEncoderContext valueEncoderContext) throws IOException {
            valueEncoderContext.c(a.format(date));
        }
    }

    public JsonDataEncoderBuilder() {
        m(String.class, b);
        m(Boolean.class, c);
        m(Date.class, f4061d);
    }

    static /* synthetic */ void i(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
        throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    @NonNull
    public DataEncoder f() {
        return new DataEncoder() { // from class: com.google.firebase.encoders.json.JsonDataEncoderBuilder.1
            @Override // com.google.firebase.encoders.DataEncoder
            public void a(@NonNull Object obj, @NonNull Writer writer) throws IOException {
                JsonValueObjectEncoderContext jsonValueObjectEncoderContext = new JsonValueObjectEncoderContext(writer, JsonDataEncoderBuilder.this.f4062e, JsonDataEncoderBuilder.this.f4063f, JsonDataEncoderBuilder.this.f4064g, JsonDataEncoderBuilder.this.h);
                jsonValueObjectEncoderContext.h(obj, false);
                jsonValueObjectEncoderContext.p();
            }
        };
    }

    @NonNull
    public JsonDataEncoderBuilder g(@NonNull Configurator configurator) {
        configurator.a(this);
        return this;
    }

    @NonNull
    public JsonDataEncoderBuilder h(boolean z) {
        this.h = z;
        return this;
    }

    @Override // com.google.firebase.encoders.config.EncoderConfig
    @NonNull
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public <T> JsonDataEncoderBuilder a(@NonNull Class<T> cls, @NonNull ObjectEncoder<? super T> objectEncoder) {
        this.f4062e.put(cls, objectEncoder);
        this.f4063f.remove(cls);
        return this;
    }

    @NonNull
    public <T> JsonDataEncoderBuilder m(@NonNull Class<T> cls, @NonNull ValueEncoder<? super T> valueEncoder) {
        this.f4063f.put(cls, valueEncoder);
        this.f4062e.remove(cls);
        return this;
    }
}
