package io.didomi.drawable;

import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.apiEvents.b;
import io.didomi.drawable.events.HideNoticeEvent;
import io.didomi.drawable.events.HidePreferencesEvent;
import io.didomi.drawable.events.ShowNoticeEvent;
import io.didomi.drawable.events.ShowPreferencesEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0015\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0015\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0015\u0010\u0019J\r\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0013\u0010\u0016J\u0015\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u0013\u0010\u001dJ\u0015\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u0015\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u001eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u001fR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010 R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006'"}, d2 = {"Lio/didomi/sdk/I3;", "", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/V;", "consentRepository", "Lio/didomi/sdk/D8;", "uiProvider", "Lio/didomi/sdk/G8;", "userChoicesInfoProvider", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/V;Lio/didomi/sdk/D8;Lio/didomi/sdk/G8;)V", "Landroidx/fragment/app/FragmentActivity;", "activity", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroidx/fragment/app/FragmentActivity;)V", "a", "()V", "Lio/didomi/sdk/Y5;", "subScreenType", "(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;)V", "Landroidx/fragment/app/FragmentManager;", "parentFragmentManager", "c", "(Landroidx/fragment/app/FragmentManager;)V", "Lio/didomi/sdk/H;", "Lio/didomi/sdk/M2;", "Lio/didomi/sdk/apiEvents/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/V;", "e", "Lio/didomi/sdk/D8;", InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/G8;", "android_release"}, mv = {1, 8, 0})
public final class I3 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final H configurationRepository;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final M2 eventsRepository;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final b apiEventsRepository;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final V consentRepository;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final D8 uiProvider;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final G8 userChoicesInfoProvider;

    public I3(H configurationRepository, M2 eventsRepository, b apiEventsRepository, V consentRepository, D8 uiProvider, G8 userChoicesInfoProvider) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(consentRepository, "consentRepository");
        Intrinsics.checkNotNullParameter(uiProvider, "uiProvider");
        Intrinsics.checkNotNullParameter(userChoicesInfoProvider, "userChoicesInfoProvider");
        this.configurationRepository = configurationRepository;
        this.eventsRepository = eventsRepository;
        this.apiEventsRepository = apiEventsRepository;
        this.consentRepository = consentRepository;
        this.uiProvider = uiProvider;
        this.userChoicesInfoProvider = userChoicesInfoProvider;
    }

    public static /* synthetic */ void a(I3 i3, FragmentActivity fragmentActivity, Y5 y5, int i, Object obj) {
        if ((i & 2) != 0) {
            y5 = Y5.None;
        }
        i3.a(fragmentActivity, y5);
    }

    public final void a() {
        this.eventsRepository.c(new HideNoticeEvent());
        this.uiProvider.d();
    }

    public final void a(FragmentActivity activity) {
        this.consentRepository.p();
        if (activity == null) {
            Log.w$default("Activity passed to forceShowNotice is null", null, 2, null);
            return;
        }
        if (this.configurationRepository.e() == Regulation.NONE) {
            Log.w$default("Cannot show notice when regulation is NONE", null, 2, null);
            return;
        }
        this.eventsRepository.c(new ShowNoticeEvent());
        if (this.configurationRepository.b().e().h()) {
            this.uiProvider.a(activity);
        }
        if (this.configurationRepository.b().f().g()) {
            a(this, activity, null, 2, null);
        }
        this.apiEventsRepository.e();
    }

    public final void a(FragmentActivity activity, Y5 subScreenType) {
        Intrinsics.checkNotNullParameter(subScreenType, "subScreenType");
        if (activity == null) {
            Log.w$default("Activity passed to showPreferences is null", null, 2, null);
        } else if (subScreenType == Y5.SensitivePersonalInfo && I.h(this.configurationRepository)) {
            Log.w$default("Sensitive Personal Information doesn't contain any associated purpose in the configuration", null, 2, null);
        } else {
            this.eventsRepository.c(new ShowPreferencesEvent());
            this.uiProvider.a(activity, subScreenType);
        }
    }

    public final void a(FragmentManager parentFragmentManager) {
        Intrinsics.checkNotNullParameter(parentFragmentManager, "parentFragmentManager");
        C1952y5.INSTANCE.a(parentFragmentManager);
    }

    public final void b() {
        this.eventsRepository.c(new HidePreferencesEvent());
        this.uiProvider.h();
        this.userChoicesInfoProvider.j();
    }

    public final void b(FragmentActivity activity) {
        if (activity == null) {
            Log.w$default("Activity passed to showNotice is null", null, 2, null);
        } else if (this.consentRepository.q()) {
            a(activity);
        }
    }

    public final void b(FragmentManager parentFragmentManager) {
        Intrinsics.checkNotNullParameter(parentFragmentManager, "parentFragmentManager");
        L5.f8282g.a(parentFragmentManager);
    }

    public final void c(FragmentManager parentFragmentManager) {
        Intrinsics.checkNotNullParameter(parentFragmentManager, "parentFragmentManager");
        a9.i.a(parentFragmentManager);
    }
}
