package io.didomi.drawable;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwner;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.view.mobile.HeaderView;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.y5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 52\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0017\u0010\u0003R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001d\u0010\u001f\"\u0004\b \u0010!R\"\u0010)\u001a\u00020#8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b\u0019\u0010&\"\u0004\b'\u0010(R\"\u00100\u001a\u00020*8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b$\u0010-\"\u0004\b.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103¨\u00066"}, d2 = {"Lio/didomi/sdk/y5;", "Lio/didomi/sdk/I0;", "<init>", "()V", "Landroid/content/Context;", "context", "", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", o2.h.u0, o2.h.t0, "onDestroyView", "Lio/didomi/sdk/d4;", "a", "Lio/didomi/sdk/d4;", "dismissHelper", "Lio/didomi/sdk/B5;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/B5;", "()Lio/didomi/sdk/B5;", "setModel", "(Lio/didomi/sdk/B5;)V", "model", "Lio/didomi/sdk/z8;", "c", "Lio/didomi/sdk/z8;", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "Lio/didomi/sdk/D8;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/D8;", "()Lio/didomi/sdk/D8;", "setUiProvider", "(Lio/didomi/sdk/D8;)V", "uiProvider", "Lio/didomi/sdk/T0;", "e", "Lio/didomi/sdk/T0;", "binding", InneractiveMediationDefs.GENDER_FEMALE, "android_release"}, mv = {1, 8, 0})
public final class C1952y5 extends I0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final C1741d4 dismissHelper = new C1741d4();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    public B5 model;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public C1965z8 themeProvider;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    public D8 uiProvider;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private T0 binding;

    /* JADX INFO: renamed from: io.didomi.sdk.y5$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/y5$a;", "", "<init>", "()V", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "a", "(Landroidx/fragment/app/FragmentManager;)V", "", "TAG", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final void a(FragmentManager fragmentManager) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            if (fragmentManager.findFragmentByTag("SdkStorageDisclosureFragment") == null) {
                new C1952y5().show(fragmentManager, "SdkStorageDisclosureFragment");
            } else {
                Log.w$default("Fragment with tag 'SdkStorageDisclosureFragment' is already present", null, 2, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1952y5 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
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

    public final B5 b() {
        B5 b5 = this.model;
        if (b5 != null) {
            return b5;
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
        T0 t0A = T0.a(inflater, container, false);
        this.binding = t0A;
        ConstraintLayout root = t0A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, contai…g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        C3 c3G = b().g();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
        c3G.a(viewLifecycleOwner);
        this.binding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.dismissHelper.a();
        super.onPause();
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
        T0 t0 = this.binding;
        if (t0 != null) {
            AppCompatImageButton onViewCreated$lambda$9$lambda$2 = t0.b;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$9$lambda$2, "onViewCreated$lambda$9$lambda$2");
            j9.a(onViewCreated$lambda$9$lambda$2, b().a());
            C1820l3.a(onViewCreated$lambda$9$lambda$2, a().j());
            onViewCreated$lambda$9$lambda$2.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.yf
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C1952y5.a(this.a, view2);
                }
            });
            HeaderView onViewCreated$lambda$9$lambda$3 = t0.c;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$9$lambda$3, "onViewCreated$lambda$9$lambda$3");
            C3 c3G = b().g();
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
            HeaderView.a(onViewCreated$lambda$9$lambda$3, c3G, viewLifecycleOwner, b().h(), null, 8, null);
            onViewCreated$lambda$9$lambda$3.a();
            TextView onViewCreated$lambda$9$lambda$4 = t0.f8375e;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$9$lambda$4, "onViewCreated$lambda$9$lambda$4");
            C1955y8.a(onViewCreated$lambda$9$lambda$4, a().i().n());
            onViewCreated$lambda$9$lambda$4.setText(b().h());
            TextView onViewCreated$lambda$9$lambda$5 = t0.f8374d;
            Intrinsics.checkNotNullExpressionValue(onViewCreated$lambda$9$lambda$5, "onViewCreated$lambda$9$lambda$5");
            C1955y8.a(onViewCreated$lambda$9$lambda$5, a().i().c());
            onViewCreated$lambda$9$lambda$5.setText(b().c());
            LinearLayout linearLayout = t0.f8376f;
            Iterator<T> it = b().e().iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                String str = (String) pair.c();
                String str2 = (String) pair.d();
                Context context = linearLayout.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                A5 a5 = new A5(context, null, 0, 6, null);
                a5.a(str, str2);
                linearLayout.addView(a5);
            }
        }
    }
}
