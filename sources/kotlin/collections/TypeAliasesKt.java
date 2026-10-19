package kotlin.collections;

import kotlin.Metadata;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
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
    	... 4 more
    */
/* JADX INFO: compiled from: TypeAliases.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*,\b\u0007\u0010\u0000\u001a\u0004\b\u0000\u0010\u0001\"\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0002B\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005*>\b\u0007\u0010\u0006\u001a\u0004\b\u0000\u0010\u0007\u001a\u0004\b\u0001\u0010\b\"\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b0\t2\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b0\tB\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005*,\b\u0007\u0010\n\u001a\u0004\b\u0000\u0010\u0001\"\b\u0012\u0004\u0012\u0002H\u00010\u000b2\b\u0012\u0004\u0012\u0002H\u00010\u000bB\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005*>\b\u0007\u0010\f\u001a\u0004\b\u0000\u0010\u0007\u001a\u0004\b\u0001\u0010\b\"\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b0\r2\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b0\rB\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005*,\b\u0007\u0010\u000e\u001a\u0004\b\u0000\u0010\u0001\"\b\u0012\u0004\u0012\u0002H\u00010\u000f2\b\u0012\u0004\u0012\u0002H\u00010\u000fB\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005*\u001a\b\u0007\u0010\u0010\"\u00020\u00112\u00020\u0011B\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005¨\u0006\u0012"}, d2 = {"ArrayList", "E", "Ljava/util/ArrayList;", "Lkotlin/SinceKotlin;", "version", "1.1", "HashMap", "K", "V", "Ljava/util/HashMap;", "HashSet", "Ljava/util/HashSet;", "LinkedHashMap", "Ljava/util/LinkedHashMap;", "LinkedHashSet", "Ljava/util/LinkedHashSet;", "RandomAccess", "Ljava/util/RandomAccess;", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public final class TypeAliasesKt {
    public static /* synthetic */ void ArrayList$annotations() {
    }

    public static /* synthetic */ void HashMap$annotations() {
    }

    public static /* synthetic */ void HashSet$annotations() {
    }

    public static /* synthetic */ void LinkedHashMap$annotations() {
    }

    public static /* synthetic */ void LinkedHashSet$annotations() {
    }

    public static /* synthetic */ void RandomAccess$annotations() {
    }
}
