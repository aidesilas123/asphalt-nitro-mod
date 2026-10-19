package com.json;

import android.view.View;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.o2;
import com.json.t6;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.x6, reason: from toString */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\t\u000bB_\u0012\u0006\u0010\u0012\u001a\u00020\b\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0019\u001a\u00020\n¢\u0006\u0004\b5\u00106J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u000f\u0010\u0006\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\t\u001a\u00020\bHÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010\u0011\u001a\u00020\nHÆ\u0003Je\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0012\u001a\u00020\b2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u0019\u001a\u00020\nHÆ\u0001J\t\u0010\u001b\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001cHÖ\u0001J\u0013\u0010 \u001a\u00020\u001f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0012\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010!\u001a\u0004\b\"\u0010#\"\u0004\b\t\u0010$R$\u0010\u0013\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010%\u001a\u0004\b&\u0010'\"\u0004\b\u0010\u0010(R$\u0010\u0014\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010%\u001a\u0004\b)\u0010'\"\u0004\b\t\u0010(R$\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010%\u001a\u0004\b*\u0010'\"\u0004\b\r\u0010(R$\u0010\u0016\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010%\u001a\u0004\b+\u0010'\"\u0004\b\u000b\u0010(R$\u0010\u0017\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010%\u001a\u0004\b,\u0010'\"\u0004\b\u000e\u0010(R$\u0010\u0018\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010%\u001a\u0004\b-\u0010'\"\u0004\b\f\u0010(R\"\u0010\u0019\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010%\u001a\u0004\b.\u0010'\"\u0004\b\u000f\u0010(R$\u00104\u001a\u0004\u0018\u00010/8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b)\u00100\u001a\u0004\b1\u00102\"\u0004\b\t\u00103¨\u00067"}, d2 = {"Lcom/ironsource/x6;", "", "", "r", "s", "Lorg/json/JSONObject;", "t", "()Lorg/json/JSONObject;", "Lcom/ironsource/t6;", "a", "Landroid/view/View;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", InneractiveMediationDefs.GENDER_FEMALE, "g", "h", "containerView", "titleView", "advertiserView", "iconView", "bodyView", "mediaView", "ctaView", "privacyIconView", "", "toString", "", "hashCode", "other", "", "equals", "Lcom/ironsource/t6;", CampaignEx.JSON_KEY_AD_K, "()Lcom/ironsource/t6;", "(Lcom/ironsource/t6;)V", "Landroid/view/View;", CampaignEx.JSON_KEY_AD_Q, "()Landroid/view/View;", "(Landroid/view/View;)V", "i", InneractiveMediationDefs.GENDER_MALE, "j", "o", "l", TtmlNode.TAG_P, "Lcom/ironsource/x6$a;", "Lcom/ironsource/x6$a;", b4.p, "()Lcom/ironsource/x6$a;", "(Lcom/ironsource/x6$a;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "<init>", "(Lcom/ironsource/t6;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V", "mediationsdk_release"}, mv = {1, 8, 0})
public final /* data */ class ISNNativeAdViewHolder {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private t6 containerView;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private View titleView;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private View advertiserView;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private View iconView;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    private View bodyView;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    private View mediaView;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
    private View ctaView;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata and from toString */
    private View privacyIconView;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private a listener;

    /* JADX INFO: renamed from: com.ironsource.x6$a */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&¨\u0006\b"}, d2 = {"Lcom/ironsource/x6$a;", "", "Lcom/ironsource/x6$b;", "viewName", "", "a", "Lcom/ironsource/dd;", "viewVisibilityParams", "mediationsdk_release"}, mv = {1, 8, 0})
    public interface a {
        void a(ViewVisibilityParams viewVisibilityParams);

        void a(b viewName);
    }

    /* JADX INFO: renamed from: com.ironsource.x6$b */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0005j\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/ironsource/x6$b;", "", "", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Ljava/lang/String;", "value", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", InneractiveMediationDefs.GENDER_FEMALE, "g", "h", "mediationsdk_release"}, mv = {1, 8, 0})
    public enum b {
        Title("title"),
        Advertiser(o2.h.F0),
        Body("body"),
        Cta("cta"),
        Icon("icon"),
        Container("container"),
        PrivacyIcon(o2.h.J0);

        private final String i;

        b(String str) {
            this.i = str;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getI() {
            return this.i;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.x6$c */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/ironsource/x6$c", "Lcom/ironsource/t6$a;", "Lcom/ironsource/dd;", "viewVisibilityParams", "", "a", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class c implements t6.a {
        c() {
        }

        @Override // com.ironsource.t6.a
        public void a(ViewVisibilityParams viewVisibilityParams) {
            Intrinsics.checkNotNullParameter(viewVisibilityParams, "viewVisibilityParams");
            a listener = ISNNativeAdViewHolder.this.getListener();
            if (listener != null) {
                listener.a(viewVisibilityParams);
            }
        }
    }

    public ISNNativeAdViewHolder(t6 containerView, View view, View view2, View view3, View view4, View view5, View view6, View privacyIconView) {
        Intrinsics.checkNotNullParameter(containerView, "containerView");
        Intrinsics.checkNotNullParameter(privacyIconView, "privacyIconView");
        this.containerView = containerView;
        this.titleView = view;
        this.advertiserView = view2;
        this.iconView = view3;
        this.bodyView = view4;
        this.mediaView = view5;
        this.ctaView = view6;
        this.privacyIconView = privacyIconView;
        r();
        s();
    }

    public /* synthetic */ ISNNativeAdViewHolder(t6 t6Var, View view, View view2, View view3, View view4, View view5, View view6, View view7, int i, n nVar) {
        this(t6Var, (i & 2) != 0 ? null : view, (i & 4) != 0 ? null : view2, (i & 8) != 0 ? null : view3, (i & 16) != 0 ? null : view4, (i & 32) != 0 ? null : view5, (i & 64) != 0 ? null : view6, view7);
    }

    private static final void b(final ISNNativeAdViewHolder iSNNativeAdViewHolder, View view, final b bVar) {
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.ironsource.h8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ISNNativeAdViewHolder.c(this.a, bVar, view2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(ISNNativeAdViewHolder this$0, b viewName, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(viewName, "$viewName");
        a aVar = this$0.listener;
        if (aVar != null) {
            aVar.a(viewName);
        }
    }

    private final void r() {
        b(this, this.titleView, b.Title);
        b(this, this.advertiserView, b.Advertiser);
        b(this, this.bodyView, b.Body);
        b(this, this.ctaView, b.Cta);
        b(this, this.iconView, b.Icon);
        b(this, this.containerView, b.Container);
        b(this, this.privacyIconView, b.PrivacyIcon);
    }

    private final void s() {
        this.containerView.setListener$mediationsdk_release(new c());
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final t6 getContainerView() {
        return this.containerView;
    }

    public final ISNNativeAdViewHolder a(t6 containerView, View titleView, View advertiserView, View iconView, View bodyView, View mediaView, View ctaView, View privacyIconView) {
        Intrinsics.checkNotNullParameter(containerView, "containerView");
        Intrinsics.checkNotNullParameter(privacyIconView, "privacyIconView");
        return new ISNNativeAdViewHolder(containerView, titleView, advertiserView, iconView, bodyView, mediaView, ctaView, privacyIconView);
    }

    public final void a(View view) {
        this.advertiserView = view;
    }

    public final void a(t6 t6Var) {
        Intrinsics.checkNotNullParameter(t6Var, "<set-?>");
        this.containerView = t6Var;
    }

    public final void a(a aVar) {
        this.listener = aVar;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final View getTitleView() {
        return this.titleView;
    }

    public final void b(View view) {
        this.bodyView = view;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final View getAdvertiserView() {
        return this.advertiserView;
    }

    public final void c(View view) {
        this.ctaView = view;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final View getIconView() {
        return this.iconView;
    }

    public final void d(View view) {
        this.iconView = view;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final View getBodyView() {
        return this.bodyView;
    }

    public final void e(View view) {
        this.mediaView = view;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ISNNativeAdViewHolder)) {
            return false;
        }
        ISNNativeAdViewHolder iSNNativeAdViewHolder = (ISNNativeAdViewHolder) other;
        return Intrinsics.areEqual(this.containerView, iSNNativeAdViewHolder.containerView) && Intrinsics.areEqual(this.titleView, iSNNativeAdViewHolder.titleView) && Intrinsics.areEqual(this.advertiserView, iSNNativeAdViewHolder.advertiserView) && Intrinsics.areEqual(this.iconView, iSNNativeAdViewHolder.iconView) && Intrinsics.areEqual(this.bodyView, iSNNativeAdViewHolder.bodyView) && Intrinsics.areEqual(this.mediaView, iSNNativeAdViewHolder.mediaView) && Intrinsics.areEqual(this.ctaView, iSNNativeAdViewHolder.ctaView) && Intrinsics.areEqual(this.privacyIconView, iSNNativeAdViewHolder.privacyIconView);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final View getMediaView() {
        return this.mediaView;
    }

    public final void f(View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.privacyIconView = view;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final View getCtaView() {
        return this.ctaView;
    }

    public final void g(View view) {
        this.titleView = view;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final View getPrivacyIconView() {
        return this.privacyIconView;
    }

    public int hashCode() {
        int iHashCode = this.containerView.hashCode() * 31;
        View view = this.titleView;
        int iHashCode2 = (iHashCode + (view == null ? 0 : view.hashCode())) * 31;
        View view2 = this.advertiserView;
        int iHashCode3 = (iHashCode2 + (view2 == null ? 0 : view2.hashCode())) * 31;
        View view3 = this.iconView;
        int iHashCode4 = (iHashCode3 + (view3 == null ? 0 : view3.hashCode())) * 31;
        View view4 = this.bodyView;
        int iHashCode5 = (iHashCode4 + (view4 == null ? 0 : view4.hashCode())) * 31;
        View view5 = this.mediaView;
        int iHashCode6 = (iHashCode5 + (view5 == null ? 0 : view5.hashCode())) * 31;
        View view6 = this.ctaView;
        return ((iHashCode6 + (view6 != null ? view6.hashCode() : 0)) * 31) + this.privacyIconView.hashCode();
    }

    public final View i() {
        return this.advertiserView;
    }

    public final View j() {
        return this.bodyView;
    }

    public final t6 k() {
        return this.containerView;
    }

    public final View l() {
        return this.ctaView;
    }

    public final View m() {
        return this.iconView;
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final a getListener() {
        return this.listener;
    }

    public final View o() {
        return this.mediaView;
    }

    public final View p() {
        return this.privacyIconView;
    }

    public final View q() {
        return this.titleView;
    }

    public final JSONObject t() throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put("title", this.titleView != null).put(o2.h.F0, this.advertiserView != null).put("body", this.bodyView != null).put("cta", this.ctaView != null).put("media", this.mediaView != null).put("icon", this.iconView != null);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "JSONObject()\n\t\t\t.put(\"ti…\"icon\", iconView != null)");
        return jSONObjectPut;
    }

    public String toString() {
        return "ISNNativeAdViewHolder(containerView=" + this.containerView + ", titleView=" + this.titleView + ", advertiserView=" + this.advertiserView + ", iconView=" + this.iconView + ", bodyView=" + this.bodyView + ", mediaView=" + this.mediaView + ", ctaView=" + this.ctaView + ", privacyIconView=" + this.privacyIconView + ')';
    }
}
