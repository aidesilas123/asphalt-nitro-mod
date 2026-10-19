package kotlinx.serialization.internal;

import com.google.android.gms.ads.RequestConfiguration;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: renamed from: kotlinx.serialization.internal.l1, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Tagged.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b'\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u001e\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u001cJ\u001e\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u001cJ\u000e\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u001fJ\u001e\u0010 \u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u001fJ\u000e\u0010!\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\"J\u001e\u0010#\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\"J\u0018\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0016\u0010&\u001a\u00020\u00152\u0006\u0010'\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010(\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020)J\u001e\u0010*\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020)J\u000e\u0010+\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010,\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010-\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u001aJ\u001e\u0010.\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u001aJ\u000e\u0010/\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u000200J\u001e\u00101\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u000200J\b\u00102\u001a\u00020\u0015H\u0016J\b\u00103\u001a\u00020\u0015H\u0016J?\u00104\u001a\u00020\u0015\"\b\b\u0001\u00105*\u0002062\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\f\u00107\u001a\b\u0012\u0004\u0012\u0002H5082\b\u0010\u0016\u001a\u0004\u0018\u0001H5H\u0016¢\u0006\u0002\u00109J9\u0010:\u001a\u00020\u0015\"\u0004\b\u0001\u001052\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\f\u00107\u001a\b\u0012\u0004\u0012\u0002H5082\u0006\u0010\u0016\u001a\u0002H5H\u0016¢\u0006\u0002\u00109J\u000e\u0010;\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020<J\u001e\u0010=\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020<J\u000e\u0010>\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020?J\u001e\u0010@\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020?J\u001d\u0010A\u001a\u00020\u00152\u0006\u0010B\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u0017H\u0014¢\u0006\u0002\u0010CJ\u001d\u0010D\u001a\u00020\u00152\u0006\u0010B\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u001cH\u0014¢\u0006\u0002\u0010EJ\u001d\u0010F\u001a\u00020\u00152\u0006\u0010B\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u001fH\u0014¢\u0006\u0002\u0010GJ\u001d\u0010H\u001a\u00020\u00152\u0006\u0010B\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\"H\u0014¢\u0006\u0002\u0010IJ%\u0010J\u001a\u00020\u00152\u0006\u0010B\u001a\u00028\u00002\u0006\u0010'\u001a\u00020\u00132\u0006\u0010K\u001a\u00020\u001aH\u0014¢\u0006\u0002\u0010LJ\u001d\u0010M\u001a\u00020\u00152\u0006\u0010B\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020)H\u0014¢\u0006\u0002\u0010NJ\u001d\u0010O\u001a\u00020\u00022\u0006\u0010B\u001a\u00028\u00002\u0006\u0010P\u001a\u00020\u0013H\u0014¢\u0006\u0002\u0010QJ\u001d\u0010R\u001a\u00020\u00152\u0006\u0010B\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u001aH\u0014¢\u0006\u0002\u0010SJ\u001d\u0010T\u001a\u00020\u00152\u0006\u0010B\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u000200H\u0014¢\u0006\u0002\u0010UJ\u0015\u0010V\u001a\u00020\u00152\u0006\u0010B\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010WJ\u0015\u0010X\u001a\u00020\u00152\u0006\u0010B\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010WJ\u001d\u0010Y\u001a\u00020\u00152\u0006\u0010B\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020<H\u0014¢\u0006\u0002\u0010ZJ\u001d\u0010[\u001a\u00020\u00152\u0006\u0010B\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020?H\u0014¢\u0006\u0002\u0010\\J\u001d\u0010]\u001a\u00020\u00152\u0006\u0010B\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u000206H\u0014¢\u0006\u0002\u0010^J\u0010\u0010_\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J\u000e\u0010`\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0013J\r\u0010a\u001a\u00028\u0000H\u0004¢\u0006\u0002\u0010\u0007J\u0015\u0010b\u001a\u00020\u00152\u0006\u0010c\u001a\u00028\u0000H\u0004¢\u0006\u0002\u0010WJ\u0019\u0010d\u001a\u00028\u0000*\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aH$¢\u0006\u0002\u0010eR\u0014\u0010\u0005\u001a\u00028\u00008DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u0004\u0018\u00018\u00008DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006f"}, d2 = {"Lkotlinx/serialization/internal/TaggedEncoder;", "Tag", "Lkotlinx/serialization/encoding/Encoder;", "Lkotlinx/serialization/encoding/CompositeEncoder;", "()V", "currentTag", "getCurrentTag", "()Ljava/lang/Object;", "currentTagOrNull", "getCurrentTagOrNull", "serializersModule", "Lkotlinx/serialization/modules/SerializersModule;", "getSerializersModule", "()Lkotlinx/serialization/modules/SerializersModule;", "tagStack", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "beginStructure", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "encodeBoolean", "", "value", "", "encodeBooleanElement", "index", "", "encodeByte", "", "encodeByteElement", "encodeChar", "", "encodeCharElement", "encodeDouble", "", "encodeDoubleElement", "encodeElement", CampaignEx.JSON_KEY_DESC, "encodeEnum", "enumDescriptor", "encodeFloat", "", "encodeFloatElement", "encodeInline", "encodeInlineElement", "encodeInt", "encodeIntElement", "encodeLong", "", "encodeLongElement", "encodeNotNullMark", "encodeNull", "encodeNullableSerializableElement", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "serializer", "Lkotlinx/serialization/SerializationStrategy;", "(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V", "encodeSerializableElement", "encodeShort", "", "encodeShortElement", "encodeString", "", "encodeStringElement", "encodeTaggedBoolean", "tag", "(Ljava/lang/Object;Z)V", "encodeTaggedByte", "(Ljava/lang/Object;B)V", "encodeTaggedChar", "(Ljava/lang/Object;C)V", "encodeTaggedDouble", "(Ljava/lang/Object;D)V", "encodeTaggedEnum", MediationMetaData.KEY_ORDINAL, "(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;I)V", "encodeTaggedFloat", "(Ljava/lang/Object;F)V", "encodeTaggedInline", "inlineDescriptor", "(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;", "encodeTaggedInt", "(Ljava/lang/Object;I)V", "encodeTaggedLong", "(Ljava/lang/Object;J)V", "encodeTaggedNonNullMark", "(Ljava/lang/Object;)V", "encodeTaggedNull", "encodeTaggedShort", "(Ljava/lang/Object;S)V", "encodeTaggedString", "(Ljava/lang/Object;Ljava/lang/String;)V", "encodeTaggedValue", "(Ljava/lang/Object;Ljava/lang/Object;)V", "endEncode", "endStructure", "popTag", "pushTag", "name", "getTag", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
public abstract class TaggedEncoder<Tag> implements Encoder, CompositeEncoder {
    private final ArrayList<Tag> a = new ArrayList<>();

    private final boolean H(SerialDescriptor serialDescriptor, int i) {
        Z(X(serialDescriptor, i));
        return true;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void B(int i) {
        Q(Y(), i);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public <T> void C(SerialDescriptor descriptor, int i, SerializationStrategy<? super T> serializer, T t) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (H(descriptor, i)) {
            e(serializer, t);
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void D(SerialDescriptor descriptor, int i, short s) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        S(X(descriptor, i), s);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void E(SerialDescriptor descriptor, int i, double d2) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        M(X(descriptor, i), d2);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void F(SerialDescriptor descriptor, int i, long j) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        R(X(descriptor, i), j);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void G(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        T(Y(), value);
    }

    public <T> void I(SerializationStrategy<? super T> serializationStrategy, T t) {
        Encoder.DefaultImpls.encodeNullableSerializableValue(this, serializationStrategy, t);
    }

    protected abstract void J(Tag tag, boolean z);

    protected abstract void K(Tag tag, byte b);

    protected abstract void L(Tag tag, char c);

    protected abstract void M(Tag tag, double d2);

    protected abstract void N(Tag tag, SerialDescriptor serialDescriptor, int i);

    protected abstract void O(Tag tag, float f2);

    protected Encoder P(Tag tag, SerialDescriptor inlineDescriptor) {
        Intrinsics.checkNotNullParameter(inlineDescriptor, "inlineDescriptor");
        Z(tag);
        return this;
    }

    protected abstract void Q(Tag tag, int i);

    protected abstract void R(Tag tag, long j);

    protected abstract void S(Tag tag, short s);

    protected abstract void T(Tag tag, String str);

    protected abstract void U(SerialDescriptor serialDescriptor);

    protected final Tag V() {
        return (Tag) kotlin.collections.p.last((List) this.a);
    }

    protected final Tag W() {
        return (Tag) kotlin.collections.p.lastOrNull((List) this.a);
    }

    protected abstract Tag X(SerialDescriptor serialDescriptor, int i);

    protected final Tag Y() {
        if (!(!this.a.isEmpty())) {
            throw new SerializationException("No tag in stack for requested element");
        }
        ArrayList<Tag> arrayList = this.a;
        return arrayList.remove(CollectionsKt__CollectionsKt.getLastIndex(arrayList));
    }

    protected final void Z(Tag tag) {
        this.a.add(tag);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void c(SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (!this.a.isEmpty()) {
            Y();
        }
        U(descriptor);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract <T> void e(SerializationStrategy<? super T> serializationStrategy, T t);

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final Encoder f(SerialDescriptor descriptor, int i) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return P(X(descriptor, i), descriptor.g(i));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void g(double d2) {
        M(Y(), d2);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void h(byte b) {
        K(Y(), b);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public <T> void i(SerialDescriptor descriptor, int i, SerializationStrategy<? super T> serializer, T t) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (H(descriptor, i)) {
            I(serializer, t);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public CompositeEncoder j(SerialDescriptor serialDescriptor, int i) {
        return Encoder.DefaultImpls.beginCollection(this, serialDescriptor, i);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void k(SerialDescriptor enumDescriptor, int i) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        N(Y(), enumDescriptor, i);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final Encoder l(SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return P(Y(), descriptor);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void m(long j) {
        R(Y(), j);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void n(SerialDescriptor descriptor, int i, char c) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        L(X(descriptor, i), c);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void p(SerialDescriptor descriptor, int i, byte b) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        K(X(descriptor, i), b);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void q(short s) {
        S(Y(), s);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void r(boolean z) {
        J(Y(), z);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void s(SerialDescriptor descriptor, int i, float f2) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        O(X(descriptor, i), f2);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void t(float f2) {
        O(Y(), f2);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void u(char c) {
        L(Y(), c);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void w(SerialDescriptor descriptor, int i, int i2) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Q(X(descriptor, i), i2);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void x(SerialDescriptor descriptor, int i, boolean z) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        J(X(descriptor, i), z);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void y(SerialDescriptor descriptor, int i, String value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(value, "value");
        T(X(descriptor, i), value);
    }
}
