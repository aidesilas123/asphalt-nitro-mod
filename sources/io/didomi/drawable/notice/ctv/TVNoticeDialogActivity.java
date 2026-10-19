package io.didomi.drawable.notice.ctv;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.activity.OnBackPressedCallback;
import androidx.fragment.app.FragmentManager;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.AbstractActivityC1836n;
import io.didomi.drawable.C1873q6;
import io.didomi.drawable.G0;
import io.didomi.drawable.R;
import io.didomi.drawable.notice.ctv.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0012\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;", "Lio/didomi/sdk/n;", "Lio/didomi/sdk/notice/ctv/a$a;", "<init>", "()V", "", "l", InneractiveMediationDefs.GENDER_MALE, "", "hasPrivacyDialog", "a", "(Z)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onStart", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "io/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;", "backPressedCallback", "Lio/didomi/sdk/G0;", "e", "Lio/didomi/sdk/G0;", "binding", "android_release"}, mv = {1, 8, 0})
public final class TVNoticeDialogActivity extends AbstractActivityC1836n implements a.InterfaceC0496a {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final a backPressedCallback = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private G0 binding;

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"io/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a", "Landroidx/activity/OnBackPressedCallback;", "", "handleOnBackPressed", "()V", "android_release"}, mv = {1, 8, 0})
    public static final class a extends OnBackPressedCallback {
        a() {
            super(true);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            if (TVNoticeDialogActivity.this.getSupportFragmentManager().getFragments().size() == 1) {
                return;
            }
            TVNoticeDialogActivity.this.getSupportFragmentManager().popBackStack();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(TVNoticeDialogActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(this$0.getSupportFragmentManager().findFragmentByTag("io.didomi.dialog.QR_CODE") != null);
    }

    private final void a(boolean hasPrivacyDialog) {
        int i;
        G0 g0 = this.binding;
        if (g0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            g0 = null;
        }
        FrameLayout frameLayout = g0.b;
        frameLayout.setFocusable(hasPrivacyDialog);
        frameLayout.setFocusableInTouchMode(hasPrivacyDialog);
        if (hasPrivacyDialog) {
            frameLayout.clearFocus();
            g();
            i = 393216;
        } else {
            h();
            i = 131072;
        }
        frameLayout.setDescendantFocusability(i);
    }

    private final void l() {
        if (getSupportFragmentManager().findFragmentByTag("io.didomi.dialog.CONSENT_POPUP") != null) {
            return;
        }
        getSupportFragmentManager().beginTransaction().replace(R.id.container_ctv_notice_primary, new io.didomi.drawable.notice.ctv.a(), "io.didomi.dialog.CONSENT_POPUP").commit();
    }

    private final void m() {
        if (getSupportFragmentManager().findFragmentByTag("io.didomi.dialog.QR_CODE") != null) {
            return;
        }
        a(true);
        getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.didomi_enter_from_right, R.anim.didomi_fade_out, R.anim.didomi_fade_in, R.anim.didomi_exit_to_right).add(R.id.container_ctv_notice_secondary, new C1873q6(), "io.didomi.dialog.QR_CODE").addToBackStack("io.didomi.dialog.QR_CODE").commit();
    }

    @Override // io.didomi.drawable.notice.ctv.a.InterfaceC0496a
    public void a() {
        m();
    }

    @Override // io.didomi.drawable.notice.ctv.a.InterfaceC0496a
    public void b() {
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        G0 g0A = G0.a(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(g0A, "inflate(layoutInflater)");
        this.binding = g0A;
        G0 g0 = null;
        if (g0A == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            g0A = null;
        }
        setContentView(g0A.getRoot());
        G0 g02 = this.binding;
        if (g02 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            g0 = g02;
        }
        View view = g0.f8224d;
        Intrinsics.checkNotNullExpressionValue(view, "binding.viewCtvNoticeBackground");
        a(view);
        getOnBackPressedDispatcher().addCallback(this, this.backPressedCallback);
        getSupportFragmentManager().addOnBackStackChangedListener(new FragmentManager.OnBackStackChangedListener() { // from class: io.didomi.sdk.notice.ctv.b
            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public final void onBackStackChanged() {
                TVNoticeDialogActivity.a(this.a);
            }
        });
        l();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        getWindow().setBackgroundDrawable(new InsetDrawable((Drawable) new ColorDrawable(0), 0, 0, 0, 0));
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -1;
    }
}
