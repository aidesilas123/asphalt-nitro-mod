package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.consent.model.ConsentChoices;
import io.didomi.drawable.user.sync.model.ResponseConsents;
import java.util.Collection;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.t5, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\n\u001a\u0019\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000¢\u0006\u0004\b\u0005\u0010\u0004\u001a\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000¢\u0006\u0004\b\u0006\u0010\u0004\u001a\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000¢\u0006\u0004\b\u0007\u0010\u0004\u001a\u0019\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000¢\u0006\u0004\b\b\u0010\u0004\u001a\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000¢\u0006\u0004\b\t\u0010\u0004\u001a\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000¢\u0006\u0004\b\n\u0010\u0004\u001a\u0019\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000¢\u0006\u0004\b\u000b\u0010\u0004¨\u0006\f"}, d2 = {"Lio/didomi/sdk/user/sync/model/ResponseConsents;", "", "", "e", "(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;", "a", "g", "c", InneractiveMediationDefs.GENDER_FEMALE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "h", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "android_release"}, mv = {1, 8, 0})
public final class C1902t5 {
    public static final Set<String> a(ResponseConsents responseConsents) {
        Collection<String> disabled;
        Intrinsics.checkNotNullParameter(responseConsents, "<this>");
        ConsentChoices consentPurposes = responseConsents.getConsentPurposes();
        if (consentPurposes == null || (disabled = consentPurposes.getDisabled()) == null) {
            return null;
        }
        return CollectionsKt___CollectionsKt.toSet(disabled);
    }

    public static final Set<String> b(ResponseConsents responseConsents) {
        Collection<String> disabled;
        Intrinsics.checkNotNullParameter(responseConsents, "<this>");
        ConsentChoices consentVendors = responseConsents.getConsentVendors();
        if (consentVendors == null || (disabled = consentVendors.getDisabled()) == null) {
            return null;
        }
        return CollectionsKt___CollectionsKt.toSet(disabled);
    }

    public static final Set<String> c(ResponseConsents responseConsents) {
        Collection<String> disabled;
        Intrinsics.checkNotNullParameter(responseConsents, "<this>");
        ConsentChoices liPurposes = responseConsents.getLiPurposes();
        if (liPurposes == null || (disabled = liPurposes.getDisabled()) == null) {
            return null;
        }
        return CollectionsKt___CollectionsKt.toSet(disabled);
    }

    public static final Set<String> d(ResponseConsents responseConsents) {
        Collection<String> disabled;
        Intrinsics.checkNotNullParameter(responseConsents, "<this>");
        ConsentChoices liVendors = responseConsents.getLiVendors();
        if (liVendors == null || (disabled = liVendors.getDisabled()) == null) {
            return null;
        }
        return CollectionsKt___CollectionsKt.toSet(disabled);
    }

    public static final Set<String> e(ResponseConsents responseConsents) {
        Collection<String> enabled;
        Intrinsics.checkNotNullParameter(responseConsents, "<this>");
        ConsentChoices consentPurposes = responseConsents.getConsentPurposes();
        if (consentPurposes == null || (enabled = consentPurposes.getEnabled()) == null) {
            return null;
        }
        return CollectionsKt___CollectionsKt.toSet(enabled);
    }

    public static final Set<String> f(ResponseConsents responseConsents) {
        Collection<String> enabled;
        Intrinsics.checkNotNullParameter(responseConsents, "<this>");
        ConsentChoices consentVendors = responseConsents.getConsentVendors();
        if (consentVendors == null || (enabled = consentVendors.getEnabled()) == null) {
            return null;
        }
        return CollectionsKt___CollectionsKt.toSet(enabled);
    }

    public static final Set<String> g(ResponseConsents responseConsents) {
        Collection<String> enabled;
        Intrinsics.checkNotNullParameter(responseConsents, "<this>");
        ConsentChoices liPurposes = responseConsents.getLiPurposes();
        if (liPurposes == null || (enabled = liPurposes.getEnabled()) == null) {
            return null;
        }
        return CollectionsKt___CollectionsKt.toSet(enabled);
    }

    public static final Set<String> h(ResponseConsents responseConsents) {
        Collection<String> enabled;
        Intrinsics.checkNotNullParameter(responseConsents, "<this>");
        ConsentChoices liVendors = responseConsents.getLiVendors();
        if (liVendors == null || (enabled = liVendors.getEnabled()) == null) {
            return null;
        }
        return CollectionsKt___CollectionsKt.toSet(enabled);
    }
}
