package com.vungle.ads.internal;

import android.net.Uri;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.internal.model.CleverCache;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.model.Placement;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.vungle.ads.internal.g, reason: from Kotlin metadata */
/* JADX INFO: compiled from: ConfigManager.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\rJ\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0004J\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004J\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004J\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004J\b\u0010\u0017\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0018\u001a\u00020\u0004J\b\u0010\u0019\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u001a\u001a\u00020\rJ\u0006\u0010\u001b\u001a\u00020\u0010J\u0006\u0010\u001c\u001a\u00020\rJ\b\u0010\u001d\u001a\u0004\u0018\u00010\u0004J\b\u0010\u001e\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u001f\u001a\u00020\u0004J\u0010\u0010 \u001a\u0004\u0018\u00010\u000b2\u0006\u0010!\u001a\u00020\u0004J\b\u0010\"\u001a\u0004\u0018\u00010\u0004J\u0006\u0010#\u001a\u00020\u0010J\u0006\u0010$\u001a\u00020\rJ\u000e\u0010%\u001a\u00020&2\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010'\u001a\u00020\rJ\u0006\u0010(\u001a\u00020\rJ\u0006\u0010)\u001a\u00020\rJ\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nJ\u0006\u0010*\u001a\u00020\rJ\r\u0010+\u001a\u00020\rH\u0000¢\u0006\u0002\b,R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcom/vungle/ads/internal/ConfigManager;", "", "()V", "TAG", "", "config", "Lcom/vungle/ads/internal/model/ConfigPayload;", "endpoints", "Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;", "placements", "", "Lcom/vungle/ads/internal/model/Placement;", "adLoadOptimizationEnabled", "", "getAdsEndpoint", "getCleverCacheDiskPercentage", "", "getCleverCacheDiskSize", "", "getConfigExtension", "getErrorLoggingEndpoint", "getGDPRButtonAccept", "getGDPRButtonDeny", "getGDPRConsentMessage", "getGDPRConsentMessageVersion", "getGDPRConsentTitle", "getGDPRIsCountryDataProtected", "getLogLevel", "getMetricsEnabled", "getMetricsEndpoint", "getMraidEndpoint", "getMraidJsVersion", "getPlacement", "id", "getRiEndpoint", "getSessionTimeoutInSecond", "heartbeatEnabled", "initWithConfig", "", "isCleverCacheEnabled", "isReportIncentivizedEnabled", "omEnabled", "shouldDisableAdId", "validateEndpoints", "validateEndpoints$vungle_ads_release", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class ConfigManager {
    public static final ConfigManager INSTANCE = new ConfigManager();
    public static final String TAG = "ConfigManager";
    private static ConfigPayload config;
    private static ConfigPayload.Endpoints endpoints;
    private static List<Placement> placements;

    private ConfigManager() {
    }

    public final boolean adLoadOptimizationEnabled() {
        ConfigPayload.LoadOptimizationSettings loadOptimizationSettingsIsAdDownloadOptEnabled;
        ConfigPayload configPayload = config;
        if (configPayload == null || (loadOptimizationSettingsIsAdDownloadOptEnabled = configPayload.isAdDownloadOptEnabled()) == null) {
            return false;
        }
        return loadOptimizationSettingsIsAdDownloadOptEnabled.getEnabled();
    }

    public final String getAdsEndpoint() {
        ConfigPayload.Endpoints endpoints2 = endpoints;
        if (endpoints2 != null) {
            return endpoints2.getAdsEndpoint();
        }
        return null;
    }

    public final int getCleverCacheDiskPercentage() {
        CleverCache cleverCache;
        Integer diskPercentage;
        ConfigPayload configPayload = config;
        if (configPayload == null || (cleverCache = configPayload.getCleverCache()) == null || (diskPercentage = cleverCache.getDiskPercentage()) == null) {
            return 3;
        }
        return diskPercentage.intValue();
    }

    public final long getCleverCacheDiskSize() {
        CleverCache cleverCache;
        Long diskSize;
        ConfigPayload configPayload = config;
        if (configPayload == null || (cleverCache = configPayload.getCleverCache()) == null || (diskSize = cleverCache.getDiskSize()) == null) {
            return 1048576000L;
        }
        long j = 1024;
        return diskSize.longValue() * j * j;
    }

    public final String getConfigExtension() {
        String configExtension;
        ConfigPayload configPayload = config;
        return (configPayload == null || (configExtension = configPayload.getConfigExtension()) == null) ? "" : configExtension;
    }

    public final String getErrorLoggingEndpoint() {
        ConfigPayload.Endpoints endpoints2 = endpoints;
        if (endpoints2 != null) {
            return endpoints2.getErrorLogsEndpoint();
        }
        return null;
    }

    public final String getGDPRButtonAccept() {
        ConfigPayload.GDPRSettings gdpr;
        ConfigPayload configPayload = config;
        if (configPayload == null || (gdpr = configPayload.getGdpr()) == null) {
            return null;
        }
        return gdpr.getButtonAccept();
    }

    public final String getGDPRButtonDeny() {
        ConfigPayload.GDPRSettings gdpr;
        ConfigPayload configPayload = config;
        if (configPayload == null || (gdpr = configPayload.getGdpr()) == null) {
            return null;
        }
        return gdpr.getButtonDeny();
    }

    public final String getGDPRConsentMessage() {
        ConfigPayload.GDPRSettings gdpr;
        ConfigPayload configPayload = config;
        if (configPayload == null || (gdpr = configPayload.getGdpr()) == null) {
            return null;
        }
        return gdpr.getConsentMessage();
    }

    public final String getGDPRConsentMessageVersion() {
        ConfigPayload.GDPRSettings gdpr;
        String consentMessageVersion;
        ConfigPayload configPayload = config;
        return (configPayload == null || (gdpr = configPayload.getGdpr()) == null || (consentMessageVersion = gdpr.getConsentMessageVersion()) == null) ? "" : consentMessageVersion;
    }

    public final String getGDPRConsentTitle() {
        ConfigPayload.GDPRSettings gdpr;
        ConfigPayload configPayload = config;
        if (configPayload == null || (gdpr = configPayload.getGdpr()) == null) {
            return null;
        }
        return gdpr.getConsentTitle();
    }

    public final boolean getGDPRIsCountryDataProtected() {
        ConfigPayload.GDPRSettings gdpr;
        ConfigPayload configPayload = config;
        if (configPayload == null || (gdpr = configPayload.getGdpr()) == null) {
            return false;
        }
        return gdpr.isCountryDataProtected();
    }

    public final int getLogLevel() {
        ConfigPayload.LogMetricsSettings logMetricsSettings;
        ConfigPayload configPayload = config;
        return (configPayload == null || (logMetricsSettings = configPayload.getLogMetricsSettings()) == null) ? AnalyticsClient.LogLevel.ERROR_LOG_LEVEL_ERROR.getLevel() : logMetricsSettings.getErrorLogLevel();
    }

    public final boolean getMetricsEnabled() {
        ConfigPayload.LogMetricsSettings logMetricsSettings;
        ConfigPayload configPayload = config;
        if (configPayload == null || (logMetricsSettings = configPayload.getLogMetricsSettings()) == null) {
            return false;
        }
        return logMetricsSettings.getMetricsEnabled();
    }

    public final String getMetricsEndpoint() {
        ConfigPayload.Endpoints endpoints2 = endpoints;
        if (endpoints2 != null) {
            return endpoints2.getMetricsEndpoint();
        }
        return null;
    }

    public final String getMraidEndpoint() {
        ConfigPayload.Endpoints endpoints2 = endpoints;
        if (endpoints2 != null) {
            return endpoints2.getMraidEndpoint();
        }
        return null;
    }

    public final String getMraidJsVersion() {
        String mraidEndpoint = getMraidEndpoint();
        if (mraidEndpoint != null) {
            String str = "mraid_" + Uri.parse(mraidEndpoint).getLastPathSegment();
            if (str != null) {
                return str;
            }
        }
        return "mraid_1";
    }

    public final Placement getPlacement(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        List<Placement> list = placements;
        Object obj = null;
        if (list == null) {
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (Intrinsics.areEqual(((Placement) next).getReferenceId(), id)) {
                obj = next;
                break;
            }
        }
        return (Placement) obj;
    }

    public final String getRiEndpoint() {
        ConfigPayload.Endpoints endpoints2 = endpoints;
        if (endpoints2 != null) {
            return endpoints2.getRiEndpoint();
        }
        return null;
    }

    public final int getSessionTimeoutInSecond() {
        ConfigPayload.Session session;
        ConfigPayload configPayload = config;
        return (configPayload == null || (session = configPayload.getSession()) == null) ? TypedValues.Custom.TYPE_INT : session.getTimeout();
    }

    public final boolean heartbeatEnabled() {
        ConfigPayload.Template template;
        ConfigPayload configPayload = config;
        if (configPayload == null || (template = configPayload.getTemplate()) == null) {
            return false;
        }
        return template.getHeartbeatEnabled();
    }

    public final void initWithConfig(ConfigPayload config2) {
        Intrinsics.checkNotNullParameter(config2, "config");
        config = config2;
        endpoints = config2.getEndpoints();
        placements = config2.getPlacements();
    }

    public final boolean isCleverCacheEnabled() {
        CleverCache cleverCache;
        Boolean enabled;
        ConfigPayload configPayload = config;
        if (configPayload == null || (cleverCache = configPayload.getCleverCache()) == null || (enabled = cleverCache.getEnabled()) == null) {
            return false;
        }
        return enabled.booleanValue();
    }

    public final boolean isReportIncentivizedEnabled() {
        ConfigPayload.ReportIncentivizedSettings reportIncentivizedSettingsIsReportIncentivizedEnabled;
        ConfigPayload configPayload = config;
        if (configPayload == null || (reportIncentivizedSettingsIsReportIncentivizedEnabled = configPayload.isReportIncentivizedEnabled()) == null) {
            return false;
        }
        return reportIncentivizedSettingsIsReportIncentivizedEnabled.getEnabled();
    }

    public final boolean omEnabled() {
        ConfigPayload.ViewabilitySettings viewability;
        ConfigPayload configPayload = config;
        if (configPayload == null || (viewability = configPayload.getViewability()) == null) {
            return false;
        }
        return viewability.getOm();
    }

    public final List<Placement> placements() {
        return placements;
    }

    public final boolean shouldDisableAdId() {
        Boolean disableAdId;
        ConfigPayload configPayload = config;
        if (configPayload == null || (disableAdId = configPayload.getDisableAdId()) == null) {
            return true;
        }
        return disableAdId.booleanValue();
    }

    public final boolean validateEndpoints$vungle_ads_release() {
        boolean z;
        ConfigPayload.Endpoints endpoints2 = endpoints;
        String adsEndpoint = endpoints2 != null ? endpoints2.getAdsEndpoint() : null;
        boolean z2 = true;
        if (adsEndpoint == null || adsEndpoint.length() == 0) {
            AnalyticsClient.INSTANCE.logError$vungle_ads_release(122, "The ads endpoint was not provided in the config.", (24 & 4) != 0 ? null : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
            z = false;
        } else {
            z = true;
        }
        ConfigPayload.Endpoints endpoints3 = endpoints;
        String riEndpoint = endpoints3 != null ? endpoints3.getRiEndpoint() : null;
        if (riEndpoint == null || riEndpoint.length() == 0) {
            AnalyticsClient.INSTANCE.logError$vungle_ads_release(123, "The ri endpoint was not provided in the config.", (24 & 4) != 0 ? null : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
        }
        ConfigPayload.Endpoints endpoints4 = endpoints;
        String mraidEndpoint = endpoints4 != null ? endpoints4.getMraidEndpoint() : null;
        if (mraidEndpoint == null || mraidEndpoint.length() == 0) {
            AnalyticsClient.INSTANCE.logError$vungle_ads_release(130, "The mraid endpoint was not provided in the config.", (24 & 4) != 0 ? null : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
            z = false;
        }
        ConfigPayload.Endpoints endpoints5 = endpoints;
        String metricsEndpoint = endpoints5 != null ? endpoints5.getMetricsEndpoint() : null;
        if (metricsEndpoint == null || metricsEndpoint.length() == 0) {
            AnalyticsClient.INSTANCE.logError$vungle_ads_release(125, "The metrics endpoint was not provided in the config.", (24 & 4) != 0 ? null : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
        }
        ConfigPayload.Endpoints endpoints6 = endpoints;
        String errorLogsEndpoint = endpoints6 != null ? endpoints6.getErrorLogsEndpoint() : null;
        if (errorLogsEndpoint != null && errorLogsEndpoint.length() != 0) {
            z2 = false;
        }
        if (z2) {
            Log.e(TAG, "The error logging endpoint was not provided in the config.");
        }
        return z;
    }
}
