package io.didomi.drawable.config.app;

import androidx.annotation.Keep;
import com.google.gson.r.c;
import com.json.b4;
import kotlin.Metadata;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0087\b\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001eB%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0004HÂ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\r\u0010\nJ.\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0004HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0013\u0010\nJ\u001a\u0010\u0015\u001a\u00020\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0017\u001a\u0004\b\u0018\u0010\fR\u001a\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0019\u001a\u0004\b\u001a\u0010\nR\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0019R\u0011\u0010\u001c\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\n¨\u0006\u001f"}, d2 = {"Lio/didomi/sdk/config/app/SyncConfiguration;", "", "", b4.r, "", "timeout", "internalFrequency", "<init>", "(ZII)V", "component3", "()I", "component1", "()Z", "component2", "copy", "(ZII)Lio/didomi/sdk/config/app/SyncConfiguration;", "", "toString", "()Ljava/lang/String;", "hashCode", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "getEnabled", "I", "getTimeout", "getFrequency", "frequency", "Companion", "a", "android_release"}, mv = {1, 8, 0})
public final /* data */ class SyncConfiguration {
    public static final int DEFAULT_FREQUENCY = 86400;
    public static final int DEFAULT_TIMEOUT = 3000;
    public static final int MINIMUM_FREQUENCY = 21600;

    @c(b4.r)
    private final boolean enabled;

    @c("frequency")
    private final int internalFrequency;

    @c("timeout")
    private final int timeout;

    public SyncConfiguration() {
        this(false, 0, 0, 7, null);
    }

    public SyncConfiguration(boolean z, int i, int i2) {
        this.enabled = z;
        this.timeout = i;
        this.internalFrequency = i2;
    }

    public /* synthetic */ SyncConfiguration(boolean z, int i, int i2, int i3, n nVar) {
        this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? 3000 : i, (i3 & 4) != 0 ? DEFAULT_FREQUENCY : i2);
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    private final int getInternalFrequency() {
        return this.internalFrequency;
    }

    public static /* synthetic */ SyncConfiguration copy$default(SyncConfiguration syncConfiguration, boolean z, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            z = syncConfiguration.enabled;
        }
        if ((i3 & 2) != 0) {
            i = syncConfiguration.timeout;
        }
        if ((i3 & 4) != 0) {
            i2 = syncConfiguration.internalFrequency;
        }
        return syncConfiguration.copy(z, i, i2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getTimeout() {
        return this.timeout;
    }

    public final SyncConfiguration copy(boolean enabled, int timeout, int internalFrequency) {
        return new SyncConfiguration(enabled, timeout, internalFrequency);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SyncConfiguration)) {
            return false;
        }
        SyncConfiguration syncConfiguration = (SyncConfiguration) other;
        return this.enabled == syncConfiguration.enabled && this.timeout == syncConfiguration.timeout && this.internalFrequency == syncConfiguration.internalFrequency;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final int getFrequency() {
        return Math.max(MINIMUM_FREQUENCY, this.internalFrequency);
    }

    public final int getTimeout() {
        return this.timeout;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public int hashCode() {
        boolean z = this.enabled;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (((r0 * 31) + this.timeout) * 31) + this.internalFrequency;
    }

    public String toString() {
        return "SyncConfiguration(enabled=" + this.enabled + ", timeout=" + this.timeout + ", internalFrequency=" + this.internalFrequency + ')';
    }
}
