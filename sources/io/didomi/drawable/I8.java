package io.didomi.drawable;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwner;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import io.didomi.drawable.view.mobile.HeaderView;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 ,2\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\u0003R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u001dR\"\u0010%\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b \u0010\"\"\u0004\b#\u0010$R\"\u0010+\u001a\u00020&8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\u0006\u0010'\u001a\u0004\b\u0019\u0010(\"\u0004\b)\u0010*¨\u0006-"}, d2 = {"Lio/didomi/sdk/I8;", "Lio/didomi/sdk/I0;", "<init>", "()V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "Lio/didomi/sdk/m1;", "a", "Lio/didomi/sdk/m1;", "binding", "Ljava/util/Timer;", "Ljava/util/Timer;", "timer", "Lio/didomi/sdk/K8;", "c", "Lio/didomi/sdk/K8;", "()Lio/didomi/sdk/K8;", "setModel", "(Lio/didomi/sdk/K8;)V", "model", "Lio/didomi/sdk/z8;", "Lio/didomi/sdk/z8;", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "e", "android_release"}, mv = {1, 8, 0})
public final class I8 extends I0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private C1828m1 binding;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private Timer timer;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public K8 model;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    public C1965z8 themeProvider;

    /* JADX INFO: renamed from: io.didomi.sdk.I8$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/I8$a;", "", "<init>", "()V", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "a", "(Landroidx/fragment/app/FragmentManager;)V", "", "DURATION_ANIMATION", "J", "", "TAG", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final void a(FragmentManager fragmentManager) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            if (fragmentManager.findFragmentByTag("UserInfoFragment") == null) {
                new I8().show(fragmentManager, "UserInfoFragment");
            } else {
                Log.w$default("Fragment with tag 'UserInfoFragment' is already present", null, 2, null);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005¸\u0006\u0000"}, d2 = {"kotlin/concurrent/TimersKt$timerTask$1", "Ljava/util/TimerTask;", "", "run", "()V", "kotlin-stdlib"}, mv = {1, 8, 0})
    public static final class b extends TimerTask {
        public b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            I8.this.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(I8 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1828m1 this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        TextView userInfoCopiedText = this_apply.f8696f;
        Intrinsics.checkNotNullExpressionValue(userInfoCopiedText, "userInfoCopiedText");
        k9.a(userInfoCopiedText, 50L, 4, null, 4, null);
        AppCompatImageView userInfoCopiedImage = this_apply.f8695e;
        Intrinsics.checkNotNullExpressionValue(userInfoCopiedImage, "userInfoCopiedImage");
        k9.a(userInfoCopiedImage, 50L, (Function0) null, 2, (Object) null);
    }

    private final void b() {
        C1828m1 c1828m1 = this.binding;
        if (c1828m1 != null) {
            AppCompatImageView appCompatImageView = c1828m1.f8695e;
            Intrinsics.checkNotNullExpressionValue(appCompatImageView, "binding.userInfoCopiedImage");
            k9.a(appCompatImageView, 50L, 0, null, 6, null);
            TextView copyInfoToClipBoard$lambda$10$lambda$9 = c1828m1.f8696f;
            copyInfoToClipBoard$lambda$10$lambda$9.announceForAccessibility(c().d());
            Intrinsics.checkNotNullExpressionValue(copyInfoToClipBoard$lambda$10$lambda$9, "copyInfoToClipBoard$lambda$10$lambda$9");
            k9.a(copyInfoToClipBoard$lambda$10$lambda$9, 50L, (Function0) null, 2, (Object) null);
        }
        ClipboardManager clipboardManager = (ClipboardManager) ContextCompat.getSystemService(requireContext(), ClipboardManager.class);
        if (clipboardManager != null) {
            clipboardManager.setPrimaryClip(ClipData.newPlainText(c().c(), c().b()));
        }
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
        }
        Timer timer2 = new Timer();
        timer2.schedule(new b(), AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
        this.timer = timer2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(I8 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        final C1828m1 c1828m1 = this.binding;
        if (c1828m1 != null) {
            requireActivity().runOnUiThread(new Runnable() { // from class: io.didomi.sdk.ra
                @Override // java.lang.Runnable
                public final void run() {
                    I8.a(c1828m1);
                }
            });
        }
    }

    @Override // io.didomi.drawable.I0
    public C1965z8 a() {
        C1965z8 c1965z8 = this.themeProvider;
        if (c1965z8 != null) {
            return c1965z8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("themeProvider");
        return null;
    }

    public final K8 c() {
        K8 k8 = this.model;
        if (k8 != null) {
            return k8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        J0 j0A = F0.a(this);
        if (j0A != null) {
            j0A.a(this);
        }
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        C1828m1 c1828m1A = C1828m1.a(inflater, container, false);
        this.binding = c1828m1A;
        ConstraintLayout root = c1828m1A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, contai…g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        C3 c3E = c().e();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
        c3E.a(viewLifecycleOwner);
        this.binding = null;
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
        }
    }

    @Override // io.didomi.drawable.I0, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        C1828m1 c1828m1 = this.binding;
        if (c1828m1 != null) {
            HeaderView headerView = c1828m1.f8697g;
            Intrinsics.checkNotNullExpressionValue(headerView, "binding.userInfoHeader");
            C3 c3E = c().e();
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
            HeaderView.a(headerView, c3E, viewLifecycleOwner, c().f(), null, 8, null);
            AppCompatImageButton onViewCreated$lambda$8$lambda$2 = c1828m1.b;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$8$lambda$2, "onViewCreated$lambda$8$lambda$2");
            j9.a(onViewCreated$lambda$8$lambda$2, c().a());
            C1820l3.a(onViewCreated$lambda$8$lambda$2, a().j());
            onViewCreated$lambda$8$lambda$2.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.qa
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    I8.a(this.a, view2);
                }
            });
            TextView onViewCreated$lambda$8$lambda$3 = c1828m1.i;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$8$lambda$3, "onViewCreated$lambda$8$lambda$3");
            C1955y8.a(onViewCreated$lambda$8$lambda$3, a().i().n());
            onViewCreated$lambda$8$lambda$3.setText(c().c());
            TextView onViewCreated$lambda$8$lambda$4 = c1828m1.f8694d;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$8$lambda$4, "onViewCreated$lambda$8$lambda$4");
            C1955y8.a(onViewCreated$lambda$8$lambda$4, a().i().d());
            onViewCreated$lambda$8$lambda$4.setText(c().b());
            AppCompatButton onViewCreated$lambda$8$lambda$6 = c1828m1.c;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$8$lambda$6, "onViewCreated$lambda$8$lambda$6");
            j9.a(onViewCreated$lambda$8$lambda$6, c().h());
            C1866q.a(onViewCreated$lambda$8$lambda$6, a().r());
            onViewCreated$lambda$8$lambda$6.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.sa
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    I8.b(this.a, view2);
                }
            });
            AppCompatImageView appCompatImageView = c1828m1.f8695e;
            Intrinsics.checkNotNullExpressionValue(appCompatImageView, "binding.userInfoCopiedImage");
            C1820l3.a(appCompatImageView, a().j());
            TextView onViewCreated$lambda$8$lambda$7 = c1828m1.f8696f;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$8$lambda$7, "onViewCreated$lambda$8$lambda$7");
            C1955y8.a(onViewCreated$lambda$8$lambda$7, a().i().c());
            onViewCreated$lambda$8$lambda$7.setText(c().d());
            onViewCreated$lambda$8$lambda$7.setVisibility(4);
        }
    }
}
