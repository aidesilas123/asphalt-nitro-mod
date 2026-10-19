package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.b4;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.didomi.drawable.config.app.SyncConfiguration;
import io.didomi.drawable.consent.model.ConsentChoices;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.b6, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u001d\b\u0086\b\u0018\u00002\u00020\u0001B\u0097\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0010\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0016HÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u001a\u0010 \u001a\u00020\u001f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b \u0010!R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b&\u0010\u001bR\u0017\u0010\b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b$\u0010+\u001a\u0004\b\"\u0010\u001bR\u0017\u0010\t\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b,\u0010+\u001a\u0004\b*\u0010\u001bR\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b-\u0010+\u001a\u0004\b.\u0010\u001bR\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b/\u0010+\u001a\u0004\b0\u0010\u001bR\u0017\u0010\f\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b1\u0010+\u001a\u0004\b1\u0010\u001bR\u0017\u0010\r\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b(\u0010+\u001a\u0004\b2\u0010\u001bR\u0017\u0010\u000e\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b3\u0010'\u001a\u0004\b/\u0010)R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b4\u0010'\u001a\u0004\b5\u0010)R\u0017\u0010\u0011\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b.\u00106\u001a\u0004\b,\u00107R\u0017\u0010\u0012\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b0\u00106\u001a\u0004\b3\u00107R\u0017\u0010\u0013\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b8\u00106\u001a\u0004\b-\u00107R\u0017\u0010\u0014\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b9\u00106\u001a\u0004\b4\u00107R\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b5\u0010+\u001a\u0004\b8\u0010\u001bR\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\b2\u0010:\u001a\u0004\b9\u0010;¨\u0006<"}, d2 = {"Lio/didomi/sdk/b6;", "", "Lio/didomi/sdk/config/app/SyncConfiguration;", "config", "Ljava/util/Date;", "lastSyncDate", "", "apiBaseURL", "agent", "apiKey", "sdkVersion", "sourceType", o2.i.C, "userId", "created", "updated", "Lio/didomi/sdk/consent/model/ConsentChoices;", "consentPurposes", "liPurposes", "consentVendors", "liVendors", "tcfcs", "", "tcfv", "<init>", "(Lio/didomi/sdk/config/app/SyncConfiguration;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Ljava/lang/String;Ljava/lang/Integer;)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Lio/didomi/sdk/config/app/SyncConfiguration;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lio/didomi/sdk/config/app/SyncConfiguration;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/Date;", "i", "()Ljava/util/Date;", "c", "Ljava/lang/String;", "e", InneractiveMediationDefs.GENDER_FEMALE, "l", "g", InneractiveMediationDefs.GENDER_MALE, "h", CampaignEx.JSON_KEY_AD_Q, "j", CampaignEx.JSON_KEY_AD_K, TtmlNode.TAG_P, "Lio/didomi/sdk/consent/model/ConsentChoices;", "()Lio/didomi/sdk/consent/model/ConsentChoices;", b4.p, "o", "Ljava/lang/Integer;", "()Ljava/lang/Integer;", "android_release"}, mv = {1, 8, 0})
public final /* data */ class SyncParams {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final SyncConfiguration config;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final Date lastSyncDate;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private final String apiBaseURL;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final String agent;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    private final String apiKey;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    private final String sdkVersion;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
    private final String sourceType;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata and from toString */
    private final String domain;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata and from toString */
    private final String userId;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata and from toString */
    private final Date created;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata and from toString */
    private final Date updated;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata and from toString */
    private final ConsentChoices consentPurposes;

    /* JADX INFO: renamed from: m, reason: from kotlin metadata and from toString */
    private final ConsentChoices liPurposes;

    /* JADX INFO: renamed from: n, reason: from kotlin metadata and from toString */
    private final ConsentChoices consentVendors;

    /* JADX INFO: renamed from: o, reason: from kotlin metadata and from toString */
    private final ConsentChoices liVendors;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata and from toString */
    private final String tcfcs;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata and from toString */
    private final Integer tcfv;

    public SyncParams(SyncConfiguration config, Date date, String apiBaseURL, String agent, String apiKey, String sdkVersion, String sourceType, String domain, String userId, Date created, Date date2, ConsentChoices consentPurposes, ConsentChoices liPurposes, ConsentChoices consentVendors, ConsentChoices liVendors, String str, Integer num) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(apiBaseURL, "apiBaseURL");
        Intrinsics.checkNotNullParameter(agent, "agent");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(sdkVersion, "sdkVersion");
        Intrinsics.checkNotNullParameter(sourceType, "sourceType");
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(consentPurposes, "consentPurposes");
        Intrinsics.checkNotNullParameter(liPurposes, "liPurposes");
        Intrinsics.checkNotNullParameter(consentVendors, "consentVendors");
        Intrinsics.checkNotNullParameter(liVendors, "liVendors");
        this.config = config;
        this.lastSyncDate = date;
        this.apiBaseURL = apiBaseURL;
        this.agent = agent;
        this.apiKey = apiKey;
        this.sdkVersion = sdkVersion;
        this.sourceType = sourceType;
        this.domain = domain;
        this.userId = userId;
        this.created = created;
        this.updated = date2;
        this.consentPurposes = consentPurposes;
        this.liPurposes = liPurposes;
        this.consentVendors = consentVendors;
        this.liVendors = liVendors;
        this.tcfcs = str;
        this.tcfv = num;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getAgent() {
        return this.agent;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getApiBaseURL() {
        return this.apiBaseURL;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getApiKey() {
        return this.apiKey;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final SyncConfiguration getConfig() {
        return this.config;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final ConsentChoices getConsentPurposes() {
        return this.consentPurposes;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SyncParams)) {
            return false;
        }
        SyncParams syncParams = (SyncParams) other;
        return Intrinsics.areEqual(this.config, syncParams.config) && Intrinsics.areEqual(this.lastSyncDate, syncParams.lastSyncDate) && Intrinsics.areEqual(this.apiBaseURL, syncParams.apiBaseURL) && Intrinsics.areEqual(this.agent, syncParams.agent) && Intrinsics.areEqual(this.apiKey, syncParams.apiKey) && Intrinsics.areEqual(this.sdkVersion, syncParams.sdkVersion) && Intrinsics.areEqual(this.sourceType, syncParams.sourceType) && Intrinsics.areEqual(this.domain, syncParams.domain) && Intrinsics.areEqual(this.userId, syncParams.userId) && Intrinsics.areEqual(this.created, syncParams.created) && Intrinsics.areEqual(this.updated, syncParams.updated) && Intrinsics.areEqual(this.consentPurposes, syncParams.consentPurposes) && Intrinsics.areEqual(this.liPurposes, syncParams.liPurposes) && Intrinsics.areEqual(this.consentVendors, syncParams.consentVendors) && Intrinsics.areEqual(this.liVendors, syncParams.liVendors) && Intrinsics.areEqual(this.tcfcs, syncParams.tcfcs) && Intrinsics.areEqual(this.tcfv, syncParams.tcfv);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final ConsentChoices getConsentVendors() {
        return this.consentVendors;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final Date getCreated() {
        return this.created;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final String getDomain() {
        return this.domain;
    }

    public int hashCode() {
        int iHashCode = this.config.hashCode() * 31;
        Date date = this.lastSyncDate;
        int iHashCode2 = (((((((((((((((((iHashCode + (date == null ? 0 : date.hashCode())) * 31) + this.apiBaseURL.hashCode()) * 31) + this.agent.hashCode()) * 31) + this.apiKey.hashCode()) * 31) + this.sdkVersion.hashCode()) * 31) + this.sourceType.hashCode()) * 31) + this.domain.hashCode()) * 31) + this.userId.hashCode()) * 31) + this.created.hashCode()) * 31;
        Date date2 = this.updated;
        int iHashCode3 = (((((((((iHashCode2 + (date2 == null ? 0 : date2.hashCode())) * 31) + this.consentPurposes.hashCode()) * 31) + this.liPurposes.hashCode()) * 31) + this.consentVendors.hashCode()) * 31) + this.liVendors.hashCode()) * 31;
        String str = this.tcfcs;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.tcfv;
        return iHashCode4 + (num != null ? num.hashCode() : 0);
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final Date getLastSyncDate() {
        return this.lastSyncDate;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final ConsentChoices getLiPurposes() {
        return this.liPurposes;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final ConsentChoices getLiVendors() {
        return this.liVendors;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final String getSdkVersion() {
        return this.sdkVersion;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public final String getSourceType() {
        return this.sourceType;
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final String getTcfcs() {
        return this.tcfcs;
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final Integer getTcfv() {
        return this.tcfv;
    }

    /* JADX INFO: renamed from: p, reason: from getter */
    public final Date getUpdated() {
        return this.updated;
    }

    /* JADX INFO: renamed from: q, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    public String toString() {
        return "SyncParams(config=" + this.config + ", lastSyncDate=" + this.lastSyncDate + ", apiBaseURL=" + this.apiBaseURL + ", agent=" + this.agent + ", apiKey=" + this.apiKey + ", sdkVersion=" + this.sdkVersion + ", sourceType=" + this.sourceType + ", domain=" + this.domain + ", userId=" + this.userId + ", created=" + this.created + ", updated=" + this.updated + ", consentPurposes=" + this.consentPurposes + ", liPurposes=" + this.liPurposes + ", consentVendors=" + this.consentVendors + ", liVendors=" + this.liVendors + ", tcfcs=" + this.tcfcs + ", tcfv=" + this.tcfv + ')';
    }
}
