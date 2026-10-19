package com.json;

import android.app.Activity;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.ISNNativeAdData;
import com.json.j9;
import com.json.mediationsdk.utils.c;
import com.json.o2;
import com.json.sdk.controller.e;
import com.json.sdk.controller.f;
import com.json.sdk.controller.k;
import com.json.sdk.utils.Logger;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B+\u0012\u0006\u0010\u001c\u001a\u00020\u001a\u0012\u0006\u0010\u001f\u001a\u00020\u001d\u0012\b\b\u0002\u0010\"\u001a\u00020 \u0012\b\b\u0002\u0010%\u001a\u00020#¢\u0006\u0004\b/\u00100J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\fH\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\fH\u0016J\b\u0010\u000e\u001a\u00020\u0006H\u0016R\u0014\u0010\u001c\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u001eR\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010!R\u0014\u0010%\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010$R\u001c\u0010(\u001a\n &*\u0004\u0018\u00010\u001a0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010\u001bR$\u0010.\u001a\u0004\u0018\u00010)8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b\u0007\u0010,\"\u0004\b\u0007\u0010-¨\u00061"}, d2 = {"Lcom/ironsource/i9;", "Lcom/ironsource/j9;", "Landroid/app/Activity;", "activity", "Lcom/ironsource/sdk/controller/f$a;", c.Y1, "", "a", "Lcom/ironsource/u6$b;", "report", "Lcom/ironsource/u6;", "adData", "Lorg/json/JSONObject;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/ironsource/sdk/controller/k$b;", "c", "Lcom/ironsource/f9;", "msg", "loadParams", "destroy", "Lcom/ironsource/x6;", "viewHolder", "Lcom/ironsource/dd;", "viewVisibilityParams", "clickParams", "", "Ljava/lang/String;", "id", "Lcom/ironsource/sdk/controller/e;", "Lcom/ironsource/sdk/controller/e;", "controllerManager", "Lcom/ironsource/c7;", "Lcom/ironsource/c7;", "imageLoader", "Lcom/ironsource/g0;", "Lcom/ironsource/g0;", "adViewManagement", "kotlin.jvm.PlatformType", "e", "logTag", "Lcom/ironsource/j9$a;", InneractiveMediationDefs.GENDER_FEMALE, "Lcom/ironsource/j9$a;", "()Lcom/ironsource/j9$a;", "(Lcom/ironsource/j9$a;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "<init>", "(Ljava/lang/String;Lcom/ironsource/sdk/controller/e;Lcom/ironsource/c7;Lcom/ironsource/g0;)V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class i9 implements j9 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String id;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final e controllerManager;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final c7 imageLoader;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final g0 adViewManagement;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final String logTag;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private j9.a listener;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004¨\u0006\u0014"}, d2 = {"Lcom/ironsource/i9$a;", "", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "LOAD", "c", "LOAD_REPORT", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "REGISTER", "e", "CLICK", InneractiveMediationDefs.GENDER_FEMALE, "PRIVACY_CLICK", "g", "VISIBILITY_CHANGED", "h", "DESTROY", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class a {
        public static final a a = new a();

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        public static final String LOAD = "nativeAd.load";

        /* JADX INFO: renamed from: c, reason: from kotlin metadata */
        public static final String LOAD_REPORT = "nativeAd.loadReport";

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
        public static final String REGISTER = "nativeAd.register";

        /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
        public static final String CLICK = "nativeAd.click";

        /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
        public static final String PRIVACY_CLICK = "nativeAd.privacyClick";

        /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
        public static final String VISIBILITY_CHANGED = "nativeAd.visibilityChanged";

        /* JADX INFO: renamed from: h, reason: from kotlin metadata */
        public static final String DESTROY = "nativeAd.destroy";

        private a() {
        }
    }

    public i9(String id, e controllerManager, c7 imageLoader, g0 adViewManagement) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(controllerManager, "controllerManager");
        Intrinsics.checkNotNullParameter(imageLoader, "imageLoader");
        Intrinsics.checkNotNullParameter(adViewManagement, "adViewManagement");
        this.id = id;
        this.controllerManager = controllerManager;
        this.imageLoader = imageLoader;
        this.adViewManagement = adViewManagement;
        this.logTag = i9.class.getSimpleName();
        controllerManager.a(id, m());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ i9(String str, e eVar, c7 c7Var, g0 g0Var, int i, n nVar) {
        c7Var = (i & 4) != 0 ? new b7(null, 1, null) : c7Var;
        if ((i & 8) != 0) {
            g0Var = g6.a();
            Intrinsics.checkNotNullExpressionValue(g0Var, "getInstance()");
        }
        this(str, eVar, c7Var, g0Var);
    }

    private final void b(Activity activity, f.CallbackToNative callbackToNative) {
        if (callbackToNative.d() == null) {
            j9.a listener = getListener();
            if (listener != null) {
                listener.a("failed to load native ad: missing params");
                return;
            }
            return;
        }
        if (callbackToNative.d().optBoolean("success", false)) {
            ISNNativeAdData.b bVarA = new ISNNativeAdData.a(this.imageLoader, this.adViewManagement).a(activity, callbackToNative.d());
            i(bVarA, bVarA.getData().h());
            return;
        }
        String reason = callbackToNative.d().optString("reason", "failed to load native ad: unexpected error");
        j9.a listener2 = getListener();
        if (listener2 != null) {
            Intrinsics.checkNotNullExpressionValue(reason, "reason");
            listener2.a(reason);
        }
    }

    private final void c(MessageToNative messageToNative) {
        if (messageToNative.f() == null) {
            Logger.i(this.logTag, "failed to handle click on native ad: missing params");
            return;
        }
        if (messageToNative.f().optBoolean("success", false)) {
            j9.a listener = getListener();
            if (listener != null) {
                listener.b();
                return;
            }
            return;
        }
        String strOptString = messageToNative.f().optString("reason", "unexpected error");
        Logger.i(this.logTag, "failed to handle click on native ad: " + strOptString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(i9 this$0, Activity activity, f.CallbackToNative it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.b(activity, it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(i9 this$0, MessageToNative msg) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (Intrinsics.areEqual(msg.e(), a.CLICK)) {
            this$0.c(msg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(i9 this$0, f.CallbackToNative it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.h(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(i9 this$0, ISNNativeAdData adData, f.CallbackToNative it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adData, "$adData");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.j(adData, it);
    }

    private final void h(f.CallbackToNative callbackToNative) {
        if (callbackToNative.d() == null) {
            Logger.i(this.logTag, "failed to handle click on native ad: missing params");
            return;
        }
        if (callbackToNative.d().optBoolean("success", false)) {
            j9.a listener = getListener();
            if (listener != null) {
                listener.b();
                return;
            }
            return;
        }
        String strOptString = callbackToNative.d().optString("reason", "unexpected error");
        Logger.i(this.logTag, "failed to handle click on native ad: " + strOptString);
    }

    private final void i(ISNNativeAdData.b bVar, final ISNNativeAdData iSNNativeAdData) {
        this.controllerManager.a(new f.MessageToController(this.id, "nativeAd.loadReport." + this.id, bVar.b()), new k.a() { // from class: com.ironsource.u0
            @Override // com.ironsource.sdk.controller.k.a
            public final void a(f.CallbackToNative callbackToNative) {
                i9.g(this.a, iSNNativeAdData, callbackToNative);
            }
        });
    }

    private final void j(ISNNativeAdData iSNNativeAdData, f.CallbackToNative callbackToNative) {
        if (callbackToNative.d() == null) {
            j9.a listener = getListener();
            if (listener != null) {
                listener.a("failed to load native ad: missing report params");
                return;
            }
            return;
        }
        if (callbackToNative.d().optBoolean("success", false)) {
            j9.a listener2 = getListener();
            if (listener2 != null) {
                listener2.a(iSNNativeAdData);
                return;
            }
            return;
        }
        String reason = callbackToNative.d().optString("reason", "failed to load native ad: unexpected error");
        j9.a listener3 = getListener();
        if (listener3 != null) {
            Intrinsics.checkNotNullExpressionValue(reason, "reason");
            listener3.a(reason);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(i9 this$0, f.CallbackToNative it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.l(it);
    }

    private final void l(f.CallbackToNative callbackToNative) {
        if (callbackToNative.d() == null) {
            Logger.i(this.logTag, "failed to handle show on native ad: missing params");
            return;
        }
        if (callbackToNative.d().optBoolean("success", false)) {
            j9.a listener = getListener();
            if (listener != null) {
                listener.a();
                return;
            }
            return;
        }
        String strOptString = callbackToNative.d().optString("reason", "unexpected error");
        Logger.i(this.logTag, "failed to handle show on native ad: " + strOptString);
    }

    private final k.b m() {
        return new k.b() { // from class: com.ironsource.b
            @Override // com.ironsource.sdk.controller.k.b
            public final void a(MessageToNative messageToNative) {
                i9.e(this.a, messageToNative);
            }
        };
    }

    private final JSONObject n() throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put(f.b.COMMAND, a.CLICK).put("sdkCallback", o2.g.Z);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "JSONObject()\n\t\t\t.put(Con…hods.ON_RECEIVED_MESSAGE)");
        return jSONObjectPut;
    }

    @Override // com.json.j9
    /* JADX INFO: renamed from: a, reason: from getter */
    public j9.a getListener() {
        return this.listener;
    }

    @Override // com.json.j9
    public void a(final Activity activity, JSONObject loadParams) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(loadParams, "loadParams");
        this.controllerManager.a(activity);
        this.controllerManager.a(new f.MessageToController(this.id, a.LOAD, loadParams), new k.a() { // from class: com.ironsource.c
            @Override // com.ironsource.sdk.controller.k.a
            public final void a(f.CallbackToNative callbackToNative) {
                i9.d(this.a, activity, callbackToNative);
            }
        });
    }

    @Override // com.json.j9
    public void a(ViewVisibilityParams viewVisibilityParams) {
        Intrinsics.checkNotNullParameter(viewVisibilityParams, "viewVisibilityParams");
        this.controllerManager.a(new f.MessageToController(this.id, a.VISIBILITY_CHANGED, viewVisibilityParams.g()), new k.a() { // from class: com.ironsource.j2
            @Override // com.ironsource.sdk.controller.k.a
            public final void a(f.CallbackToNative callbackToNative) {
                i9.k(this.a, callbackToNative);
            }
        });
    }

    @Override // com.json.j9
    public void a(j9.a aVar) {
        this.listener = aVar;
    }

    @Override // com.json.j9
    public void a(ISNNativeAdViewHolder viewHolder) throws JSONException {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        JSONObject params = new JSONObject().put("assetViews", viewHolder.t()).put("adViewClickCommand", n());
        String str = this.id;
        Intrinsics.checkNotNullExpressionValue(params, "params");
        this.controllerManager.a(new f.MessageToController(str, a.REGISTER, params), (k.a) null);
    }

    @Override // com.json.j9
    public void a(JSONObject clickParams) {
        Intrinsics.checkNotNullParameter(clickParams, "clickParams");
        this.controllerManager.a(new f.MessageToController(this.id, a.CLICK, clickParams), new k.a() { // from class: com.ironsource.c3
            @Override // com.ironsource.sdk.controller.k.a
            public final void a(f.CallbackToNative callbackToNative) {
                i9.f(this.a, callbackToNative);
            }
        });
    }

    @Override // com.json.j9
    public void b() {
        this.controllerManager.a(new f.MessageToController(this.id, a.PRIVACY_CLICK, new JSONObject()), (k.a) null);
    }

    @Override // com.json.j9
    public void destroy() {
        this.controllerManager.a(new f.MessageToController(this.id, a.DESTROY, new JSONObject()), (k.a) null);
    }
}
