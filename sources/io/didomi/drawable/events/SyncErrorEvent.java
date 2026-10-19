package io.didomi.drawable.events;

import androidx.annotation.Keep;
import kotlin.Metadata;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lio/didomi/sdk/events/SyncErrorEvent;", "Lio/didomi/sdk/events/Event;", "error", "", "(Ljava/lang/String;)V", "getError", "()Ljava/lang/String;", "setError", "android_release"}, mv = {1, 8, 0}, xi = 48)
public final class SyncErrorEvent implements Event {
    private String error;

    /* JADX WARN: Multi-variable type inference failed */
    public SyncErrorEvent() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public SyncErrorEvent(String str) {
        this.error = str;
    }

    public /* synthetic */ SyncErrorEvent(String str, int i, n nVar) {
        this((i & 1) != 0 ? null : str);
    }

    public final String getError() {
        return this.error;
    }

    public final void setError(String str) {
        this.error = str;
    }
}
