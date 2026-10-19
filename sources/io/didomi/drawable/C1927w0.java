package io.didomi.drawable;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.LifecycleOwner;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.view.mobile.HeaderView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.w0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 82\u00020\u0001:\u0001\u0007B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0019\u0010\u0003J\u000f\u0010\u001a\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\u0003R\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0007\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010(\u001a\u00020#8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\u001e\u0010$\u001a\u0004\b\u0007\u0010%\"\u0004\b&\u0010'R\"\u0010/\u001a\u00020)8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b*\u0010,\"\u0004\b-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106¨\u00069"}, d2 = {"Lio/didomi/sdk/w0;", "Lio/didomi/sdk/I0;", "<init>", "()V", "", "isPrevious", "", "a", "(Z)V", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", o2.h.u0, o2.h.t0, "onDestroyView", "Lio/didomi/sdk/C0;", "Lio/didomi/sdk/C0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Lio/didomi/sdk/C0;", "setModel", "(Lio/didomi/sdk/C0;)V", "model", "Lio/didomi/sdk/z8;", "Lio/didomi/sdk/z8;", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "Lio/didomi/sdk/D8;", "c", "Lio/didomi/sdk/D8;", "()Lio/didomi/sdk/D8;", "setUiProvider", "(Lio/didomi/sdk/D8;)V", "uiProvider", "Lio/didomi/sdk/d4;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/d4;", "dismissHelper", "Lio/didomi/sdk/O0;", "e", "Lio/didomi/sdk/O0;", "binding", InneractiveMediationDefs.GENDER_FEMALE, "android_release"}, mv = {1, 8, 0})
public final class C1927w0 extends I0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    public C0 model;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    public C1965z8 themeProvider;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public D8 uiProvider;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final C1741d4 dismissHelper = new C1741d4();

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private O0 binding;

    /* JADX INFO: renamed from: io.didomi.sdk.w0$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/w0$a;", "", "<init>", "()V", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "a", "(Landroidx/fragment/app/FragmentManager;)V", "", "TAG", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final void a(FragmentManager fragmentManager) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            if (fragmentManager.findFragmentByTag("DeviceStorageDisclosureFragment") == null) {
                new C1927w0().show(fragmentManager, "DeviceStorageDisclosureFragment");
            } else {
                Log.w$default("Fragment with tag 'DeviceStorageDisclosureFragment' is already present", null, 2, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1927w0 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    private final void a(boolean isPrevious) {
        if (!b().a()) {
            dismiss();
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        if (isPrevious) {
            fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.didomi_enter_from_left, R.anim.didomi_exit_to_right);
        } else {
            fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.didomi_enter_from_right, R.anim.didomi_exit_to_left);
        }
        fragmentTransactionBeginTransaction.replace(R.id.selected_disclosure_container, new E5(), "io.didomi.dialog.DISCLOSURE_CONTENT");
        fragmentTransactionBeginTransaction.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C1927w0 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b().s();
        this$0.a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(C1927w0 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b().r();
        this$0.a(false);
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

    public final C0 b() {
        C0 c0 = this.model;
        if (c0 != null) {
            return c0;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    public final D8 c() {
        D8 d8 = this.uiProvider;
        if (d8 != null) {
            return d8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("uiProvider");
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
        O0 o0A = O0.a(inflater, container, false);
        this.binding = o0A;
        ConstraintLayout root = o0A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, contai…g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        C3 logoProvider = b().getLogoProvider();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
        logoProvider.a(viewLifecycleOwner);
        this.binding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.dismissHelper.a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.dismissHelper.a(this, c());
    }

    @Override // io.didomi.drawable.I0, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        O0 o0 = this.binding;
        if (o0 != null) {
            HeaderView headerView = o0.c;
            Intrinsics.checkNotNullExpressionValue(headerView, "binding.disclosureHeader");
            C3 logoProvider = b().getLogoProvider();
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
            HeaderView.a(headerView, logoProvider, viewLifecycleOwner, b().o(), null, 8, null);
            AppCompatImageButton onViewCreated$lambda$7$lambda$2 = o0.b;
            String strB = b().b();
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$7$lambda$2, "onViewCreated$lambda$7$lambda$2");
            j9.a(onViewCreated$lambda$7$lambda$2, strB, strB, null, false, null, 0, null, null, 252, null);
            C1820l3.a(onViewCreated$lambda$7$lambda$2, a().j());
            onViewCreated$lambda$7$lambda$2.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.uf
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C1927w0.a(this.a, view2);
                }
            });
            View view2 = o0.f8312g;
            Intrinsics.checkNotNullExpressionValue(view2, "binding.viewDisclosuresBottomDivider");
            k9.a(view2, a());
            Button onViewCreated$lambda$7$lambda$4 = o0.f8310e;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$7$lambda$4, "onViewCreated$lambda$7$lambda$4");
            C1955y8.a(onViewCreated$lambda$7$lambda$4, a().i().k());
            onViewCreated$lambda$7$lambda$4.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.vf
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    C1927w0.b(this.a, view3);
                }
            });
            onViewCreated$lambda$7$lambda$4.setText(b().k());
            Button onViewCreated$lambda$7$lambda$6 = o0.f8309d;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$7$lambda$6, "onViewCreated$lambda$7$lambda$6");
            C1955y8.a(onViewCreated$lambda$7$lambda$6, a().i().k());
            onViewCreated$lambda$7$lambda$6.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.wf
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    C1927w0.c(this.a, view3);
                }
            });
            onViewCreated$lambda$7$lambda$6.setText(b().j());
        }
        getChildFragmentManager().beginTransaction().add(R.id.selected_disclosure_container, new E5(), "io.didomi.dialog.DISCLOSURE_CONTENT").commit();
    }
}
