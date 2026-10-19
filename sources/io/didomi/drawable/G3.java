package io.didomi.drawable;

import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.D8;
import io.didomi.drawable.O;
import io.didomi.drawable.S;
import io.didomi.drawable.V4;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\t\u0010\rR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000eR \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R \u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0012\u001a\u0004\b\u0017\u0010\u0014¨\u0006\u0019"}, d2 = {"Lio/didomi/sdk/G3;", "Lio/didomi/sdk/D8;", "Lio/didomi/sdk/H;", "configurationRepository", "<init>", "(Lio/didomi/sdk/H;)V", "Landroidx/fragment/app/FragmentActivity;", "activity", "", "a", "(Landroidx/fragment/app/FragmentActivity;)V", "Lio/didomi/sdk/Y5;", "subScreenType", "(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;)V", "Lio/didomi/sdk/H;", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlinx/coroutines/flow/MutableStateFlow;", "g", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "isNoticeDisplayed", "c", InneractiveMediationDefs.GENDER_FEMALE, "isPreferencesDisplayed", "android_release"}, mv = {1, 8, 0})
public final class G3 implements D8 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final H configurationRepository;
    private final MutableStateFlow<Boolean> b;
    private final MutableStateFlow<Boolean> c;

    public G3(H configurationRepository) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        this.configurationRepository = configurationRepository;
        Boolean bool = Boolean.FALSE;
        this.b = StateFlowKt.MutableStateFlow(bool);
        this.c = StateFlowKt.MutableStateFlow(bool);
    }

    @Override // io.didomi.drawable.D8
    public StateFlow<Boolean> a() {
        return D8.a.b(this);
    }

    @Override // io.didomi.drawable.D8
    public void a(FragmentActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (b()) {
            return;
        }
        if (I.j(this.configurationRepository)) {
            O.a aVar = O.h;
            FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "activity.supportFragmentManager");
            aVar.a(supportFragmentManager);
        } else {
            S.a aVar2 = S.h;
            FragmentManager supportFragmentManager2 = activity.getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager2, "activity.supportFragmentManager");
            aVar2.a(supportFragmentManager2);
        }
        D8.a.a(this, activity);
    }

    @Override // io.didomi.drawable.D8
    public void a(FragmentActivity activity, Y5 subScreenType) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(subScreenType, "subScreenType");
        if (c()) {
            return;
        }
        V4.a aVar = V4.j;
        FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "activity.supportFragmentManager");
        aVar.a(supportFragmentManager, subScreenType);
        D8.a.a(this, activity, subScreenType);
    }

    @Override // io.didomi.drawable.D8
    public boolean b() {
        return D8.a.c(this);
    }

    @Override // io.didomi.drawable.D8
    public boolean c() {
        return D8.a.d(this);
    }

    @Override // io.didomi.drawable.D8
    public void d() {
        D8.a.e(this);
    }

    @Override // io.didomi.drawable.D8
    public StateFlow<Boolean> e() {
        return D8.a.a(this);
    }

    @Override // io.didomi.drawable.D8
    public MutableStateFlow<Boolean> f() {
        return this.c;
    }

    @Override // io.didomi.drawable.D8
    public MutableStateFlow<Boolean> g() {
        return this.b;
    }

    @Override // io.didomi.drawable.D8
    public void h() {
        D8.a.f(this);
    }
}
