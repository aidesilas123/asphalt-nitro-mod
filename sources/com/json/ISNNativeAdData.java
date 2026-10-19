package com.json;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.webkit.WebView;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.u6, reason: from toString */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0003\u0004BK\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u0013\u001a\u00020\u000b¢\u0006\u0004\b)\u0010*J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0004\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010\f\u001a\u00020\u000bHÆ\u0003J[\u0010\u0003\u001a\u00020\u00002\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u0013\u001a\u00020\u000bHÆ\u0001J\t\u0010\u0014\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0015HÖ\u0001J\u0013\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u001a\u001a\u0004\b\u001d\u0010\u001cR\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001a\u001a\u0004\b\u001e\u0010\u001cR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001a\u001a\u0004\b\u001f\u0010\u001cR\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010 \u001a\u0004\b!\u0010\"R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\n\u0010#\u001a\u0004\b$\u0010%R\u0017\u0010\u0013\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010&\u001a\u0004\b'\u0010(¨\u0006+"}, d2 = {"Lcom/ironsource/u6;", "", "", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/graphics/drawable/Drawable;", "e", "Landroid/webkit/WebView;", InneractiveMediationDefs.GENDER_FEMALE, "Landroid/view/View;", "g", "title", o2.h.F0, "body", "cta", "icon", "mediaView", o2.h.J0, "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/String;", b4.p, "()Ljava/lang/String;", "h", "i", "j", "Landroid/graphics/drawable/Drawable;", CampaignEx.JSON_KEY_AD_K, "()Landroid/graphics/drawable/Drawable;", "Landroid/webkit/WebView;", "l", "()Landroid/webkit/WebView;", "Landroid/view/View;", InneractiveMediationDefs.GENDER_MALE, "()Landroid/view/View;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/webkit/WebView;Landroid/view/View;)V", "mediationsdk_release"}, mv = {1, 8, 0})
public final /* data */ class ISNNativeAdData {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final String title;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final String advertiser;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private final String body;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final String cta;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    private final Drawable icon;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    private final WebView mediaView;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
    private final View privacyIcon;

    /* JADX INFO: renamed from: com.ironsource.u6$a */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0013¢\u0006\u0004\b\u0016\u0010\u0017J*\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\n\u0010\u0007J\u0016\u0010\u0006\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rR\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0014\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Lcom/ironsource/u6$a;", "", "", "adViewId", "Lkotlin/Result;", "Landroid/webkit/WebView;", "a", "(Ljava/lang/String;)Lkotlin/Result;", "iconUrl", "Landroid/graphics/drawable/Drawable;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/content/Context;", "activityContext", "Lorg/json/JSONObject;", "json", "Lcom/ironsource/u6$b;", "Lcom/ironsource/c7;", "Lcom/ironsource/c7;", "imageLoader", "Lcom/ironsource/g0;", "Lcom/ironsource/g0;", "adViewManagement", "<init>", "(Lcom/ironsource/c7;Lcom/ironsource/g0;)V", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class a {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final c7 imageLoader;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private final g0 adViewManagement;

        public a(c7 imageLoader, g0 adViewManagement) {
            Intrinsics.checkNotNullParameter(imageLoader, "imageLoader");
            Intrinsics.checkNotNullParameter(adViewManagement, "adViewManagement");
            this.imageLoader = imageLoader;
            this.adViewManagement = adViewManagement;
        }

        private final Result<WebView> b(String iconUrl) {
            Object objM1238constructorimpl;
            if (iconUrl == null) {
                return null;
            }
            y6 y6VarA = this.adViewManagement.a(iconUrl);
            WebView presentingView = y6VarA != null ? y6VarA.getPresentingView() : null;
            if (presentingView == null) {
                Result.a aVar = Result.a;
                objM1238constructorimpl = Result.m1238constructorimpl(ResultKt.createFailure(new Exception("missing adview for id: '" + iconUrl + '\'')));
            } else {
                Result.a aVar2 = Result.a;
                objM1238constructorimpl = Result.m1238constructorimpl(presentingView);
            }
            return Result.m1237boximpl(objM1238constructorimpl);
        }

        private final Result<Drawable> c(String str) {
            if (str == null) {
                return null;
            }
            return Result.m1237boximpl(this.imageLoader.a(str));
        }

        public final b a(Context activityContext, JSONObject json) {
            Intrinsics.checkNotNullParameter(activityContext, "activityContext");
            Intrinsics.checkNotNullParameter(json, "json");
            JSONObject jSONObjectOptJSONObject = json.optJSONObject("title");
            String strB = jSONObjectOptJSONObject != null ? JSONObject.b(jSONObjectOptJSONObject, "text") : null;
            JSONObject jSONObjectOptJSONObject2 = json.optJSONObject(o2.h.F0);
            String strB2 = jSONObjectOptJSONObject2 != null ? JSONObject.b(jSONObjectOptJSONObject2, "text") : null;
            JSONObject jSONObjectOptJSONObject3 = json.optJSONObject("body");
            String strB3 = jSONObjectOptJSONObject3 != null ? JSONObject.b(jSONObjectOptJSONObject3, "text") : null;
            JSONObject jSONObjectOptJSONObject4 = json.optJSONObject("cta");
            String strB4 = jSONObjectOptJSONObject4 != null ? JSONObject.b(jSONObjectOptJSONObject4, "text") : null;
            JSONObject jSONObjectOptJSONObject5 = json.optJSONObject("icon");
            String strB5 = jSONObjectOptJSONObject5 != null ? JSONObject.b(jSONObjectOptJSONObject5, "url") : null;
            JSONObject jSONObjectOptJSONObject6 = json.optJSONObject("media");
            String strB6 = jSONObjectOptJSONObject6 != null ? JSONObject.b(jSONObjectOptJSONObject6, "adViewId") : null;
            JSONObject jSONObjectOptJSONObject7 = json.optJSONObject(o2.h.J0);
            return new b(new b.Data(strB, strB2, strB3, strB4, c(strB5), b(strB6), qa.INSTANCE.a(activityContext, jSONObjectOptJSONObject7 != null ? JSONObject.b(jSONObjectOptJSONObject7, "url") : null, this.imageLoader)));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.u6$b */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0005B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0005\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/ironsource/u6$b;", "", "Lorg/json/JSONObject;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/ironsource/u6$b$a;", "a", "Lcom/ironsource/u6$b$a;", "()Lcom/ironsource/u6$b$a;", "data", "<init>", "(Lcom/ironsource/u6$b$a;)V", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class b {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final Data data;

        /* JADX INFO: renamed from: com.ironsource.u6$b$a, reason: from toString */
        @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001BZ\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\t\u0012\u0006\u0010\u0017\u001a\u00020\u000fø\u0001\u0002¢\u0006\u0004\b*\u0010+J\u0006\u0010\u0003\u001a\u00020\u0002J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0004HÆ\u0003J!\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\tHÆ\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u000e\u0010\fJ\t\u0010\u0010\u001a\u00020\u000fHÆ\u0003Jj\u0010\u0005\u001a\u00020\u00002\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\t2\b\b\u0002\u0010\u0017\u001a\u00020\u000fHÆ\u0001ø\u0001\u0002J\t\u0010\u0018\u001a\u00020\u0004HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0019HÖ\u0001J\u0013\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001e\u001a\u0004\b!\u0010 R\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001e\u001a\u0004\b\"\u0010 R\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\b\u0010\u001e\u001a\u0004\b#\u0010 R(\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\f\n\u0004\b\u000b\u0010$\u001a\u0004\b%\u0010\fR(\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\t8\u0006ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\f\n\u0004\b\u000e\u0010$\u001a\u0004\b&\u0010\fR\u0017\u0010\u0017\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010'\u001a\u0004\b(\u0010)\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006,"}, d2 = {"Lcom/ironsource/u6$b$a;", "", "Lcom/ironsource/u6;", "h", "", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Result;", "Landroid/graphics/drawable/Drawable;", "e", "()Lkotlin/Result;", "Landroid/webkit/WebView;", InneractiveMediationDefs.GENDER_FEMALE, "Landroid/view/View;", "g", "title", o2.h.F0, "body", "cta", "icon", "media", o2.h.J0, "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/String;", "o", "()Ljava/lang/String;", "i", "j", CampaignEx.JSON_KEY_AD_K, "Lkotlin/Result;", "l", InneractiveMediationDefs.GENDER_MALE, "Landroid/view/View;", b4.p, "()Landroid/view/View;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/Result;Lkotlin/Result;Landroid/view/View;)V", "mediationsdk_release"}, mv = {1, 8, 0})
        public static final /* data */ class Data {

            /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
            private final String title;

            /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
            private final String advertiser;

            /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
            private final String body;

            /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
            private final String cta;

            /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
            private final Result<Drawable> icon;

            /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
            private final Result<WebView> media;

            /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
            private final View privacyIcon;

            /* JADX WARN: Multi-variable type inference failed */
            public Data(String str, String str2, String str3, String str4, Result<? extends Drawable> result, Result<? extends WebView> result2, View privacyIcon) {
                Intrinsics.checkNotNullParameter(privacyIcon, "privacyIcon");
                this.title = str;
                this.advertiser = str2;
                this.body = str3;
                this.cta = str4;
                this.icon = result;
                this.media = result2;
                this.privacyIcon = privacyIcon;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Data a(Data data, String str, String str2, String str3, String str4, Result result, Result result2, View view, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = data.title;
                }
                if ((i & 2) != 0) {
                    str2 = data.advertiser;
                }
                String str5 = str2;
                if ((i & 4) != 0) {
                    str3 = data.body;
                }
                String str6 = str3;
                if ((i & 8) != 0) {
                    str4 = data.cta;
                }
                String str7 = str4;
                if ((i & 16) != 0) {
                    result = data.icon;
                }
                Result result3 = result;
                if ((i & 32) != 0) {
                    result2 = data.media;
                }
                Result result4 = result2;
                if ((i & 64) != 0) {
                    view = data.privacyIcon;
                }
                return data.a(str, str5, str6, str7, result3, result4, view);
            }

            public final Data a(String title, String advertiser, String body, String cta, Result<? extends Drawable> icon, Result<? extends WebView> media, View privacyIcon) {
                Intrinsics.checkNotNullParameter(privacyIcon, "privacyIcon");
                return new Data(title, advertiser, body, cta, icon, media, privacyIcon);
            }

            /* JADX INFO: renamed from: a, reason: from getter */
            public final String getTitle() {
                return this.title;
            }

            /* JADX INFO: renamed from: b, reason: from getter */
            public final String getAdvertiser() {
                return this.advertiser;
            }

            /* JADX INFO: renamed from: c, reason: from getter */
            public final String getBody() {
                return this.body;
            }

            /* JADX INFO: renamed from: d, reason: from getter */
            public final String getCta() {
                return this.cta;
            }

            public final Result<Drawable> e() {
                return this.icon;
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Data)) {
                    return false;
                }
                Data data = (Data) other;
                return Intrinsics.areEqual(this.title, data.title) && Intrinsics.areEqual(this.advertiser, data.advertiser) && Intrinsics.areEqual(this.body, data.body) && Intrinsics.areEqual(this.cta, data.cta) && Intrinsics.areEqual(this.icon, data.icon) && Intrinsics.areEqual(this.media, data.media) && Intrinsics.areEqual(this.privacyIcon, data.privacyIcon);
            }

            public final Result<WebView> f() {
                return this.media;
            }

            /* JADX INFO: renamed from: g, reason: from getter */
            public final View getPrivacyIcon() {
                return this.privacyIcon;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r7v0, types: [android.webkit.WebView] */
            public final ISNNativeAdData h() {
                Drawable drawable;
                String str = this.title;
                String str2 = this.advertiser;
                String str3 = this.body;
                String str4 = this.cta;
                Result<Drawable> result = this.icon;
                if (result != null) {
                    Object b = result.getB();
                    if (Result.m1243isFailureimpl(b)) {
                        b = null;
                    }
                    drawable = (Drawable) b;
                } else {
                    drawable = null;
                }
                Result<WebView> result2 = this.media;
                if (result2 != null) {
                    Object b2 = result2.getB();
                    obj = (WebView) (Result.m1243isFailureimpl(b2) ? null : b2);
                }
                return new ISNNativeAdData(str, str2, str3, str4, drawable, obj, this.privacyIcon);
            }

            public int hashCode() {
                String str = this.title;
                int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                String str2 = this.advertiser;
                int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.body;
                int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
                String str4 = this.cta;
                int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
                Result<Drawable> result = this.icon;
                int iM1242hashCodeimpl = (iHashCode4 + (result == null ? 0 : Result.m1242hashCodeimpl(result.getB()))) * 31;
                Result<WebView> result2 = this.media;
                return ((iM1242hashCodeimpl + (result2 != null ? Result.m1242hashCodeimpl(result2.getB()) : 0)) * 31) + this.privacyIcon.hashCode();
            }

            public final String i() {
                return this.advertiser;
            }

            public final String j() {
                return this.body;
            }

            public final String k() {
                return this.cta;
            }

            public final Result<Drawable> l() {
                return this.icon;
            }

            public final Result<WebView> m() {
                return this.media;
            }

            public final View n() {
                return this.privacyIcon;
            }

            public final String o() {
                return this.title;
            }

            public String toString() {
                return "Data(title=" + this.title + ", advertiser=" + this.advertiser + ", body=" + this.body + ", cta=" + this.cta + ", icon=" + this.icon + ", media=" + this.media + ", privacyIcon=" + this.privacyIcon + ')';
            }
        }

        public b(Data data) {
            Intrinsics.checkNotNullParameter(data, "data");
            this.data = data;
        }

        private static final void b(JSONObject jSONObject, String str) throws JSONException {
            jSONObject.put(str, new JSONObject().put("success", true));
        }

        private static final <T> void c(JSONObject jSONObject, String str, Object obj) throws JSONException {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("success", Result.m1244isSuccessimpl(obj));
            Throwable thM1241exceptionOrNullimpl = Result.m1241exceptionOrNullimpl(obj);
            if (thM1241exceptionOrNullimpl != null) {
                String message = thM1241exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "unknown reason";
                }
                jSONObject2.put("reason", message);
            }
            v vVar = v.a;
            jSONObject.put(str, jSONObject2);
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final Data getData() {
            return this.data;
        }

        public final JSONObject b() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            if (this.data.o() != null) {
                b(jSONObject, "title");
            }
            if (this.data.i() != null) {
                b(jSONObject, o2.h.F0);
            }
            if (this.data.j() != null) {
                b(jSONObject, "body");
            }
            if (this.data.k() != null) {
                b(jSONObject, "cta");
            }
            Result<Drawable> resultL = this.data.l();
            if (resultL != null) {
                c(jSONObject, "icon", resultL.getB());
            }
            Result<WebView> resultM = this.data.m();
            if (resultM != null) {
                c(jSONObject, "media", resultM.getB());
            }
            return jSONObject;
        }
    }

    public ISNNativeAdData(String str, String str2, String str3, String str4, Drawable drawable, WebView webView, View privacyIcon) {
        Intrinsics.checkNotNullParameter(privacyIcon, "privacyIcon");
        this.title = str;
        this.advertiser = str2;
        this.body = str3;
        this.cta = str4;
        this.icon = drawable;
        this.mediaView = webView;
        this.privacyIcon = privacyIcon;
    }

    public static /* synthetic */ ISNNativeAdData a(ISNNativeAdData iSNNativeAdData, String str, String str2, String str3, String str4, Drawable drawable, WebView webView, View view, int i, Object obj) {
        if ((i & 1) != 0) {
            str = iSNNativeAdData.title;
        }
        if ((i & 2) != 0) {
            str2 = iSNNativeAdData.advertiser;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            str3 = iSNNativeAdData.body;
        }
        String str6 = str3;
        if ((i & 8) != 0) {
            str4 = iSNNativeAdData.cta;
        }
        String str7 = str4;
        if ((i & 16) != 0) {
            drawable = iSNNativeAdData.icon;
        }
        Drawable drawable2 = drawable;
        if ((i & 32) != 0) {
            webView = iSNNativeAdData.mediaView;
        }
        WebView webView2 = webView;
        if ((i & 64) != 0) {
            view = iSNNativeAdData.privacyIcon;
        }
        return iSNNativeAdData.a(str, str5, str6, str7, drawable2, webView2, view);
    }

    public final ISNNativeAdData a(String title, String advertiser, String body, String cta, Drawable icon, WebView mediaView, View privacyIcon) {
        Intrinsics.checkNotNullParameter(privacyIcon, "privacyIcon");
        return new ISNNativeAdData(title, advertiser, body, cta, icon, mediaView, privacyIcon);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getAdvertiser() {
        return this.advertiser;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getBody() {
        return this.body;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getCta() {
        return this.cta;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final Drawable getIcon() {
        return this.icon;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ISNNativeAdData)) {
            return false;
        }
        ISNNativeAdData iSNNativeAdData = (ISNNativeAdData) other;
        return Intrinsics.areEqual(this.title, iSNNativeAdData.title) && Intrinsics.areEqual(this.advertiser, iSNNativeAdData.advertiser) && Intrinsics.areEqual(this.body, iSNNativeAdData.body) && Intrinsics.areEqual(this.cta, iSNNativeAdData.cta) && Intrinsics.areEqual(this.icon, iSNNativeAdData.icon) && Intrinsics.areEqual(this.mediaView, iSNNativeAdData.mediaView) && Intrinsics.areEqual(this.privacyIcon, iSNNativeAdData.privacyIcon);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final WebView getMediaView() {
        return this.mediaView;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final View getPrivacyIcon() {
        return this.privacyIcon;
    }

    public final String h() {
        return this.advertiser;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.advertiser;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.body;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.cta;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Drawable drawable = this.icon;
        int iHashCode5 = (iHashCode4 + (drawable == null ? 0 : drawable.hashCode())) * 31;
        WebView webView = this.mediaView;
        return ((iHashCode5 + (webView != null ? webView.hashCode() : 0)) * 31) + this.privacyIcon.hashCode();
    }

    public final String i() {
        return this.body;
    }

    public final String j() {
        return this.cta;
    }

    public final Drawable k() {
        return this.icon;
    }

    public final WebView l() {
        return this.mediaView;
    }

    public final View m() {
        return this.privacyIcon;
    }

    public final String n() {
        return this.title;
    }

    public String toString() {
        return "ISNNativeAdData(title=" + this.title + ", advertiser=" + this.advertiser + ", body=" + this.body + ", cta=" + this.cta + ", icon=" + this.icon + ", mediaView=" + this.mediaView + ", privacyIcon=" + this.privacyIcon + ')';
    }
}
