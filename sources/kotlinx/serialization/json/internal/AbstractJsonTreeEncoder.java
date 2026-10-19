package kotlinx.serialization.json.internal;

import com.google.android.gms.ads.RequestConfiguration;
import com.unity3d.ads.metadata.MediationMetaData;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.serialization.PolymorphicSerializerKt;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.NamedValueEncoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.modules.SerializersModule;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    Caused by: kotlin.metadata.internal.protobuf.InvalidProtocolBufferException: Message was missing required fields.  (Lite runtime could not determine which fields were missing).
    	at kotlin.metadata.internal.protobuf.UninitializedMessageException.asInvalidProtocolBufferException(UninitializedMessageException.java:81)
    	at kotlin.metadata.internal.protobuf.AbstractParser.checkMessageInitialized(AbstractParser.java:71)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:209)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:49)
    	at kotlin.metadata.internal.metadata.ProtoBuf$Class.parseFrom(ProtoBuf.java:10614)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:37)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:32)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	... 5 more
    */
/* JADX INFO: compiled from: TreeJsonEncoder.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b3\u0018\u00002\u00020\u00012\u00020\u0002B#\b\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\u0010\tJ\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u000fH\u0014J\u0010\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u0007H\u0016J\b\u0010\u001d\u001a\u00020\bH\u0016J\b\u0010\u001e\u001a\u00020\bH\u0016J)\u0010\u001f\u001a\u00020\b\"\u0004\b\u0000\u0010 2\f\u0010!\u001a\b\u0012\u0004\u0012\u0002H 0\"2\u0006\u0010#\u001a\u0002H H\u0016¢\u0006\u0002\u0010$J\u0018\u0010%\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020'H\u0014J\u0018\u0010(\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020)H\u0014J\u0018\u0010*\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020+H\u0014J\u0018\u0010,\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020-H\u0014J \u0010.\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010/\u001a\u00020\u00172\u0006\u00100\u001a\u000201H\u0014J\u0018\u00102\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u000203H\u0014J\u0018\u00104\u001a\u0002052\u0006\u0010&\u001a\u00020\u000f2\u0006\u00106\u001a\u00020\u0017H\u0015J\u0018\u00107\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u000201H\u0014J\u0018\u00108\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u000209H\u0014J\u0010\u0010:\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u000fH\u0014J\u0018\u0010;\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020<H\u0014J\u0018\u0010=\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000fH\u0014J\u0018\u0010>\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020?H\u0014J\u0010\u0010@\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0014J\b\u0010A\u001a\u00020\u0007H&J\u0018\u0010B\u001a\u00020\b2\u0006\u0010C\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u0007H&J\u0018\u0010D\u001a\u00020'2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010E\u001a\u000201H\u0016R\u0010\u0010\n\u001a\u00020\u000b8\u0004X\u0085\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013\u0082\u0001\u0003FGH¨\u0006I"}, d2 = {"Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;", "Lkotlinx/serialization/internal/NamedValueEncoder;", "Lkotlinx/serialization/json/JsonEncoder;", "json", "Lkotlinx/serialization/json/Json;", "nodeConsumer", "Lkotlin/Function1;", "Lkotlinx/serialization/json/JsonElement;", "", "(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "getJson", "()Lkotlinx/serialization/json/Json;", "polymorphicDiscriminator", "", "serializersModule", "Lkotlinx/serialization/modules/SerializersModule;", "getSerializersModule", "()Lkotlinx/serialization/modules/SerializersModule;", "beginStructure", "Lkotlinx/serialization/encoding/CompositeEncoder;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "composeName", "parentName", "childName", "encodeJsonElement", "element", "encodeNotNullMark", "encodeNull", "encodeSerializableValue", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "serializer", "Lkotlinx/serialization/SerializationStrategy;", "value", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V", "encodeTaggedBoolean", "tag", "", "encodeTaggedByte", "", "encodeTaggedChar", "", "encodeTaggedDouble", "", "encodeTaggedEnum", "enumDescriptor", MediationMetaData.KEY_ORDINAL, "", "encodeTaggedFloat", "", "encodeTaggedInline", "Lkotlinx/serialization/encoding/Encoder;", "inlineDescriptor", "encodeTaggedInt", "encodeTaggedLong", "", "encodeTaggedNull", "encodeTaggedShort", "", "encodeTaggedString", "encodeTaggedValue", "", "endEncode", "getCurrent", "putElement", "key", "shouldEncodeElementDefault", "index", "Lkotlinx/serialization/json/internal/JsonPrimitiveEncoder;", "Lkotlinx/serialization/json/internal/JsonTreeEncoder;", "Lkotlinx/serialization/json/internal/JsonTreeListEncoder;", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
abstract class AbstractJsonTreeEncoder extends NamedValueEncoder implements JsonEncoder {
    private final Json b;
    private final Function1<JsonElement, kotlin.v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JsonConfiguration f10481d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f10482e;

    /* JADX INFO: compiled from: TreeJsonEncoder.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "node", "Lkotlinx/serialization/json/JsonElement;", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class a extends Lambda implements Function1<JsonElement, kotlin.v> {
        a() {
            super(1);
        }

        public final void a(JsonElement node) {
            Intrinsics.checkNotNullParameter(node, "node");
            AbstractJsonTreeEncoder abstractJsonTreeEncoder = AbstractJsonTreeEncoder.this;
            abstractJsonTreeEncoder.r0(AbstractJsonTreeEncoder.access$getCurrentTag(abstractJsonTreeEncoder), node);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(JsonElement jsonElement) {
            a(jsonElement);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: TreeJsonEncoder.kt */
    @Metadata(d1 = {"\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u000fH\u0016J\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0013"}, d2 = {"kotlinx/serialization/json/internal/AbstractJsonTreeEncoder$encodeTaggedInline$1", "Lkotlinx/serialization/encoding/AbstractEncoder;", "serializersModule", "Lkotlinx/serialization/modules/SerializersModule;", "getSerializersModule", "()Lkotlinx/serialization/modules/SerializersModule;", "encodeByte", "", "value", "", "encodeInt", "", "encodeLong", "", "encodeShort", "", "putUnquotedString", "s", "", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
    public static final class b extends AbstractEncoder {
        private final SerializersModule a;
        final /* synthetic */ String c;

        b(String str) {
            this.c = str;
            this.a = AbstractJsonTreeEncoder.this.d().getC();
        }

        @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
        public void B(int i) {
            K(Long.toString(((long) UInt.m1267constructorimpl(i)) & 4294967295L, 10));
        }

        public final void K(String s) {
            Intrinsics.checkNotNullParameter(s, "s");
            AbstractJsonTreeEncoder.this.r0(this.c, new JsonLiteral(s, false));
        }

        @Override // kotlinx.serialization.encoding.Encoder
        public SerializersModule a() {
            return this.a;
        }

        @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
        public void h(byte b) {
            K(UByte.m1251toStringimpl(UByte.m1247constructorimpl(b)));
        }

        @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
        public void m(long j) {
            K(e.a(ULong.m1287constructorimpl(j), 10));
        }

        @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
        public void q(short s) {
            K(UShort.m1311toStringimpl(UShort.m1307constructorimpl(s)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AbstractJsonTreeEncoder(Json json, Function1<? super JsonElement, kotlin.v> function1) {
        this.b = json;
        this.c = function1;
        this.f10481d = json.getB();
    }

    public /* synthetic */ AbstractJsonTreeEncoder(Json json, Function1 function1, kotlin.jvm.internal.n nVar) {
        this(json, function1);
    }

    public static final /* synthetic */ String access$getCurrentTag(AbstractJsonTreeEncoder abstractJsonTreeEncoder) {
        return abstractJsonTreeEncoder.V();
    }

    @Override // kotlinx.serialization.json.JsonEncoder
    public void A(JsonElement element) {
        Intrinsics.checkNotNullParameter(element, "element");
        e(JsonElementSerializer.a, element);
    }

    @Override // kotlinx.serialization.internal.TaggedEncoder
    protected void U(SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        this.c.invoke(q0());
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final SerializersModule a() {
        return this.b.getC();
    }

    @Override // kotlinx.serialization.internal.NamedValueEncoder
    protected String a0(String parentName, String childName) {
        Intrinsics.checkNotNullParameter(parentName, "parentName");
        Intrinsics.checkNotNullParameter(childName, "childName");
        return childName;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public CompositeEncoder b(SerialDescriptor descriptor) {
        AbstractJsonTreeEncoder jsonTreeEncoder;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Function1 aVar = W() == null ? this.c : new a();
        SerialKind b2 = descriptor.getB();
        if (Intrinsics.areEqual(b2, StructureKind.b.a) ? true : b2 instanceof PolymorphicKind) {
            jsonTreeEncoder = new JsonTreeListEncoder(this.b, aVar);
        } else if (Intrinsics.areEqual(b2, StructureKind.c.a)) {
            Json json = this.b;
            SerialDescriptor serialDescriptorCarrierDescriptor = WriteModeKt.carrierDescriptor(descriptor.g(0), json.getC());
            SerialKind b3 = serialDescriptorCarrierDescriptor.getB();
            if ((b3 instanceof PrimitiveKind) || Intrinsics.areEqual(b3, SerialKind.b.a)) {
                jsonTreeEncoder = new JsonTreeMapEncoder(this.b, aVar);
            } else {
                if (!json.getB().getAllowStructuredMapKeys()) {
                    throw JsonExceptionsKt.InvalidKeyKindException(serialDescriptorCarrierDescriptor);
                }
                jsonTreeEncoder = new JsonTreeListEncoder(this.b, aVar);
            }
        } else {
            jsonTreeEncoder = new JsonTreeEncoder(this.b, aVar);
        }
        String str = this.f10482e;
        if (str != null) {
            Intrinsics.checkNotNull(str);
            jsonTreeEncoder.r0(str, JsonElementKt.JsonPrimitive(descriptor.getA()));
            this.f10482e = null;
        }
        return jsonTreeEncoder;
    }

    @Override // kotlinx.serialization.json.JsonEncoder
    public final Json d() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.TaggedEncoder, kotlinx.serialization.encoding.Encoder
    public <T> void e(SerializationStrategy<? super T> serializer, T t) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (W() == null && TreeJsonEncoderKt.a(WriteModeKt.carrierDescriptor(serializer.getB(), a()))) {
            JsonPrimitiveEncoder jsonPrimitiveEncoder = new JsonPrimitiveEncoder(this.b, this.c);
            jsonPrimitiveEncoder.e(serializer, t);
            jsonPrimitiveEncoder.U(serializer.getB());
        } else {
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
            this.f10482e = strClassDiscriminator;
            serializationStrategyFindPolymorphicSerializer.serialize(this, t);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedEncoder
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public void J(String tag, boolean z) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        r0(tag, JsonElementKt.JsonPrimitive(Boolean.valueOf(z)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedEncoder
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public void K(String tag, byte b2) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        r0(tag, JsonElementKt.JsonPrimitive(Byte.valueOf(b2)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedEncoder
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public void L(String tag, char c) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        r0(tag, JsonElementKt.JsonPrimitive(String.valueOf(c)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedEncoder
    /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
    public void M(String tag, double d2) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        r0(tag, JsonElementKt.JsonPrimitive(Double.valueOf(d2)));
        if (this.f10481d.getAllowSpecialFloatingPointValues()) {
            return;
        }
        if (!((Double.isInfinite(d2) || Double.isNaN(d2)) ? false : true)) {
            throw JsonExceptionsKt.InvalidFloatingPointEncoded(Double.valueOf(d2), tag, q0().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedEncoder
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public void N(String tag, SerialDescriptor enumDescriptor, int i) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        r0(tag, JsonElementKt.JsonPrimitive(enumDescriptor.e(i)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedEncoder
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public void O(String tag, float f2) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        r0(tag, JsonElementKt.JsonPrimitive(Float.valueOf(f2)));
        if (this.f10481d.getAllowSpecialFloatingPointValues()) {
            return;
        }
        if (!((Float.isInfinite(f2) || Float.isNaN(f2)) ? false : true)) {
            throw JsonExceptionsKt.InvalidFloatingPointEncoded(Float.valueOf(f2), tag, q0().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedEncoder
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public Encoder P(String tag, SerialDescriptor inlineDescriptor) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(inlineDescriptor, "inlineDescriptor");
        return StreamingJsonEncoderKt.isUnsignedNumber(inlineDescriptor) ? new b(tag) : super.P(tag, inlineDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedEncoder
    /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
    public void Q(String tag, int i) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        r0(tag, JsonElementKt.JsonPrimitive(Integer.valueOf(i)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedEncoder
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public void R(String tag, long j) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        r0(tag, JsonElementKt.JsonPrimitive(Long.valueOf(j)));
    }

    protected void n0(String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        r0(tag, JsonNull.c);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void o() {
        String strW = W();
        if (strW == null) {
            this.c.invoke(JsonNull.c);
        } else {
            n0(strW);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedEncoder
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public void S(String tag, short s) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        r0(tag, JsonElementKt.JsonPrimitive(Short.valueOf(s)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedEncoder
    /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
    public void T(String tag, String value) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(value, "value");
        r0(tag, JsonElementKt.JsonPrimitive(value));
    }

    public abstract JsonElement q0();

    public abstract void r0(String str, JsonElement jsonElement);

    @Override // kotlinx.serialization.encoding.Encoder
    public void v() {
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public boolean z(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return this.f10481d.getEncodeDefaults();
    }
}
