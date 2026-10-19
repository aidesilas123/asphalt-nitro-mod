package com.hyprmx.android.sdk.analytics;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Insets;
import android.os.Build;
import android.provider.Settings;
import android.security.NetworkSecurityPolicy;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import androidx.core.content.ContextCompat;
import com.facebook.internal.AnalyticsEvents;
import com.hyprmx.android.sdk.core.t;
import com.hyprmx.android.sdk.core.u;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.o;
import com.hyprmx.android.sdk.utility.q;
import com.hyprmx.android.sdk.utility.w;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class k implements f {
    public final Context a;
    public final com.hyprmx.android.sdk.core.js.a b;
    public final com.hyprmx.android.sdk.model.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.hyprmx.android.sdk.powersavemode.a f4463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final q f4464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final o f4465f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile String f4466g;
    public volatile boolean h;

    @DebugMetadata(c = "com.hyprmx.android.sdk.analytics.ParameterControllerImpl", f = "ParameterController.kt", i = {0}, l = {85, 86}, m = MobileAdsBridgeBase.initializeMethodName, n = {"this"}, s = {"L$0"})
    public static final class a extends ContinuationImpl {
        public k a;
        public com.hyprmx.android.sdk.core.js.a b;
        public String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public StringBuilder f4467d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public /* synthetic */ Object f4468e;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f4470g;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f4468e = obj;
            this.f4470g |= Integer.MIN_VALUE;
            return k.this.a(this);
        }
    }

    public k(Context context, com.hyprmx.android.sdk.core.js.a jsEngine, com.hyprmx.android.sdk.model.a preloadedVastCache, com.hyprmx.android.sdk.powersavemode.a powerSaveModeListener, q connectionInfo, o gaidController, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(preloadedVastCache, "preloadedVastCache");
        Intrinsics.checkNotNullParameter(powerSaveModeListener, "powerSaveModeListener");
        Intrinsics.checkNotNullParameter(connectionInfo, "connectionInfo");
        Intrinsics.checkNotNullParameter(gaidController, "gaidController");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = context;
        this.b = jsEngine;
        this.c = preloadedVastCache;
        this.f4463d = powerSaveModeListener;
        this.f4464e = connectionInfo;
        this.f4465f = gaidController;
        jsEngine.a("HYPRRequestParamListener", this);
    }

    public /* synthetic */ k(Context context, com.hyprmx.android.sdk.core.js.a aVar, com.hyprmx.android.sdk.model.a aVar2, com.hyprmx.android.sdk.powersavemode.a aVar3, q qVar, CoroutineScope coroutineScope) {
        this(context, aVar, aVar2, aVar3, qVar, com.hyprmx.android.sdk.utility.n.a, coroutineScope);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.analytics.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation<? super kotlin.v> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.hyprmx.android.sdk.analytics.k.a
            if (r0 == 0) goto L13
            r0 = r9
            com.hyprmx.android.sdk.analytics.k$a r0 = (com.hyprmx.android.sdk.analytics.k.a) r0
            int r1 = r0.f4470g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4470g = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.analytics.k$a r0 = new com.hyprmx.android.sdk.analytics.k$a
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f4468e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4470g
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r9)
            goto L9e
        L2d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L35:
            java.lang.StringBuilder r2 = r0.f4467d
            java.lang.String r4 = r0.c
            com.hyprmx.android.sdk.core.js.a r5 = r0.b
            com.hyprmx.android.sdk.analytics.k r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L69
        L41:
            kotlin.ResultKt.throwOnFailure(r9)
            com.hyprmx.android.sdk.core.js.a r5 = r8.b
            java.lang.String r9 = "HYPRRequestParameterManager"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r6 = "new RequestParameterManager("
            r2.append(r6)
            com.hyprmx.android.sdk.model.a r6 = r8.c
            r0.a = r8
            r0.b = r5
            r0.c = r9
            r0.f4467d = r2
            r0.f4470g = r4
            java.lang.Object r4 = r6.a(r0)
            if (r4 != r1) goto L65
            return r1
        L65:
            r6 = r8
            r7 = r4
            r4 = r9
            r9 = r7
        L69:
            r2.append(r9)
            r9 = 41
            r2.append(r9)
            java.lang.String r9 = r2.toString()
            r5.a(r4, r9)
            android.content.Context r9 = r6.a
            r2 = 0
            r0.a = r2
            r0.b = r2
            r0.c = r2
            r0.f4467d = r2
            r0.f4470g = r3
            kotlinx.coroutines.t0 r3 = kotlinx.coroutines.Dispatchers.getMain()
            com.hyprmx.android.sdk.analytics.j r4 = new com.hyprmx.android.sdk.analytics.j
            r4.<init>(r6, r9, r2)
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r3, r4, r0)
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            if (r9 != r0) goto L99
            goto L9b
        L99:
            kotlin.v r9 = kotlin.v.a
        L9b:
            if (r9 != r1) goto L9e
            return r1
        L9e:
            kotlin.v r9 = kotlin.v.a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.analytics.k.a(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ Void getATSSettings() {
        return n.a(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final boolean getAdIdOptedOut() {
        return this.h;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getAndroidId() {
        String string = Settings.Secure.getString(this.a.getContentResolver(), "android_id");
        return string == null ? "" : string;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getBundleID() {
        String packageName = this.a.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
        return packageName;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getBundleVersion() {
        try {
            String str = (Build.VERSION.SDK_INT >= 33 ? this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), PackageManager.PackageInfoFlags.of(0L)) : this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 1)).versionName;
            Intrinsics.checkNotNullExpressionValue(str, "{\n      if (Build.VERSIO…versionName\n      }\n    }");
            return str;
        } catch (RuntimeException unused) {
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        }
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getCarriers() throws JSONException {
        String str;
        Object systemService = this.a.getSystemService("phone");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        TelephonyManager telephonyManager = (TelephonyManager) systemService;
        JSONObject jSONObject = new JSONObject();
        if (telephonyManager.getSimState() == 5) {
            String networkOperatorName = telephonyManager.getNetworkOperatorName();
            String networkOperator = telephonyManager.getNetworkOperator();
            String str2 = null;
            if (TextUtils.isEmpty(networkOperator)) {
                str = null;
            } else {
                Intrinsics.checkNotNullExpressionValue(networkOperator, "networkOperator");
                String strSubstring = networkOperator.substring(0, 3);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                String strSubstring2 = networkOperator.substring(3);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
                str = strSubstring2;
                str2 = strSubstring;
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(KidozParams.CARRIER_NAME, networkOperatorName);
            jSONObject2.put("mobile_country_code", str2);
            jSONObject2.put("mobile_network_code", str);
            jSONObject.put("0", jSONObject2);
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "carriers.toString()");
        return string;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final boolean getClearTextPermitted() {
        if (Build.VERSION.SDK_INT >= 23) {
            return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
        }
        return true;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getConnectionType() {
        return this.f4464e.a();
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ String getDevice() {
        return n.b(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ String getDeviceBrand() {
        return n.c(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ String getDeviceFingerPrint() {
        return n.d(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final int getDeviceHeight() {
        Object systemService = this.a.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        if (Build.VERSION.SDK_INT < 30) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.heightPixels;
        }
        WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
        Intrinsics.checkNotNullExpressionValue(currentWindowMetrics, "windowManager.currentWindowMetrics");
        Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insetsIgnoringVisibility, "windowMetrics.windowInse…Insets.Type.systemBars())");
        currentWindowMetrics.getBounds().width();
        int i = insetsIgnoringVisibility.left;
        return (currentWindowMetrics.getBounds().height() - insetsIgnoringVisibility.top) - insetsIgnoringVisibility.bottom;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ String getDeviceManufacturer() {
        return n.e(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ String getDeviceModel() {
        return n.f(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ String getDeviceProduct() {
        return n.g(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ String getDeviceType() {
        return n.h(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final int getDeviceWidth() {
        Object systemService = this.a.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        if (Build.VERSION.SDK_INT < 30) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.widthPixels;
        }
        WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
        Intrinsics.checkNotNullExpressionValue(currentWindowMetrics, "windowManager.currentWindowMetrics");
        Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insetsIgnoringVisibility, "windowMetrics.windowInse…Insets.Type.systemBars())");
        return (currentWindowMetrics.getBounds().width() - insetsIgnoringVisibility.left) - insetsIgnoringVisibility.right;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ String getDistributorID() {
        return n.i(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getGAID() {
        return this.f4466g;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ Void getIOSAppOnMac() {
        return n.j(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ Void getIdentifierForVendor() {
        return n.k(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final boolean getIsAgeRestrictedUser() {
        return t.a.f4520f;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final boolean getIsLowPowerEnabled() {
        return this.f4463d.getF4614g();
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ int getMSDKV() {
        return n.l(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ Void getMacCatalyst() {
        return n.m(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getMaxFrameSize() throws JSONException {
        DisplayMetrics displayMetrics = this.a.getResources().getDisplayMetrics();
        int iFloor = (int) Math.floor(w.b(displayMetrics.widthPixels, this.a));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", iFloor);
        jSONObject.put("height", (int) Math.floor(w.b(displayMetrics.heightPixels, this.a)));
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "obj.toString()");
        return string;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getMediationParams() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        com.hyprmx.android.sdk.core.q qVar = t.a;
        u uVar = qVar.f4518d;
        if (uVar.b != null || uVar.c != null || uVar.f4530d != null) {
            JSONObject jSONObject2 = new JSONObject();
            String str = qVar.f4518d.b;
            if (str != null) {
                jSONObject2.put("name", str);
            }
            String str2 = qVar.f4518d.c;
            if (str2 != null) {
                jSONObject2.put("sdk_version", str2);
            }
            String str3 = qVar.f4518d.f4530d;
            if (str3 != null) {
                jSONObject2.put("adapter_version", str3);
            }
            jSONObject.put("mediator", jSONObject2);
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "jsonObject.toString()");
        return string;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getMraidSupportsString() {
        return "{\"sms\":true,\"storePicture\":true,\"inlineVideo\":true,\"calendar\":true,\"tel\":true}";
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ String getOSVersion() {
        return n.n(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getPermissions() {
        JSONArray jSONArray;
        try {
            Context context = this.a;
            Intrinsics.checkNotNullParameter(context, "context");
            ArrayList arrayList = new ArrayList();
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr != null) {
                Intrinsics.checkNotNullExpressionValue(strArr, "info.requestedPermissions");
                for (String str : strArr) {
                    arrayList.add(str);
                }
            }
            jSONArray = new JSONArray((Collection) arrayList);
        } catch (PackageManager.NameNotFoundException unused) {
            HyprMXLog.d("Unable to get list of permissions from Android Manifest");
            jSONArray = new JSONArray();
        }
        String string = jSONArray.toString();
        Intrinsics.checkNotNullExpressionValue(string, "try {\n      JSONArray(ge…NArray()\n    }.toString()");
        return string;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getPersistentID() {
        return this.f4466g;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ String getPlatform() {
        return n.o(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ Void getPrivacyTrackingStatus() {
        return n.p(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final float getPxRatio() {
        return this.a.getResources().getDisplayMetrics().density;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ String getSDKVersion() {
        return n.q(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ Void getSKAdNetworkItems() {
        return n.r(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getScreenSize() {
        return getMaxFrameSize();
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ Void getScreenTraits() {
        return n.s(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ Void getSupportedInterfaceSettings() {
        return n.t(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ Void getSupportsMultipleScenes() {
        return n.u(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ boolean getSupportsMultipleWindow() {
        return n.v(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final float getTargetSDKVersion() {
        return this.a.getApplicationContext().getApplicationInfo().targetSdkVersion;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ String getUID() {
        return n.w(this);
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getUnityParams() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String str = t.a.f4518d.a;
        if (str != null) {
            jSONObject.put("unity_version", str);
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "jsonObject.toString()");
        return string;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public final String getUserPermissions() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            for (int i : h.b(3)) {
                jSONObject.put(i.b(i), g.a(ContextCompat.checkSelfPermission(this.a, i.a(i)) == 0 ? 1 : 2));
            }
        } catch (PackageManager.NameNotFoundException unused) {
            HyprMXLog.d("Unable to get list of permissions from Android Manifest");
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "userPermissions.toString()");
        return string;
    }

    @Override // com.hyprmx.android.sdk.analytics.f, com.hyprmx.android.sdk.analytics.l
    public /* bridge */ /* synthetic */ Void getXcodeVersion() {
        return n.x(this);
    }
}
