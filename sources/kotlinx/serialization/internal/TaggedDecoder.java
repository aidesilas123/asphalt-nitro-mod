package kotlinx.serialization.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;

/* JADX INFO: renamed from: kotlinx.serialization.internal.k1, reason: from Kotlin metadata */
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
/* JADX INFO: compiled from: Tagged.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b&\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0016\u0010\u0016\u001a\u00020\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0004J\u0006\u0010\u0019\u001a\u00020\u000bJ\u0016\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u001eJ\u0016\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010 \u001a\u00020!J\u0016\u0010\"\u001a\u00020!2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010#\u001a\u00020$J\u0016\u0010%\u001a\u00020$2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010&\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020\u0015J\u0006\u0010(\u001a\u00020)J\u0016\u0010*\u001a\u00020)2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010+\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0015J\u0016\u0010,\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010-\u001a\u00020\u001cJ\u0016\u0010.\u001a\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010/\u001a\u000200J\u0016\u00101\u001a\u0002002\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cJ\b\u00102\u001a\u00020\u000bH\u0016J\b\u00103\u001a\u0004\u0018\u000104JA\u00105\u001a\u0004\u0018\u0001H6\"\b\b\u0001\u00106*\u0002072\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001c2\u000e\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H6092\b\u0010:\u001a\u0004\u0018\u0001H6¢\u0006\u0002\u0010;J9\u0010<\u001a\u0002H6\"\u0004\b\u0001\u001062\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001c2\f\u00108\u001a\b\u0012\u0004\u0012\u0002H6092\b\u0010:\u001a\u0004\u0018\u0001H6¢\u0006\u0002\u0010;J+\u0010=\u001a\u0002H6\"\u0004\b\u0001\u001062\f\u00108\u001a\b\u0012\u0004\u0012\u0002H6092\b\u0010:\u001a\u0004\u0018\u0001H6H\u0014¢\u0006\u0002\u0010>J\u0006\u0010?\u001a\u00020@J\u0016\u0010A\u001a\u00020@2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010B\u001a\u00020CJ\u0016\u0010D\u001a\u00020C2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cJ\u0015\u0010E\u001a\u00020\u000b2\u0006\u0010F\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010GJ\u0015\u0010H\u001a\u00020\u001e2\u0006\u0010F\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010IJ\u0015\u0010J\u001a\u00020!2\u0006\u0010F\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010KJ\u0015\u0010L\u001a\u00020$2\u0006\u0010F\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010MJ\u001d\u0010N\u001a\u00020\u001c2\u0006\u0010F\u001a\u00028\u00002\u0006\u0010'\u001a\u00020\u0015H\u0014¢\u0006\u0002\u0010OJ\u0015\u0010P\u001a\u00020)2\u0006\u0010F\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010QJ\u001d\u0010R\u001a\u00020\u00022\u0006\u0010F\u001a\u00028\u00002\u0006\u0010S\u001a\u00020\u0015H\u0014¢\u0006\u0002\u0010TJ\u0015\u0010U\u001a\u00020\u001c2\u0006\u0010F\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010VJ\u0015\u0010W\u001a\u0002002\u0006\u0010F\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010XJ\u0015\u0010Y\u001a\u00020\u000b2\u0006\u0010F\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010GJ\u0017\u0010Z\u001a\u0004\u0018\u0001042\u0006\u0010F\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010[J\u0015\u0010\\\u001a\u00020@2\u0006\u0010F\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010]J\u0015\u0010^\u001a\u00020C2\u0006\u0010F\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010_J\u0015\u0010`\u001a\u0002072\u0006\u0010F\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010aJ\u0010\u0010b\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\r\u0010c\u001a\u00028\u0000H\u0004¢\u0006\u0002\u0010\u0007J\u0015\u0010d\u001a\u00020\u00172\u0006\u0010e\u001a\u00028\u0000H\u0004¢\u0006\u0002\u0010fJ)\u0010g\u001a\u0002Hh\"\u0004\b\u0001\u0010h2\u0006\u0010F\u001a\u00028\u00002\f\u0010i\u001a\b\u0012\u0004\u0012\u0002Hh0jH\u0002¢\u0006\u0002\u0010kJ\u0019\u0010l\u001a\u00028\u0000*\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH$¢\u0006\u0002\u0010mR\u0014\u0010\u0005\u001a\u00028\u00008DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u0004\u0018\u00018\u00008DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0011j\b\u0012\u0004\u0012\u00028\u0000`\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006n"}, d2 = {"Lkotlinx/serialization/internal/TaggedDecoder;", "Tag", "Lkotlinx/serialization/encoding/Decoder;", "Lkotlinx/serialization/encoding/CompositeDecoder;", "()V", "currentTag", "getCurrentTag", "()Ljava/lang/Object;", "currentTagOrNull", "getCurrentTagOrNull", "flag", "", "serializersModule", "Lkotlinx/serialization/modules/SerializersModule;", "getSerializersModule", "()Lkotlinx/serialization/modules/SerializersModule;", "tagStack", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "beginStructure", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "copyTagsTo", "", "other", "decodeBoolean", "decodeBooleanElement", "index", "", "decodeByte", "", "decodeByteElement", "decodeChar", "", "decodeCharElement", "decodeDouble", "", "decodeDoubleElement", "decodeEnum", "enumDescriptor", "decodeFloat", "", "decodeFloatElement", "decodeInline", "decodeInlineElement", "decodeInt", "decodeIntElement", "decodeLong", "", "decodeLongElement", "decodeNotNullMark", "decodeNull", "", "decodeNullableSerializableElement", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "previousValue", "(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;", "decodeSerializableElement", "decodeSerializableValue", "(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;", "decodeShort", "", "decodeShortElement", "decodeString", "", "decodeStringElement", "decodeTaggedBoolean", "tag", "(Ljava/lang/Object;)Z", "decodeTaggedByte", "(Ljava/lang/Object;)B", "decodeTaggedChar", "(Ljava/lang/Object;)C", "decodeTaggedDouble", "(Ljava/lang/Object;)D", "decodeTaggedEnum", "(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)I", "decodeTaggedFloat", "(Ljava/lang/Object;)F", "decodeTaggedInline", "inlineDescriptor", "(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;", "decodeTaggedInt", "(Ljava/lang/Object;)I", "decodeTaggedLong", "(Ljava/lang/Object;)J", "decodeTaggedNotNullMark", "decodeTaggedNull", "(Ljava/lang/Object;)Ljava/lang/Void;", "decodeTaggedShort", "(Ljava/lang/Object;)S", "decodeTaggedString", "(Ljava/lang/Object;)Ljava/lang/String;", "decodeTaggedValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "endStructure", "popTag", "pushTag", "name", "(Ljava/lang/Object;)V", "tagBlock", "E", "block", "Lkotlin/Function0;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "getTag", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
public abstract class TaggedDecoder<Tag> implements Decoder, CompositeDecoder {
    private final ArrayList<Tag> b = new ArrayList<>();
    private boolean c;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: kotlinx.serialization.internal.k1$a */
    /* JADX INFO: compiled from: Tagged.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "Tag", "invoke", "()Ljava/lang/Object;"}, mv = {1, 7, 1}, xi = 48)
    static final class a<T> extends Lambda implements Function0<T> {
        final /* synthetic */ TaggedDecoder<Tag> a;
        final /* synthetic */ DeserializationStrategy<T> b;
        final /* synthetic */ T c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(TaggedDecoder<Tag> taggedDecoder, DeserializationStrategy<T> deserializationStrategy, T t) {
            super(0);
            this.a = taggedDecoder;
            this.b = deserializationStrategy;
            this.c = t;
        }

        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            return this.a.D() ? (T) this.a.I(this.b, this.c) : (T) this.a.j();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: kotlinx.serialization.internal.k1$b */
    /* JADX INFO: compiled from: Tagged.kt */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0005\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001\"\u0004\b\u0001\u0010\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Tag", "invoke", "()Ljava/lang/Object;"}, mv = {1, 7, 1}, xi = 48)
    static final class b<T> extends Lambda implements Function0<T> {
        final /* synthetic */ TaggedDecoder<Tag> a;
        final /* synthetic */ DeserializationStrategy<T> b;
        final /* synthetic */ T c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(TaggedDecoder<Tag> taggedDecoder, DeserializationStrategy<T> deserializationStrategy, T t) {
            super(0);
            this.a = taggedDecoder;
            this.b = deserializationStrategy;
            this.c = t;
        }

        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            return (T) this.a.I(this.b, this.c);
        }
    }

    private final <E> E Y(Tag tag, Function0<? extends E> function0) {
        X(tag);
        E eInvoke = function0.invoke();
        if (!this.c) {
            W();
        }
        this.c = false;
        return eInvoke;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final char A(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return L(V(descriptor, i));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final byte B(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return K(V(descriptor, i));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final boolean C(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return J(V(descriptor, i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public abstract boolean D();

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final short E(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return S(V(descriptor, i));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final double F(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return M(V(descriptor, i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public abstract <T> T G(DeserializationStrategy<T> deserializationStrategy);

    @Override // kotlinx.serialization.encoding.Decoder
    public final byte H() {
        return K(W());
    }

    protected <T> T I(DeserializationStrategy<T> deserializer, T t) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        return (T) G(deserializer);
    }

    protected abstract boolean J(Tag tag);

    protected abstract byte K(Tag tag);

    protected abstract char L(Tag tag);

    protected abstract double M(Tag tag);

    protected abstract int N(Tag tag, SerialDescriptor serialDescriptor);

    protected abstract float O(Tag tag);

    protected Decoder P(Tag tag, SerialDescriptor inlineDescriptor) {
        Intrinsics.checkNotNullParameter(inlineDescriptor, "inlineDescriptor");
        X(tag);
        return this;
    }

    protected abstract int Q(Tag tag);

    protected abstract long R(Tag tag);

    protected abstract short S(Tag tag);

    protected abstract String T(Tag tag);

    protected final Tag U() {
        return (Tag) kotlin.collections.p.lastOrNull((List) this.b);
    }

    protected abstract Tag V(SerialDescriptor serialDescriptor, int i);

    protected final Tag W() {
        ArrayList<Tag> arrayList = this.b;
        Tag tagRemove = arrayList.remove(CollectionsKt__CollectionsKt.getLastIndex(arrayList));
        this.c = true;
        return tagRemove;
    }

    protected final void X(Tag tag) {
        this.b.add(tag);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int e(SerialDescriptor enumDescriptor) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        return N(W(), enumDescriptor);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final long f(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return R(V(descriptor, i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int h() {
        return Q(W());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int i(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return Q(V(descriptor, i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final Void j() {
        return null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int k(SerialDescriptor serialDescriptor) {
        return CompositeDecoder.DefaultImpls.decodeCollectionSize(this, serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final long l() {
        return R(W());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final String m(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return T(V(descriptor, i));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final <T> T n(SerialDescriptor descriptor, int i, DeserializationStrategy<T> deserializer, T t) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        return (T) Y(V(descriptor, i), new a(this, deserializer, t));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public boolean p() {
        return CompositeDecoder.DefaultImpls.decodeSequentially(this);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final Decoder q(SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return P(W(), descriptor);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final Decoder r(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return P(V(descriptor, i), descriptor.g(i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final short s() {
        return S(W());
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final float t() {
        return O(W());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final float u(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return O(V(descriptor, i));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final double v() {
        return M(W());
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final boolean w() {
        return J(W());
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final char x() {
        return L(W());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final <T> T y(SerialDescriptor descriptor, int i, DeserializationStrategy<T> deserializer, T t) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        return (T) Y(V(descriptor, i), new b(this, deserializer, t));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final String z() {
        return T(W());
    }
}
