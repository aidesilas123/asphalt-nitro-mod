package io.didomi.drawable.lifecycle;

import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.json.o2;
import io.didomi.drawable.Didomi;
import io.didomi.drawable.exceptions.DidomiNotReadyException;
import io.didomi.drawable.functionalinterfaces.DidomiCallable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0003\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000e\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0010\u0010\u000bR\"\u0010\u0017\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"io/didomi/sdk/lifecycle/DidomiLifecycleHandler$createLifecycleObserver$lifecycleObserver$1", "Landroidx/lifecycle/DefaultLifecycleObserver;", "", "a", "()V", "Landroidx/fragment/app/FragmentActivity;", "activity", "(Landroidx/fragment/app/FragmentActivity;)V", "Landroidx/lifecycle/LifecycleOwner;", "owner", "onCreate", "(Landroidx/lifecycle/LifecycleOwner;)V", "onStart", "onStop", o2.h.u0, o2.h.t0, "onDestroy", "", "Z", "getAlreadyResumed", "()Z", "setAlreadyResumed", "(Z)V", "alreadyResumed", "android_release"}, mv = {1, 8, 0})
public final class DidomiLifecycleHandler$createLifecycleObserver$lifecycleObserver$1 implements DefaultLifecycleObserver {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private boolean alreadyResumed;
    final /* synthetic */ DidomiLifecycleHandler b;
    final /* synthetic */ FragmentActivity c;

    DidomiLifecycleHandler$createLifecycleObserver$lifecycleObserver$1(DidomiLifecycleHandler didomiLifecycleHandler, FragmentActivity fragmentActivity) {
        this.b = didomiLifecycleHandler;
        this.c = fragmentActivity;
    }

    private final void a() throws DidomiNotReadyException {
        this.b.b(false);
        this.b.a(false);
        Didomi companion = Didomi.Companion.getInstance();
        DidomiLifecycleHandler didomiLifecycleHandler = this.b;
        if (companion.isReady()) {
            if (companion.isPreferencesVisible()) {
                didomiLifecycleHandler.b(true);
                companion.hidePreferences();
            }
            if (companion.isNoticeVisible()) {
                didomiLifecycleHandler.a(true);
                companion.hideNotice();
            }
        }
    }

    private final void a(FragmentActivity activity) throws DidomiNotReadyException {
        if (this.b.getNoticeWasDisplayed()) {
            Didomi.Companion.getInstance().forceShowNotice(activity);
        }
        if (this.b.getPreferencesWasDisplayed()) {
            Didomi.showPreferences$default(Didomi.Companion.getInstance(), activity, null, 2, null);
        }
        this.b.b(false);
        this.b.a(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Didomi didomi, FragmentActivity activity) throws DidomiNotReadyException {
        Intrinsics.checkNotNullParameter(didomi, "$didomi");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        if (didomi.getUiStateRepository$android_release().getNoticeWasHidden()) {
            didomi.getUiStateRepository$android_release().a(false);
        } else {
            didomi.showNotice(activity);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onCreate(LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(LifecycleOwner owner) throws DidomiNotReadyException {
        Intrinsics.checkNotNullParameter(owner, "owner");
        if (Intrinsics.areEqual(this.c, this.b.getCurrentActivity())) {
            this.b.c(null);
            if (!this.c.isFinishing() && !this.c.isChangingConfigurations()) {
                a();
            }
        }
        this.c.getLifecycle().removeObserver(this);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onPause(LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        if (Intrinsics.areEqual(this.b.getCurrentActivity(), this.c)) {
            this.alreadyResumed = true;
        } else {
            this.c.getLifecycle().removeObserver(this);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onResume(LifecycleOwner owner) throws Exception {
        Intrinsics.checkNotNullParameter(owner, "owner");
        final Didomi companion = Didomi.Companion.getInstance();
        if (this.b.d()) {
            a(this.c);
        } else {
            if (this.alreadyResumed) {
                return;
            }
            final FragmentActivity fragmentActivity = this.c;
            companion.onReady(new DidomiCallable() { // from class: io.didomi.sdk.lifecycle.a
                @Override // io.didomi.drawable.functionalinterfaces.DidomiCallable
                public final void call() throws DidomiNotReadyException {
                    DidomiLifecycleHandler$createLifecycleObserver$lifecycleObserver$1.a(companion, fragmentActivity);
                }
            });
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
    }
}
