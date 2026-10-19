package kotlin.collections;

import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.random.Random;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    Caused by: kotlin.metadata.internal.protobuf.InvalidProtocolBufferException: Protocol message tag had invalid wire type.
    	at kotlin.metadata.internal.protobuf.InvalidProtocolBufferException.invalidWireType(InvalidProtocolBufferException.java:99)
    	at kotlin.metadata.internal.protobuf.CodedInputStream.skipField(CodedInputStream.java:268)
    	at kotlin.metadata.internal.protobuf.GeneratedMessageLite.parseUnknownField(GeneratedMessageLite.java:73)
    	at kotlin.metadata.internal.metadata.jvm.JvmProtoBuf$StringTableTypes.<init>(JvmProtoBuf.java:110)
    	at kotlin.metadata.internal.metadata.jvm.JvmProtoBuf$StringTableTypes.<init>(JvmProtoBuf.java:69)
    	at kotlin.metadata.internal.metadata.jvm.JvmProtoBuf$StringTableTypes$1.parsePartialFrom(JvmProtoBuf.java:175)
    	at kotlin.metadata.internal.metadata.jvm.JvmProtoBuf$StringTableTypes$1.parsePartialFrom(JvmProtoBuf.java:170)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parsePartialFrom(AbstractParser.java:192)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parsePartialDelimitedFrom(AbstractParser.java:233)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseDelimitedFrom(AbstractParser.java:245)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseDelimitedFrom(AbstractParser.java:49)
    	at kotlin.metadata.internal.metadata.jvm.JvmProtoBuf$StringTableTypes.parseDelimitedFrom(JvmProtoBuf.java:1736)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readNameResolver(JvmProtoBufUtil.kt:57)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:37)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:32)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	... 4 more
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"kotlin/collections/CollectionsKt__CollectionsJVMKt", "kotlin/collections/CollectionsKt__CollectionsKt", "kotlin/collections/CollectionsKt__IterablesKt", "kotlin/collections/CollectionsKt__IteratorsJVMKt", "kotlin/collections/CollectionsKt__IteratorsKt", "kotlin/collections/CollectionsKt__MutableCollectionsJVMKt", "kotlin/collections/CollectionsKt__MutableCollectionsKt", "kotlin/collections/CollectionsKt__ReversedViewsKt", "kotlin/collections/CollectionsKt___CollectionsJvmKt", "kotlin/collections/CollectionsKt___CollectionsKt"}, mv = {1, 9, 0}, xi = 49)
public final class p extends CollectionsKt___CollectionsKt {
    public static /* bridge */ /* synthetic */ <T> T first(Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.first(iterable);
    }

    public static /* bridge */ /* synthetic */ <T> T first(List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.first((List) list);
    }

    public static /* bridge */ /* synthetic */ <T> T firstOrNull(Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.firstOrNull(iterable);
    }

    public static /* bridge */ /* synthetic */ <T> T firstOrNull(List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.firstOrNull((List) list);
    }

    public static /* bridge */ /* synthetic */ <T> T getOrNull(List<? extends T> list, int i) {
        return (T) CollectionsKt___CollectionsKt.getOrNull(list, i);
    }

    public static /* bridge */ /* synthetic */ <T, A extends Appendable> A joinTo(Iterable<? extends T> iterable, A a, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1<? super T, ? extends CharSequence> function1) {
        return (A) CollectionsKt___CollectionsKt.joinTo(iterable, a, charSequence, charSequence2, charSequence3, i, charSequence4, function1);
    }

    public static /* bridge */ /* synthetic */ <T> T last(Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.last(iterable);
    }

    public static /* bridge */ /* synthetic */ <T> T last(List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.last((List) list);
    }

    public static /* bridge */ /* synthetic */ <T> T lastOrNull(Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.lastOrNull(iterable);
    }

    public static /* bridge */ /* synthetic */ <T> T lastOrNull(List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.lastOrNull((List) list);
    }

    public static /* bridge */ /* synthetic */ <T extends Comparable<? super T>> T minOrNull(Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.minOrNull(iterable);
    }

    public static /* bridge */ /* synthetic */ <T> T random(Collection<? extends T> collection, Random random) {
        return (T) CollectionsKt___CollectionsKt.random(collection, random);
    }

    public static /* bridge */ /* synthetic */ <T> T removeLast(List<T> list) {
        return (T) CollectionsKt__MutableCollectionsKt.removeLast(list);
    }

    public static /* bridge */ /* synthetic */ <T> T removeLastOrNull(List<T> list) {
        return (T) CollectionsKt__MutableCollectionsKt.removeLastOrNull(list);
    }

    public static /* bridge */ /* synthetic */ <T> T single(Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.single(iterable);
    }

    public static /* bridge */ /* synthetic */ <T> T single(List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.single((List) list);
    }

    public static /* bridge */ /* synthetic */ <T> T singleOrNull(Iterable<? extends T> iterable) {
        return (T) CollectionsKt___CollectionsKt.singleOrNull(iterable);
    }

    public static /* bridge */ /* synthetic */ <T> T singleOrNull(List<? extends T> list) {
        return (T) CollectionsKt___CollectionsKt.singleOrNull((List) list);
    }

    public static /* bridge */ /* synthetic */ <T> T[] terminateCollectionToArray(int i, T[] tArr) {
        return (T[]) CollectionsKt__CollectionsJVMKt.terminateCollectionToArray(i, tArr);
    }
}
