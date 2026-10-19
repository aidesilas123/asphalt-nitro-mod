package com.json;

import android.text.TextUtils;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.AbstractAdapter;
import com.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.json.mediationsdk.adunit.adapter.internal.AdapterBaseWrapper;
import com.json.mediationsdk.adunit.adapter.internal.AdapterConsentInterface;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0005\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u000e\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004J.\u0010\u0005\u001a\u00020\t2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u000b2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e0\u000bJ\u0018\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012R(\u0010\u0017\u001a\u0004\u0018\u00010\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0005\u0010\u0016R\u0017\u0010\u001c\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0019\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/ironsource/m2;", "", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "settings", "", "a", "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Ljava/lang/Boolean;", "", "message", "", "consentValue", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/ironsource/mediationsdk/AbstractAdapter;", "adapters", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseWrapper;", "networkAdapters", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;", "adapter", "", "cmpId", "<set-?>", "Ljava/lang/Boolean;", "()Ljava/lang/Boolean;", "consent", "Lcom/ironsource/e5;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/ironsource/e5;", "()Lcom/ironsource/e5;", "deviceInfoService", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class m2 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private Boolean consent;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final e5 deviceInfoService = e9.c.d().c();

    private final Boolean b(NetworkSettings networkSettings) {
        return (networkSettings == null || networkSettings.isCustomNetwork()) ? this.consent : networkSettings.getApplicationSettings().has("cnstcmp") ? Boolean.valueOf(networkSettings.getApplicationSettings().optBoolean("cnstcmp")) : this.consent;
    }

    private final void c(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("reason", str);
            }
            q7.i().a(new a4(IronSourceConstants.TROUBLESHOOTING_CONSENT_INTERNAL_ERROR, jSONObject));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final Boolean getConsent() {
        return this.consent;
    }

    public final void a(int cmpId) {
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            mediationAdditionalData.put(IronSourceConstants.EVENTS_EXT1, cmpId + ';' + this.deviceInfoService.H(ContextProvider.getInstance().getApplicationContext()));
        } catch (Exception e2) {
            IronLog.INTERNAL.error(ExceptionsKt__ExceptionsKt.stackTraceToString(e2));
        }
        cb.i().a(new a4(42, mediationAdditionalData));
    }

    public final void a(AbstractAdapter adapter, NetworkSettings settings) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        try {
            Boolean boolB = b(settings);
            if (boolB != null) {
                adapter.setNewConsent(boolB.booleanValue());
            }
        } catch (Throwable th) {
            String str = "error while setting consent of " + adapter.getProviderName() + ": " + th.getLocalizedMessage();
            c(str);
            IronLog.INTERNAL.error(str);
        }
    }

    public final void a(AdapterBaseInterface adapter, NetworkSettings settings) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        try {
            Boolean boolB = b(settings);
            if (boolB == null || !(adapter instanceof AdapterConsentInterface)) {
                return;
            }
            ((AdapterConsentInterface) adapter).setConsent(boolB.booleanValue());
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder();
            sb.append("error while setting consent of ");
            sb.append(settings != null ? settings.getProviderName() : null);
            sb.append(": ");
            sb.append(th.getLocalizedMessage());
            String string = sb.toString();
            c(string);
            IronLog.INTERNAL.error(string);
        }
    }

    public final void a(ConcurrentHashMap<String, AbstractAdapter> adapters, ConcurrentHashMap<String, AdapterBaseWrapper> networkAdapters) {
        Intrinsics.checkNotNullParameter(adapters, "adapters");
        Intrinsics.checkNotNullParameter(networkAdapters, "networkAdapters");
        for (AbstractAdapter adapter : adapters.values()) {
            Intrinsics.checkNotNullExpressionValue(adapter, "adapter");
            a(adapter, (NetworkSettings) null);
        }
        for (AdapterBaseWrapper adapterBaseWrapper : networkAdapters.values()) {
            AdapterBaseInterface adapter2 = adapterBaseWrapper.getAdapterBaseInterface();
            Intrinsics.checkNotNullExpressionValue(adapter2, "adapter");
            a(adapter2, adapterBaseWrapper.getSettings());
        }
    }

    public final void a(boolean consentValue) {
        this.consent = Boolean.valueOf(consentValue);
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final e5 getDeviceInfoService() {
        return this.deviceInfoService;
    }
}
