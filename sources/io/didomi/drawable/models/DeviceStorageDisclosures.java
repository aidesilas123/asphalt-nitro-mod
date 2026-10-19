package io.didomi.drawable.models;

import androidx.annotation.Keep;
import com.google.gson.r.c;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

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
/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0010\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0013\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÂ\u0003J\u001d\u0010\n\u001a\u00020\u00002\u0012\b\u0002\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\u0006\u0010\u0010\u001a\u00020\fJ\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00038\u0002X\u0083\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lio/didomi/sdk/models/DeviceStorageDisclosures;", "", "internalDisclosures", "", "Lio/didomi/sdk/models/DeviceStorageDisclosure;", "(Ljava/util/List;)V", "disclosuresList", "getDisclosuresList", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "isValid", "toString", "", "android_release"}, mv = {1, 8, 0}, xi = 48)
public final class DeviceStorageDisclosures {

    @c("disclosures")
    private final List<DeviceStorageDisclosure> internalDisclosures;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000f\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/models/DeviceStorageDisclosure;", "it", "", "a", "(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/Comparable;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function1<DeviceStorageDisclosure, Comparable<?>> {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Comparable<?> invoke(DeviceStorageDisclosure it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return it.getIdentifier();
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000f\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/models/DeviceStorageDisclosure;", "it", "", "a", "(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/Comparable;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function1<DeviceStorageDisclosure, Comparable<?>> {
        public static final b a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Comparable<?> invoke(DeviceStorageDisclosure it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return it.getType();
        }
    }

    public DeviceStorageDisclosures(List<DeviceStorageDisclosure> list) {
        this.internalDisclosures = list;
    }

    private final List<DeviceStorageDisclosure> component1() {
        return this.internalDisclosures;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DeviceStorageDisclosures copy$default(DeviceStorageDisclosures deviceStorageDisclosures, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = deviceStorageDisclosures.internalDisclosures;
        }
        return deviceStorageDisclosures.copy(list);
    }

    public final DeviceStorageDisclosures copy(List<DeviceStorageDisclosure> list) {
        return new DeviceStorageDisclosures(list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DeviceStorageDisclosures) && Intrinsics.areEqual(this.internalDisclosures, ((DeviceStorageDisclosures) obj).internalDisclosures);
    }

    public final List<DeviceStorageDisclosure> getDisclosuresList() {
        List listFilterNotNull;
        List<DeviceStorageDisclosure> list = this.internalDisclosures;
        if (list == null || (listFilterNotNull = CollectionsKt___CollectionsKt.filterNotNull(list)) == null) {
            return null;
        }
        return CollectionsKt___CollectionsKt.sortedWith(listFilterNotNull, ComparisonsKt__ComparisonsKt.compareBy(a.a, b.a));
    }

    public int hashCode() {
        List<DeviceStorageDisclosure> list = this.internalDisclosures;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public final boolean isValid() {
        List<DeviceStorageDisclosure> disclosuresList = getDisclosuresList();
        if (disclosuresList != null && !disclosuresList.isEmpty()) {
            Iterator<T> it = disclosuresList.iterator();
            while (it.hasNext()) {
                if (!((DeviceStorageDisclosure) it.next()).isValid()) {
                    return false;
                }
            }
        }
        return true;
    }

    public String toString() {
        return "DeviceStorageDisclosures(internalDisclosures=" + this.internalDisclosures + ')';
    }
}
