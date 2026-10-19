package kotlinx.serialization.json.internal;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.PolymorphicSerializerKt;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: renamed from: kotlinx.serialization.json.internal.q0, reason: from Kotlin metadata */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: StreamingJsonEncoder.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\n\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B/\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n¢\u0006\u0002\u0010\u000bB/\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0010\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\n¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\rH\u0002J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010#\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020\"2\u0006\u0010#\u001a\u00020'H\u0016J\u0010\u0010(\u001a\u00020\"2\u0006\u0010#\u001a\u00020)H\u0016J\u0018\u0010*\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020,H\u0016J\u0018\u0010-\u001a\u00020\"2\u0006\u0010.\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020,H\u0016J\u0010\u0010/\u001a\u00020\"2\u0006\u0010#\u001a\u000200H\u0016J\u0010\u00101\u001a\u0002022\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u00103\u001a\u00020\"2\u0006\u0010#\u001a\u00020,H\u0016J\u0010\u00104\u001a\u00020\"2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00107\u001a\u00020\"2\u0006\u0010#\u001a\u000208H\u0016J\b\u00109\u001a\u00020\"H\u0016J?\u0010:\u001a\u00020\"\"\b\b\u0000\u0010;*\u00020<2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020,2\f\u0010=\u001a\b\u0012\u0004\u0012\u0002H;0>2\b\u0010#\u001a\u0004\u0018\u0001H;H\u0016¢\u0006\u0002\u0010?J)\u0010@\u001a\u00020\"\"\u0004\b\u0000\u0010;2\f\u0010=\u001a\b\u0012\u0004\u0012\u0002H;0>2\u0006\u0010#\u001a\u0002H;H\u0016¢\u0006\u0002\u0010AJ\u0010\u0010B\u001a\u00020\"2\u0006\u0010#\u001a\u00020CH\u0016J\u0010\u0010D\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0017H\u0016J\u0010\u0010E\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010F\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010G\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020,H\u0016R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u0019X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u0006H"}, d2 = {"Lkotlinx/serialization/json/internal/StreamingJsonEncoder;", "Lkotlinx/serialization/json/JsonEncoder;", "Lkotlinx/serialization/encoding/AbstractEncoder;", "output", "Lkotlinx/serialization/json/internal/JsonWriter;", "json", "Lkotlinx/serialization/json/Json;", "mode", "Lkotlinx/serialization/json/internal/WriteMode;", "modeReuseCache", "", "(Lkotlinx/serialization/json/internal/JsonWriter;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V", "composer", "Lkotlinx/serialization/json/internal/Composer;", "(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "forceQuoting", "", "getJson", "()Lkotlinx/serialization/json/Json;", "[Lkotlinx/serialization/json/JsonEncoder;", "polymorphicDiscriminator", "", "serializersModule", "Lkotlinx/serialization/modules/SerializersModule;", "getSerializersModule", "()Lkotlinx/serialization/modules/SerializersModule;", "beginStructure", "Lkotlinx/serialization/encoding/CompositeEncoder;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "composerForUnsignedNumbers", "encodeBoolean", "", "value", "encodeByte", "", "encodeChar", "", "encodeDouble", "", "encodeElement", "index", "", "encodeEnum", "enumDescriptor", "encodeFloat", "", "encodeInline", "Lkotlinx/serialization/encoding/Encoder;", "encodeInt", "encodeJsonElement", "element", "Lkotlinx/serialization/json/JsonElement;", "encodeLong", "", "encodeNull", "encodeNullableSerializableElement", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "serializer", "Lkotlinx/serialization/SerializationStrategy;", "(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V", "encodeSerializableValue", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V", "encodeShort", "", "encodeString", "encodeTypeInfo", "endStructure", "shouldEncodeElementDefault", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public final class StreamingJsonEncoder extends AbstractEncoder implements JsonEncoder {
    private final Composer a;
    private final Json b;
    private final WriteMode c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final JsonEncoder[] f10511d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SerializersModule f10512e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final JsonConfiguration f10513f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f10514g;
    private String h;

    /* JADX INFO: renamed from: kotlinx.serialization.json.internal.q0$a */
    /* JADX INFO: compiled from: StreamingJsonEncoder.kt */
    @Metadata(mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[WriteMode.values().length];
            try {
                iArr[WriteMode.LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WriteMode.MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WriteMode.POLY_OBJ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public StreamingJsonEncoder(Composer composer, Json json, WriteMode mode, JsonEncoder[] jsonEncoderArr) {
        Intrinsics.checkNotNullParameter(composer, "composer");
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.a = composer;
        this.b = json;
        this.c = mode;
        this.f10511d = jsonEncoderArr;
        this.f10512e = d().getC();
        this.f10513f = d().getB();
        int iOrdinal = mode.ordinal();
        if (jsonEncoderArr != null) {
            if (jsonEncoderArr[iOrdinal] == null && jsonEncoderArr[iOrdinal] == this) {
                return;
            }
            jsonEncoderArr[iOrdinal] = this;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StreamingJsonEncoder(JsonWriter output, Json json, WriteMode mode, JsonEncoder[] modeReuseCache) {
        this(ComposersKt.Composer(output, json), json, mode, modeReuseCache);
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(modeReuseCache, "modeReuseCache");
    }

    private final Composer K() {
        Composer composer = this.a;
        return composer instanceof ComposerForUnsignedNumbers ? composer : new ComposerForUnsignedNumbers(composer.a, this.f10514g);
    }

    private final void L(SerialDescriptor serialDescriptor) {
        this.a.c();
        String str = this.h;
        Intrinsics.checkNotNull(str);
        G(str);
        this.a.e(':');
        this.a.o();
        G(serialDescriptor.getA());
    }

    @Override // kotlinx.serialization.json.JsonEncoder
    public void A(JsonElement element) {
        Intrinsics.checkNotNullParameter(element, "element");
        e(JsonElementSerializer.a, element);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void B(int i) {
        if (this.f10514g) {
            G(String.valueOf(i));
        } else {
            this.a.h(i);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void G(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.m(value);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder
    public boolean H(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        int i2 = a.a[this.c.ordinal()];
        if (i2 != 1) {
            boolean z = false;
            if (i2 != 2) {
                if (i2 != 3) {
                    if (!this.a.getB()) {
                        this.a.e(',');
                    }
                    this.a.c();
                    G(descriptor.e(i));
                    this.a.e(':');
                    this.a.o();
                } else {
                    if (i == 0) {
                        this.f10514g = true;
                    }
                    if (i == 1) {
                        this.a.e(',');
                        this.a.o();
                        this.f10514g = false;
                    }
                }
            } else if (this.a.getB()) {
                this.f10514g = true;
                this.a.c();
            } else {
                if (i % 2 == 0) {
                    this.a.e(',');
                    this.a.c();
                    z = true;
                } else {
                    this.a.e(':');
                    this.a.o();
                }
                this.f10514g = z;
            }
        } else {
            if (!this.a.getB()) {
                this.a.e(',');
            }
            this.a.c();
        }
        return true;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public SerializersModule a() {
        return this.f10512e;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public CompositeEncoder b(SerialDescriptor descriptor) {
        JsonEncoder jsonEncoder;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        WriteMode writeModeSwitchMode = WriteModeKt.switchMode(d(), descriptor);
        char c = writeModeSwitchMode.f10489f;
        if (c != 0) {
            this.a.e(c);
            this.a.b();
        }
        if (this.h != null) {
            L(descriptor);
            this.h = null;
        }
        if (this.c == writeModeSwitchMode) {
            return this;
        }
        JsonEncoder[] jsonEncoderArr = this.f10511d;
        return (jsonEncoderArr == null || (jsonEncoder = jsonEncoderArr[writeModeSwitchMode.ordinal()]) == null) ? new StreamingJsonEncoder(this.a, d(), writeModeSwitchMode, this.f10511d) : jsonEncoder;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.CompositeEncoder
    public void c(SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (this.c.f10490g != 0) {
            this.a.p();
            this.a.c();
            this.a.e(this.c.f10490g);
        }
    }

    @Override // kotlinx.serialization.json.JsonEncoder
    public Json d() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public <T> void e(SerializationStrategy<? super T> serializer, T t) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (!(serializer instanceof AbstractPolymorphicSerializer) || d().getB().getUseArrayPolymorphism()) {
            serializer.serialize(this, t);
            return;
        }
        AbstractPolymorphicSerializer abstractPolymorphicSerializer = (AbstractPolymorphicSerializer) serializer;
        String strClassDiscriminator = PolymorphicKt.classDiscriminator(serializer.getB(), d());
        Intrinsics.checkNotNull(t, "null cannot be cast to non-null type kotlin.Any");
        SerializationStrategy serializationStrategyFindPolymorphicSerializer = PolymorphicSerializerKt.findPolymorphicSerializer(abstractPolymorphicSerializer, this, t);
        PolymorphicKt.a(abstractPolymorphicSerializer, serializationStrategyFindPolymorphicSerializer, strClassDiscriminator);
        PolymorphicKt.checkKind(serializationStrategyFindPolymorphicSerializer.getB().getB());
        this.h = strClassDiscriminator;
        serializationStrategyFindPolymorphicSerializer.serialize(this, t);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void g(double d2) {
        if (this.f10514g) {
            G(String.valueOf(d2));
        } else {
            this.a.f(d2);
        }
        if (this.f10513f.getAllowSpecialFloatingPointValues()) {
            return;
        }
        if (!((Double.isInfinite(d2) || Double.isNaN(d2)) ? false : true)) {
            throw JsonExceptionsKt.InvalidFloatingPointEncoded(Double.valueOf(d2), this.a.a.toString());
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void h(byte b) {
        if (this.f10514g) {
            G(String.valueOf((int) b));
        } else {
            this.a.d(b);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.CompositeEncoder
    public <T> void i(SerialDescriptor descriptor, int i, SerializationStrategy<? super T> serializer, T t) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (t != null || this.f10513f.getExplicitNulls()) {
            super.i(descriptor, i, serializer, t);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void k(SerialDescriptor enumDescriptor, int i) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        G(enumDescriptor.e(i));
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public Encoder l(SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return StreamingJsonEncoderKt.isUnsignedNumber(descriptor) ? new StreamingJsonEncoder(K(), d(), this.c, (JsonEncoder[]) null) : super.l(descriptor);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void m(long j) {
        if (this.f10514g) {
            G(String.valueOf(j));
        } else {
            this.a.i(j);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void o() {
        this.a.j("null");
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void q(short s) {
        if (this.f10514g) {
            G(String.valueOf((int) s));
        } else {
            this.a.k(s);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void r(boolean z) {
        if (this.f10514g) {
            G(String.valueOf(z));
        } else {
            this.a.l(z);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void t(float f2) {
        if (this.f10514g) {
            G(String.valueOf(f2));
        } else {
            this.a.g(f2);
        }
        if (this.f10513f.getAllowSpecialFloatingPointValues()) {
            return;
        }
        if (!((Float.isInfinite(f2) || Float.isNaN(f2)) ? false : true)) {
            throw JsonExceptionsKt.InvalidFloatingPointEncoded(Float.valueOf(f2), this.a.a.toString());
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void u(char c) {
        G(String.valueOf(c));
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.CompositeEncoder
    public boolean z(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return this.f10513f.getEncodeDefaults();
    }
}
