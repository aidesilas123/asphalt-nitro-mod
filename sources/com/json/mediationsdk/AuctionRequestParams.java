package com.json.mediationsdk;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.AuctionRequestInstanceInfo;
import com.json.b4;
import com.json.j1;
import com.json.mediationsdk.IronSource;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.mediationsdk.i, reason: from toString */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010%\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\bT\u0010UJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0005\u001a\u00020\u0006HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R'\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0012j\b\u0012\u0004\u0012\u00020\u0002`\u00138\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u001d\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u0018\u0010\u001cR\"\u0010#\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\u0005\u0010\"R\"\u0010&\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u0019\u001a\u0004\b%\u0010\u001b\"\u0004\b\u0010\u0010\u001cR4\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010'8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b(\u0010)\u0012\u0004\b,\u0010-\u001a\u0004\b$\u0010*\"\u0004\b\u0005\u0010+R.\u00105\u001a\b\u0012\u0004\u0012\u00020\b0/8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b \u00100\u0012\u0004\b4\u0010-\u001a\u0004\b1\u00102\"\u0004\b\u0005\u00103R\"\u0010:\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u00106\u001a\u0004\b7\u00108\"\u0004\b\u0005\u00109R$\u0010?\u001a\u0004\u0018\u00010;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010<\u001a\u0004\b\u0018\u0010=\"\u0004\b\u0005\u0010>R$\u0010F\u001a\u0004\u0018\u00010@8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\b\u0005\u0010ER\"\u0010H\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010\u001f\u001a\u0004\bG\u0010!\"\u0004\b\u0010\u0010\"R$\u0010M\u001a\u0004\u0018\u00010I8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010J\u001a\u0004\b\u001e\u0010K\"\u0004\b\u0005\u0010LR\"\u0010P\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bN\u0010\u0019\u001a\u0004\bO\u0010\u001b\"\u0004\b\u0005\u0010\u001cR\"\u0010R\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010\u0019\u001a\u0004\bN\u0010\u001b\"\u0004\b\u001e\u0010\u001cR\"\u0010S\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u0010\u0019\u001a\u0004\bQ\u0010\u001b\"\u0004\b$\u0010\u001c¨\u0006V"}, d2 = {"Lcom/ironsource/mediationsdk/i;", "", "Lcom/ironsource/b1;", "instanceInfo", "", "a", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "adUnit", "", "toString", "", "hashCode", "other", "", "equals", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "h", "()Ljava/util/ArrayList;", "instancesInfo", "c", "Z", "r", "()Z", "(Z)V", "isOneFlow", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "g", "()Ljava/lang/String;", "(Ljava/lang/String;)V", "instanceId", "e", CampaignEx.JSON_KEY_AD_Q, "isEncryptedResponse", "", InneractiveMediationDefs.GENDER_FEMALE, "Ljava/util/Map;", "()Ljava/util/Map;", "(Ljava/util/Map;)V", "getBidders$annotations", "()V", "bidders", "", "Ljava/util/List;", "i", "()Ljava/util/List;", "(Ljava/util/List;)V", "getNonBidders$annotations", "nonBidders", "I", "l", "()I", "(I)V", "sessionDepth", "Lcom/ironsource/mediationsdk/h;", "Lcom/ironsource/mediationsdk/h;", "()Lcom/ironsource/mediationsdk/h;", "(Lcom/ironsource/mediationsdk/h;)V", "auctionHistory", "Lcom/ironsource/mediationsdk/IronSourceSegment;", "j", "Lcom/ironsource/mediationsdk/IronSourceSegment;", CampaignEx.JSON_KEY_AD_K, "()Lcom/ironsource/mediationsdk/IronSourceSegment;", "(Lcom/ironsource/mediationsdk/IronSourceSegment;)V", "segment", "o", "waterfallString", "Lcom/ironsource/mediationsdk/ISBannerSize;", "Lcom/ironsource/mediationsdk/ISBannerSize;", "()Lcom/ironsource/mediationsdk/ISBannerSize;", "(Lcom/ironsource/mediationsdk/ISBannerSize;)V", j1.u, InneractiveMediationDefs.GENDER_MALE, TtmlNode.TAG_P, "isDemandOnly", b4.p, "testSuiteLaunched", "useTestAds", "<init>", "(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V", "mediationsdk_release"}, mv = {1, 8, 0})
public final /* data */ class AuctionRequestParams {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final IronSource.AD_UNIT adUnit;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final ArrayList<AuctionRequestInstanceInfo> instancesInfo;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private boolean isOneFlow;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String instanceId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isEncryptedResponse;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Map<String, Object> bidders;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private List<String> nonBidders;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private int sessionDepth;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private h auctionHistory;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private IronSourceSegment segment;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private String waterfallString;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata */
    private ISBannerSize bannerSize;

    /* JADX INFO: renamed from: m, reason: from kotlin metadata */
    private boolean isDemandOnly;

    /* JADX INFO: renamed from: n, reason: from kotlin metadata */
    private boolean testSuiteLaunched;

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private boolean useTestAds;

    public AuctionRequestParams(IronSource.AD_UNIT adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.adUnit = adUnit;
        this.instancesInfo = new ArrayList<>();
        this.instanceId = "";
        this.bidders = new HashMap();
        this.nonBidders = new ArrayList();
        this.sessionDepth = -1;
        this.waterfallString = "";
    }

    public static /* synthetic */ AuctionRequestParams a(AuctionRequestParams auctionRequestParams, IronSource.AD_UNIT ad_unit, int i, Object obj) {
        if ((i & 1) != 0) {
            ad_unit = auctionRequestParams.adUnit;
        }
        return auctionRequestParams.a(ad_unit);
    }

    public static /* synthetic */ void f() {
    }

    public static /* synthetic */ void j() {
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final IronSource.AD_UNIT getAdUnit() {
        return this.adUnit;
    }

    public final AuctionRequestParams a(IronSource.AD_UNIT adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        return new AuctionRequestParams(adUnit);
    }

    public final void a(int i) {
        this.sessionDepth = i;
    }

    public final void a(AuctionRequestInstanceInfo instanceInfo) {
        Intrinsics.checkNotNullParameter(instanceInfo, "instanceInfo");
        this.instancesInfo.add(instanceInfo);
    }

    public final void a(ISBannerSize iSBannerSize) {
        this.bannerSize = iSBannerSize;
    }

    public final void a(IronSourceSegment ironSourceSegment) {
        this.segment = ironSourceSegment;
    }

    public final void a(h hVar) {
        this.auctionHistory = hVar;
    }

    public final void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.instanceId = str;
    }

    public final void a(List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.nonBidders = list;
    }

    public final void a(Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.bidders = map;
    }

    public final void a(boolean z) {
        this.isDemandOnly = z;
    }

    public final IronSource.AD_UNIT b() {
        return this.adUnit;
    }

    public final void b(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.waterfallString = str;
    }

    public final void b(boolean z) {
        this.isEncryptedResponse = z;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final h getAuctionHistory() {
        return this.auctionHistory;
    }

    public final void c(boolean z) {
        this.isOneFlow = z;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final ISBannerSize getBannerSize() {
        return this.bannerSize;
    }

    public final void d(boolean z) {
        this.testSuiteLaunched = z;
    }

    public final Map<String, Object> e() {
        return this.bidders;
    }

    public final void e(boolean z) {
        this.useTestAds = z;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AuctionRequestParams) && this.adUnit == ((AuctionRequestParams) other).adUnit;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final String getInstanceId() {
        return this.instanceId;
    }

    public final ArrayList<AuctionRequestInstanceInfo> h() {
        return this.instancesInfo;
    }

    public int hashCode() {
        return this.adUnit.hashCode();
    }

    public final List<String> i() {
        return this.nonBidders;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final IronSourceSegment getSegment() {
        return this.segment;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final int getSessionDepth() {
        return this.sessionDepth;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public final boolean getTestSuiteLaunched() {
        return this.testSuiteLaunched;
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final boolean getUseTestAds() {
        return this.useTestAds;
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final String getWaterfallString() {
        return this.waterfallString;
    }

    /* JADX INFO: renamed from: p, reason: from getter */
    public final boolean getIsDemandOnly() {
        return this.isDemandOnly;
    }

    /* JADX INFO: renamed from: q, reason: from getter */
    public final boolean getIsEncryptedResponse() {
        return this.isEncryptedResponse;
    }

    /* JADX INFO: renamed from: r, reason: from getter */
    public final boolean getIsOneFlow() {
        return this.isOneFlow;
    }

    public String toString() {
        return "AuctionRequestParams(adUnit=" + this.adUnit + ')';
    }
}
