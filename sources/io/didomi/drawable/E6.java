package io.didomi.drawable;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.view.ctv.DidomiTVSwitch;
import io.didomi.drawable.view.mobile.DidomiToggle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \n2\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ+\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001c\u0010\u0003R\"\u0010#\u001a\u00020\u001d8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001e\u0010 \"\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010,R\u0014\u00100\u001a\u00020.8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u0010/¨\u00061"}, d2 = {"Lio/didomi/sdk/E6;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "", "h", InneractiveMediationDefs.GENDER_FEMALE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "g", "c", "e", "i", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "Lio/didomi/sdk/l7;", "a", "Lio/didomi/sdk/l7;", "()Lio/didomi/sdk/l7;", "setModel", "(Lio/didomi/sdk/l7;)V", "model", "Lio/didomi/sdk/c1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/c1;", "binding", "Lio/didomi/sdk/D2;", "Lio/didomi/sdk/D2;", "bindingCheckbox", "Lio/didomi/sdk/E2;", "Lio/didomi/sdk/E2;", "bindingSwitch", "Lio/didomi/sdk/models/InternalPurpose;", "()Lio/didomi/sdk/models/InternalPurpose;", "purpose", "android_release"}, mv = {1, 8, 0})
public final class E6 extends Fragment {

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    public C1824l7 model;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private C1728c1 binding;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private D2 bindingCheckbox;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private E2 bindingSwitch;

    /* JADX INFO: renamed from: io.didomi.sdk.E6$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lio/didomi/sdk/E6$a;", "", "<init>", "()V", "Lio/didomi/sdk/models/InternalPurpose;", "purpose", "Lio/didomi/sdk/E6;", "a", "(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/E6;", "", "PURPOSE", "Ljava/lang/String;", "TAG", "android_release"}, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final E6 a(InternalPurpose purpose) {
            Intrinsics.checkNotNullParameter(purpose, "purpose");
            E6 e6 = new E6();
            Bundle bundle = new Bundle();
            bundle.putParcelable("purpose", purpose);
            e6.setArguments(bundle);
            return e6;
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/E6$b", "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;", "Lio/didomi/sdk/view/ctv/DidomiTVSwitch;", "switch", "", "isChecked", "", "a", "(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V", "android_release"}, mv = {1, 8, 0})
    public static final class b implements DidomiTVSwitch.a {
        final /* synthetic */ E2 b;

        b(E2 e2) {
            this.b = e2;
        }

        @Override // io.didomi.sdk.view.ctv.DidomiTVSwitch.a
        public void a(DidomiTVSwitch didomiTVSwitch, boolean isChecked) {
            Intrinsics.checkNotNullParameter(didomiTVSwitch, "switch");
            E6.this.a().f(isChecked);
            this.b.c.setText(E6.this.a().c(E6.this.b(), isChecked));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(D2 this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.b.callOnClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(D2 this_apply, E6 this$0, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this_apply.b.setChecked(!r3.isChecked());
        this$0.a().g(this_apply.b.isChecked());
        this_apply.c.setText(this$0.a().d(this$0.b(), this_apply.b.isChecked()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(E6 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DidomiTVSwitch this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.callOnClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(E6 this$0, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 22 || keyEvent.getAction() != 1) {
            return false;
        }
        this$0.c();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InternalPurpose b() {
        if (Build.VERSION.SDK_INT < 33) {
            Parcelable parcelable = requireArguments().getParcelable("purpose");
            Intrinsics.checkNotNull(parcelable);
            return (InternalPurpose) parcelable;
        }
        Object parcelable2 = requireArguments().getParcelable("purpose", InternalPurpose.class);
        Intrinsics.checkNotNull(parcelable2);
        Intrinsics.checkNotNullExpressionValue(parcelable2, "{\n            requireArg…::class.java)!!\n        }");
        return (InternalPurpose) parcelable2;
    }

    private final void c() {
        getParentFragmentManager().beginTransaction().setCustomAnimations(R.anim.didomi_enter_from_right, R.anim.didomi_fade_out, R.anim.didomi_fade_in, R.anim.didomi_exit_to_right_alpha).replace(R.id.container_ctv_preferences_secondary, new C1953y6()).addToBackStack("io.didomi.dialog.TV_PURPOSE_ADDITIONAL_INFO_FRAGMENT").commit();
    }

    private final void d() {
        E2 e2;
        E2 e22;
        ConstraintLayout root;
        ConstraintLayout root2 = null;
        if (!b().isConsentNotEssential()) {
            C1728c1 c1728c1 = this.binding;
            if (c1728c1 != null && (e2 = c1728c1.c) != null) {
                root2 = e2.getRoot();
            }
            if (root2 == null) {
                return;
            }
            root2.setVisibility(8);
            return;
        }
        E2 e23 = this.bindingSwitch;
        if (e23 != null) {
            boolean z = a().w0().getValue() == DidomiToggle.b.ENABLED;
            e23.f8206d.setText(a().K());
            e23.c.setText(a().c(b(), z));
            final DidomiTVSwitch didomiTVSwitch = e23.b;
            didomiTVSwitch.setCallback(null);
            didomiTVSwitch.setChecked(z);
            didomiTVSwitch.setCallback(new b(e23));
            C1728c1 c1728c12 = this.binding;
            if (c1728c12 == null || (e22 = c1728c12.c) == null || (root = e22.getRoot()) == null) {
                return;
            }
            root.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.ca
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    E6.a(didomiTVSwitch, view);
                }
            });
        }
    }

    private final void e() {
        TextView textView;
        int i;
        C1728c1 c1728c1 = this.binding;
        if (c1728c1 == null || (textView = c1728c1.f8520f) == null) {
            return;
        }
        String strI = a().i(b());
        if (StringsKt__StringsJVMKt.isBlank(strI)) {
            i = 8;
        } else {
            textView.setText(strI);
            i = 0;
        }
        textView.setVisibility(i);
    }

    private final void f() {
        D2 d2;
        D2 d22;
        ConstraintLayout root;
        if (a().T0() || !b().isLegitimateInterestNotEssential()) {
            C1728c1 c1728c1 = this.binding;
            ConstraintLayout root2 = (c1728c1 == null || (d2 = c1728c1.f8518d) == null) ? null : d2.getRoot();
            if (root2 == null) {
                return;
            }
            root2.setVisibility(8);
            return;
        }
        final D2 d23 = this.bindingCheckbox;
        if (d23 != null) {
            d23.b.setChecked(!a().q(b()));
            d23.f8201d.setText(a().P1());
            d23.c.setText(a().d(b(), d23.b.isChecked()));
            d23.b.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.ea
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    E6.a(d23, this, view);
                }
            });
            C1728c1 c1728c12 = this.binding;
            if (c1728c12 == null || (d22 = c1728c12.f8518d) == null || (root = d22.getRoot()) == null) {
                return;
            }
            root.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.fa
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    E6.a(d23, view);
                }
            });
        }
    }

    private final void g() {
        View view;
        Button button;
        if (!a().a2()) {
            C1728c1 c1728c1 = this.binding;
            view = c1728c1 != null ? c1728c1.b : null;
            if (view == null) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        C1728c1 c1728c12 = this.binding;
        if (c1728c12 != null && (button = c1728c12.b) != null) {
            button.setText(a().V1());
            button.setVisibility(0);
            button.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.ga
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    E6.a(this.a, view2);
                }
            });
            button.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.da
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view2, int i, KeyEvent keyEvent) {
                    return E6.a(this.a, view2, i, keyEvent);
                }
            });
        }
        C1728c1 c1728c13 = this.binding;
        view = c1728c13 != null ? c1728c13.i : null;
        if (view == null) {
            return;
        }
        view.setVisibility(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void h() {
        /*
            r4 = this;
            io.didomi.sdk.c1 r0 = r4.binding
            if (r0 == 0) goto L42
            android.widget.TextView r0 = r0.f8521g
            if (r0 == 0) goto L42
            io.didomi.sdk.D2 r1 = r4.bindingCheckbox
            r2 = 8
            if (r1 == 0) goto L33
            androidx.constraintlayout.widget.ConstraintLayout r1 = r1.getRoot()
            if (r1 == 0) goto L33
            java.lang.String r3 = "root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)
            int r1 = r1.getVisibility()
            if (r1 != r2) goto L33
            io.didomi.sdk.E2 r1 = r4.bindingSwitch
            if (r1 == 0) goto L33
            androidx.constraintlayout.widget.ConstraintLayout r1 = r1.getRoot()
            if (r1 == 0) goto L33
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)
            int r1 = r1.getVisibility()
            if (r1 != r2) goto L33
            goto L3f
        L33:
            io.didomi.sdk.l7 r1 = r4.a()
            java.lang.String r1 = r1.W1()
            r0.setText(r1)
            r2 = 0
        L3f:
            r0.setVisibility(r2)
        L42:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.E6.h():void");
    }

    private final void i() {
        TextView textView;
        int i;
        C1728c1 c1728c1 = this.binding;
        if (c1728c1 == null || (textView = c1728c1.h) == null) {
            return;
        }
        String strK = a().k(b());
        if (StringsKt__StringsJVMKt.isBlank(strK)) {
            i = 8;
        } else {
            textView.setText(strK);
            i = 0;
        }
        textView.setVisibility(i);
    }

    public final C1824l7 a() {
        C1824l7 c1824l7 = this.model;
        if (c1824l7 != null) {
            return c1824l7;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup parent, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        C1728c1 c1728c1A = C1728c1.a(inflater, parent, false);
        this.binding = c1728c1A;
        ConstraintLayout root = c1728c1A.getRoot();
        this.bindingCheckbox = D2.a(root);
        this.bindingSwitch = E2.a(root);
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, parent…ng.bind(it)\n            }");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding = null;
        this.bindingCheckbox = null;
        this.bindingSwitch = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        C1824l7 c1824l7A = a();
        c1824l7A.u(b());
        c1824l7A.o(b());
        i();
        e();
        g();
        d();
        f();
        h();
    }
}
