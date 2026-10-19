package io.didomi.drawable;

import kotlin.Metadata;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.E8, reason: from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\r\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000f\u0010\u0011\"\u0004\b\u000f\u0010\u0005¨\u0006\u0012"}, d2 = {"Lio/didomi/sdk/E8;", "", "", "noticeWasHidden", "<init>", "(Z)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Z", "()Z", "android_release"}, mv = {1, 8, 0})
public final /* data */ class UIStateRepository {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private boolean noticeWasHidden;

    public UIStateRepository() {
        this(false, 1, null);
    }

    public UIStateRepository(boolean z) {
        this.noticeWasHidden = z;
    }

    public /* synthetic */ UIStateRepository(boolean z, int i, n nVar) {
        this((i & 1) != 0 ? false : z);
    }

    public final void a(boolean z) {
        this.noticeWasHidden = z;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getNoticeWasHidden() {
        return this.noticeWasHidden;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UIStateRepository) && this.noticeWasHidden == ((UIStateRepository) other).noticeWasHidden;
    }

    public int hashCode() {
        boolean z = this.noticeWasHidden;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public String toString() {
        return "UIStateRepository(noticeWasHidden=" + this.noticeWasHidden + ')';
    }
}
