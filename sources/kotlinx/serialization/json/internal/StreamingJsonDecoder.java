package kotlinx.serialization.json.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.AbstractDecoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: renamed from: kotlinx.serialization.json.internal.p0, reason: from Kotlin metadata */
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
/* JADX INFO: compiled from: StreamingJsonDecoder.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002:\u0001MB/\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rJ\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0002J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u0011H\u0002J\b\u0010!\u001a\u00020\u001fH\u0016J\b\u0010\"\u001a\u00020#H\u0016J\b\u0010$\u001a\u00020%H\u0016J\b\u0010&\u001a\u00020'H\u0016J\u0010\u0010(\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010)\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\nH\u0016J\b\u0010+\u001a\u00020,H\u0016J\u0010\u0010-\u001a\u00020.2\u0006\u0010\t\u001a\u00020\nH\u0016J\b\u0010/\u001a\u00020\u0011H\u0016J\b\u00100\u001a\u000201H\u0016J\b\u00102\u001a\u00020\u0011H\u0002J\b\u00103\u001a\u000204H\u0016J\b\u00105\u001a\u00020\u0011H\u0002J\b\u00106\u001a\u00020\u001fH\u0016J\n\u00107\u001a\u0004\u0018\u000108H\u0016J\u0010\u00109\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nH\u0002J;\u0010:\u001a\u0002H;\"\u0004\b\u0000\u0010;2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00112\f\u0010<\u001a\b\u0012\u0004\u0012\u0002H;0=2\b\u0010>\u001a\u0004\u0018\u0001H;H\u0016¢\u0006\u0002\u0010?J!\u0010@\u001a\u0002H;\"\u0004\b\u0000\u0010;2\f\u0010<\u001a\b\u0012\u0004\u0012\u0002H;0=H\u0016¢\u0006\u0002\u0010AJ\b\u0010B\u001a\u00020CH\u0016J\b\u0010D\u001a\u00020EH\u0016J\b\u0010F\u001a\u00020EH\u0002J\u0010\u0010G\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010H\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020EH\u0002J\u0010\u0010J\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010K\u001a\u00020\u001f*\u0004\u0018\u00010\f2\u0006\u0010L\u001a\u00020EH\u0002R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0010\u0010\u0007\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006N"}, d2 = {"Lkotlinx/serialization/json/internal/StreamingJsonDecoder;", "Lkotlinx/serialization/json/JsonDecoder;", "Lkotlinx/serialization/encoding/AbstractDecoder;", "json", "Lkotlinx/serialization/json/Json;", "mode", "Lkotlinx/serialization/json/internal/WriteMode;", "lexer", "Lkotlinx/serialization/json/internal/AbstractJsonLexer;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "discriminatorHolder", "Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "currentIndex", "", "elementMarker", "Lkotlinx/serialization/json/internal/JsonElementMarker;", "getJson", "()Lkotlinx/serialization/json/Json;", "serializersModule", "Lkotlinx/serialization/modules/SerializersModule;", "getSerializersModule", "()Lkotlinx/serialization/modules/SerializersModule;", "beginStructure", "Lkotlinx/serialization/encoding/CompositeDecoder;", "checkLeadingComma", "", "coerceInputValue", "", "index", "decodeBoolean", "decodeByte", "", "decodeChar", "", "decodeDouble", "", "decodeElementIndex", "decodeEnum", "enumDescriptor", "decodeFloat", "", "decodeInline", "Lkotlinx/serialization/encoding/Decoder;", "decodeInt", "decodeJsonElement", "Lkotlinx/serialization/json/JsonElement;", "decodeListIndex", "decodeLong", "", "decodeMapIndex", "decodeNotNullMark", "decodeNull", "", "decodeObjectIndex", "decodeSerializableElement", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "previousValue", "(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;", "decodeSerializableValue", "(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;", "decodeShort", "", "decodeString", "", "decodeStringKey", "endStructure", "handleUnknown", "key", "skipLeftoverElements", "trySkip", "unknownKey", "DiscriminatorHolder", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public class StreamingJsonDecoder extends AbstractDecoder implements JsonDecoder {
    private final Json b;
    private final WriteMode c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final JsonReader f10507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SerializersModule f10508e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10509f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f10510g;
    private final JsonConfiguration h;
    private final JsonElementMarker i;

    /* JADX INFO: renamed from: kotlinx.serialization.json.internal.p0$a */
    /* JADX INFO: compiled from: StreamingJsonDecoder.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;", "", "discriminatorToSkip", "", "(Ljava/lang/String;)V", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
    public static final class a {
        public String a;

        public a(String str) {
            this.a = str;
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.json.internal.p0$b */
    /* JADX INFO: compiled from: StreamingJsonDecoder.kt */
    @Metadata(mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class b {
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
            try {
                iArr[WriteMode.OBJ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public StreamingJsonDecoder(Json json, WriteMode mode, JsonReader lexer, SerialDescriptor descriptor, a aVar) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(lexer, "lexer");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        this.b = json;
        this.c = mode;
        this.f10507d = lexer;
        this.f10508e = json.getC();
        this.f10509f = -1;
        this.f10510g = aVar;
        JsonConfiguration jsonConfigurationH = json.getB();
        this.h = jsonConfigurationH;
        this.i = jsonConfigurationH.getExplicitNulls() ? null : new JsonElementMarker(descriptor);
    }

    private final void K() {
        if (this.f10507d.E() != 4) {
            return;
        }
        JsonReader.fail$default(this.f10507d, "Unexpected leading comma", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final boolean L(SerialDescriptor serialDescriptor, int i) {
        String strF;
        Json json = this.b;
        SerialDescriptor serialDescriptorG = serialDescriptor.g(i);
        if (serialDescriptorG.b() || !(!this.f10507d.M())) {
            if (!Intrinsics.areEqual(serialDescriptorG.getB(), SerialKind.b.a) || (strF = this.f10507d.F(this.h.getIsLenient())) == null || JsonNamesMapKt.getJsonNameIndex(serialDescriptorG, json, strF) != -3) {
                return false;
            }
            this.f10507d.p();
        }
        return true;
    }

    private final int M() {
        boolean zL = this.f10507d.L();
        if (!this.f10507d.e()) {
            if (!zL) {
                return -1;
            }
            JsonReader.fail$default(this.f10507d, "Unexpected trailing comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i = this.f10509f;
        if (i != -1 && !zL) {
            JsonReader.fail$default(this.f10507d, "Expected end of the array or comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i2 = i + 1;
        this.f10509f = i2;
        return i2;
    }

    private final int N() {
        int i = this.f10509f;
        boolean zL = false;
        boolean z = i % 2 != 0;
        if (!z) {
            this.f10507d.n(':');
        } else if (i != -1) {
            zL = this.f10507d.L();
        }
        if (!this.f10507d.e()) {
            if (!zL) {
                return -1;
            }
            JsonReader.fail$default(this.f10507d, "Expected '}', but had ',' instead", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (z) {
            if (this.f10509f == -1) {
                JsonReader jsonReader = this.f10507d;
                boolean z2 = !zL;
                int i2 = jsonReader.currentPosition;
                if (!z2) {
                    JsonReader.fail$default(jsonReader, "Unexpected trailing comma", i2, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            } else {
                JsonReader jsonReader2 = this.f10507d;
                int i3 = jsonReader2.currentPosition;
                if (!zL) {
                    JsonReader.fail$default(jsonReader2, "Expected comma after the key-value pair", i3, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            }
        }
        int i4 = this.f10509f + 1;
        this.f10509f = i4;
        return i4;
    }

    private final int O(SerialDescriptor serialDescriptor) {
        boolean zL;
        boolean zL2 = this.f10507d.L();
        while (this.f10507d.e()) {
            String strP = P();
            this.f10507d.n(':');
            int jsonNameIndex = JsonNamesMapKt.getJsonNameIndex(serialDescriptor, this.b, strP);
            boolean z = false;
            if (jsonNameIndex == -3) {
                zL = false;
                z = true;
            } else {
                if (!this.h.getCoerceInputValues() || !L(serialDescriptor, jsonNameIndex)) {
                    JsonElementMarker jsonElementMarker = this.i;
                    if (jsonElementMarker != null) {
                        jsonElementMarker.b(jsonNameIndex);
                    }
                    return jsonNameIndex;
                }
                zL = this.f10507d.L();
            }
            zL2 = z ? Q(strP) : zL;
        }
        if (zL2) {
            JsonReader.fail$default(this.f10507d, "Unexpected trailing comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        JsonElementMarker jsonElementMarker2 = this.i;
        if (jsonElementMarker2 != null) {
            return jsonElementMarker2.c();
        }
        return -1;
    }

    private final String P() {
        return this.h.getIsLenient() ? this.f10507d.s() : this.f10507d.j();
    }

    private final boolean Q(String str) {
        if (this.h.getIgnoreUnknownKeys() || S(this.f10510g, str)) {
            this.f10507d.H(this.h.getIsLenient());
        } else {
            this.f10507d.y(str);
        }
        return this.f10507d.L();
    }

    private final void R(SerialDescriptor serialDescriptor) {
        while (o(serialDescriptor) != -1) {
        }
    }

    private final boolean S(a aVar, String str) {
        if (aVar == null || !Intrinsics.areEqual(aVar.a, str)) {
            return false;
        }
        aVar.a = null;
        return true;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public boolean D() {
        JsonElementMarker jsonElementMarker = this.i;
        return !(jsonElementMarker != null ? jsonElementMarker.a() : false) && this.f10507d.M();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public <T> T G(DeserializationStrategy<T> deserializer) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        try {
            if ((deserializer instanceof AbstractPolymorphicSerializer) && !this.b.getB().getUseArrayPolymorphism()) {
                String strClassDiscriminator = PolymorphicKt.classDiscriminator(deserializer.getB(), this.b);
                String strK = this.f10507d.k(strClassDiscriminator, this.h.getIsLenient());
                DeserializationStrategy<? extends T> deserializationStrategyB = strK != null ? ((AbstractPolymorphicSerializer) deserializer).b(this, strK) : null;
                if (deserializationStrategyB == null) {
                    return (T) PolymorphicKt.decodeSerializableValuePolymorphic(this, deserializer);
                }
                this.f10510g = new a(strClassDiscriminator);
                return deserializationStrategyB.deserialize(this);
            }
            return deserializer.deserialize(this);
        } catch (MissingFieldException e2) {
            throw new MissingFieldException(e2.c(), e2.getMessage() + " at path: " + this.f10507d.b.a(), e2);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public byte H() {
        long jO = this.f10507d.o();
        byte b2 = (byte) jO;
        if (jO == b2) {
            return b2;
        }
        JsonReader.fail$default(this.f10507d, "Failed to parse byte for input '" + jO + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.CompositeDecoder
    /* JADX INFO: renamed from: a */
    public SerializersModule getC() {
        return this.f10508e;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public CompositeDecoder b(SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        WriteMode writeModeSwitchMode = WriteModeKt.switchMode(this.b, descriptor);
        this.f10507d.b.c(descriptor);
        this.f10507d.n(writeModeSwitchMode.f10489f);
        K();
        int i = b.a[writeModeSwitchMode.ordinal()];
        return (i == 1 || i == 2 || i == 3) ? new StreamingJsonDecoder(this.b, writeModeSwitchMode, this.f10507d, descriptor, this.f10510g) : (this.c == writeModeSwitchMode && this.b.getB().getExplicitNulls()) ? this : new StreamingJsonDecoder(this.b, writeModeSwitchMode, this.f10507d, descriptor, this.f10510g);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public void c(SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (this.b.getB().getIgnoreUnknownKeys() && descriptor.getF10465d() == 0) {
            R(descriptor);
        }
        this.f10507d.n(this.c.f10490g);
        this.f10507d.b.b();
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public final Json d() {
        return this.b;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public int e(SerialDescriptor enumDescriptor) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        return JsonNamesMapKt.getJsonNameIndexOrThrow(enumDescriptor, this.b, z(), " at path " + this.f10507d.b.a());
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public JsonElement g() {
        return new JsonTreeReader(this.b.getB(), this.f10507d).a();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public int h() {
        long jO = this.f10507d.o();
        int i = (int) jO;
        if (jO == i) {
            return i;
        }
        JsonReader.fail$default(this.f10507d, "Failed to parse int for input '" + jO + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public Void j() {
        return null;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public long l() {
        return this.f10507d.o();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int o(SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        int i = b.a[this.c.ordinal()];
        int iM = i != 2 ? i != 4 ? M() : O(descriptor) : N();
        if (this.c != WriteMode.MAP) {
            this.f10507d.b.g(iM);
        }
        return iM;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public Decoder q(SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return StreamingJsonEncoderKt.isUnsignedNumber(descriptor) ? new JsonDecoderForUnsignedTypes(this.f10507d, this.b) : super.q(descriptor);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public short s() {
        long jO = this.f10507d.o();
        short s = (short) jO;
        if (jO == s) {
            return s;
        }
        JsonReader.fail$default(this.f10507d, "Failed to parse short for input '" + jO + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public float t() {
        JsonReader jsonReader = this.f10507d;
        String strR = jsonReader.r();
        try {
            float f2 = Float.parseFloat(strR);
            if (!this.b.getB().getAllowSpecialFloatingPointValues()) {
                if (!((Float.isInfinite(f2) || Float.isNaN(f2)) ? false : true)) {
                    JsonExceptionsKt.throwInvalidFloatingPointDecoded(this.f10507d, Float.valueOf(f2));
                    throw new KotlinNothingValueException();
                }
            }
            return f2;
        } catch (IllegalArgumentException unused) {
            JsonReader.fail$default(jsonReader, "Failed to parse type '" + TypedValues.Custom.S_FLOAT + "' for input '" + strR + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public double v() {
        JsonReader jsonReader = this.f10507d;
        String strR = jsonReader.r();
        try {
            double d2 = Double.parseDouble(strR);
            if (!this.b.getB().getAllowSpecialFloatingPointValues()) {
                if (!((Double.isInfinite(d2) || Double.isNaN(d2)) ? false : true)) {
                    JsonExceptionsKt.throwInvalidFloatingPointDecoded(this.f10507d, Double.valueOf(d2));
                    throw new KotlinNothingValueException();
                }
            }
            return d2;
        } catch (IllegalArgumentException unused) {
            JsonReader.fail$default(jsonReader, "Failed to parse type 'double' for input '" + strR + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public boolean w() {
        return this.h.getIsLenient() ? this.f10507d.h() : this.f10507d.f();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public char x() {
        String strR = this.f10507d.r();
        if (strR.length() == 1) {
            return strR.charAt(0);
        }
        JsonReader.fail$default(this.f10507d, "Expected single char, but got '" + strR + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public <T> T y(SerialDescriptor descriptor, int i, DeserializationStrategy<T> deserializer, T t) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        boolean z = this.c == WriteMode.MAP && (i & 1) == 0;
        if (z) {
            this.f10507d.b.d();
        }
        T t2 = (T) super.y(descriptor, i, deserializer, t);
        if (z) {
            this.f10507d.b.f(t2);
        }
        return t2;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public String z() {
        return this.h.getIsLenient() ? this.f10507d.s() : this.f10507d.p();
    }
}
