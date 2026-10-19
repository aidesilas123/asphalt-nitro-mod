package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.b4;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.consent.model.ConsentStatus;
import io.didomi.drawable.consent.model.ConsentToken;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
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
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0005\u0010\u0004\u001a\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0006\u0010\u0004\u001a\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0007\u0010\u0004\u001a\u001b\u0010\u0007\u001a\u00020\t*\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\n\u001a\u001b\u0010\u000b\u001a\u00020\t*\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\n\u001a\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\f\u0010\u0004\u001a\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\r\u0010\u0004\u001a\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u000e\u0010\u0004\u001a\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u000f\u0010\u0004\u001a\u001b\u0010\u000f\u001a\u00020\t*\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000f\u0010\n\u001a\u0019\u0010\u000b\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u000b\u0010\u0012\u001a\u001b\u0010\u0005\u001a\u00020\t*\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\n\u001a\u001b\u0010\u0007\u001a\u00020\t*\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0007\u0010\u0012\u001a\u0011\u0010\u0014\u001a\u00020\u0013*\u00020\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u0011\u0010\u0016\u001a\u00020\u0013*\u00020\u0000¢\u0006\u0004\b\u0016\u0010\u0015\u001a\u0011\u0010\u0017\u001a\u00020\u0013*\u00020\u0000¢\u0006\u0004\b\u0017\u0010\u0015\u001a\u0011\u0010\u0018\u001a\u00020\u0013*\u00020\u0000¢\u0006\u0004\b\u0018\u0010\u0015\u001a\u0011\u0010\u0019\u001a\u00020\u0013*\u00020\u0000¢\u0006\u0004\b\u0019\u0010\u0015\u001a\u0091\u0001\u0010\u000b\u001a\u00020\u0013*\u00020\u00002\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00012\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00012\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00012\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00012\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00012\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00012\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00012\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0001¢\u0006\u0004\b\u000b\u0010#\u001a\u0011\u0010\u000b\u001a\u00020\u0000*\u00020\u0000¢\u0006\u0004\b\u000b\u0010$¨\u0006%"}, d2 = {"Lio/didomi/sdk/consent/model/ConsentToken;", "", "", "h", "(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, InneractiveMediationDefs.GENDER_FEMALE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "id", "Lio/didomi/sdk/consent/model/ConsentStatus;", "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;", "a", "i", "e", "g", "c", "Lio/didomi/sdk/models/InternalVendor;", "vendor", "(Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/consent/model/ConsentStatus;", "", "l", "(Lio/didomi/sdk/consent/model/ConsentToken;)Z", "j", InneractiveMediationDefs.GENDER_MALE, b4.p, CampaignEx.JSON_KEY_AD_K, "Lio/didomi/sdk/models/InternalPurpose;", "enabledPurposes", "disabledPurposes", "enabledLegitimatePurposes", "disabledLegitimatePurposes", "enabledVendors", "disabledVendors", "enabledLegIntVendors", "disabledLegIntVendors", "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z", "(Lio/didomi/sdk/consent/model/ConsentToken;)Lio/didomi/sdk/consent/model/ConsentToken;", "android_release"}, mv = {1, 8, 0})
public final class Y {
    public static final ConsentStatus a(ConsentToken consentToken, InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        return c(consentToken, vendor.getId());
    }

    public static final ConsentStatus a(ConsentToken consentToken, String str) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return consentToken.getEnabledLegitimatePurposes().containsKey(str) ? ConsentStatus.ENABLE : consentToken.getDisabledLegitimatePurposes().containsKey(str) ? ConsentStatus.DISABLE : ConsentStatus.UNKNOWN;
    }

    public static final ConsentToken a(ConsentToken consentToken) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return consentToken.copy((IronSourceConstants.NT_CALLBACK_LOAD_ERROR & 1) != 0 ? consentToken.created : null, (IronSourceConstants.NT_CALLBACK_LOAD_ERROR & 2) != 0 ? consentToken.updated : null, (IronSourceConstants.NT_CALLBACK_LOAD_ERROR & 4) != 0 ? consentToken.lastSyncDate : null, (IronSourceConstants.NT_CALLBACK_LOAD_ERROR & 8) != 0 ? consentToken.lastSyncedUserId : null, (IronSourceConstants.NT_CALLBACK_LOAD_ERROR & 16) != 0 ? consentToken.enabledPurposes : MapsKt__MapsKt.toMutableMap(consentToken.getEnabledPurposes()), (IronSourceConstants.NT_CALLBACK_LOAD_ERROR & 32) != 0 ? consentToken.disabledPurposes : MapsKt__MapsKt.toMutableMap(consentToken.getDisabledPurposes()), (IronSourceConstants.NT_CALLBACK_LOAD_ERROR & 64) != 0 ? consentToken.enabledLegitimatePurposes : MapsKt__MapsKt.toMutableMap(consentToken.getEnabledLegitimatePurposes()), (IronSourceConstants.NT_CALLBACK_LOAD_ERROR & 128) != 0 ? consentToken.disabledLegitimatePurposes : MapsKt__MapsKt.toMutableMap(consentToken.getDisabledLegitimatePurposes()), (IronSourceConstants.NT_CALLBACK_LOAD_ERROR & 256) != 0 ? consentToken.enabledVendors : MapsKt__MapsKt.toMutableMap(consentToken.getEnabledVendors()), (IronSourceConstants.NT_CALLBACK_LOAD_ERROR & 512) != 0 ? consentToken.disabledVendors : MapsKt__MapsKt.toMutableMap(consentToken.getDisabledVendors()), (IronSourceConstants.NT_CALLBACK_LOAD_ERROR & 1024) != 0 ? consentToken.enabledLegitimateVendors : MapsKt__MapsKt.toMutableMap(consentToken.getEnabledLegitimateVendors()), (IronSourceConstants.NT_CALLBACK_LOAD_ERROR & 2048) != 0 ? consentToken.disabledLegitimateVendors : MapsKt__MapsKt.toMutableMap(consentToken.getDisabledLegitimateVendors()), (IronSourceConstants.NT_CALLBACK_LOAD_ERROR & 4096) != 0 ? consentToken.tcfVersion : 0);
    }

    public static final boolean a(ConsentToken consentToken, Set<InternalPurpose> set, Set<InternalPurpose> set2, Set<InternalPurpose> set3, Set<InternalPurpose> set4, Set<InternalVendor> set5, Set<InternalVendor> set6, Set<InternalVendor> set7, Set<InternalVendor> set8) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        if (Intrinsics.areEqual(new HashSet(consentToken.getEnabledPurposes().values()), set) && Intrinsics.areEqual(new HashSet(consentToken.getDisabledPurposes().values()), set2) && Intrinsics.areEqual(new HashSet(consentToken.getEnabledLegitimatePurposes().values()), set3) && Intrinsics.areEqual(new HashSet(consentToken.getDisabledLegitimatePurposes().values()), set4) && Intrinsics.areEqual(new HashSet(consentToken.getEnabledVendors().values()), set5) && Intrinsics.areEqual(new HashSet(consentToken.getDisabledVendors().values()), set6) && Intrinsics.areEqual(new HashSet(consentToken.getEnabledLegitimateVendors().values()), set7) && Intrinsics.areEqual(new HashSet(consentToken.getDisabledLegitimateVendors().values()), set8)) {
            return false;
        }
        Map<String, InternalPurpose> enabledPurposes = consentToken.getEnabledPurposes();
        enabledPurposes.clear();
        if (set != null) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10));
            for (InternalPurpose internalPurpose : set) {
                arrayList.add(TuplesKt.to(internalPurpose.getId(), internalPurpose));
            }
            MapsKt__MapsKt.putAll(enabledPurposes, arrayList);
        }
        Map<String, InternalPurpose> disabledPurposes = consentToken.getDisabledPurposes();
        disabledPurposes.clear();
        if (set2 != null) {
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set2, 10));
            for (InternalPurpose internalPurpose2 : set2) {
                arrayList2.add(TuplesKt.to(internalPurpose2.getId(), internalPurpose2));
            }
            MapsKt__MapsKt.putAll(disabledPurposes, arrayList2);
        }
        Map<String, InternalPurpose> enabledLegitimatePurposes = consentToken.getEnabledLegitimatePurposes();
        enabledLegitimatePurposes.clear();
        if (set3 != null) {
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set3, 10));
            for (InternalPurpose internalPurpose3 : set3) {
                arrayList3.add(TuplesKt.to(internalPurpose3.getId(), internalPurpose3));
            }
            MapsKt__MapsKt.putAll(enabledLegitimatePurposes, arrayList3);
        }
        Map<String, InternalPurpose> disabledLegitimatePurposes = consentToken.getDisabledLegitimatePurposes();
        disabledLegitimatePurposes.clear();
        if (set4 != null) {
            ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set4, 10));
            for (InternalPurpose internalPurpose4 : set4) {
                arrayList4.add(TuplesKt.to(internalPurpose4.getId(), internalPurpose4));
            }
            MapsKt__MapsKt.putAll(disabledLegitimatePurposes, arrayList4);
        }
        Map<String, InternalVendor> enabledVendors = consentToken.getEnabledVendors();
        enabledVendors.clear();
        if (set5 != null) {
            ArrayList arrayList5 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set5, 10));
            for (InternalVendor internalVendor : set5) {
                arrayList5.add(TuplesKt.to(internalVendor.getId(), internalVendor));
            }
            MapsKt__MapsKt.putAll(enabledVendors, arrayList5);
        }
        Map<String, InternalVendor> disabledVendors = consentToken.getDisabledVendors();
        disabledVendors.clear();
        if (set6 != null) {
            ArrayList arrayList6 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set6, 10));
            for (InternalVendor internalVendor2 : set6) {
                arrayList6.add(TuplesKt.to(internalVendor2.getId(), internalVendor2));
            }
            MapsKt__MapsKt.putAll(disabledVendors, arrayList6);
        }
        Map<String, InternalVendor> enabledLegitimateVendors = consentToken.getEnabledLegitimateVendors();
        enabledLegitimateVendors.clear();
        if (set7 != null) {
            ArrayList arrayList7 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set7, 10));
            for (InternalVendor internalVendor3 : set7) {
                arrayList7.add(TuplesKt.to(internalVendor3.getId(), internalVendor3));
            }
            MapsKt__MapsKt.putAll(enabledLegitimateVendors, arrayList7);
        }
        Map<String, InternalVendor> disabledLegitimateVendors = consentToken.getDisabledLegitimateVendors();
        disabledLegitimateVendors.clear();
        if (set8 == null) {
            return true;
        }
        ArrayList arrayList8 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set8, 10));
        for (InternalVendor internalVendor4 : set8) {
            arrayList8.add(TuplesKt.to(internalVendor4.getId(), internalVendor4));
        }
        MapsKt__MapsKt.putAll(disabledLegitimateVendors, arrayList8);
        return true;
    }

    public static final ConsentStatus b(ConsentToken consentToken, InternalVendor internalVendor) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return d(consentToken, internalVendor != null ? internalVendor.getId() : null);
    }

    public static final ConsentStatus b(ConsentToken consentToken, String str) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return consentToken.getEnabledPurposes().containsKey(str) ? ConsentStatus.ENABLE : consentToken.getDisabledPurposes().containsKey(str) ? ConsentStatus.DISABLE : ConsentStatus.UNKNOWN;
    }

    public static final Set<String> b(ConsentToken consentToken) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return CollectionsKt___CollectionsKt.toSet(consentToken.getDisabledLegitimatePurposes().keySet());
    }

    public static final ConsentStatus c(ConsentToken consentToken, String str) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return C1870q3.a(consentToken.getEnabledVendors(), str) ? ConsentStatus.ENABLE : C1870q3.a(consentToken.getDisabledVendors(), str) ? ConsentStatus.DISABLE : ConsentStatus.UNKNOWN;
    }

    public static final Set<String> c(ConsentToken consentToken) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return CollectionsKt___CollectionsKt.toSet(consentToken.getDisabledLegitimateVendors().keySet());
    }

    public static final ConsentStatus d(ConsentToken consentToken, String str) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return C1870q3.a(consentToken.getEnabledLegitimateVendors(), str) ? ConsentStatus.ENABLE : C1870q3.a(consentToken.getDisabledLegitimateVendors(), str) ? ConsentStatus.DISABLE : ConsentStatus.UNKNOWN;
    }

    public static final Set<String> d(ConsentToken consentToken) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return CollectionsKt___CollectionsKt.toSet(consentToken.getDisabledPurposes().keySet());
    }

    public static final Set<String> e(ConsentToken consentToken) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return CollectionsKt___CollectionsKt.toSet(consentToken.getDisabledVendors().keySet());
    }

    public static final Set<String> f(ConsentToken consentToken) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return CollectionsKt___CollectionsKt.toSet(consentToken.getEnabledLegitimatePurposes().keySet());
    }

    public static final Set<String> g(ConsentToken consentToken) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return CollectionsKt___CollectionsKt.toSet(consentToken.getEnabledLegitimateVendors().keySet());
    }

    public static final Set<String> h(ConsentToken consentToken) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return CollectionsKt___CollectionsKt.toSet(consentToken.getEnabledPurposes().keySet());
    }

    public static final Set<String> i(ConsentToken consentToken) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return CollectionsKt___CollectionsKt.toSet(consentToken.getEnabledVendors().keySet());
    }

    public static final boolean j(ConsentToken consentToken) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return k(consentToken) && ((consentToken.getDisabledPurposes().isEmpty() ^ true) || (consentToken.getDisabledLegitimatePurposes().isEmpty() ^ true) || (consentToken.getDisabledVendors().isEmpty() ^ true) || (consentToken.getDisabledLegitimateVendors().isEmpty() ^ true));
    }

    public static final boolean k(ConsentToken consentToken) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return (consentToken.getDisabledPurposes().isEmpty() ^ true) || (consentToken.getEnabledPurposes().isEmpty() ^ true) || (consentToken.getDisabledVendors().isEmpty() ^ true) || (consentToken.getEnabledVendors().isEmpty() ^ true) || (consentToken.getDisabledLegitimatePurposes().isEmpty() ^ true) || (consentToken.getEnabledLegitimatePurposes().isEmpty() ^ true) || (consentToken.getDisabledLegitimateVendors().isEmpty() ^ true) || (consentToken.getEnabledLegitimateVendors().isEmpty() ^ true);
    }

    public static final boolean l(ConsentToken consentToken) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return ((consentToken.getDisabledPurposes().isEmpty() ^ true) || (consentToken.getDisabledVendors().isEmpty() ^ true)) && consentToken.getEnabledPurposes().isEmpty() && consentToken.getEnabledVendors().isEmpty();
    }

    public static final boolean m(ConsentToken consentToken) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        return consentToken.getEnabledLegitimatePurposes().isEmpty() && consentToken.getDisabledLegitimatePurposes().isEmpty();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final boolean n(io.didomi.drawable.consent.model.ConsentToken r2) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.util.Map r0 = r2.getEnabledPurposes()
            java.util.Collection r0 = r0.values()
            boolean r1 = r0 instanceof java.util.Collection
            if (r1 == 0) goto L18
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L18
            goto L2f
        L18:
            java.util.Iterator r0 = r0.iterator()
        L1c:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L2f
            java.lang.Object r1 = r0.next()
            io.didomi.sdk.models.InternalPurpose r1 = (io.didomi.drawable.models.InternalPurpose) r1
            boolean r1 = io.didomi.drawable.C1860p3.a(r1)
            if (r1 == 0) goto L1c
            goto L58
        L2f:
            java.util.Map r2 = r2.getDisabledPurposes()
            java.util.Collection r2 = r2.values()
            boolean r0 = r2 instanceof java.util.Collection
            if (r0 == 0) goto L42
            boolean r0 = r2.isEmpty()
            if (r0 == 0) goto L42
            goto L5a
        L42:
            java.util.Iterator r2 = r2.iterator()
        L46:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L5a
            java.lang.Object r0 = r2.next()
            io.didomi.sdk.models.InternalPurpose r0 = (io.didomi.drawable.models.InternalPurpose) r0
            boolean r0 = io.didomi.drawable.C1860p3.a(r0)
            if (r0 == 0) goto L46
        L58:
            r2 = 0
            goto L5b
        L5a:
            r2 = 1
        L5b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.Y.n(io.didomi.sdk.consent.model.ConsentToken):boolean");
    }
}
