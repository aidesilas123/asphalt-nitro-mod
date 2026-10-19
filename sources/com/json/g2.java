package com.json;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u0005BY\b\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001a\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u001f\u0012\b\u0010'\u001a\u0004\u0018\u00010#\u0012\b\u0010+\u001a\u0004\u0018\u00010(¢\u0006\u0004\b,\u0010-J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0019\u0010\u000f\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\b\r\u0010\u0017\u001a\u0004\b\u0011\u0010\u0018R\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001b\u0010\u001dR\u0019\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0006¢\u0006\f\n\u0004\b\u0013\u0010 \u001a\u0004\b\u000b\u0010!R\u0019\u0010'\u001a\u0004\u0018\u00010#8\u0006¢\u0006\f\n\u0004\b\u0007\u0010$\u001a\u0004\b%\u0010&R\u0019\u0010+\u001a\u0004\u0018\u00010(8\u0006¢\u0006\f\n\u0004\b%\u0010)\u001a\u0004\b\u0005\u0010*¨\u0006."}, d2 = {"Lcom/ironsource/g2;", "", "", "toString", "Lcom/ironsource/bb;", "a", "Lcom/ironsource/bb;", "g", "()Lcom/ironsource/bb;", "rewardedVideoConfigurations", "Lcom/ironsource/p7;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/ironsource/p7;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lcom/ironsource/p7;", "interstitialConfigurations", "Lcom/ironsource/w9;", "c", "Lcom/ironsource/w9;", InneractiveMediationDefs.GENDER_FEMALE, "()Lcom/ironsource/w9;", "offerwallConfigurations", "Lcom/ironsource/k1;", "Lcom/ironsource/k1;", "()Lcom/ironsource/k1;", "bannerConfigurations", "Lcom/ironsource/h9;", "e", "Lcom/ironsource/h9;", "()Lcom/ironsource/h9;", "nativeAdConfigurations", "Lcom/ironsource/j0;", "Lcom/ironsource/j0;", "()Lcom/ironsource/j0;", "applicationConfigurations", "Lcom/ironsource/ic;", "Lcom/ironsource/ic;", "h", "()Lcom/ironsource/ic;", "testSuiteSettings", "Lcom/ironsource/m;", "Lcom/ironsource/m;", "()Lcom/ironsource/m;", "adQualityConfigurations", "<init>", "(Lcom/ironsource/bb;Lcom/ironsource/p7;Lcom/ironsource/w9;Lcom/ironsource/k1;Lcom/ironsource/h9;Lcom/ironsource/j0;Lcom/ironsource/ic;Lcom/ironsource/m;)V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class g2 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final bb rewardedVideoConfigurations;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final p7 interstitialConfigurations;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final w9 offerwallConfigurations;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final k1 bannerConfigurations;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final h9 nativeAdConfigurations;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final j0 applicationConfigurations;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final TestSuiteSettings testSuiteSettings;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private final m adQualityConfigurations;

    /* JADX INFO: renamed from: com.ironsource.g2$a, reason: from toString */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b$\b\u0086\b\u0018\u00002\u00020\u0001Bg\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\bC\u0010DJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012J\u0006\u0010\u0004\u001a\u00020\u0014J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0012HÆ\u0003Ji\u0010\u0004\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÆ\u0001J\t\u0010\u001d\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001f\u001a\u00020\u001eHÖ\u0001J\u0013\u0010\"\u001a\u00020!2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010#\u001a\u0004\b$\u0010%\"\u0004\b\u0011\u0010&R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010'\u001a\u0004\b(\u0010)\"\u0004\b\u0011\u0010*R$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010+\u001a\u0004\b,\u0010-\"\u0004\b\u0011\u0010.R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010/\u001a\u0004\b0\u00101\"\u0004\b\u0011\u00102R$\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u00103\u001a\u0004\b4\u00105\"\u0004\b\u0011\u00106R$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u00107\u001a\u0004\b8\u00109\"\u0004\b\u0011\u0010:R$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010;\u001a\u0004\b<\u0010=\"\u0004\b\u0004\u0010>R$\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010?\u001a\u0004\b@\u0010A\"\u0004\b\u0011\u0010B¨\u0006E"}, d2 = {"Lcom/ironsource/g2$a;", "", "Lcom/ironsource/bb;", "rewardedVideoConfigurations", "a", "Lcom/ironsource/p7;", "interstitialConfigurations", "Lcom/ironsource/w9;", "offerwallConfigurations", "Lcom/ironsource/k1;", "bannerConfigurations", "Lcom/ironsource/h9;", "nativeAdConfigurations", "Lcom/ironsource/j0;", "applicationConfigurations", "Lcom/ironsource/ic;", "testSuiteSettings", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/ironsource/m;", "adQualityConfigurations", "Lcom/ironsource/g2;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", InneractiveMediationDefs.GENDER_FEMALE, "g", "h", "i", "", "toString", "", "hashCode", "other", "", "equals", "Lcom/ironsource/bb;", TtmlNode.TAG_P, "()Lcom/ironsource/bb;", "(Lcom/ironsource/bb;)V", "Lcom/ironsource/p7;", InneractiveMediationDefs.GENDER_MALE, "()Lcom/ironsource/p7;", "(Lcom/ironsource/p7;)V", "Lcom/ironsource/w9;", "o", "()Lcom/ironsource/w9;", "(Lcom/ironsource/w9;)V", "Lcom/ironsource/k1;", "l", "()Lcom/ironsource/k1;", "(Lcom/ironsource/k1;)V", "Lcom/ironsource/h9;", b4.p, "()Lcom/ironsource/h9;", "(Lcom/ironsource/h9;)V", "Lcom/ironsource/j0;", CampaignEx.JSON_KEY_AD_K, "()Lcom/ironsource/j0;", "(Lcom/ironsource/j0;)V", "Lcom/ironsource/ic;", CampaignEx.JSON_KEY_AD_Q, "()Lcom/ironsource/ic;", "(Lcom/ironsource/ic;)V", "Lcom/ironsource/m;", "j", "()Lcom/ironsource/m;", "(Lcom/ironsource/m;)V", "<init>", "(Lcom/ironsource/bb;Lcom/ironsource/p7;Lcom/ironsource/w9;Lcom/ironsource/k1;Lcom/ironsource/h9;Lcom/ironsource/j0;Lcom/ironsource/ic;Lcom/ironsource/m;)V", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final /* data */ class Builder {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private bb rewardedVideoConfigurations;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private p7 interstitialConfigurations;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private w9 offerwallConfigurations;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
        private k1 bannerConfigurations;

        /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
        private h9 nativeAdConfigurations;

        /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
        private j0 applicationConfigurations;

        /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
        private TestSuiteSettings testSuiteSettings;

        /* JADX INFO: renamed from: h, reason: from kotlin metadata and from toString */
        private m adQualityConfigurations;

        public Builder() {
            this(null, null, null, null, null, null, null, null, 255, null);
        }

        public Builder(bb bbVar, p7 p7Var, w9 w9Var, k1 k1Var, h9 h9Var, j0 j0Var, TestSuiteSettings testSuiteSettings, m mVar) {
            this.rewardedVideoConfigurations = bbVar;
            this.interstitialConfigurations = p7Var;
            this.offerwallConfigurations = w9Var;
            this.bannerConfigurations = k1Var;
            this.nativeAdConfigurations = h9Var;
            this.applicationConfigurations = j0Var;
            this.testSuiteSettings = testSuiteSettings;
            this.adQualityConfigurations = mVar;
        }

        public /* synthetic */ Builder(bb bbVar, p7 p7Var, w9 w9Var, k1 k1Var, h9 h9Var, j0 j0Var, TestSuiteSettings testSuiteSettings, m mVar, int i, n nVar) {
            this((i & 1) != 0 ? null : bbVar, (i & 2) != 0 ? null : p7Var, (i & 4) != 0 ? null : w9Var, (i & 8) != 0 ? null : k1Var, (i & 16) != 0 ? null : h9Var, (i & 32) != 0 ? null : j0Var, (i & 64) != 0 ? null : testSuiteSettings, (i & 128) == 0 ? mVar : null);
        }

        public final Builder a(bb rewardedVideoConfigurations) {
            this.rewardedVideoConfigurations = rewardedVideoConfigurations;
            return this;
        }

        public final Builder a(bb rewardedVideoConfigurations, p7 interstitialConfigurations, w9 offerwallConfigurations, k1 bannerConfigurations, h9 nativeAdConfigurations, j0 applicationConfigurations, TestSuiteSettings testSuiteSettings, m adQualityConfigurations) {
            return new Builder(rewardedVideoConfigurations, interstitialConfigurations, offerwallConfigurations, bannerConfigurations, nativeAdConfigurations, applicationConfigurations, testSuiteSettings, adQualityConfigurations);
        }

        public final Builder a(h9 nativeAdConfigurations) {
            this.nativeAdConfigurations = nativeAdConfigurations;
            return this;
        }

        public final Builder a(j0 applicationConfigurations) {
            this.applicationConfigurations = applicationConfigurations;
            return this;
        }

        public final Builder a(k1 bannerConfigurations) {
            this.bannerConfigurations = bannerConfigurations;
            return this;
        }

        public final Builder a(m adQualityConfigurations) {
            this.adQualityConfigurations = adQualityConfigurations;
            return this;
        }

        public final Builder a(p7 interstitialConfigurations) {
            this.interstitialConfigurations = interstitialConfigurations;
            return this;
        }

        public final Builder a(w9 offerwallConfigurations) {
            this.offerwallConfigurations = offerwallConfigurations;
            return this;
        }

        public final g2 a() {
            return new g2(this.rewardedVideoConfigurations, this.interstitialConfigurations, this.offerwallConfigurations, this.bannerConfigurations, this.nativeAdConfigurations, this.applicationConfigurations, this.testSuiteSettings, this.adQualityConfigurations, null);
        }

        public final void a(TestSuiteSettings testSuiteSettings) {
            this.testSuiteSettings = testSuiteSettings;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final bb getRewardedVideoConfigurations() {
            return this.rewardedVideoConfigurations;
        }

        public final Builder b(TestSuiteSettings testSuiteSettings) {
            this.testSuiteSettings = testSuiteSettings;
            return this;
        }

        public final void b(bb bbVar) {
            this.rewardedVideoConfigurations = bbVar;
        }

        public final void b(h9 h9Var) {
            this.nativeAdConfigurations = h9Var;
        }

        public final void b(j0 j0Var) {
            this.applicationConfigurations = j0Var;
        }

        public final void b(k1 k1Var) {
            this.bannerConfigurations = k1Var;
        }

        public final void b(m mVar) {
            this.adQualityConfigurations = mVar;
        }

        public final void b(p7 p7Var) {
            this.interstitialConfigurations = p7Var;
        }

        public final void b(w9 w9Var) {
            this.offerwallConfigurations = w9Var;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final p7 getInterstitialConfigurations() {
            return this.interstitialConfigurations;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final w9 getOfferwallConfigurations() {
            return this.offerwallConfigurations;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final k1 getBannerConfigurations() {
            return this.bannerConfigurations;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Builder)) {
                return false;
            }
            Builder builder = (Builder) other;
            return Intrinsics.areEqual(this.rewardedVideoConfigurations, builder.rewardedVideoConfigurations) && Intrinsics.areEqual(this.interstitialConfigurations, builder.interstitialConfigurations) && Intrinsics.areEqual(this.offerwallConfigurations, builder.offerwallConfigurations) && Intrinsics.areEqual(this.bannerConfigurations, builder.bannerConfigurations) && Intrinsics.areEqual(this.nativeAdConfigurations, builder.nativeAdConfigurations) && Intrinsics.areEqual(this.applicationConfigurations, builder.applicationConfigurations) && Intrinsics.areEqual(this.testSuiteSettings, builder.testSuiteSettings) && Intrinsics.areEqual(this.adQualityConfigurations, builder.adQualityConfigurations);
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final h9 getNativeAdConfigurations() {
            return this.nativeAdConfigurations;
        }

        /* JADX INFO: renamed from: g, reason: from getter */
        public final j0 getApplicationConfigurations() {
            return this.applicationConfigurations;
        }

        /* JADX INFO: renamed from: h, reason: from getter */
        public final TestSuiteSettings getTestSuiteSettings() {
            return this.testSuiteSettings;
        }

        public int hashCode() {
            bb bbVar = this.rewardedVideoConfigurations;
            int iHashCode = (bbVar == null ? 0 : bbVar.hashCode()) * 31;
            p7 p7Var = this.interstitialConfigurations;
            int iHashCode2 = (iHashCode + (p7Var == null ? 0 : p7Var.hashCode())) * 31;
            w9 w9Var = this.offerwallConfigurations;
            int iHashCode3 = (iHashCode2 + (w9Var == null ? 0 : w9Var.hashCode())) * 31;
            k1 k1Var = this.bannerConfigurations;
            int iHashCode4 = (iHashCode3 + (k1Var == null ? 0 : k1Var.hashCode())) * 31;
            h9 h9Var = this.nativeAdConfigurations;
            int iHashCode5 = (iHashCode4 + (h9Var == null ? 0 : h9Var.hashCode())) * 31;
            j0 j0Var = this.applicationConfigurations;
            int iHashCode6 = (iHashCode5 + (j0Var == null ? 0 : j0Var.hashCode())) * 31;
            TestSuiteSettings testSuiteSettings = this.testSuiteSettings;
            int iHashCode7 = (iHashCode6 + (testSuiteSettings == null ? 0 : testSuiteSettings.hashCode())) * 31;
            m mVar = this.adQualityConfigurations;
            return iHashCode7 + (mVar != null ? mVar.hashCode() : 0);
        }

        /* JADX INFO: renamed from: i, reason: from getter */
        public final m getAdQualityConfigurations() {
            return this.adQualityConfigurations;
        }

        public final m j() {
            return this.adQualityConfigurations;
        }

        public final j0 k() {
            return this.applicationConfigurations;
        }

        public final k1 l() {
            return this.bannerConfigurations;
        }

        public final p7 m() {
            return this.interstitialConfigurations;
        }

        public final h9 n() {
            return this.nativeAdConfigurations;
        }

        public final w9 o() {
            return this.offerwallConfigurations;
        }

        public final bb p() {
            return this.rewardedVideoConfigurations;
        }

        public final TestSuiteSettings q() {
            return this.testSuiteSettings;
        }

        public String toString() {
            return "Builder(rewardedVideoConfigurations=" + this.rewardedVideoConfigurations + ", interstitialConfigurations=" + this.interstitialConfigurations + ", offerwallConfigurations=" + this.offerwallConfigurations + ", bannerConfigurations=" + this.bannerConfigurations + ", nativeAdConfigurations=" + this.nativeAdConfigurations + ", applicationConfigurations=" + this.applicationConfigurations + ", testSuiteSettings=" + this.testSuiteSettings + ", adQualityConfigurations=" + this.adQualityConfigurations + ')';
        }
    }

    private g2(bb bbVar, p7 p7Var, w9 w9Var, k1 k1Var, h9 h9Var, j0 j0Var, TestSuiteSettings testSuiteSettings, m mVar) {
        this.rewardedVideoConfigurations = bbVar;
        this.interstitialConfigurations = p7Var;
        this.offerwallConfigurations = w9Var;
        this.bannerConfigurations = k1Var;
        this.nativeAdConfigurations = h9Var;
        this.applicationConfigurations = j0Var;
        this.testSuiteSettings = testSuiteSettings;
        this.adQualityConfigurations = mVar;
    }

    public /* synthetic */ g2(bb bbVar, p7 p7Var, w9 w9Var, k1 k1Var, h9 h9Var, j0 j0Var, TestSuiteSettings testSuiteSettings, m mVar, n nVar) {
        this(bbVar, p7Var, w9Var, k1Var, h9Var, j0Var, testSuiteSettings, mVar);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final m getAdQualityConfigurations() {
        return this.adQualityConfigurations;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final j0 getApplicationConfigurations() {
        return this.applicationConfigurations;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final k1 getBannerConfigurations() {
        return this.bannerConfigurations;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final p7 getInterstitialConfigurations() {
        return this.interstitialConfigurations;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final h9 getNativeAdConfigurations() {
        return this.nativeAdConfigurations;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final w9 getOfferwallConfigurations() {
        return this.offerwallConfigurations;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final bb getRewardedVideoConfigurations() {
        return this.rewardedVideoConfigurations;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final TestSuiteSettings getTestSuiteSettings() {
        return this.testSuiteSettings;
    }

    public String toString() {
        return "configurations(\n" + this.rewardedVideoConfigurations + '\n' + this.interstitialConfigurations + '\n' + this.bannerConfigurations + '\n' + this.nativeAdConfigurations + ')';
    }
}
