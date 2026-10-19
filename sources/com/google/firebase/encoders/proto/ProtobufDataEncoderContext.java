package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.proto.Protobuf;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class ProtobufDataEncoderContext implements ObjectEncoderContext {
    private static final Charset a = Charset.forName(C.UTF8_NAME);
    private static final FieldDescriptor b = FieldDescriptor.builder("key").b(AtProtobuf.builder().b(1).a()).a();
    private static final FieldDescriptor c = FieldDescriptor.builder("value").b(AtProtobuf.builder().b(2).a()).a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ObjectEncoder<Map.Entry<Object, Object>> f4070d = new ObjectEncoder() { // from class: com.google.firebase.encoders.proto.a
        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) throws IOException {
            ProtobufDataEncoderContext.s((Map.Entry) obj, (ObjectEncoderContext) obj2);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private OutputStream f4071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<Class<?>, ObjectEncoder<?>> f4072f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map<Class<?>, ValueEncoder<?>> f4073g;
    private final ObjectEncoder<Object> h;
    private final ProtobufValueEncoderContext i = new ProtobufValueEncoderContext(this);

    /* JADX INFO: renamed from: com.google.firebase.encoders.proto.ProtobufDataEncoderContext$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Protobuf.IntEncoding.values().length];
            a = iArr;
            try {
                iArr[Protobuf.IntEncoding.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Protobuf.IntEncoding.SIGNED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Protobuf.IntEncoding.FIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    ProtobufDataEncoderContext(OutputStream outputStream, Map<Class<?>, ObjectEncoder<?>> map, Map<Class<?>, ValueEncoder<?>> map2, ObjectEncoder<Object> objectEncoder) {
        this.f4071e = outputStream;
        this.f4072f = map;
        this.f4073g = map2;
        this.h = objectEncoder;
    }

    private static ByteBuffer l(int i) {
        return ByteBuffer.allocate(i).order(ByteOrder.LITTLE_ENDIAN);
    }

    private <T> long m(ObjectEncoder<T> objectEncoder, T t) throws IOException {
        LengthCountingOutputStream lengthCountingOutputStream = new LengthCountingOutputStream();
        try {
            OutputStream outputStream = this.f4071e;
            this.f4071e = lengthCountingOutputStream;
            try {
                objectEncoder.a(t, this);
                this.f4071e = outputStream;
                long jD = lengthCountingOutputStream.d();
                lengthCountingOutputStream.close();
                return jD;
            } catch (Throwable th) {
                this.f4071e = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                lengthCountingOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private <T> ProtobufDataEncoderContext n(ObjectEncoder<T> objectEncoder, FieldDescriptor fieldDescriptor, T t, boolean z) throws IOException {
        long jM = m(objectEncoder, t);
        if (z && jM == 0) {
            return this;
        }
        t((r(fieldDescriptor) << 3) | 2);
        u(jM);
        objectEncoder.a(t, this);
        return this;
    }

    private <T> ProtobufDataEncoderContext o(ValueEncoder<T> valueEncoder, FieldDescriptor fieldDescriptor, T t, boolean z) throws IOException {
        this.i.b(fieldDescriptor, z);
        valueEncoder.a(t, this.i);
        return this;
    }

    private static Protobuf q(FieldDescriptor fieldDescriptor) {
        Protobuf protobuf = (Protobuf) fieldDescriptor.b(Protobuf.class);
        if (protobuf != null) {
            return protobuf;
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private static int r(FieldDescriptor fieldDescriptor) {
        Protobuf protobuf = (Protobuf) fieldDescriptor.b(Protobuf.class);
        if (protobuf != null) {
            return protobuf.tag();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    static /* synthetic */ void s(Map.Entry entry, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.d(b, entry.getKey());
        objectEncoderContext.d(c, entry.getValue());
    }

    private void t(int i) throws IOException {
        while ((i & (-128)) != 0) {
            this.f4071e.write((i & 127) | 128);
            i >>>= 7;
        }
        this.f4071e.write(i & 127);
    }

    private void u(long j) throws IOException {
        while (((-128) & j) != 0) {
            this.f4071e.write((((int) j) & 127) | 128);
            j >>>= 7;
        }
        this.f4071e.write(((int) j) & 127);
    }

    ObjectEncoderContext c(@NonNull FieldDescriptor fieldDescriptor, double d2, boolean z) throws IOException {
        if (z && d2 == 0.0d) {
            return this;
        }
        t((r(fieldDescriptor) << 3) | 1);
        this.f4071e.write(l(8).putDouble(d2).array());
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext d(@NonNull FieldDescriptor fieldDescriptor, @Nullable Object obj) throws IOException {
        return f(fieldDescriptor, obj, true);
    }

    ObjectEncoderContext e(@NonNull FieldDescriptor fieldDescriptor, float f2, boolean z) throws IOException {
        if (z && f2 == 0.0f) {
            return this;
        }
        t((r(fieldDescriptor) << 3) | 5);
        this.f4071e.write(l(4).putFloat(f2).array());
        return this;
    }

    ObjectEncoderContext f(@NonNull FieldDescriptor fieldDescriptor, @Nullable Object obj, boolean z) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z && charSequence.length() == 0) {
                return this;
            }
            t((r(fieldDescriptor) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(a);
            t(bytes.length);
            this.f4071e.write(bytes);
            return this;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                f(fieldDescriptor, it.next(), false);
            }
            return this;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                n(f4070d, fieldDescriptor, (Map.Entry) it2.next(), false);
            }
            return this;
        }
        if (obj instanceof Double) {
            return c(fieldDescriptor, ((Double) obj).doubleValue(), z);
        }
        if (obj instanceof Float) {
            return e(fieldDescriptor, ((Float) obj).floatValue(), z);
        }
        if (obj instanceof Number) {
            return j(fieldDescriptor, ((Number) obj).longValue(), z);
        }
        if (obj instanceof Boolean) {
            return k(fieldDescriptor, ((Boolean) obj).booleanValue(), z);
        }
        if (!(obj instanceof byte[])) {
            ObjectEncoder<?> objectEncoder = this.f4072f.get(obj.getClass());
            if (objectEncoder != null) {
                return n(objectEncoder, fieldDescriptor, obj, z);
            }
            ValueEncoder<?> valueEncoder = this.f4073g.get(obj.getClass());
            return valueEncoder != null ? o(valueEncoder, fieldDescriptor, obj, z) : obj instanceof ProtoEnum ? b(fieldDescriptor, ((ProtoEnum) obj).getNumber()) : obj instanceof Enum ? b(fieldDescriptor, ((Enum) obj).ordinal()) : n(this.h, fieldDescriptor, obj, z);
        }
        byte[] bArr = (byte[]) obj;
        if (z && bArr.length == 0) {
            return this;
        }
        t((r(fieldDescriptor) << 3) | 2);
        t(bArr.length);
        this.f4071e.write(bArr);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public ProtobufDataEncoderContext b(@NonNull FieldDescriptor fieldDescriptor, int i) throws IOException {
        return h(fieldDescriptor, i, true);
    }

    ProtobufDataEncoderContext h(@NonNull FieldDescriptor fieldDescriptor, int i, boolean z) throws IOException {
        if (z && i == 0) {
            return this;
        }
        Protobuf protobufQ = q(fieldDescriptor);
        int i2 = AnonymousClass1.a[protobufQ.intEncoding().ordinal()];
        if (i2 == 1) {
            t(protobufQ.tag() << 3);
            t(i);
        } else if (i2 == 2) {
            t(protobufQ.tag() << 3);
            t((i << 1) ^ (i >> 31));
        } else if (i2 == 3) {
            t((protobufQ.tag() << 3) | 5);
            this.f4071e.write(l(4).putInt(i).array());
        }
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public ProtobufDataEncoderContext a(@NonNull FieldDescriptor fieldDescriptor, long j) throws IOException {
        return j(fieldDescriptor, j, true);
    }

    ProtobufDataEncoderContext j(@NonNull FieldDescriptor fieldDescriptor, long j, boolean z) throws IOException {
        if (z && j == 0) {
            return this;
        }
        Protobuf protobufQ = q(fieldDescriptor);
        int i = AnonymousClass1.a[protobufQ.intEncoding().ordinal()];
        if (i == 1) {
            t(protobufQ.tag() << 3);
            u(j);
        } else if (i == 2) {
            t(protobufQ.tag() << 3);
            u((j >> 63) ^ (j << 1));
        } else if (i == 3) {
            t((protobufQ.tag() << 3) | 1);
            this.f4071e.write(l(8).putLong(j).array());
        }
        return this;
    }

    ProtobufDataEncoderContext k(@NonNull FieldDescriptor fieldDescriptor, boolean z, boolean z2) throws IOException {
        return h(fieldDescriptor, z ? 1 : 0, z2);
    }

    ProtobufDataEncoderContext p(@Nullable Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        ObjectEncoder<?> objectEncoder = this.f4072f.get(obj.getClass());
        if (objectEncoder != null) {
            objectEncoder.a(obj, this);
            return this;
        }
        throw new EncodingException("No encoder for " + obj.getClass());
    }
}
