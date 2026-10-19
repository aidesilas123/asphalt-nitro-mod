package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.models.CurrentUserStatus;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.g0, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u0002¢\u0006\u0004\b\u0004\u0010\u0003\u001a\u0013\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\u0002¢\u0006\u0004\b\u0005\u0010\u0003\u001a%\u0010\u0004\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0004\b\u0004\u0010\n\u001a%\u0010\u0002\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\u0006¢\u0006\u0004\b\u0002\u0010\n¨\u0006\r"}, d2 = {"Lio/didomi/sdk/models/CurrentUserStatus;", "", "a", "(Lio/didomi/sdk/models/CurrentUserStatus;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "", "", "Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;", Didomi.VIEW_VENDORS, "(Lio/didomi/sdk/models/CurrentUserStatus;Ljava/util/Map;)Lio/didomi/sdk/models/CurrentUserStatus;", "Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;", Didomi.VIEW_PURPOSES, "android_release"}, mv = {1, 8, 0})
public final class C1767g0 {
    public static final CurrentUserStatus a(CurrentUserStatus currentUserStatus, Map<String, CurrentUserStatus.PurposeStatus> purposes) {
        Intrinsics.checkNotNullParameter(currentUserStatus, "<this>");
        Intrinsics.checkNotNullParameter(purposes, "purposes");
        Iterator<T> it = purposes.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            CurrentUserStatus.PurposeStatus purposeStatus = (CurrentUserStatus.PurposeStatus) entry.getValue();
            if (Intrinsics.areEqual(str, purposeStatus.getId())) {
                CurrentUserStatus.PurposeStatus purposeStatus2 = currentUserStatus.getPurposes().get(str);
                if (purposeStatus2 != null) {
                    purposeStatus2.setEnabled(purposeStatus.getEnabled());
                }
            } else {
                Log.e$default("Purpose status not valid for key " + str, null, 2, null);
            }
        }
        return currentUserStatus;
    }

    public static final boolean a(CurrentUserStatus currentUserStatus) {
        Intrinsics.checkNotNullParameter(currentUserStatus, "<this>");
        return b(currentUserStatus) && c(currentUserStatus);
    }

    public static final CurrentUserStatus b(CurrentUserStatus currentUserStatus, Map<String, CurrentUserStatus.VendorStatus> vendors) {
        Intrinsics.checkNotNullParameter(currentUserStatus, "<this>");
        Intrinsics.checkNotNullParameter(vendors, "vendors");
        Iterator<T> it = vendors.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            CurrentUserStatus.VendorStatus vendorStatus = (CurrentUserStatus.VendorStatus) entry.getValue();
            if (Intrinsics.areEqual(str, vendorStatus.getId())) {
                CurrentUserStatus.VendorStatus vendorStatus2 = currentUserStatus.getVendors().get(str);
                if (vendorStatus2 != null) {
                    vendorStatus2.setEnabled(vendorStatus.getEnabled());
                }
            } else {
                Log.e$default("Vendor status not valid for key " + str, null, 2, null);
            }
        }
        return currentUserStatus;
    }

    private static final boolean b(CurrentUserStatus currentUserStatus) {
        Map<String, CurrentUserStatus.PurposeStatus> purposes = currentUserStatus.getPurposes();
        if (!purposes.isEmpty()) {
            for (Map.Entry<String, CurrentUserStatus.PurposeStatus> entry : purposes.entrySet()) {
                if (!Intrinsics.areEqual(entry.getKey(), entry.getValue().getId())) {
                    return false;
                }
            }
        }
        return true;
    }

    private static final boolean c(CurrentUserStatus currentUserStatus) {
        Map<String, CurrentUserStatus.VendorStatus> vendors = currentUserStatus.getVendors();
        if (!vendors.isEmpty()) {
            for (Map.Entry<String, CurrentUserStatus.VendorStatus> entry : vendors.entrySet()) {
                if (!Intrinsics.areEqual(entry.getKey(), entry.getValue().getId())) {
                    return false;
                }
            }
        }
        return true;
    }
}
