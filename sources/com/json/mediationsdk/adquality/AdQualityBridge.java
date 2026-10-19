package com.json.mediationsdk.adquality;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.json.a4;
import com.json.adqualitysdk.sdk.ISAdQualityConfig;
import com.json.adqualitysdk.sdk.ISAdQualityDeviceIdType;
import com.json.adqualitysdk.sdk.ISAdQualityInitError;
import com.json.adqualitysdk.sdk.ISAdQualityInitListener;
import com.json.adqualitysdk.sdk.ISAdQualityLogLevel;
import com.json.adqualitysdk.sdk.ISAdQualitySegment;
import com.json.adqualitysdk.sdk.IronSourceAdQuality;
import com.json.cb;
import com.json.mediationsdk.IronSourceSegment;
import com.json.mediationsdk.adquality.AdQualityBridge;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.s4;
import com.json.t4;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B1\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0013\u001a\u00020\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e¨\u0006\u0019"}, d2 = {"Lcom/ironsource/mediationsdk/adquality/AdQualityBridge;", "", "", "logLevel", "Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;", "convertToAdQualityLogLevel", "Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;", "getDeviceIdType", "", "getCoppaValue", "", "userId", "", "changeUserId", "Lcom/ironsource/mediationsdk/IronSourceSegment;", "segment", "setSegment", "Landroid/content/Context;", "context", "appKey", "Lcom/ironsource/n;", "adQualityDataProvider", "<init>", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/n;I)V", "Companion", "mediationsdk_release"}, mv = {1, 8, 0})
public final class AdQualityBridge {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\b\u0010\u0005\u001a\u00020\u0006H\u0003J\b\u0010\u0007\u001a\u00020\u0004H\u0003J-\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0003¢\u0006\u0002\u0010\u000eJ\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0003¨\u0006\u0012"}, d2 = {"Lcom/ironsource/mediationsdk/adquality/AdQualityBridge$Companion;", "", "()V", "adQualityAvailable", "", "getAdQualitySdkVersion", "", "isGetVersionMethodExist", "logEvent", "", "eventId", "", IronSourceConstants.EVENTS_ERROR_CODE, "errorReason", "(ILjava/lang/Integer;Ljava/lang/String;)V", "versionCompare", "ver1", "ver2", "mediationsdk_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String a() {
            if (!b()) {
                return new String();
            }
            String sDKVersion = IronSourceAdQuality.getSDKVersion();
            Intrinsics.checkNotNullExpressionValue(sDKVersion, "getSDKVersion()");
            return sDKVersion;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean b() throws JSONException {
            try {
                return Class.forName("com.ironsource.adqualitysdk.sdk.IronSourceAdQuality").getDeclaredMethods().length >= 10;
            } catch (Throwable unused) {
                d(this, 84, null, null, 6, null);
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void c(int i, Integer num, String str) throws JSONException {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
            if (num != null) {
                mediationAdditionalData.put(IronSourceConstants.EVENTS_ERROR_CODE, num.intValue());
            }
            if (str != null) {
                mediationAdditionalData.put("reason", str);
            }
            cb.i().a(new a4(i, mediationAdditionalData));
        }

        static /* synthetic */ void d(Companion companion, int i, Integer num, String str, int i2, Object obj) throws JSONException {
            if ((i2 & 2) != 0) {
                num = null;
            }
            if ((i2 & 4) != 0) {
                str = null;
            }
            companion.c(i, num, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int e(String str, String str2) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return -1;
            }
            int i = 0;
            String[] strArr = (String[]) StringsKt__StringsKt.split$default((CharSequence) new Regex("[^0-9.]").f(str, ""), new String[]{"."}, false, 0, 6, (Object) null).toArray(new String[0]);
            String[] strArr2 = (String[]) StringsKt__StringsKt.split$default((CharSequence) new Regex("[^0-9.]").f(str2, ""), new String[]{"."}, false, 0, 6, (Object) null).toArray(new String[0]);
            while (i < strArr.length && i < strArr2.length && Intrinsics.areEqual(strArr[i], strArr2[i])) {
                i++;
            }
            if (i >= strArr.length || i >= strArr2.length) {
                return Integer.signum(strArr.length - strArr2.length);
            }
            int iIntValue = Integer.valueOf(strArr[i]).intValue();
            Integer numValueOf = Integer.valueOf(strArr2[i]);
            Intrinsics.checkNotNullExpressionValue(numValueOf, "valueOf(vals2[i])");
            return Integer.signum(Intrinsics.compare(iIntValue, numValueOf.intValue()));
        }

        public final boolean adQualityAvailable() {
            return e(a(), "7.9.0") >= 0;
        }
    }

    public AdQualityBridge(Context context, String appKey, String str, com.json.n adQualityDataProvider, int i) throws JSONException {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(adQualityDataProvider, "adQualityDataProvider");
        ISAdQualityConfig.Builder deviceIdType = new ISAdQualityConfig.Builder().setInitializationSource("LevelPlay").setLogLevel(a(i)).setAdQualityInitListener(new ISAdQualityInitListener() { // from class: com.ironsource.mediationsdk.adquality.AdQualityBridge$configBuilder$1
            @Override // com.json.adqualitysdk.sdk.ISAdQualityInitListener
            public void adQualitySdkInitFailed(ISAdQualityInitError isAdQualityInitError, String message) throws JSONException {
                Intrinsics.checkNotNullParameter(isAdQualityInitError, "isAdQualityInitError");
                Intrinsics.checkNotNullParameter(message, "message");
                AdQualityBridge.INSTANCE.c(isAdQualityInitError == ISAdQualityInitError.AD_QUALITY_ALREADY_INITIALIZED ? 82 : 83, Integer.valueOf(isAdQualityInitError.getValue()), message);
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Ad Quality failed to initialize: " + message, 3);
            }

            @Override // com.json.adqualitysdk.sdk.ISAdQualityInitListener
            public void adQualitySdkInitSuccess() throws JSONException {
                AdQualityBridge.Companion.d(AdQualityBridge.INSTANCE, 81, null, null, 6, null);
            }
        }).setCoppa(b()).setDeviceIdType(c());
        if (!TextUtils.isEmpty(str)) {
            deviceIdType.setUserId(str);
        }
        Companion companion = INSTANCE;
        if (companion.e(companion.a(), "7.14.1") >= 0) {
            JSONObject jSONObjectA = adQualityDataProvider.a();
            if (jSONObjectA.length() > 0) {
                deviceIdType.setMetaData(jSONObjectA);
            }
        }
        Companion.d(companion, 80, null, null, 6, null);
        IronSourceAdQuality.getInstance().initialize(context, appKey, deviceIdType.build());
    }

    private final ISAdQualityLogLevel a(int i) {
        return i != 0 ? i != 2 ? i != 3 ? ISAdQualityLogLevel.INFO : ISAdQualityLogLevel.ERROR : ISAdQualityLogLevel.WARNING : ISAdQualityLogLevel.VERBOSE;
    }

    public static final boolean adQualityAvailable() {
        return INSTANCE.adQualityAvailable();
    }

    private final boolean b() {
        String strA = s4.a().a("is_coppa");
        return strA != null && Boolean.parseBoolean(strA);
    }

    private final ISAdQualityDeviceIdType c() {
        return !TextUtils.isEmpty(s4.a().a(t4.M)) ? ISAdQualityDeviceIdType.NONE : ISAdQualityDeviceIdType.GAID;
    }

    public final void changeUserId(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        IronSourceAdQuality.getInstance().changeUserId(userId);
    }

    public final void setSegment(IronSourceSegment segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        ISAdQualitySegment.Builder builder = new ISAdQualitySegment.Builder();
        if (segment.getSegmentName() != null) {
            builder.setSegmentName(segment.getSegmentName());
        }
        if (segment.getAge() > -1) {
            builder.setAge(segment.getAge());
        }
        if (segment.getGender() != null) {
            builder.setGender(segment.getGender());
        }
        if (segment.getLevel() > -1) {
            builder.setLevel(segment.getLevel());
        }
        if (segment.getIsPaying() != null) {
            builder.setIsPaying(segment.getIsPaying().get());
        }
        if (segment.getIapt() > -1.0d) {
            builder.setInAppPurchasesTotal(segment.getIapt());
        }
        if (segment.getUcd() > 0) {
            builder.setUserCreationDate(segment.getUcd());
        }
        for (Pair<String, String> pair : segment.getSegmentData()) {
            String key = (String) pair.first;
            String str = (String) pair.second;
            Intrinsics.checkNotNullExpressionValue(key, "key");
            if (StringsKt__StringsJVMKt.startsWith$default(key, "custom_", false, 2, null)) {
                builder.setCustomData(StringsKt__StringsKt.removePrefix(key, (CharSequence) "custom_"), str);
            }
        }
        IronSourceAdQuality.getInstance().setSegment(builder.build());
    }
}
