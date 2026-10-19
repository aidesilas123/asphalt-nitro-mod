package com.vungle.ads;

import android.os.Build;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.applovin.sdk.AppLovinEventTypes;
import com.json.o2;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.ActivityManager;
import com.vungle.ads.internal.util.Logger;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnalyticsClient.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002[\\B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u00106\u001a\u000207H\u0003J\b\u00108\u001a\u000207H\u0003JJ\u00109\u001a\u00020\u00182\u0006\u0010:\u001a\u00020;2\b\b\u0002\u0010<\u001a\u00020.2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u0004H\u0002J<\u0010A\u001a\u00020\u00072\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020\u00042\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u0004H\u0002J-\u0010F\u001a\u0002072\u0006\u0010/\u001a\u0002002\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010G\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH\u0000¢\u0006\u0002\bHJA\u0010I\u001a\u0002072\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020\u00042\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0002\bJJA\u0010I\u001a\u0002072\u0006\u0010K\u001a\u00020\u00152\u0006\u0010D\u001a\u00020\u00042\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0002\bJJ<\u0010L\u001a\u0002072\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020\u00042\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u0004H\u0002JE\u0010M\u001a\u0002072\u0006\u0010N\u001a\u00020O2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0002\bPJE\u0010M\u001a\u0002072\u0006\u0010Q\u001a\u00020R2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0002\bPJE\u0010M\u001a\u0002072\u0006\u0010S\u001a\u00020T2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0002\bPJE\u0010M\u001a\u0002072\u0006\u0010U\u001a\u00020V2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0002\bPJO\u0010M\u001a\u0002072\u0006\u0010:\u001a\u00020;2\b\b\u0002\u0010<\u001a\u00020.2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0002\bPJJ\u0010W\u001a\u0002072\u0006\u0010:\u001a\u00020;2\b\b\u0002\u0010<\u001a\u00020.2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u0004H\u0002J\u0006\u0010X\u001a\u000207J\b\u0010Y\u001a\u000207H\u0002J\u0006\u0010Z\u001a\u000207R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\u0002\u001a\u0004\b\t\u0010\nR&\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00068\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0002\u001a\u0004\b\u001a\u0010\nR$\u0010\u001b\u001a\u00020\u001c8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001d\u0010\u0002\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u000e\u0010\"\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b$\u0010\u0002\u001a\u0004\b%\u0010\nR\"\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00180\u00068\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b'\u0010\u0002\u001a\u0004\b(\u0010\nR$\u0010)\u001a\u00020\u001c8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b*\u0010\u0002\u001a\u0004\b+\u0010\u001f\"\u0004\b,\u0010!R\u000e\u0010-\u001a\u00020.X\u0082T¢\u0006\u0002\n\u0000R&\u0010/\u001a\u0004\u0018\u0001008\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b1\u0010\u0002\u001a\u0004\b2\u00103\"\u0004\b4\u00105¨\u0006]"}, d2 = {"Lcom/vungle/ads/AnalyticsClient;", "", "()V", "TAG", "", "errors", "Ljava/util/concurrent/BlockingQueue;", "Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;", "getErrors$vungle_ads_release$annotations", "getErrors$vungle_ads_release", "()Ljava/util/concurrent/BlockingQueue;", "executor", "Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;", "getExecutor$vungle_ads_release$annotations", "getExecutor$vungle_ads_release", "()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;", "setExecutor$vungle_ads_release", "(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V", "logLevel", "Lcom/vungle/ads/AnalyticsClient$LogLevel;", "maxBatchSize", "", "maxErrorLogLevel", "metrics", "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;", "getMetrics$vungle_ads_release$annotations", "getMetrics$vungle_ads_release", "metricsEnabled", "", "getMetricsEnabled$vungle_ads_release$annotations", "getMetricsEnabled$vungle_ads_release", "()Z", "setMetricsEnabled$vungle_ads_release", "(Z)V", o2.h.f0, "pendingErrors", "getPendingErrors$vungle_ads_release$annotations", "getPendingErrors$vungle_ads_release", "pendingMetrics", "getPendingMetrics$vungle_ads_release$annotations", "getPendingMetrics$vungle_ads_release", "refreshEnabled", "getRefreshEnabled$vungle_ads_release$annotations", "getRefreshEnabled$vungle_ads_release", "setRefreshEnabled$vungle_ads_release", "refreshTimeMillis", "", "vungleApiClient", "Lcom/vungle/ads/internal/network/VungleApiClient;", "getVungleApiClient$vungle_ads_release$annotations", "getVungleApiClient$vungle_ads_release", "()Lcom/vungle/ads/internal/network/VungleApiClient;", "setVungleApiClient$vungle_ads_release", "(Lcom/vungle/ads/internal/network/VungleApiClient;)V", "flushErrors", "", "flushMetrics", "genMetric", "metricType", "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;", "metricValue", o2.i, "creativeId", "eventId", "metaData", "genSDKError", "reason", "Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;", "message", "placementRefId", o2.a.f6463e, "errorLogLevel", "init$vungle_ads_release", "logError", "logError$vungle_ads_release", "reasonCode", "logErrorInSameThread", "logMetric", "metric", "Lcom/vungle/ads/Metric;", "logMetric$vungle_ads_release", "oneShotTimeIntervalMetric", "Lcom/vungle/ads/OneShotTimeIntervalMetric;", "singleValueMetric", "Lcom/vungle/ads/SingleValueMetric;", "timeIntervalMetric", "Lcom/vungle/ads/TimeIntervalMetric;", "logMetricInSameThread", CampaignEx.JSON_NATIVE_VIDEO_PAUSE, "report", CampaignEx.JSON_NATIVE_VIDEO_RESUME, "LogLevel", "RequestListener", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class AnalyticsClient {
    public static final AnalyticsClient INSTANCE = new AnalyticsClient();
    private static final String TAG;
    private static final BlockingQueue<Sdk.SDKError.a> errors;
    private static VungleThreadPoolExecutor executor = null;
    private static LogLevel logLevel = null;
    private static final int maxBatchSize = 20;
    private static int maxErrorLogLevel = 0;
    private static final BlockingQueue<Sdk.SDKMetric.a> metrics;
    private static boolean metricsEnabled = false;
    private static boolean paused = false;
    private static final BlockingQueue<Sdk.SDKError.a> pendingErrors;
    private static final BlockingQueue<Sdk.SDKMetric.a> pendingMetrics;
    private static boolean refreshEnabled = false;
    private static final long refreshTimeMillis = 5000;
    private static VungleApiClient vungleApiClient;

    /* JADX INFO: compiled from: AnalyticsClient.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0001\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/vungle/ads/AnalyticsClient$LogLevel;", "", AppLovinEventTypes.USER_COMPLETED_LEVEL, "", "(Ljava/lang/String;II)V", "getLevel", "()I", "ERROR_LOG_LEVEL_OFF", "ERROR_LOG_LEVEL_ERROR", "ERROR_LOG_LEVEL_DEBUG", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public enum LogLevel {
        ERROR_LOG_LEVEL_OFF(0),
        ERROR_LOG_LEVEL_ERROR(1),
        ERROR_LOG_LEVEL_DEBUG(2);


        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final int level;

        /* JADX INFO: renamed from: com.vungle.ads.AnalyticsClient$LogLevel$a, reason: from kotlin metadata */
        /* JADX INFO: compiled from: AnalyticsClient.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/vungle/ads/AnalyticsClient$LogLevel$Companion;", "", "()V", "fromValue", "Lcom/vungle/ads/AnalyticsClient$LogLevel;", "logLevel", "", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
                this();
            }

            public final LogLevel fromValue(int logLevel) {
                LogLevel logLevel2 = LogLevel.ERROR_LOG_LEVEL_DEBUG;
                if (logLevel == logLevel2.getLevel()) {
                    return logLevel2;
                }
                LogLevel logLevel3 = LogLevel.ERROR_LOG_LEVEL_ERROR;
                if (logLevel == logLevel3.getLevel()) {
                    return logLevel3;
                }
                LogLevel logLevel4 = LogLevel.ERROR_LOG_LEVEL_OFF;
                return logLevel == logLevel4.getLevel() ? logLevel4 : logLevel3;
            }
        }

        LogLevel(int i) {
            this.level = i;
        }

        public final int getLevel() {
            return this.level;
        }
    }

    /* JADX INFO: compiled from: AnalyticsClient.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/AnalyticsClient$RequestListener;", "", "onFailure", "", "onSuccess", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public interface a {
        void onFailure();

        void onSuccess();
    }

    /* JADX INFO: compiled from: AnalyticsClient.kt */
    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/AnalyticsClient$flushErrors$1", "Lcom/vungle/ads/AnalyticsClient$RequestListener;", "onFailure", "", "onSuccess", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class b implements a {
        final /* synthetic */ BlockingQueue<Sdk.SDKError.a> $currentSendingErrors;

        b(BlockingQueue<Sdk.SDKError.a> blockingQueue) {
            this.$currentSendingErrors = blockingQueue;
        }

        @Override // com.vungle.ads.AnalyticsClient.a
        public void onFailure() {
            Logger.INSTANCE.d(AnalyticsClient.TAG, "Failed to send " + this.$currentSendingErrors.size() + " errors");
            AnalyticsClient.INSTANCE.getErrors$vungle_ads_release().addAll(this.$currentSendingErrors);
        }

        @Override // com.vungle.ads.AnalyticsClient.a
        public void onSuccess() {
            Logger.INSTANCE.d(AnalyticsClient.TAG, "Sent " + this.$currentSendingErrors.size() + " errors");
        }
    }

    /* JADX INFO: compiled from: AnalyticsClient.kt */
    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/AnalyticsClient$flushMetrics$1", "Lcom/vungle/ads/AnalyticsClient$RequestListener;", "onFailure", "", "onSuccess", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class c implements a {
        final /* synthetic */ BlockingQueue<Sdk.SDKMetric.a> $currentSendingMetrics;

        c(BlockingQueue<Sdk.SDKMetric.a> blockingQueue) {
            this.$currentSendingMetrics = blockingQueue;
        }

        @Override // com.vungle.ads.AnalyticsClient.a
        public void onFailure() {
            Logger.INSTANCE.d(AnalyticsClient.TAG, "Failed to send " + this.$currentSendingMetrics.size() + " metrics");
            AnalyticsClient.INSTANCE.getMetrics$vungle_ads_release().addAll(this.$currentSendingMetrics);
        }

        @Override // com.vungle.ads.AnalyticsClient.a
        public void onSuccess() {
            Logger.INSTANCE.d(AnalyticsClient.TAG, "Sent " + this.$currentSendingMetrics.size() + " metrics");
        }
    }

    /* JADX INFO: compiled from: AnalyticsClient.kt */
    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/AnalyticsClient$init$2", "Lcom/vungle/ads/internal/util/ActivityManager$LifeCycleCallback;", o2.h.t0, "", o2.h.u0, "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class d extends ActivityManager.b {
        d() {
        }

        @Override // com.vungle.ads.internal.util.ActivityManager.b
        public void onPause() {
            super.onPause();
            AnalyticsClient.INSTANCE.pause();
        }

        @Override // com.vungle.ads.internal.util.ActivityManager.b
        public void onResume() {
            super.onResume();
            AnalyticsClient.INSTANCE.resume();
        }
    }

    static {
        String simpleName = AnalyticsClient.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "AnalyticsClient::class.java.simpleName");
        TAG = simpleName;
        errors = new LinkedBlockingQueue();
        metrics = new LinkedBlockingQueue();
        pendingErrors = new LinkedBlockingQueue();
        pendingMetrics = new LinkedBlockingQueue();
        maxErrorLogLevel = Integer.MAX_VALUE;
        logLevel = LogLevel.ERROR_LOG_LEVEL_ERROR;
        refreshEnabled = true;
    }

    private AnalyticsClient() {
    }

    @WorkerThread
    private final void flushErrors() {
        VungleApiClient vungleApiClient2;
        Logger.Companion companion = Logger.INSTANCE;
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("Sending ");
        BlockingQueue<Sdk.SDKError.a> blockingQueue = errors;
        sb.append(blockingQueue.size());
        sb.append(" errors");
        companion.d(str, sb.toString());
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        blockingQueue.drainTo(linkedBlockingQueue);
        if (linkedBlockingQueue.isEmpty() || (vungleApiClient2 = vungleApiClient) == null) {
            return;
        }
        vungleApiClient2.reportErrors(linkedBlockingQueue, new b(linkedBlockingQueue));
    }

    @WorkerThread
    private final void flushMetrics() {
        VungleApiClient vungleApiClient2;
        Logger.Companion companion = Logger.INSTANCE;
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("Sending ");
        BlockingQueue<Sdk.SDKMetric.a> blockingQueue = metrics;
        sb.append(blockingQueue.size());
        sb.append(" metrics");
        companion.d(str, sb.toString());
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        blockingQueue.drainTo(linkedBlockingQueue);
        if (linkedBlockingQueue.isEmpty() || (vungleApiClient2 = vungleApiClient) == null) {
            return;
        }
        vungleApiClient2.reportMetrics(linkedBlockingQueue, new c(linkedBlockingQueue));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Sdk.SDKMetric.a genMetric(Sdk.SDKMetric.SDKMetricType sDKMetricType, long j, String str, String str2, String str3, String str4) {
        Sdk.SDKMetric.a osVersion = Sdk.SDKMetric.newBuilder().setType(sDKMetricType).setValue(j).setMake(Build.MANUFACTURER).setModel(Build.MODEL).setOs(o2.f6459e).setOsVersion(String.valueOf(Build.VERSION.SDK_INT));
        if (str == null) {
            str = "";
        }
        Sdk.SDKMetric.a placementReferenceId = osVersion.setPlacementReferenceId(str);
        if (str2 == null) {
            str2 = "";
        }
        Sdk.SDKMetric.a creativeId = placementReferenceId.setCreativeId(str2);
        if (str3 == null) {
            str3 = "";
        }
        Sdk.SDKMetric.a eventId = creativeId.setEventId(str3);
        if (str4 == null) {
            str4 = "";
        }
        Sdk.SDKMetric.a meta = eventId.setMeta(str4);
        Intrinsics.checkNotNullExpressionValue(meta, "newBuilder()\n           … .setMeta(metaData ?: \"\")");
        return meta;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Sdk.SDKError.a genSDKError(Sdk.SDKError.Reason reason, String str, String str2, String str3, String str4) {
        Sdk.SDKError.a at = Sdk.SDKError.newBuilder().setOs(o2.f6459e).setOsVersion(String.valueOf(Build.VERSION.SDK_INT)).setMake(Build.MANUFACTURER).setModel(Build.MODEL).setReason(reason).setMessage(str).setAt(System.currentTimeMillis());
        if (str2 == null) {
            str2 = "";
        }
        Sdk.SDKError.a placementReferenceId = at.setPlacementReferenceId(str2);
        if (str3 == null) {
            str3 = "";
        }
        Sdk.SDKError.a creativeId = placementReferenceId.setCreativeId(str3);
        if (str4 == null) {
            str4 = "";
        }
        Sdk.SDKError.a eventId = creativeId.setEventId(str4);
        Intrinsics.checkNotNullExpressionValue(eventId, "newBuilder()\n           …setEventId(eventId ?: \"\")");
        return eventId;
    }

    @VisibleForTesting
    public static /* synthetic */ void getErrors$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getExecutor$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getMetrics$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getMetricsEnabled$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getPendingErrors$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getPendingMetrics$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getRefreshEnabled$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getVungleApiClient$vungle_ads_release$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: init$lambda-1, reason: not valid java name */
    public static final void m1093init$lambda1(VungleThreadPoolExecutor executor2) {
        Intrinsics.checkNotNullParameter(executor2, "$executor");
        executor2.execute(new Runnable() { // from class: com.vungle.ads.a
            @Override // java.lang.Runnable
            public final void run() {
                AnalyticsClient.m1094init$lambda1$lambda0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: init$lambda-1$lambda-0, reason: not valid java name */
    public static final void m1094init$lambda1$lambda0() {
        INSTANCE.report();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: logError$lambda-2, reason: not valid java name */
    public static final void m1095logError$lambda2(Sdk.SDKError.Reason reason, String message, String str, String str2, String str3) {
        Intrinsics.checkNotNullParameter(reason, "$reason");
        Intrinsics.checkNotNullParameter(message, "$message");
        INSTANCE.logErrorInSameThread(reason, message, str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void logErrorInSameThread(Sdk.SDKError.Reason reason, String message, String placementRefId, String creativeId, String eventId) {
        if (logLevel == LogLevel.ERROR_LOG_LEVEL_OFF) {
            return;
        }
        try {
            Sdk.SDKError.a aVarGenSDKError = genSDKError(reason, message, placementRefId, creativeId, eventId);
            BlockingQueue<Sdk.SDKError.a> blockingQueue = errors;
            blockingQueue.put(aVarGenSDKError);
            if (blockingQueue.size() >= 20) {
                report();
            }
        } catch (Exception e2) {
            Logger.INSTANCE.e(TAG, "Cannot logError", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: logMetric$lambda-3, reason: not valid java name */
    public static final void m1096logMetric$lambda3(Sdk.SDKMetric.SDKMetricType metricType, long j, String str, String str2, String str3, String str4) {
        Intrinsics.checkNotNullParameter(metricType, "$metricType");
        INSTANCE.logMetricInSameThread(metricType, j, str, str2, str3, str4);
    }

    public static /* synthetic */ void logMetric$vungle_ads_release$default(AnalyticsClient analyticsClient, TimeIntervalMetric timeIntervalMetric, String str, String str2, String str3, String str4, int i, Object obj) {
        String str5 = (i & 2) != 0 ? null : str;
        String str6 = (i & 4) != 0 ? null : str2;
        String str7 = (i & 8) != 0 ? null : str3;
        if ((i & 16) != 0) {
            str4 = timeIntervalMetric.getMeta();
        }
        analyticsClient.logMetric$vungle_ads_release(timeIntervalMetric, str5, str6, str7, str4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void logMetricInSameThread(Sdk.SDKMetric.SDKMetricType metricType, long metricValue, String placementId, String creativeId, String eventId, String metaData) {
        if (metricsEnabled) {
            try {
                Sdk.SDKMetric.a aVarGenMetric = genMetric(metricType, metricValue, placementId, creativeId, eventId, metaData);
                BlockingQueue<Sdk.SDKMetric.a> blockingQueue = metrics;
                blockingQueue.put(aVarGenMetric);
                if (blockingQueue.size() >= 20) {
                    report();
                }
            } catch (Exception e2) {
                Logger.INSTANCE.e(TAG, "Cannot logMetrics", e2);
            }
        }
    }

    private final synchronized void report() {
        if (paused) {
            return;
        }
        if (logLevel != LogLevel.ERROR_LOG_LEVEL_OFF && errors.size() > 0) {
            flushErrors();
        }
        if (metricsEnabled && metrics.size() > 0) {
            flushMetrics();
        }
    }

    public final BlockingQueue<Sdk.SDKError.a> getErrors$vungle_ads_release() {
        return errors;
    }

    public final VungleThreadPoolExecutor getExecutor$vungle_ads_release() {
        return executor;
    }

    public final BlockingQueue<Sdk.SDKMetric.a> getMetrics$vungle_ads_release() {
        return metrics;
    }

    public final boolean getMetricsEnabled$vungle_ads_release() {
        return metricsEnabled;
    }

    public final BlockingQueue<Sdk.SDKError.a> getPendingErrors$vungle_ads_release() {
        return pendingErrors;
    }

    public final BlockingQueue<Sdk.SDKMetric.a> getPendingMetrics$vungle_ads_release() {
        return pendingMetrics;
    }

    public final boolean getRefreshEnabled$vungle_ads_release() {
        return refreshEnabled;
    }

    public final VungleApiClient getVungleApiClient$vungle_ads_release() {
        return vungleApiClient;
    }

    public final void init$vungle_ads_release(VungleApiClient vungleApiClient2, final VungleThreadPoolExecutor executor2, int i, boolean z) {
        Intrinsics.checkNotNullParameter(vungleApiClient2, "vungleApiClient");
        Intrinsics.checkNotNullParameter(executor2, "executor");
        executor = executor2;
        vungleApiClient = vungleApiClient2;
        metricsEnabled = z;
        try {
            BlockingQueue<Sdk.SDKError.a> blockingQueue = pendingErrors;
            if (!blockingQueue.isEmpty()) {
                blockingQueue.drainTo(errors);
            }
        } catch (Exception e2) {
            Logger.INSTANCE.e(TAG, "Failed to add pendingErrors to errors queue.", e2);
        }
        try {
            BlockingQueue<Sdk.SDKMetric.a> blockingQueue2 = pendingMetrics;
            if (!blockingQueue2.isEmpty()) {
                blockingQueue2.drainTo(metrics);
            }
        } catch (Exception e3) {
            Logger.INSTANCE.e(TAG, "Failed to add pendingMetrics to metrics queue.", e3);
        }
        if (refreshEnabled) {
            Executors.newSingleThreadScheduledExecutor().scheduleAtFixedRate(new Runnable() { // from class: com.vungle.ads.c
                @Override // java.lang.Runnable
                public final void run() {
                    AnalyticsClient.m1093init$lambda1(executor2);
                }
            }, 0L, 5000L, TimeUnit.MILLISECONDS);
        }
        maxErrorLogLevel = i;
        logLevel = LogLevel.INSTANCE.fromValue(i);
        if (i == LogLevel.ERROR_LOG_LEVEL_DEBUG.getLevel()) {
            Logger.INSTANCE.enable(true);
        } else if (i == LogLevel.ERROR_LOG_LEVEL_ERROR.getLevel() || i == LogLevel.ERROR_LOG_LEVEL_OFF.getLevel()) {
            Logger.INSTANCE.enable(false);
        }
        ActivityManager.INSTANCE.getInstance().addListener(new d());
    }

    public final synchronized void logError$vungle_ads_release(int reasonCode, String message, String placementRefId, String creativeId, String eventId) {
        Intrinsics.checkNotNullParameter(message, "message");
        Sdk.SDKError.Reason reasonForNumber = Sdk.SDKError.Reason.forNumber(reasonCode);
        Intrinsics.checkNotNullExpressionValue(reasonForNumber, "forNumber(reasonCode)");
        logError$vungle_ads_release(reasonForNumber, message, placementRefId, creativeId, eventId);
    }

    public final synchronized void logError$vungle_ads_release(final Sdk.SDKError.Reason reason, final String message, final String placementRefId, final String creativeId, final String eventId) {
        VungleThreadPoolExecutor vungleThreadPoolExecutor;
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(message, "message");
        try {
            vungleThreadPoolExecutor = executor;
        } catch (Exception e2) {
            Logger.INSTANCE.e(TAG, "Cannot logError " + reason + ", " + message + ", " + placementRefId + ", " + creativeId + ',' + eventId, e2);
        }
        if (vungleThreadPoolExecutor == null) {
            pendingErrors.put(genSDKError(reason, message, placementRefId, creativeId, eventId));
        } else {
            if (vungleThreadPoolExecutor != null) {
                vungleThreadPoolExecutor.execute(new Runnable() { // from class: com.vungle.ads.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalyticsClient.m1095logError$lambda2(reason, message, placementRefId, creativeId, eventId);
                    }
                });
            }
        }
    }

    public final synchronized void logMetric$vungle_ads_release(SingleValueMetric singleValueMetric, String str, String str2, String str3, String str4) {
        Intrinsics.checkNotNullParameter(singleValueMetric, "singleValueMetric");
        logMetric$vungle_ads_release((Metric) singleValueMetric, str, str2, str3, str4);
    }

    public final synchronized void logMetric$vungle_ads_release(TimeIntervalMetric timeIntervalMetric, String str, String str2, String str3, String str4) {
        Intrinsics.checkNotNullParameter(timeIntervalMetric, "timeIntervalMetric");
        logMetric$vungle_ads_release((Metric) timeIntervalMetric, str, str2, str3, str4);
    }

    public final synchronized void logMetric$vungle_ads_release(final Sdk.SDKMetric.SDKMetricType metricType, final long metricValue, final String placementId, final String creativeId, final String eventId, final String metaData) {
        VungleThreadPoolExecutor vungleThreadPoolExecutor;
        Intrinsics.checkNotNullParameter(metricType, "metricType");
        try {
            vungleThreadPoolExecutor = executor;
        } catch (Exception e2) {
            Logger.INSTANCE.e(TAG, "Cannot logMetric " + metricType + ", " + metricValue + ", " + placementId + ", " + creativeId + ',' + eventId + ", " + metaData, e2);
        }
        if (vungleThreadPoolExecutor == null) {
            pendingMetrics.put(genMetric(metricType, metricValue, placementId, creativeId, eventId, metaData));
        } else {
            if (vungleThreadPoolExecutor != null) {
                vungleThreadPoolExecutor.execute(new Runnable() { // from class: com.vungle.ads.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalyticsClient.m1096logMetric$lambda3(metricType, metricValue, placementId, creativeId, eventId, metaData);
                    }
                });
            }
        }
    }

    public final synchronized void logMetric$vungle_ads_release(Metric metric, String str, String str2, String str3, String str4) {
        Intrinsics.checkNotNullParameter(metric, "metric");
        Sdk.SDKMetric.SDKMetricType metricType = metric.getMetricType();
        long value = metric.getValue();
        if (str4 == null) {
            str4 = metric.getMeta();
        }
        logMetric$vungle_ads_release(metricType, value, str, str2, str3, str4);
    }

    public final synchronized void logMetric$vungle_ads_release(OneShotTimeIntervalMetric oneShotTimeIntervalMetric, String str, String str2, String str3, String str4) {
        Intrinsics.checkNotNullParameter(oneShotTimeIntervalMetric, "oneShotTimeIntervalMetric");
        if (!oneShotTimeIntervalMetric.getAlreadyLogged()) {
            logMetric$vungle_ads_release((TimeIntervalMetric) oneShotTimeIntervalMetric, str, str2, str3, str4);
            oneShotTimeIntervalMetric.markLogged();
        }
    }

    public final void pause() {
        paused = true;
    }

    public final void resume() {
        paused = false;
    }

    public final void setExecutor$vungle_ads_release(VungleThreadPoolExecutor vungleThreadPoolExecutor) {
        executor = vungleThreadPoolExecutor;
    }

    public final void setMetricsEnabled$vungle_ads_release(boolean z) {
        metricsEnabled = z;
    }

    public final void setRefreshEnabled$vungle_ads_release(boolean z) {
        refreshEnabled = z;
    }

    public final void setVungleApiClient$vungle_ads_release(VungleApiClient vungleApiClient2) {
        vungleApiClient = vungleApiClient2;
    }
}
