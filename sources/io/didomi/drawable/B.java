package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.models.DataCategory;
import io.didomi.drawable.models.Feature;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.SpecialFeature;
import io.didomi.drawable.models.SpecialPurpose;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

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
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0010 \n\u0002\b\u0002\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0011\u0010\u0005\u001a\u00020\u0004*\u00020\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0011\u0010\b\u001a\u00020\u0007*\u00020\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u0011\u0010\u000b\u001a\u00020\n*\u00020\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u0011\u0010\u000e\u001a\u00020\r*\u00020\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001d\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0011*\b\u0012\u0004\u0012\u00020\u00000\u0010¢\u0006\u0004\b\u0002\u0010\u0012\u001a\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u0011*\b\u0012\u0004\u0012\u00020\u00000\u0010¢\u0006\u0004\b\u000e\u0010\u0012¨\u0006\u0013"}, d2 = {"Lio/didomi/sdk/A;", "Lio/didomi/sdk/models/DataCategory;", "a", "(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/DataCategory;", "Lio/didomi/sdk/models/InternalPurpose;", "c", "(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/InternalPurpose;", "Lio/didomi/sdk/models/SpecialFeature;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/SpecialFeature;", "Lio/didomi/sdk/models/SpecialPurpose;", "e", "(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/SpecialPurpose;", "Lio/didomi/sdk/models/Feature;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/Feature;", "", "", "(Ljava/util/Collection;)Ljava/util/List;", "android_release"}, mv = {1, 8, 0})
public final class B {
    public static final DataCategory a(ConfigPurpose configPurpose) {
        Intrinsics.checkNotNullParameter(configPurpose, "<this>");
        String id = configPurpose.getId();
        if (id == null) {
            id = "";
        }
        String name = configPurpose.getName();
        if (name == null) {
            name = "";
        }
        String description = configPurpose.getDescription();
        return new DataCategory(id, name, description != null ? description : "");
    }

    public static final List<InternalPurpose> a(Collection<ConfigPurpose> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(c((ConfigPurpose) it.next()));
        }
        return arrayList;
    }

    public static final Feature b(ConfigPurpose configPurpose) {
        Intrinsics.checkNotNullParameter(configPurpose, "<this>");
        String id = configPurpose.getId();
        String str = id == null ? "" : id;
        String iabId = configPurpose.getIabId();
        String name = configPurpose.getName();
        String str2 = name == null ? "" : name;
        String description = configPurpose.getDescription();
        return new Feature(str, iabId, str2, description == null ? "" : description, configPurpose.getDescriptionLegal(), configPurpose.e());
    }

    public static final List<SpecialFeature> b(Collection<ConfigPurpose> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(d((ConfigPurpose) it.next()));
        }
        return arrayList;
    }

    public static final InternalPurpose c(ConfigPurpose configPurpose) {
        Intrinsics.checkNotNullParameter(configPurpose, "<this>");
        String id = configPurpose.getId();
        String str = id == null ? "" : id;
        String iabId = configPurpose.getIabId();
        String name = configPurpose.getName();
        String str2 = name == null ? "" : name;
        String description = configPurpose.getDescription();
        String str3 = description == null ? "" : description;
        String descriptionLegal = configPurpose.getDescriptionLegal();
        return new InternalPurpose(str, iabId, str2, str3, descriptionLegal == null ? "" : descriptionLegal, configPurpose.e(), false, false, false, Intrinsics.areEqual(configPurpose.getIsSpecialFeature(), Boolean.TRUE), null, null, false, false, 15808, null);
    }

    public static final SpecialFeature d(ConfigPurpose configPurpose) {
        Intrinsics.checkNotNullParameter(configPurpose, "<this>");
        String id = configPurpose.getId();
        String str = id == null ? "" : id;
        String iabId = configPurpose.getIabId();
        String name = configPurpose.getName();
        String str2 = name == null ? "" : name;
        String description = configPurpose.getDescription();
        return new SpecialFeature(str, iabId, str2, description == null ? "" : description, configPurpose.getDescriptionLegal(), configPurpose.e());
    }

    public static final SpecialPurpose e(ConfigPurpose configPurpose) {
        Intrinsics.checkNotNullParameter(configPurpose, "<this>");
        String id = configPurpose.getId();
        String str = id == null ? "" : id;
        String iabId = configPurpose.getIabId();
        String name = configPurpose.getName();
        String str2 = name == null ? "" : name;
        String description = configPurpose.getDescription();
        return new SpecialPurpose(str, iabId, str2, description == null ? "" : description, configPurpose.getDescriptionLegal(), configPurpose.e());
    }
}
