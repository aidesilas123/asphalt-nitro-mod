package com.json;

import android.app.Activity;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.ISNNativeAdViewHolder;
import com.json.gb;
import com.json.h6;
import com.json.j9;
import com.json.o2;
import com.json.sdk.IronSourceNetwork;
import com.json.sdk.controller.e;
import com.json.w6;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import org.json.JSONException;
import org.json.JSONObject;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\t*\u0002\u0006\t\u0018\u0000 42\u00020\u0001:\u0001\u0011B#\b\u0000\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001e\u001a\u00020\u001c¢\u0006\u0004\b2\u00103J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\b\u0010\u0014\u001a\u00020\u0010H\u0016R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001dR(\u0010$\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u001f8\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b\u0019\u0010#R(\u0010'\u001a\u0004\u0018\u00010\u00152\b\u0010 \u001a\u0004\u0018\u00010\u00158\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0007\u0010\u0016\u001a\u0004\b%\u0010&R(\u0010)\u001a\u0004\u0018\u00010\u00152\b\u0010 \u001a\u0004\u0018\u00010\u00158\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\n\u0010\u0016\u001a\u0004\b(\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010*R$\u00100\u001a\u0004\u0018\u00010,8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b(\u0010-\u001a\u0004\b\u0011\u0010.\"\u0004\b\u0011\u0010/R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u00101¨\u00065"}, d2 = {"Lcom/ironsource/s6;", "Lcom/ironsource/w6;", "Lcom/ironsource/j6;", "c", "", "i", "com/ironsource/s6$b", "e", "()Lcom/ironsource/s6$b;", "com/ironsource/s6$c", InneractiveMediationDefs.GENDER_FEMALE, "()Lcom/ironsource/s6$c;", "Landroid/app/Activity;", "activity", "Lorg/json/JSONObject;", "loadParams", "", "a", "Lcom/ironsource/x6;", "viewHolder", "destroy", "", "Ljava/lang/String;", "id", "Lcom/ironsource/j9;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/ironsource/j9;", "controller", "Lcom/ironsource/k6;", "Lcom/ironsource/k6;", "eventTracker", "Lcom/ironsource/u6;", "<set-?>", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/ironsource/u6;", "()Lcom/ironsource/u6;", "adData", "g", "()Ljava/lang/String;", "demandSourceName", "h", "isBidding", "Ljava/lang/Long;", "startTime", "Lcom/ironsource/w6$a;", "Lcom/ironsource/w6$a;", "()Lcom/ironsource/w6$a;", "(Lcom/ironsource/w6$a;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/x6;", "<init>", "(Ljava/lang/String;Lcom/ironsource/j9;Lcom/ironsource/k6;)V", "j", "mediationsdk_release"}, mv = {1, 8, 0})
public final class s6 implements w6 {
    public static final a j = new a(null);
    private final String a;
    private final j9 b;
    private final k6 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ISNNativeAdData f6537d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6538e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6539f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Long f6540g;
    private w6.a h;
    private ISNNativeAdViewHolder i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0003\u001a\u00020\u0002H\u0007¨\u0006\u0006"}, d2 = {"Lcom/ironsource/s6$a;", "", "Lcom/ironsource/s6;", "a", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final s6 a() {
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
            e controllerManager = IronSourceNetwork.getControllerManager();
            Intrinsics.checkNotNullExpressionValue(controllerManager, "controllerManager");
            return new s6(string, new i9(string, controllerManager, null, null, 12, null), new l6());
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\t"}, d2 = {"com/ironsource/s6$b", "Lcom/ironsource/j9$a;", "Lcom/ironsource/u6;", "adData", "", "a", "", "reason", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class b implements j9.a {
        b() {
        }

        @Override // com.ironsource.j9.a
        public void a() {
            w6.a aVarA = s6.this.a();
            if (aVarA != null) {
                aVarA.onNativeAdShown();
            }
        }

        @Override // com.ironsource.j9.a
        public void a(ISNNativeAdData adData) {
            Intrinsics.checkNotNullParameter(adData, "adData");
            s6.this.f6537d = adData;
            k6 k6Var = s6.this.c;
            gb.a loadAdSuccess = gb.l;
            Intrinsics.checkNotNullExpressionValue(loadAdSuccess, "loadAdSuccess");
            HashMap<String, Object> mapA = s6.this.c().a();
            Intrinsics.checkNotNullExpressionValue(mapA, "baseEventParams().data");
            k6Var.a(loadAdSuccess, mapA);
            w6.a aVarA = s6.this.a();
            if (aVarA != null) {
                aVarA.onNativeAdLoadSuccess(adData);
            }
        }

        @Override // com.ironsource.j9.a
        public void a(String reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            j6 j6VarA = s6.this.c().a(b4.z, reason);
            k6 k6Var = s6.this.c;
            gb.a loadAdFailed = gb.f6121g;
            Intrinsics.checkNotNullExpressionValue(loadAdFailed, "loadAdFailed");
            HashMap<String, Object> mapA = j6VarA.a();
            Intrinsics.checkNotNullExpressionValue(mapA, "eventParams.data");
            k6Var.a(loadAdFailed, mapA);
            w6.a aVarA = s6.this.a();
            if (aVarA != null) {
                aVarA.onNativeAdLoadFailed(reason);
            }
        }

        @Override // com.ironsource.j9.a
        public void b() {
            w6.a aVarA = s6.this.a();
            if (aVarA != null) {
                aVarA.onNativeAdClicked();
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"com/ironsource/s6$c", "Lcom/ironsource/x6$a;", "Lcom/ironsource/x6$b;", "viewName", "", "a", "Lcom/ironsource/dd;", "viewVisibilityParams", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class c implements ISNNativeAdViewHolder.a {

        @Metadata(mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[ISNNativeAdViewHolder.b.values().length];
                try {
                    iArr[ISNNativeAdViewHolder.b.PrivacyIcon.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                a = iArr;
            }
        }

        c() {
        }

        @Override // com.json.ISNNativeAdViewHolder.a
        public void a(ViewVisibilityParams viewVisibilityParams) {
            Intrinsics.checkNotNullParameter(viewVisibilityParams, "viewVisibilityParams");
            s6.this.b.a(viewVisibilityParams);
        }

        @Override // com.json.ISNNativeAdViewHolder.a
        public void a(ISNNativeAdViewHolder.b viewName) throws JSONException {
            Intrinsics.checkNotNullParameter(viewName, "viewName");
            if (a.a[viewName.ordinal()] == 1) {
                s6.this.b.b();
                return;
            }
            JSONObject clickParams = new JSONObject().put("viewName", viewName.getI());
            j9 j9Var = s6.this.b;
            Intrinsics.checkNotNullExpressionValue(clickParams, "clickParams");
            j9Var.a(clickParams);
        }
    }

    public s6(String id, j9 controller, k6 eventTracker) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(controller, "controller");
        Intrinsics.checkNotNullParameter(eventTracker, "eventTracker");
        this.a = id;
        this.b = controller;
        this.c = eventTracker;
        controller.a(e());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ s6(String str, j9 j9Var, k6 k6Var, int i, n nVar) {
        if ((i & 1) != 0) {
            str = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(str, "randomUUID().toString()");
        }
        this(str, j9Var, k6Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j6 c() {
        j6 j6VarA = new j6().a(b4.w, this.f6539f).a(b4.u, this.f6538e).a(b4.v, h6.e.NativeAd.toString()).a(b4.G, Long.valueOf(i()));
        Intrinsics.checkNotNullExpressionValue(j6VarA, "ISNEventParams()\n\t\t\t.add…CUSTOM_C, loadDuration())");
        return j6VarA;
    }

    public static final s6 d() {
        return j.a();
    }

    private final b e() {
        return new b();
    }

    private final c f() {
        return new c();
    }

    private final long i() {
        Long l = this.f6540g;
        if (l == null) {
            return -1L;
        }
        return Calendar.getInstance().getTimeInMillis() - l.longValue();
    }

    @Override // com.json.w6
    public w6.a a() {
        return this.h;
    }

    @Override // com.json.w6
    public void a(Activity activity, JSONObject loadParams) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(loadParams, "loadParams");
        this.f6540g = Long.valueOf(Calendar.getInstance().getTimeInMillis());
        this.f6538e = loadParams.optString("demandSourceName");
        this.f6539f = loadParams.optString("inAppBidding");
        k6 k6Var = this.c;
        gb.a loadAd = gb.f6120f;
        Intrinsics.checkNotNullExpressionValue(loadAd, "loadAd");
        HashMap<String, Object> mapA = c().a();
        Intrinsics.checkNotNullExpressionValue(mapA, "baseEventParams().data");
        k6Var.a(loadAd, mapA);
        JSONObject jSONObject = new JSONObject(loadParams.toString());
        jSONObject.put(o2.h.y0, String.valueOf(this.f6540g));
        this.b.a(activity, jSONObject);
    }

    @Override // com.json.w6
    public void a(w6.a aVar) {
        this.h = aVar;
    }

    @Override // com.json.w6
    public void a(ISNNativeAdViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HashMap<String, Object> mapA = c().a();
        Intrinsics.checkNotNullExpressionValue(mapA, "baseEventParams().data");
        linkedHashMap.putAll(mapA);
        String string = viewHolder.t().toString();
        Intrinsics.checkNotNullExpressionValue(string, "viewHolder.viewsStatus().toString()");
        linkedHashMap.put(b4.x, string);
        k6 k6Var = this.c;
        gb.a registerAd = gb.n;
        Intrinsics.checkNotNullExpressionValue(registerAd, "registerAd");
        k6Var.a(registerAd, linkedHashMap);
        this.i = viewHolder;
        viewHolder.a(f());
        this.b.a(viewHolder);
    }

    @Override // com.json.w6
    public ISNNativeAdData b() {
        return this.f6537d;
    }

    @Override // com.json.w6
    public void destroy() {
        ISNNativeAdViewHolder iSNNativeAdViewHolder = this.i;
        if (iSNNativeAdViewHolder != null) {
            iSNNativeAdViewHolder.a((ISNNativeAdViewHolder.a) null);
        }
        this.b.destroy();
    }

    public final String g() {
        return this.f6538e;
    }

    public final String h() {
        return this.f6539f;
    }
}
