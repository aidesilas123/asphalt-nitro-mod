package io.didomi.drawable.lifecycle;

import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleObserver;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.Didomi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u0011\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u000f\u001a\u0004\b\n\u0010\u000e\"\u0004\b\u0007\u0010\u0010R\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000f\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\n\u0010\u0010R$\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0014\u001a\u0004\b\u0007\u0010\u0015\"\u0004\b\u0012\u0010\u000b¨\u0006\u0017"}, d2 = {"Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;", "", "<init>", "()V", "Landroidx/fragment/app/FragmentActivity;", "activity", "Landroidx/lifecycle/LifecycleObserver;", "a", "(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/LifecycleObserver;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroidx/fragment/app/FragmentActivity;)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Z", "Z", "(Z)V", "noticeWasDisplayed", "c", "preferencesWasDisplayed", "Landroidx/fragment/app/FragmentActivity;", "()Landroidx/fragment/app/FragmentActivity;", "currentActivity", "android_release"}, mv = {1, 8, 0})
public final class DidomiLifecycleHandler {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private boolean noticeWasDisplayed;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private boolean preferencesWasDisplayed;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private FragmentActivity currentActivity;

    private final LifecycleObserver a(FragmentActivity activity) {
        return new DidomiLifecycleHandler$createLifecycleObserver$lifecycleObserver$1(this, activity);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final FragmentActivity getCurrentActivity() {
        return this.currentActivity;
    }

    public final void a(boolean z) {
        this.noticeWasDisplayed = z;
    }

    public final void b(FragmentActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.currentActivity = activity;
        activity.getLifecycle().addObserver(a(activity));
    }

    public final void b(boolean z) {
        this.preferencesWasDisplayed = z;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getNoticeWasDisplayed() {
        return this.noticeWasDisplayed;
    }

    public final void c(FragmentActivity fragmentActivity) {
        this.currentActivity = fragmentActivity;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getPreferencesWasDisplayed() {
        return this.preferencesWasDisplayed;
    }

    public final boolean d() {
        if (this.noticeWasDisplayed || this.preferencesWasDisplayed) {
            Didomi companion = Didomi.Companion.getInstance();
            if (companion.isReady() && !companion.isInitializeInProgress$android_release()) {
                return true;
            }
        }
        return false;
    }
}
