package io.didomi.drawable.models;

import androidx.annotation.Keep;
import com.google.gson.r.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.Didomi;
import io.didomi.drawable.H3;
import io.didomi.drawable.Vendor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b,\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0087\b\u0018\u00002\u00020\u0001:\u0001|B\u0093\u0002\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\r\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\r\u0012\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\r\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\r\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b!\u0010\"J\u0010\u0010#\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b#\u0010\"J\u0012\u0010$\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b$\u0010\"J\u0010\u0010%\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b%\u0010\"J\u0012\u0010&\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b&\u0010'J\u0016\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00020\tHÆ\u0003¢\u0006\u0004\b(\u0010)J\u0016\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00020\tHÆ\u0003¢\u0006\u0004\b*\u0010)J\u0012\u0010+\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b+\u0010\"J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00020\rHÆ\u0003¢\u0006\u0004\b,\u0010)J\u0016\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00020\rHÆ\u0003¢\u0006\u0004\b-\u0010)J\u0016\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00020\rHÆ\u0003¢\u0006\u0004\b.\u0010)J\u0016\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00020\rHÆ\u0003¢\u0006\u0004\b/\u0010)J\u0012\u00100\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0004\b0\u00101J\u0010\u00102\u001a\u00020\u0014HÆ\u0003¢\u0006\u0004\b2\u00103J\u0012\u00104\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b4\u0010\"J\u0018\u00105\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0017HÆ\u0003¢\u0006\u0004\b5\u00106J\u0012\u00107\u001a\u0004\u0018\u00010\u0019HÆ\u0003¢\u0006\u0004\b7\u00108J\u0018\u00109\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\rHÆ\u0003¢\u0006\u0004\b9\u0010)J\u0012\u0010:\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b:\u0010\"J\u0012\u0010;\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b;\u0010\"J\u009c\u0002\u0010<\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00022\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00172\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\r2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b<\u0010=J\u0010\u0010>\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b>\u0010\"J\u0010\u0010@\u001a\u00020?HÖ\u0001¢\u0006\u0004\b@\u0010AJ\u001a\u0010D\u001a\u00020\u00142\b\u0010C\u001a\u0004\u0018\u00010BHÖ\u0003¢\u0006\u0004\bD\u0010ER\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010F\u001a\u0004\bG\u0010\"\"\u0004\bH\u0010IR\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0004\u0010F\u001a\u0004\bJ\u0010\"R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0005\u0010F\u001a\u0004\bK\u0010\"R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010F\u001a\u0004\bL\u0010\"\"\u0004\bM\u0010IR$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\b\u0010N\u001a\u0004\bO\u0010'\"\u0004\bP\u0010QR(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010R\u001a\u0004\bS\u0010)\"\u0004\bT\u0010UR(\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010R\u001a\u0004\bV\u0010)\"\u0004\bW\u0010UR$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010F\u001a\u0004\bX\u0010\"\"\u0004\bY\u0010IR(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010R\u001a\u0004\bZ\u0010)\"\u0004\b[\u0010UR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\r8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010R\u001a\u0004\b\\\u0010)R \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\r8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010R\u001a\u0004\b]\u0010)R(\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010R\u001a\u0004\b^\u0010)\"\u0004\b_\u0010UR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010`\u001a\u0004\ba\u00101R\u001a\u0010\u0015\u001a\u00020\u00148\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010b\u001a\u0004\bc\u00103R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010F\u001a\u0004\bd\u0010\"R\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0018\u0010e\u001a\u0004\bf\u00106R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010g\u001a\u0004\bh\u00108R\"\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010R\u001a\u0004\bi\u0010)R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u0010F\u001a\u0004\bj\u0010\"R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010F\u001a\u0004\bk\u0010\"R(\u0010l\u001a\b\u0012\u0004\u0012\u00020\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bl\u0010R\u001a\u0004\bm\u0010)\"\u0004\bn\u0010UR$\u0010p\u001a\u0004\u0018\u00010o8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bp\u0010q\u001a\u0004\br\u0010s\"\u0004\bt\u0010uR\"\u0010v\u001a\u00020\u00148F@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bv\u0010b\u001a\u0004\bv\u00103\"\u0004\bw\u0010xR\u0011\u0010y\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\by\u00103R\u0011\u0010{\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\bz\u00103¨\u0006}"}, d2 = {"Lio/didomi/sdk/models/InternalVendor;", "Lio/didomi/sdk/H3;", "", "id", "name", "privacyPolicyUrl", "namespace", "Lio/didomi/sdk/Vendor$Namespaces;", "namespaces", "", "purposeIds", "legIntPurposeIds", "iabId", "", "flexiblePurposeIds", "specialPurposeIds", "featureIds", "specialFeatureIds", "", "cookieMaxAgeSeconds", "", "usesNonCookieAccess", "deviceStorageDisclosureUrl", "", "dataDeclaration", "Lio/didomi/sdk/models/InternalVendor$a;", "dataRetention", "Lio/didomi/sdk/Vendor$Url;", "urls", "didomiId", "deletedDate", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "()Lio/didomi/sdk/Vendor$Namespaces;", "component6", "()Ljava/util/List;", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "()Ljava/lang/Long;", "component14", "()Z", "component15", "component16", "()Ljava/util/Set;", "component17", "()Lio/didomi/sdk/models/InternalVendor$a;", "component18", "component19", "component20", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;", "toString", "", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getId", "setId", "(Ljava/lang/String;)V", "getName", "getPrivacyPolicyUrl", "getNamespace", "setNamespace", "Lio/didomi/sdk/Vendor$Namespaces;", "getNamespaces", "setNamespaces", "(Lio/didomi/sdk/Vendor$Namespaces;)V", "Ljava/util/List;", "getPurposeIds", "setPurposeIds", "(Ljava/util/List;)V", "getLegIntPurposeIds", "setLegIntPurposeIds", "getIabId", "setIabId", "getFlexiblePurposeIds", "setFlexiblePurposeIds", "getSpecialPurposeIds", "getFeatureIds", "getSpecialFeatureIds", "setSpecialFeatureIds", "Ljava/lang/Long;", "getCookieMaxAgeSeconds", "Z", "getUsesNonCookieAccess", "getDeviceStorageDisclosureUrl", "Ljava/util/Set;", "getDataDeclaration", "Lio/didomi/sdk/models/InternalVendor$a;", "getDataRetention", "getUrls", "getDidomiId", "getDeletedDate", "essentialPurposeIds", "getEssentialPurposeIds", "setEssentialPurposeIds", "Lio/didomi/sdk/models/DeviceStorageDisclosures;", "deviceStorageDisclosures", "Lio/didomi/sdk/models/DeviceStorageDisclosures;", "getDeviceStorageDisclosures", "()Lio/didomi/sdk/models/DeviceStorageDisclosures;", "setDeviceStorageDisclosures", "(Lio/didomi/sdk/models/DeviceStorageDisclosures;)V", "isDeviceStorageDisclosureComplete", "setDeviceStorageDisclosureComplete", "(Z)V", "isIabVendor", "getHasLegIntClaim", "hasLegIntClaim", "a", "android_release"}, mv = {1, 8, 0})
public final /* data */ class InternalVendor implements H3 {

    @c("cookieMaxAgeSeconds")
    private final Long cookieMaxAgeSeconds;

    @c("dataDeclaration")
    private final Set<String> dataDeclaration;

    @c("dataRetention")
    private final DataRetention dataRetention;

    @c("deletedDate")
    private final String deletedDate;

    @c("deviceStorageDisclosureUrl")
    private final String deviceStorageDisclosureUrl;
    private transient DeviceStorageDisclosures deviceStorageDisclosures;

    @c("didomiId")
    private final String didomiId;
    private transient List<String> essentialPurposeIds;

    @c(alternate = {"features"}, value = "featureIds")
    private final List<String> featureIds;

    @c(alternate = {"flexiblePurposes"}, value = "flexiblePurposeIds")
    private List<String> flexiblePurposeIds;

    @c("iabId")
    private String iabId;

    @c("id")
    private String id;
    private transient boolean isDeviceStorageDisclosureComplete;

    @c(alternate = {"legIntPurposes"}, value = "legIntPurposeIds")
    private List<String> legIntPurposeIds;

    @c("name")
    private final String name;

    @c("namespace")
    private String namespace;

    @c("namespaces")
    private Vendor.Namespaces namespaces;

    @c("policyUrl")
    private final String privacyPolicyUrl;

    @c(alternate = {Didomi.VIEW_PURPOSES}, value = "purposeIds")
    private List<String> purposeIds;

    @c(alternate = {"specialFeatures"}, value = "specialFeatureIds")
    private List<String> specialFeatureIds;

    @c(alternate = {"specialPurposes"}, value = "specialPurposeIds")
    private final List<String> specialPurposeIds;

    @c("urls")
    private final List<Vendor.Url> urls;

    @c("usesNonCookieAccess")
    private final boolean usesNonCookieAccess;

    /* JADX INFO: renamed from: io.didomi.sdk.models.InternalVendor$a, reason: from toString */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R(\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0012\u0010\u0018R(\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0017\u001a\u0004\b\u0016\u0010\u0018¨\u0006\u0019"}, d2 = {"Lio/didomi/sdk/models/InternalVendor$a;", "", "", "stdRetention", "", "", Didomi.VIEW_PURPOSES, "specialPurposes", "<init>", "(Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/Integer;", "c", "()Ljava/lang/Integer;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/Map;", "()Ljava/util/Map;", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class DataRetention {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        @c("stdRetention")
        private final Integer stdRetention;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        @c(Didomi.VIEW_PURPOSES)
        private final Map<String, Integer> purposes;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        @c("specialPurposes")
        private final Map<String, Integer> specialPurposes;

        public DataRetention() {
            this(null, null, null, 7, null);
        }

        public DataRetention(Integer num, Map<String, Integer> map, Map<String, Integer> map2) {
            this.stdRetention = num;
            this.purposes = map;
            this.specialPurposes = map2;
        }

        public /* synthetic */ DataRetention(Integer num, Map map, Map map2, int i, n nVar) {
            this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : map, (i & 4) != 0 ? null : map2);
        }

        public final Map<String, Integer> a() {
            return this.purposes;
        }

        public final Map<String, Integer> b() {
            return this.specialPurposes;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final Integer getStdRetention() {
            return this.stdRetention;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DataRetention)) {
                return false;
            }
            DataRetention dataRetention = (DataRetention) other;
            return Intrinsics.areEqual(this.stdRetention, dataRetention.stdRetention) && Intrinsics.areEqual(this.purposes, dataRetention.purposes) && Intrinsics.areEqual(this.specialPurposes, dataRetention.specialPurposes);
        }

        public int hashCode() {
            Integer num = this.stdRetention;
            int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
            Map<String, Integer> map = this.purposes;
            int iHashCode2 = (iHashCode + (map == null ? 0 : map.hashCode())) * 31;
            Map<String, Integer> map2 = this.specialPurposes;
            return iHashCode2 + (map2 != null ? map2.hashCode() : 0);
        }

        public String toString() {
            return "DataRetention(stdRetention=" + this.stdRetention + ", purposes=" + this.purposes + ", specialPurposes=" + this.specialPurposes + ')';
        }
    }

    public InternalVendor() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, null, null, 1048575, null);
    }

    public InternalVendor(String id, String name, String str, String namespace, Vendor.Namespaces namespaces, List<String> purposeIds, List<String> legIntPurposeIds, String str2, List<String> flexiblePurposeIds, List<String> specialPurposeIds, List<String> featureIds, List<String> specialFeatureIds, Long l, boolean z, String str3, Set<String> set, DataRetention dataRetention, List<Vendor.Url> list, String str4, String str5) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(namespace, "namespace");
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        Intrinsics.checkNotNullParameter(legIntPurposeIds, "legIntPurposeIds");
        Intrinsics.checkNotNullParameter(flexiblePurposeIds, "flexiblePurposeIds");
        Intrinsics.checkNotNullParameter(specialPurposeIds, "specialPurposeIds");
        Intrinsics.checkNotNullParameter(featureIds, "featureIds");
        Intrinsics.checkNotNullParameter(specialFeatureIds, "specialFeatureIds");
        this.id = id;
        this.name = name;
        this.privacyPolicyUrl = str;
        this.namespace = namespace;
        this.namespaces = namespaces;
        this.purposeIds = purposeIds;
        this.legIntPurposeIds = legIntPurposeIds;
        this.iabId = str2;
        this.flexiblePurposeIds = flexiblePurposeIds;
        this.specialPurposeIds = specialPurposeIds;
        this.featureIds = featureIds;
        this.specialFeatureIds = specialFeatureIds;
        this.cookieMaxAgeSeconds = l;
        this.usesNonCookieAccess = z;
        this.deviceStorageDisclosureUrl = str3;
        this.dataDeclaration = set;
        this.dataRetention = dataRetention;
        this.urls = list;
        this.didomiId = str4;
        this.deletedDate = str5;
        this.essentialPurposeIds = new ArrayList();
    }

    public /* synthetic */ InternalVendor(String str, String str2, String str3, String str4, Vendor.Namespaces namespaces, List list, List list2, String str5, List list3, List list4, List list5, List list6, Long l, boolean z, String str6, Set set, DataRetention dataRetention, List list7, String str7, String str8, int i, n nVar) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? null : str3, (i & 8) == 0 ? str4 : "", (i & 16) != 0 ? null : namespaces, (i & 32) != 0 ? new ArrayList() : list, (i & 64) != 0 ? new ArrayList() : list2, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list3, (i & 512) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list4, (i & 1024) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list5, (i & 2048) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list6, (i & 4096) != 0 ? null : l, (i & 8192) != 0 ? false : z, (i & 16384) != 0 ? null : str6, (i & 32768) != 0 ? null : set, (i & 65536) != 0 ? null : dataRetention, (i & 131072) != 0 ? null : list7, (i & 262144) != 0 ? null : str7, (i & 524288) != 0 ? null : str8);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    public final List<String> component10() {
        return this.specialPurposeIds;
    }

    public final List<String> component11() {
        return this.featureIds;
    }

    public final List<String> component12() {
        return this.specialFeatureIds;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Long getCookieMaxAgeSeconds() {
        return this.cookieMaxAgeSeconds;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final boolean getUsesNonCookieAccess() {
        return this.usesNonCookieAccess;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getDeviceStorageDisclosureUrl() {
        return this.deviceStorageDisclosureUrl;
    }

    public final Set<String> component16() {
        return this.dataDeclaration;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final DataRetention getDataRetention() {
        return this.dataRetention;
    }

    public final List<Vendor.Url> component18() {
        return this.urls;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getDidomiId() {
        return this.didomiId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getDeletedDate() {
        return this.deletedDate;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPrivacyPolicyUrl() {
        return this.privacyPolicyUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getNamespace() {
        return this.namespace;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Vendor.Namespaces getNamespaces() {
        return this.namespaces;
    }

    public final List<String> component6() {
        return this.purposeIds;
    }

    public final List<String> component7() {
        return this.legIntPurposeIds;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getIabId() {
        return this.iabId;
    }

    public final List<String> component9() {
        return this.flexiblePurposeIds;
    }

    public final InternalVendor copy(String id, String name, String privacyPolicyUrl, String namespace, Vendor.Namespaces namespaces, List<String> purposeIds, List<String> legIntPurposeIds, String iabId, List<String> flexiblePurposeIds, List<String> specialPurposeIds, List<String> featureIds, List<String> specialFeatureIds, Long cookieMaxAgeSeconds, boolean usesNonCookieAccess, String deviceStorageDisclosureUrl, Set<String> dataDeclaration, DataRetention dataRetention, List<Vendor.Url> urls, String didomiId, String deletedDate) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(namespace, "namespace");
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        Intrinsics.checkNotNullParameter(legIntPurposeIds, "legIntPurposeIds");
        Intrinsics.checkNotNullParameter(flexiblePurposeIds, "flexiblePurposeIds");
        Intrinsics.checkNotNullParameter(specialPurposeIds, "specialPurposeIds");
        Intrinsics.checkNotNullParameter(featureIds, "featureIds");
        Intrinsics.checkNotNullParameter(specialFeatureIds, "specialFeatureIds");
        return new InternalVendor(id, name, privacyPolicyUrl, namespace, namespaces, purposeIds, legIntPurposeIds, iabId, flexiblePurposeIds, specialPurposeIds, featureIds, specialFeatureIds, cookieMaxAgeSeconds, usesNonCookieAccess, deviceStorageDisclosureUrl, dataDeclaration, dataRetention, urls, didomiId, deletedDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InternalVendor)) {
            return false;
        }
        InternalVendor internalVendor = (InternalVendor) other;
        return Intrinsics.areEqual(this.id, internalVendor.id) && Intrinsics.areEqual(this.name, internalVendor.name) && Intrinsics.areEqual(this.privacyPolicyUrl, internalVendor.privacyPolicyUrl) && Intrinsics.areEqual(this.namespace, internalVendor.namespace) && Intrinsics.areEqual(this.namespaces, internalVendor.namespaces) && Intrinsics.areEqual(this.purposeIds, internalVendor.purposeIds) && Intrinsics.areEqual(this.legIntPurposeIds, internalVendor.legIntPurposeIds) && Intrinsics.areEqual(this.iabId, internalVendor.iabId) && Intrinsics.areEqual(this.flexiblePurposeIds, internalVendor.flexiblePurposeIds) && Intrinsics.areEqual(this.specialPurposeIds, internalVendor.specialPurposeIds) && Intrinsics.areEqual(this.featureIds, internalVendor.featureIds) && Intrinsics.areEqual(this.specialFeatureIds, internalVendor.specialFeatureIds) && Intrinsics.areEqual(this.cookieMaxAgeSeconds, internalVendor.cookieMaxAgeSeconds) && this.usesNonCookieAccess == internalVendor.usesNonCookieAccess && Intrinsics.areEqual(this.deviceStorageDisclosureUrl, internalVendor.deviceStorageDisclosureUrl) && Intrinsics.areEqual(this.dataDeclaration, internalVendor.dataDeclaration) && Intrinsics.areEqual(this.dataRetention, internalVendor.dataRetention) && Intrinsics.areEqual(this.urls, internalVendor.urls) && Intrinsics.areEqual(this.didomiId, internalVendor.didomiId) && Intrinsics.areEqual(this.deletedDate, internalVendor.deletedDate);
    }

    public final Long getCookieMaxAgeSeconds() {
        return this.cookieMaxAgeSeconds;
    }

    public final Set<String> getDataDeclaration() {
        return this.dataDeclaration;
    }

    public final DataRetention getDataRetention() {
        return this.dataRetention;
    }

    public final String getDeletedDate() {
        return this.deletedDate;
    }

    public final String getDeviceStorageDisclosureUrl() {
        return this.deviceStorageDisclosureUrl;
    }

    public final DeviceStorageDisclosures getDeviceStorageDisclosures() {
        return this.deviceStorageDisclosures;
    }

    public final String getDidomiId() {
        return this.didomiId;
    }

    public final List<String> getEssentialPurposeIds() {
        return this.essentialPurposeIds;
    }

    public final List<String> getFeatureIds() {
        return this.featureIds;
    }

    public final List<String> getFlexiblePurposeIds() {
        return this.flexiblePurposeIds;
    }

    public final boolean getHasLegIntClaim() {
        List<Vendor.Url> list = this.urls;
        if (list == null || list.isEmpty()) {
            return false;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            String legIntClaim = ((Vendor.Url) it.next()).getLegIntClaim();
            if (!(legIntClaim == null || StringsKt__StringsJVMKt.isBlank(legIntClaim))) {
                return true;
            }
        }
        return false;
    }

    public final String getIabId() {
        return this.iabId;
    }

    public final String getId() {
        return this.id;
    }

    public final List<String> getLegIntPurposeIds() {
        return this.legIntPurposeIds;
    }

    public final String getName() {
        return this.name;
    }

    public final String getNamespace() {
        return this.namespace;
    }

    @Override // io.didomi.drawable.H3
    public Vendor.Namespaces getNamespaces() {
        return this.namespaces;
    }

    public final String getPrivacyPolicyUrl() {
        return this.privacyPolicyUrl;
    }

    public final List<String> getPurposeIds() {
        return this.purposeIds;
    }

    public final List<String> getSpecialFeatureIds() {
        return this.specialFeatureIds;
    }

    public final List<String> getSpecialPurposeIds() {
        return this.specialPurposeIds;
    }

    public final List<Vendor.Url> getUrls() {
        return this.urls;
    }

    public final boolean getUsesNonCookieAccess() {
        return this.usesNonCookieAccess;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v29, types: [int] */
    /* JADX WARN: Type inference failed for: r1v51 */
    /* JADX WARN: Type inference failed for: r1v56 */
    public int hashCode() {
        int iHashCode = ((this.id.hashCode() * 31) + this.name.hashCode()) * 31;
        String str = this.privacyPolicyUrl;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.namespace.hashCode()) * 31;
        Vendor.Namespaces namespaces = this.namespaces;
        int iHashCode3 = (((((iHashCode2 + (namespaces == null ? 0 : namespaces.hashCode())) * 31) + this.purposeIds.hashCode()) * 31) + this.legIntPurposeIds.hashCode()) * 31;
        String str2 = this.iabId;
        int iHashCode4 = (((((((((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.flexiblePurposeIds.hashCode()) * 31) + this.specialPurposeIds.hashCode()) * 31) + this.featureIds.hashCode()) * 31) + this.specialFeatureIds.hashCode()) * 31;
        Long l = this.cookieMaxAgeSeconds;
        int iHashCode5 = (iHashCode4 + (l == null ? 0 : l.hashCode())) * 31;
        boolean z = this.usesNonCookieAccess;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode5 + r1) * 31;
        String str3 = this.deviceStorageDisclosureUrl;
        int iHashCode6 = (i + (str3 == null ? 0 : str3.hashCode())) * 31;
        Set<String> set = this.dataDeclaration;
        int iHashCode7 = (iHashCode6 + (set == null ? 0 : set.hashCode())) * 31;
        DataRetention dataRetention = this.dataRetention;
        int iHashCode8 = (iHashCode7 + (dataRetention == null ? 0 : dataRetention.hashCode())) * 31;
        List<Vendor.Url> list = this.urls;
        int iHashCode9 = (iHashCode8 + (list == null ? 0 : list.hashCode())) * 31;
        String str4 = this.didomiId;
        int iHashCode10 = (iHashCode9 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.deletedDate;
        return iHashCode10 + (str5 != null ? str5.hashCode() : 0);
    }

    public final boolean isDeviceStorageDisclosureComplete() {
        return this.deviceStorageDisclosureUrl == null || this.isDeviceStorageDisclosureComplete;
    }

    public final boolean isIabVendor() {
        if (!Intrinsics.areEqual(this.namespace, "iab")) {
            Vendor.Namespaces namespaces = getNamespaces();
            if ((namespaces != null ? namespaces.getIab2() : null) == null) {
                return false;
            }
        }
        return true;
    }

    public final void setDeviceStorageDisclosureComplete(boolean z) {
        this.isDeviceStorageDisclosureComplete = z;
    }

    public final void setDeviceStorageDisclosures(DeviceStorageDisclosures deviceStorageDisclosures) {
        this.deviceStorageDisclosures = deviceStorageDisclosures;
    }

    public final void setEssentialPurposeIds(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.essentialPurposeIds = list;
    }

    public final void setFlexiblePurposeIds(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.flexiblePurposeIds = list;
    }

    public final void setIabId(String str) {
        this.iabId = str;
    }

    public final void setId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setLegIntPurposeIds(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.legIntPurposeIds = list;
    }

    public final void setNamespace(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.namespace = str;
    }

    public void setNamespaces(Vendor.Namespaces namespaces) {
        this.namespaces = namespaces;
    }

    public final void setPurposeIds(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.purposeIds = list;
    }

    public final void setSpecialFeatureIds(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.specialFeatureIds = list;
    }

    public String toString() {
        return "InternalVendor(id=" + this.id + ", name=" + this.name + ", privacyPolicyUrl=" + this.privacyPolicyUrl + ", namespace=" + this.namespace + ", namespaces=" + this.namespaces + ", purposeIds=" + this.purposeIds + ", legIntPurposeIds=" + this.legIntPurposeIds + ", iabId=" + this.iabId + ", flexiblePurposeIds=" + this.flexiblePurposeIds + ", specialPurposeIds=" + this.specialPurposeIds + ", featureIds=" + this.featureIds + ", specialFeatureIds=" + this.specialFeatureIds + ", cookieMaxAgeSeconds=" + this.cookieMaxAgeSeconds + ", usesNonCookieAccess=" + this.usesNonCookieAccess + ", deviceStorageDisclosureUrl=" + this.deviceStorageDisclosureUrl + ", dataDeclaration=" + this.dataDeclaration + ", dataRetention=" + this.dataRetention + ", urls=" + this.urls + ", didomiId=" + this.didomiId + ", deletedDate=" + this.deletedDate + ')';
    }
}
