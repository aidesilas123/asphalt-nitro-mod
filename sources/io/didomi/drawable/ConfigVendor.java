package io.didomi.drawable;

import com.facebook.share.internal.ShareConstants;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.gson.r.c;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.C, reason: from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b'\b\u0086\b\u0018\u00002\u00020\u0001:\u0003\".0B¹\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\f\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n¢\u0006\u0004\b \u0010!JÂ\u0002\u0010\"\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f2\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00172\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\f2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\nHÆ\u0001¢\u0006\u0004\b\"\u0010#J\u0010\u0010$\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b$\u0010%J\u0010\u0010'\u001a\u00020&HÖ\u0001¢\u0006\u0004\b'\u0010(J\u001a\u0010*\u001a\u00020\u00142\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b*\u0010+R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010,\u001a\u0004\b-\u0010%R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b.\u0010,\u001a\u0004\b/\u0010%R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b0\u0010,\u001a\u0004\b1\u0010%R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b2\u0010,\u001a\u0004\b3\u0010%R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b4\u0010,\u001a\u0004\b5\u0010%R\u001c\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b>\u0010;\u001a\u0004\b?\u0010=R\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b?\u0010;\u001a\u0004\b@\u0010=R\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b/\u0010;\u001a\u0004\bA\u0010=R\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b-\u0010;\u001a\u0004\b>\u0010=R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\bA\u0010;\u001a\u0004\bB\u0010=R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\f\n\u0004\b1\u0010C\u001a\u0004\b\"\u0010DR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\f\n\u0004\b5\u0010E\u001a\u0004\bF\u0010GR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b8\u0010,\u001a\u0004\b4\u0010%R\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\f\n\u0004\b3\u0010H\u001a\u0004\b.\u0010IR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\f\n\u0004\b<\u0010J\u001a\u0004\b0\u0010KR\"\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\bB\u0010;\u001a\u0004\bL\u0010=R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b@\u0010,\u001a\u0004\b6\u0010%R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\bL\u0010,\u001a\u0004\b2\u0010%R\u001f\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\bF\u0010;\u001a\u0004\b:\u0010=¨\u0006M"}, d2 = {"Lio/didomi/sdk/C;", "", "", "id", "iabId", "name", "privacyPolicyUrl", "namespace", "Lio/didomi/sdk/C$b;", "namespaces", "", "purposeIds", "", "flexiblePurposeIds", "specialPurposeIds", "legIntPurposeIds", "featureIds", "specialFeatureIds", "", "cookieMaxAgeSeconds", "", "usesNonCookieAccess", "deviceStorageDisclosureUrl", "", "dataDeclaration", "Lio/didomi/sdk/C$a;", "dataRetention", "Lio/didomi/sdk/C$c;", "urls", "didomiId", "deletedDate", "essentialPurposeIds", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/C$b;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Set;Lio/didomi/sdk/C$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/C$b;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Set;Lio/didomi/sdk/C$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/didomi/sdk/C;", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", CampaignEx.JSON_KEY_AD_K, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "j", "c", InneractiveMediationDefs.GENDER_MALE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, TtmlNode.TAG_P, "e", b4.p, InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/C$b;", "o", "()Lio/didomi/sdk/C$b;", "g", "Ljava/util/List;", CampaignEx.JSON_KEY_AD_Q, "()Ljava/util/List;", "h", "i", "s", "l", "r", "Ljava/lang/Long;", "()Ljava/lang/Long;", "Ljava/lang/Boolean;", "u", "()Ljava/lang/Boolean;", "Ljava/util/Set;", "()Ljava/util/Set;", "Lio/didomi/sdk/C$a;", "()Lio/didomi/sdk/C$a;", "t", "android_release"}, mv = {1, 8, 0})
public final /* data */ class ConfigVendor {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    @c("id")
    private final String id;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    @c("iabId")
    private final String iabId;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    @c("name")
    private final String name;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    @c("policyUrl")
    private final String privacyPolicyUrl;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    @c("namespace")
    private final String namespace;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    @c("namespaces")
    private final Namespaces namespaces;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
    @c(alternate = {"purposeIds"}, value = Didomi.VIEW_PURPOSES)
    private final List<String> purposeIds;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata and from toString */
    @c("flexiblePurposes")
    private final List<String> flexiblePurposeIds;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata and from toString */
    @c("specialPurposes")
    private final List<String> specialPurposeIds;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata and from toString */
    @c(alternate = {"legIntPurposeIds"}, value = "legIntPurposes")
    private final List<String> legIntPurposeIds;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata and from toString */
    @c("features")
    private final List<String> featureIds;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata and from toString */
    @c("specialFeatures")
    private final List<String> specialFeatureIds;

    /* JADX INFO: renamed from: m, reason: from kotlin metadata and from toString */
    @c("cookieMaxAgeSeconds")
    private final Long cookieMaxAgeSeconds;

    /* JADX INFO: renamed from: n, reason: from kotlin metadata and from toString */
    @c("usesNonCookieAccess")
    private final Boolean usesNonCookieAccess;

    /* JADX INFO: renamed from: o, reason: from kotlin metadata and from toString */
    @c("deviceStorageDisclosureUrl")
    private final String deviceStorageDisclosureUrl;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata and from toString */
    @c("dataDeclaration")
    private final Set<String> dataDeclaration;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata and from toString */
    @c("dataRetention")
    private final DataRetention dataRetention;

    /* JADX INFO: renamed from: r, reason: from kotlin metadata and from toString */
    @c("urls")
    private final List<Url> urls;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata and from toString */
    @c("didomiId")
    private final String didomiId;

    /* JADX INFO: renamed from: t, reason: from kotlin metadata and from toString */
    @c("deletedDate")
    private final String deletedDate;

    /* JADX INFO: renamed from: u, reason: from kotlin metadata and from toString */
    private final transient List<String> essentialPurposeIds;

    /* JADX INFO: renamed from: io.didomi.sdk.C$a, reason: from toString */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R(\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0012\u0010\u0018R(\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0017\u001a\u0004\b\u0016\u0010\u0018¨\u0006\u0019"}, d2 = {"Lio/didomi/sdk/C$a;", "", "", "stdRetention", "", "", Didomi.VIEW_PURPOSES, "specialPurposes", "<init>", "(Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/Integer;", "c", "()Ljava/lang/Integer;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/Map;", "()Ljava/util/Map;", "android_release"}, mv = {1, 8, 0})
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

    /* JADX INFO: renamed from: io.didomi.sdk.C$b, reason: from toString */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0011\u0010\t\"\u0004\b\u0013\u0010\u0014R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lio/didomi/sdk/C$b;", "Lio/didomi/sdk/N3;", "", "iab2", "", "num", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "setIab2", "(Ljava/lang/String;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/Integer;", "getNum", "()Ljava/lang/Integer;", "setNum", "(Ljava/lang/Integer;)V", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Namespaces implements N3 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        @c("iab2")
        private String iab2;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        @c("num")
        private Integer num;

        /* JADX WARN: Multi-variable type inference failed */
        public Namespaces() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public Namespaces(String str, Integer num) {
            this.iab2 = str;
            this.num = num;
        }

        public /* synthetic */ Namespaces(String str, Integer num, int i, n nVar) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : num);
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getIab2() {
            return this.iab2;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Namespaces)) {
                return false;
            }
            Namespaces namespaces = (Namespaces) other;
            return Intrinsics.areEqual(this.iab2, namespaces.iab2) && Intrinsics.areEqual(this.num, namespaces.num);
        }

        @Override // io.didomi.drawable.N3
        public Integer getNum() {
            return this.num;
        }

        public int hashCode() {
            String str = this.iab2;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            Integer num = this.num;
            return iHashCode + (num != null ? num.hashCode() : 0);
        }

        public String toString() {
            return "Namespaces(iab2=" + this.iab2 + ", num=" + this.num + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.C$c, reason: from toString */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0011\u0010\tR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0012\u001a\u0004\b\u0014\u0010\tR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0012\u001a\u0004\b\u0013\u0010\t¨\u0006\u0015"}, d2 = {"Lio/didomi/sdk/C$c;", "", "", "langId", ShareConstants.WEB_DIALOG_PARAM_PRIVACY, "legIntClaim", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Url {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        @c("langId")
        private final String langId;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        @c(ShareConstants.WEB_DIALOG_PARAM_PRIVACY)
        private final String privacy;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        @c("legIntClaim")
        private final String legIntClaim;

        public Url() {
            this(null, null, null, 7, null);
        }

        public Url(String str, String str2, String str3) {
            this.langId = str;
            this.privacy = str2;
            this.legIntClaim = str3;
        }

        public /* synthetic */ Url(String str, String str2, String str3, int i, n nVar) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getLangId() {
            return this.langId;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getLegIntClaim() {
            return this.legIntClaim;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getPrivacy() {
            return this.privacy;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Url)) {
                return false;
            }
            Url url = (Url) other;
            return Intrinsics.areEqual(this.langId, url.langId) && Intrinsics.areEqual(this.privacy, url.privacy) && Intrinsics.areEqual(this.legIntClaim, url.legIntClaim);
        }

        public int hashCode() {
            String str = this.langId;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.privacy;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.legIntClaim;
            return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
        }

        public String toString() {
            return "Url(langId=" + this.langId + ", privacy=" + this.privacy + ", legIntClaim=" + this.legIntClaim + ')';
        }
    }

    public ConfigVendor() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2097151, null);
    }

    public ConfigVendor(String str, String str2, String str3, String str4, String str5, Namespaces namespaces, List<String> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5, List<String> list6, Long l, Boolean bool, String str6, Set<String> set, DataRetention dataRetention, List<Url> list7, String str7, String str8, List<String> list8) {
        this.id = str;
        this.iabId = str2;
        this.name = str3;
        this.privacyPolicyUrl = str4;
        this.namespace = str5;
        this.namespaces = namespaces;
        this.purposeIds = list;
        this.flexiblePurposeIds = list2;
        this.specialPurposeIds = list3;
        this.legIntPurposeIds = list4;
        this.featureIds = list5;
        this.specialFeatureIds = list6;
        this.cookieMaxAgeSeconds = l;
        this.usesNonCookieAccess = bool;
        this.deviceStorageDisclosureUrl = str6;
        this.dataDeclaration = set;
        this.dataRetention = dataRetention;
        this.urls = list7;
        this.didomiId = str7;
        this.deletedDate = str8;
        this.essentialPurposeIds = list8;
    }

    public /* synthetic */ ConfigVendor(String str, String str2, String str3, String str4, String str5, Namespaces namespaces, List list, List list2, List list3, List list4, List list5, List list6, Long l, Boolean bool, String str6, Set set, DataRetention dataRetention, List list7, String str7, String str8, List list8, int i, n nVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : namespaces, (i & 64) != 0 ? null : list, (i & 128) != 0 ? null : list2, (i & 256) != 0 ? null : list3, (i & 512) != 0 ? null : list4, (i & 1024) != 0 ? null : list5, (i & 2048) != 0 ? null : list6, (i & 4096) != 0 ? null : l, (i & 8192) != 0 ? null : bool, (i & 16384) != 0 ? null : str6, (i & 32768) != 0 ? null : set, (i & 65536) != 0 ? null : dataRetention, (i & 131072) != 0 ? null : list7, (i & 262144) != 0 ? null : str7, (i & 524288) != 0 ? null : str8, (i & 1048576) != 0 ? null : list8);
    }

    public final ConfigVendor a(String id, String iabId, String name, String privacyPolicyUrl, String namespace, Namespaces namespaces, List<String> purposeIds, List<String> flexiblePurposeIds, List<String> specialPurposeIds, List<String> legIntPurposeIds, List<String> featureIds, List<String> specialFeatureIds, Long cookieMaxAgeSeconds, Boolean usesNonCookieAccess, String deviceStorageDisclosureUrl, Set<String> dataDeclaration, DataRetention dataRetention, List<Url> urls, String didomiId, String deletedDate, List<String> essentialPurposeIds) {
        return new ConfigVendor(id, iabId, name, privacyPolicyUrl, namespace, namespaces, purposeIds, flexiblePurposeIds, specialPurposeIds, legIntPurposeIds, featureIds, specialFeatureIds, cookieMaxAgeSeconds, usesNonCookieAccess, deviceStorageDisclosureUrl, dataDeclaration, dataRetention, urls, didomiId, deletedDate, essentialPurposeIds);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final Long getCookieMaxAgeSeconds() {
        return this.cookieMaxAgeSeconds;
    }

    public final Set<String> b() {
        return this.dataDeclaration;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final DataRetention getDataRetention() {
        return this.dataRetention;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getDeletedDate() {
        return this.deletedDate;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getDeviceStorageDisclosureUrl() {
        return this.deviceStorageDisclosureUrl;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfigVendor)) {
            return false;
        }
        ConfigVendor configVendor = (ConfigVendor) other;
        return Intrinsics.areEqual(this.id, configVendor.id) && Intrinsics.areEqual(this.iabId, configVendor.iabId) && Intrinsics.areEqual(this.name, configVendor.name) && Intrinsics.areEqual(this.privacyPolicyUrl, configVendor.privacyPolicyUrl) && Intrinsics.areEqual(this.namespace, configVendor.namespace) && Intrinsics.areEqual(this.namespaces, configVendor.namespaces) && Intrinsics.areEqual(this.purposeIds, configVendor.purposeIds) && Intrinsics.areEqual(this.flexiblePurposeIds, configVendor.flexiblePurposeIds) && Intrinsics.areEqual(this.specialPurposeIds, configVendor.specialPurposeIds) && Intrinsics.areEqual(this.legIntPurposeIds, configVendor.legIntPurposeIds) && Intrinsics.areEqual(this.featureIds, configVendor.featureIds) && Intrinsics.areEqual(this.specialFeatureIds, configVendor.specialFeatureIds) && Intrinsics.areEqual(this.cookieMaxAgeSeconds, configVendor.cookieMaxAgeSeconds) && Intrinsics.areEqual(this.usesNonCookieAccess, configVendor.usesNonCookieAccess) && Intrinsics.areEqual(this.deviceStorageDisclosureUrl, configVendor.deviceStorageDisclosureUrl) && Intrinsics.areEqual(this.dataDeclaration, configVendor.dataDeclaration) && Intrinsics.areEqual(this.dataRetention, configVendor.dataRetention) && Intrinsics.areEqual(this.urls, configVendor.urls) && Intrinsics.areEqual(this.didomiId, configVendor.didomiId) && Intrinsics.areEqual(this.deletedDate, configVendor.deletedDate) && Intrinsics.areEqual(this.essentialPurposeIds, configVendor.essentialPurposeIds);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getDidomiId() {
        return this.didomiId;
    }

    public final List<String> g() {
        return this.essentialPurposeIds;
    }

    public final List<String> h() {
        return this.featureIds;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.iabId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.name;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.privacyPolicyUrl;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.namespace;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Namespaces namespaces = this.namespaces;
        int iHashCode6 = (iHashCode5 + (namespaces == null ? 0 : namespaces.hashCode())) * 31;
        List<String> list = this.purposeIds;
        int iHashCode7 = (iHashCode6 + (list == null ? 0 : list.hashCode())) * 31;
        List<String> list2 = this.flexiblePurposeIds;
        int iHashCode8 = (iHashCode7 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<String> list3 = this.specialPurposeIds;
        int iHashCode9 = (iHashCode8 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<String> list4 = this.legIntPurposeIds;
        int iHashCode10 = (iHashCode9 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<String> list5 = this.featureIds;
        int iHashCode11 = (iHashCode10 + (list5 == null ? 0 : list5.hashCode())) * 31;
        List<String> list6 = this.specialFeatureIds;
        int iHashCode12 = (iHashCode11 + (list6 == null ? 0 : list6.hashCode())) * 31;
        Long l = this.cookieMaxAgeSeconds;
        int iHashCode13 = (iHashCode12 + (l == null ? 0 : l.hashCode())) * 31;
        Boolean bool = this.usesNonCookieAccess;
        int iHashCode14 = (iHashCode13 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str6 = this.deviceStorageDisclosureUrl;
        int iHashCode15 = (iHashCode14 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Set<String> set = this.dataDeclaration;
        int iHashCode16 = (iHashCode15 + (set == null ? 0 : set.hashCode())) * 31;
        DataRetention dataRetention = this.dataRetention;
        int iHashCode17 = (iHashCode16 + (dataRetention == null ? 0 : dataRetention.hashCode())) * 31;
        List<Url> list7 = this.urls;
        int iHashCode18 = (iHashCode17 + (list7 == null ? 0 : list7.hashCode())) * 31;
        String str7 = this.didomiId;
        int iHashCode19 = (iHashCode18 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.deletedDate;
        int iHashCode20 = (iHashCode19 + (str8 == null ? 0 : str8.hashCode())) * 31;
        List<String> list8 = this.essentialPurposeIds;
        return iHashCode20 + (list8 != null ? list8.hashCode() : 0);
    }

    public final List<String> i() {
        return this.flexiblePurposeIds;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final String getIabId() {
        return this.iabId;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final String getId() {
        return this.id;
    }

    public final List<String> l() {
        return this.legIntPurposeIds;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final String getNamespace() {
        return this.namespace;
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final Namespaces getNamespaces() {
        return this.namespaces;
    }

    /* JADX INFO: renamed from: p, reason: from getter */
    public final String getPrivacyPolicyUrl() {
        return this.privacyPolicyUrl;
    }

    public final List<String> q() {
        return this.purposeIds;
    }

    public final List<String> r() {
        return this.specialFeatureIds;
    }

    public final List<String> s() {
        return this.specialPurposeIds;
    }

    public final List<Url> t() {
        return this.urls;
    }

    public String toString() {
        return "ConfigVendor(id=" + this.id + ", iabId=" + this.iabId + ", name=" + this.name + ", privacyPolicyUrl=" + this.privacyPolicyUrl + ", namespace=" + this.namespace + ", namespaces=" + this.namespaces + ", purposeIds=" + this.purposeIds + ", flexiblePurposeIds=" + this.flexiblePurposeIds + ", specialPurposeIds=" + this.specialPurposeIds + ", legIntPurposeIds=" + this.legIntPurposeIds + ", featureIds=" + this.featureIds + ", specialFeatureIds=" + this.specialFeatureIds + ", cookieMaxAgeSeconds=" + this.cookieMaxAgeSeconds + ", usesNonCookieAccess=" + this.usesNonCookieAccess + ", deviceStorageDisclosureUrl=" + this.deviceStorageDisclosureUrl + ", dataDeclaration=" + this.dataDeclaration + ", dataRetention=" + this.dataRetention + ", urls=" + this.urls + ", didomiId=" + this.didomiId + ", deletedDate=" + this.deletedDate + ", essentialPurposeIds=" + this.essentialPurposeIds + ')';
    }

    /* JADX INFO: renamed from: u, reason: from getter */
    public final Boolean getUsesNonCookieAccess() {
        return this.usesNonCookieAccess;
    }
}
