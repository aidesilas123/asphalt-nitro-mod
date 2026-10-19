package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ProtobufEncoder {
    private final Map<Class<?>, ObjectEncoder<?>> a;
    private final Map<Class<?>, ValueEncoder<?>> b;
    private final ObjectEncoder<Object> c;

    public static final class Builder implements EncoderConfig<Builder> {
        private static final ObjectEncoder<Object> a = new ObjectEncoder() { // from class: com.google.firebase.encoders.proto.b
            @Override // com.google.firebase.encoders.ObjectEncoder
            public final void a(Object obj, Object obj2) throws IOException {
                ProtobufEncoder.Builder.d(obj, (ObjectEncoderContext) obj2);
                throw null;
            }
        };
        private final Map<Class<?>, ObjectEncoder<?>> b = new HashMap();
        private final Map<Class<?>, ValueEncoder<?>> c = new HashMap();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ObjectEncoder<Object> f4074d = a;

        static /* synthetic */ void d(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
            throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }

        public ProtobufEncoder b() {
            return new ProtobufEncoder(new HashMap(this.b), new HashMap(this.c), this.f4074d);
        }

        @NonNull
        public Builder c(@NonNull Configurator configurator) {
            configurator.a(this);
            return this;
        }

        @Override // com.google.firebase.encoders.config.EncoderConfig
        @NonNull
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public <U> Builder a(@NonNull Class<U> cls, @NonNull ObjectEncoder<? super U> objectEncoder) {
            this.b.put(cls, objectEncoder);
            this.c.remove(cls);
            return this;
        }
    }

    ProtobufEncoder(Map<Class<?>, ObjectEncoder<?>> map, Map<Class<?>, ValueEncoder<?>> map2, ObjectEncoder<Object> objectEncoder) {
        this.a = map;
        this.b = map2;
        this.c = objectEncoder;
    }

    public static Builder builder() {
        return new Builder();
    }

    public void a(@NonNull Object obj, @NonNull OutputStream outputStream) throws IOException {
        new ProtobufDataEncoderContext(outputStream, this.a, this.b, this.c).p(obj);
    }

    @NonNull
    public byte[] b(@NonNull Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            a(obj, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
