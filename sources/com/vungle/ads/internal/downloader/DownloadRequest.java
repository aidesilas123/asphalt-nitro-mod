package com.vungle.ads.internal.downloader;

import com.facebook.internal.AnalyticsEvents;
import com.json.o2;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.TimeIntervalMetric;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.protos.Sdk;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: DownloadRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001>Be\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000eB\u0081\u0001\b\u0016\u0012\b\b\u0001\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0013J\u0006\u00106\u001a\u000207J\u0006\u00108\u001a\u00020\u0010J\u0006\u00109\u001a\u00020\tJ\u000e\u0010:\u001a\u0002072\u0006\u0010\u0002\u001a\u00020\u0003J\u0006\u0010;\u001a\u000207J\u0006\u0010<\u001a\u000207J\b\u0010=\u001a\u00020\u0005H\u0016R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0015\"\u0004\b!\u0010\u0017R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0015\"\u0004\b$\u0010\u0017R\u001a\u0010\n\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010%\"\u0004\b&\u0010'R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010%\"\u0004\b(\u0010'R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0015\"\u0004\b.\u0010\u0017R\u001a\u0010\u0011\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010%\"\u0004\b0\u0010'R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0015\"\u0004\b2\u0010\u0017R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u000303X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0015\"\u0004\b5\u0010\u0017¨\u0006?"}, d2 = {"Lcom/vungle/ads/internal/downloader/DownloadRequest;", "", "priority", "Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;", "url", "", "path", "cookieString", "isTemplate", "", "isMainVideo", o2.i, "creativeId", "eventId", "(Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "networkType", "", "pauseOnConnectionLost", "advertisementId", "(ILcom/vungle/ads/internal/downloader/DownloadRequest$Priority;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAdvertisementId", "()Ljava/lang/String;", "setAdvertisementId", "(Ljava/lang/String;)V", AnalyticsEvents.PARAMETER_SHARE_OUTCOME_CANCELLED, "Ljava/util/concurrent/atomic/AtomicBoolean;", "getCookieString", "setCookieString", "getCreativeId", "setCreativeId", "downloadDuration", "Lcom/vungle/ads/TimeIntervalMetric;", "getEventId", "setEventId", "id", "getId", "setId", "()Z", "setMainVideo", "(Z)V", "setTemplate", "getNetworkType", "()I", "setNetworkType", "(I)V", "getPath", "setPath", "getPauseOnConnectionLost", "setPauseOnConnectionLost", "getPlacementId", "setPlacementId", "Ljava/util/concurrent/atomic/AtomicReference;", "getUrl", "setUrl", "cancel", "", "getPriority", "isCancelled", "setPriority", "startRecord", "stopRecord", "toString", "Priority", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class DownloadRequest {
    private String advertisementId;
    private final AtomicBoolean cancelled;
    private String cookieString;
    private String creativeId;
    private TimeIntervalMetric downloadDuration;
    private String eventId;
    private String id;
    private boolean isMainVideo;
    private boolean isTemplate;
    private int networkType;
    private String path;
    private boolean pauseOnConnectionLost;
    private String placementId;
    private AtomicReference<Priority> priority;
    private String url;

    /* JADX INFO: compiled from: DownloadRequest.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;", "", "priority", "", "(Ljava/lang/String;II)V", "getPriority", "()I", "CRITICAL", "HIGHEST", "HIGH", "LOWEST", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public enum Priority {
        CRITICAL(-2147483647),
        HIGHEST(0),
        HIGH(1),
        LOWEST(Integer.MAX_VALUE);

        private final int priority;

        Priority(int i) {
            this.priority = i;
        }

        public final int getPriority() {
            return this.priority;
        }
    }

    public DownloadRequest(@Downloader.a int i, Priority priority, String str, String str2, boolean z, String str3, String str4, boolean z2, boolean z3, String str5, String str6, String str7) {
        Intrinsics.checkNotNullParameter(priority, "priority");
        this.priority = new AtomicReference<>();
        this.cancelled = new AtomicBoolean(false);
        this.url = str;
        this.networkType = i;
        this.priority.set(priority);
        this.path = str2;
        this.pauseOnConnectionLost = z;
        this.cookieString = str3;
        this.advertisementId = str4;
        this.isTemplate = z2;
        this.isMainVideo = z3;
        this.placementId = str5;
        this.creativeId = str6;
        this.eventId = str7;
    }

    public /* synthetic */ DownloadRequest(int i, Priority priority, String str, String str2, boolean z, String str3, String str4, boolean z2, boolean z3, String str5, String str6, String str7, int i2, n nVar) {
        this(i, priority, str, str2, z, str3, str4, (i2 & 128) != 0 ? false : z2, (i2 & 256) != 0 ? false : z3, (i2 & 512) != 0 ? null : str5, (i2 & 1024) != 0 ? null : str6, (i2 & 2048) != 0 ? null : str7);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadRequest(Priority priority, String str, String str2, String str3, boolean z, boolean z2, String str4, String str5, String str6) {
        this(Downloader.a.INSTANCE.getANY(), priority, str, str2, false, str3, null, z, z2, str4, str5, str6);
        Intrinsics.checkNotNullParameter(priority, "priority");
    }

    public /* synthetic */ DownloadRequest(Priority priority, String str, String str2, String str3, boolean z, boolean z2, String str4, String str5, String str6, int i, n nVar) {
        this(priority, str, str2, str3, (i & 16) != 0 ? false : z, (i & 32) != 0 ? false : z2, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : str6);
    }

    public final void cancel() {
        this.cancelled.set(true);
    }

    public final String getAdvertisementId() {
        return this.advertisementId;
    }

    public final String getCookieString() {
        return this.cookieString;
    }

    public final String getCreativeId() {
        return this.creativeId;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final String getId() {
        return this.id;
    }

    public final int getNetworkType() {
        return this.networkType;
    }

    public final String getPath() {
        return this.path;
    }

    public final boolean getPauseOnConnectionLost() {
        return this.pauseOnConnectionLost;
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public final int getPriority() {
        return this.priority.get().getPriority();
    }

    public final String getUrl() {
        return this.url;
    }

    public final boolean isCancelled() {
        return this.cancelled.get();
    }

    /* JADX INFO: renamed from: isMainVideo, reason: from getter */
    public final boolean getIsMainVideo() {
        return this.isMainVideo;
    }

    /* JADX INFO: renamed from: isTemplate, reason: from getter */
    public final boolean getIsTemplate() {
        return this.isTemplate;
    }

    public final void setAdvertisementId(String str) {
        this.advertisementId = str;
    }

    public final void setCookieString(String str) {
        this.cookieString = str;
    }

    public final void setCreativeId(String str) {
        this.creativeId = str;
    }

    public final void setEventId(String str) {
        this.eventId = str;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setMainVideo(boolean z) {
        this.isMainVideo = z;
    }

    public final void setNetworkType(int i) {
        this.networkType = i;
    }

    public final void setPath(String str) {
        this.path = str;
    }

    public final void setPauseOnConnectionLost(boolean z) {
        this.pauseOnConnectionLost = z;
    }

    public final void setPlacementId(String str) {
        this.placementId = str;
    }

    public final void setPriority(Priority priority) {
        Intrinsics.checkNotNullParameter(priority, "priority");
        this.priority.set(priority);
    }

    public final void setTemplate(boolean z) {
        this.isTemplate = z;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void startRecord() {
        TimeIntervalMetric timeIntervalMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.TEMPLATE_DOWNLOAD_DURATION_MS);
        this.downloadDuration = timeIntervalMetric;
        if (timeIntervalMetric != null) {
            timeIntervalMetric.markStart();
        }
    }

    public final void stopRecord() {
        TimeIntervalMetric timeIntervalMetric = this.downloadDuration;
        if (timeIntervalMetric != null) {
            timeIntervalMetric.markEnd();
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(timeIntervalMetric, this.placementId, this.creativeId, this.eventId, this.url);
        }
    }

    public String toString() {
        return "DownloadRequest{networkType=" + this.networkType + ", priority=" + this.priority + ", url='" + this.url + "', path='" + this.path + "', pauseOnConnectionLost=" + this.pauseOnConnectionLost + ", id='" + this.id + "', cookieString='" + this.cookieString + "', cancelled=" + this.cancelled + ", advertisementId=" + this.advertisementId + ", placementId=" + this.placementId + ", creativeId=" + this.creativeId + ", eventId=" + this.eventId + '}';
    }
}
