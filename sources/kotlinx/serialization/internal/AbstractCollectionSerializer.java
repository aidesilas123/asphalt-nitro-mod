package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;

/* JADX INFO: compiled from: CollectionSerializers.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010(\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0005J\r\u0010\u0006\u001a\u00028\u0002H$¢\u0006\u0002\u0010\u0007J\u0015\u0010\b\u001a\u00028\u00012\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000bJ\u001f\u0010\f\u001a\u00028\u00012\u0006\u0010\t\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00018\u0001H\u0007¢\u0006\u0002\u0010\u000eJ-\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00028\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H$¢\u0006\u0002\u0010\u0015J/\u0010\u0016\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00028\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u0019H$¢\u0006\u0002\u0010\u001aJ\u001d\u0010\u001b\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00028\u0002H\u0002¢\u0006\u0002\u0010\u001cJ\u001d\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00028\u0001H&¢\u0006\u0002\u0010!J\u0011\u0010\"\u001a\u00020\u0013*\u00028\u0002H$¢\u0006\u0002\u0010#J\u0019\u0010$\u001a\u00020\u0010*\u00028\u00022\u0006\u0010\u0014\u001a\u00020\u0013H$¢\u0006\u0002\u0010%J\u0017\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000'*\u00028\u0001H$¢\u0006\u0002\u0010(J\u0011\u0010)\u001a\u00020\u0013*\u00028\u0001H$¢\u0006\u0002\u0010#J\u0011\u0010*\u001a\u00028\u0002*\u00028\u0001H$¢\u0006\u0002\u0010+J\u0011\u0010,\u001a\u00028\u0001*\u00028\u0002H$¢\u0006\u0002\u0010+\u0082\u0001\u0002-.¨\u0006/"}, d2 = {"Lkotlinx/serialization/internal/AbstractCollectionSerializer;", "Element", "Collection", "Builder", "Lkotlinx/serialization/KSerializer;", "()V", "builder", "()Ljava/lang/Object;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;", "merge", "previous", "(Lkotlinx/serialization/encoding/Decoder;Ljava/lang/Object;)Ljava/lang/Object;", "readAll", "", "Lkotlinx/serialization/encoding/CompositeDecoder;", "startIndex", "", "size", "(Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/Object;II)V", "readElement", "index", "checkIndex", "", "(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V", "readSize", "(Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/Object;)I", "serialize", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V", "builderSize", "(Ljava/lang/Object;)I", "checkCapacity", "(Ljava/lang/Object;I)V", "collectionIterator", "", "(Ljava/lang/Object;)Ljava/util/Iterator;", "collectionSize", "toBuilder", "(Ljava/lang/Object;)Ljava/lang/Object;", "toResult", "Lkotlinx/serialization/internal/CollectionLikeSerializer;", "Lkotlinx/serialization/internal/MapLikeSerializer;", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
public abstract class AbstractCollectionSerializer<Element, Collection, Builder> implements KSerializer<Collection> {
    private AbstractCollectionSerializer() {
    }

    public /* synthetic */ AbstractCollectionSerializer(kotlin.jvm.internal.n nVar) {
        this();
    }

    private final int i(CompositeDecoder compositeDecoder, Builder builder) {
        int iK = compositeDecoder.k(getB());
        c(builder, iK);
        return iK;
    }

    public static /* synthetic */ void readElement$default(AbstractCollectionSerializer abstractCollectionSerializer, CompositeDecoder compositeDecoder, int i, Object obj, boolean z, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readElement");
        }
        if ((i2 & 8) != 0) {
            z = true;
        }
        abstractCollectionSerializer.h(compositeDecoder, i, obj, z);
    }

    protected abstract Builder a();

    protected abstract int b(Builder builder);

    protected abstract void c(Builder builder, int i);

    protected abstract Iterator<Element> d(Collection collection);

    @Override // kotlinx.serialization.DeserializationStrategy
    public Collection deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return f(decoder, null);
    }

    protected abstract int e(Collection collection);

    public final Collection f(Decoder decoder, Collection collection) {
        Builder builderA;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (collection == null || (builderA = j(collection)) == null) {
            builderA = a();
        }
        int iB = b(builderA);
        CompositeDecoder compositeDecoderB = decoder.b(getB());
        if (!compositeDecoderB.p()) {
            while (true) {
                int iO = compositeDecoderB.o(getB());
                if (iO == -1) {
                    break;
                }
                readElement$default(this, compositeDecoderB, iB + iO, builderA, false, 8, null);
            }
        } else {
            g(compositeDecoderB, builderA, iB, i(compositeDecoderB, builderA));
        }
        compositeDecoderB.c(getB());
        return k(builderA);
    }

    protected abstract void g(CompositeDecoder compositeDecoder, Builder builder, int i, int i2);

    protected abstract void h(CompositeDecoder compositeDecoder, int i, Builder builder, boolean z);

    protected abstract Builder j(Collection collection);

    protected abstract Collection k(Builder builder);
}
