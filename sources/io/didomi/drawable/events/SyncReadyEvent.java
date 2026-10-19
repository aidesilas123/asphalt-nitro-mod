package io.didomi.drawable.events;

import androidx.annotation.Keep;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lio/didomi/sdk/events/SyncReadyEvent;", "Lio/didomi/sdk/events/Event;", "statusApplied", "", "syncAcknowledged", "Lkotlin/Function0;", "(ZLkotlin/jvm/functions/Function0;)V", "getStatusApplied", "()Z", "getSyncAcknowledged", "()Lkotlin/jvm/functions/Function0;", "android_release"}, mv = {1, 8, 0}, xi = 48)
public final class SyncReadyEvent implements Event {
    private final boolean statusApplied;
    private final Function0<Boolean> syncAcknowledged;

    public SyncReadyEvent(boolean z, Function0<Boolean> syncAcknowledged) {
        Intrinsics.checkNotNullParameter(syncAcknowledged, "syncAcknowledged");
        this.statusApplied = z;
        this.syncAcknowledged = syncAcknowledged;
    }

    public final boolean getStatusApplied() {
        return this.statusApplied;
    }

    public final Function0<Boolean> getSyncAcknowledged() {
        return this.syncAcknowledged;
    }
}
