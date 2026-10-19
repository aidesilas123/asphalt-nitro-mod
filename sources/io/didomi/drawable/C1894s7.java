package io.didomi.drawable;

import android.content.Intent;
import androidx.fragment.app.FragmentActivity;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.D8;
import io.didomi.drawable.notice.ctv.TVNoticeDialogActivity;
import io.didomi.drawable.preferences.ctv.TVPreferencesDialogActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: renamed from: io.didomi.sdk.s7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0000\u0018\u0000 \u00152\u00020\u0001:\u0001\u0007B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0007\u0010\u000bR \u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R \u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0013\u0010\u0010¨\u0006\u0016"}, d2 = {"Lio/didomi/sdk/s7;", "Lio/didomi/sdk/D8;", "<init>", "()V", "Landroidx/fragment/app/FragmentActivity;", "activity", "", "a", "(Landroidx/fragment/app/FragmentActivity;)V", "Lio/didomi/sdk/Y5;", "subScreenType", "(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;)V", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "Lkotlinx/coroutines/flow/MutableStateFlow;", "g", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "isNoticeDisplayed", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, InneractiveMediationDefs.GENDER_FEMALE, "isPreferencesDisplayed", "c", "android_release"}, mv = {1, 8, 0})
public final class C1894s7 implements D8 {
    private final MutableStateFlow<Boolean> a;
    private final MutableStateFlow<Boolean> b;

    public C1894s7() {
        Boolean bool = Boolean.FALSE;
        this.a = StateFlowKt.MutableStateFlow(bool);
        this.b = StateFlowKt.MutableStateFlow(bool);
    }

    @Override // io.didomi.drawable.D8
    public StateFlow<Boolean> a() {
        return D8.a.b(this);
    }

    @Override // io.didomi.drawable.D8
    public void a(FragmentActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        activity.startActivity(new Intent(activity.getApplicationContext(), (Class<?>) TVNoticeDialogActivity.class).addFlags(0));
        D8.a.a(this, activity);
    }

    @Override // io.didomi.drawable.D8
    public void a(FragmentActivity activity, Y5 subScreenType) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(subScreenType, "subScreenType");
        activity.startActivity(new Intent(activity.getApplicationContext(), (Class<?>) TVPreferencesDialogActivity.class).addFlags(0).putExtra("OPEN_SUBSCREEN", subScreenType));
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
        return this.b;
    }

    @Override // io.didomi.drawable.D8
    public MutableStateFlow<Boolean> g() {
        return this.a;
    }

    @Override // io.didomi.drawable.D8
    public void h() {
        D8.a.f(this);
    }
}
