package io.didomi.drawable;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwner;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.P4;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.purpose.mobile.PurposeSaveView;
import io.didomi.drawable.view.mobile.DidomiToggle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.u4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 62\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\bH\u0002¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\bH\u0002¢\u0006\u0004\b\r\u0010\u0003J\u0017\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J+\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ!\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001e\u0010\u0003J\u000f\u0010\u001f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001f\u0010\u0003J\u0017\u0010\"\u001a\u00020\b2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\bH\u0016¢\u0006\u0004\b$\u0010\u0003R\u0014\u0010'\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010&R\"\u0010-\u001a\u00020(8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000b\u0010)\u001a\u0004\b\u000b\u0010*\"\u0004\b+\u0010,R\"\u00103\u001a\u00020.8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\f\u0010/\u001a\u0004\b\t\u00100\"\u0004\b1\u00102R\u0018\u0010\u0005\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u00105¨\u00067"}, d2 = {"Lio/didomi/sdk/u4;", "Lio/didomi/sdk/I0;", "<init>", "()V", "Lio/didomi/sdk/x2;", "binding", "Lio/didomi/sdk/models/InternalPurpose;", "purpose", "", "a", "(Lio/didomi/sdk/x2;Lio/didomi/sdk/models/InternalPurpose;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", o2.h.u0, o2.h.t0, "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "onDestroyView", "Lio/didomi/sdk/d4;", "Lio/didomi/sdk/d4;", "dismissHelper", "Lio/didomi/sdk/a5;", "Lio/didomi/sdk/a5;", "()Lio/didomi/sdk/a5;", "setModel", "(Lio/didomi/sdk/a5;)V", "model", "Lio/didomi/sdk/z8;", "Lio/didomi/sdk/z8;", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "Lio/didomi/sdk/P0;", "Lio/didomi/sdk/P0;", "e", "android_release"}, mv = {1, 8, 0})
public final class C1911u4 extends I0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final C1741d4 dismissHelper = new C1741d4();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    public C1712a5 model;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public C1965z8 themeProvider;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private P0 binding;

    /* JADX INFO: renamed from: io.didomi.sdk.u4$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\r¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/u4$a;", "", "<init>", "()V", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Lio/didomi/sdk/models/InternalPurpose;", "purpose", "", "a", "(Landroidx/fragment/app/FragmentManager;Lio/didomi/sdk/models/InternalPurpose;)V", "", "PURPOSE", "Ljava/lang/String;", "TAG", "android_release"}, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final void a(FragmentManager fragmentManager, InternalPurpose purpose) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            Intrinsics.checkNotNullParameter(purpose, "purpose");
            if (fragmentManager.findFragmentByTag("PurposeDetailFragment") != null) {
                Log.w$default("Fragment with tag 'PurposeDetailFragment' is already present", null, 2, null);
                return;
            }
            C1911u4 c1911u4 = new C1911u4();
            Bundle bundle = new Bundle();
            bundle.putParcelable("purpose", purpose);
            c1911u4.setArguments(bundle);
            c1911u4.show(fragmentManager, "PurposeDetailFragment");
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.u4$b */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/u4$b", "Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "Lio/didomi/sdk/view/mobile/DidomiToggle;", "toggle", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "android_release"}, mv = {1, 8, 0})
    public static final class b implements DidomiToggle.a {
        final /* synthetic */ InternalPurpose b;
        final /* synthetic */ DidomiToggle c;

        b(InternalPurpose internalPurpose, DidomiToggle didomiToggle) {
            this.b = internalPurpose;
            this.c = didomiToggle;
        }

        @Override // io.didomi.sdk.view.mobile.DidomiToggle.a
        public void a(DidomiToggle toggle, DidomiToggle.b state) {
            Intrinsics.checkNotNullParameter(toggle, "toggle");
            Intrinsics.checkNotNullParameter(state, "state");
            C1911u4.this.b().b(this.b, state);
            C1911u4.this.d();
            DidomiToggle onStateChange = this.c;
            Intrinsics.checkNotNullExpressionValue(onStateChange, "onStateChange");
            j9.b(onStateChange, C1911u4.this.b().v0());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.u4$c */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/u4$c", "Lio/didomi/sdk/view/mobile/DidomiToggle$a;", "Lio/didomi/sdk/view/mobile/DidomiToggle;", "toggle", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "android_release"}, mv = {1, 8, 0})
    public static final class c implements DidomiToggle.a {
        final /* synthetic */ InternalPurpose b;
        final /* synthetic */ DidomiToggle c;

        c(InternalPurpose internalPurpose, DidomiToggle didomiToggle) {
            this.b = internalPurpose;
            this.c = didomiToggle;
        }

        @Override // io.didomi.sdk.view.mobile.DidomiToggle.a
        public void a(DidomiToggle toggle, DidomiToggle.b state) {
            Intrinsics.checkNotNullParameter(toggle, "toggle");
            Intrinsics.checkNotNullParameter(state, "state");
            C1911u4.this.b().c(this.b, state);
            DidomiToggle onStateChange = this.c;
            Intrinsics.checkNotNullExpressionValue(onStateChange, "onStateChange");
            j9.b(onStateChange, C1911u4.this.b().x0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1911u4 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1911u4 this$0, InternalPurpose purpose, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(purpose, "$purpose");
        P4.Companion companion = P4.INSTANCE;
        FragmentManager parentFragmentManager = this$0.getParentFragmentManager();
        Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
        companion.a(parentFragmentManager, purpose, d9.PurposeConsent);
    }

    private final void a(C1939x2 binding, final InternalPurpose purpose) {
        DidomiToggle updatePurposeConsent$lambda$12 = binding.c;
        Intrinsics.checkNotNullExpressionValue(updatePurposeConsent$lambda$12, "updatePurposeConsent$lambda$12");
        j9.a(updatePurposeConsent$lambda$12, b().v0());
        DidomiToggle.b value = b().w0().getValue();
        if (value == null) {
            value = DidomiToggle.b.UNKNOWN;
        } else {
            Intrinsics.checkNotNullExpressionValue(value, "model.selectedPurposeCon…idomiToggle.State.UNKNOWN");
        }
        updatePurposeConsent$lambda$12.setState(value);
        updatePurposeConsent$lambda$12.setCallback(new b(purpose, updatePurposeConsent$lambda$12));
        TextView updatePurposeConsent$lambda$13 = binding.f8803d;
        Intrinsics.checkNotNullExpressionValue(updatePurposeConsent$lambda$13, "updatePurposeConsent$lambda$13");
        C1955y8.a(updatePurposeConsent$lambda$13, a().i().c());
        updatePurposeConsent$lambda$13.setText(b().K());
        String strM = b().m(purpose);
        if (strM != null) {
            AppCompatButton updatePurposeConsent$lambda$16$lambda$15 = binding.b;
            Intrinsics.checkNotNullExpressionValue(updatePurposeConsent$lambda$16$lambda$15, "updatePurposeConsent$lambda$16$lambda$15");
            C1955y8.a(updatePurposeConsent$lambda$16$lambda$15, a().i().s());
            updatePurposeConsent$lambda$16$lambda$15.setText(strM);
            updatePurposeConsent$lambda$16$lambda$15.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.tf
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C1911u4.a(this.a, purpose, view);
                }
            });
            updatePurposeConsent$lambda$16$lambda$15.setVisibility(0);
        }
        ConstraintLayout root = binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        root.setVisibility(0);
        View view = binding.f8804e;
        Intrinsics.checkNotNullExpressionValue(view, "binding.viewPurposeChoiceDivider");
        k9.a(view, a(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C1911u4 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c();
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C1911u4 this$0, InternalPurpose purpose, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(purpose, "$purpose");
        P4.Companion companion = P4.INSTANCE;
        FragmentManager parentFragmentManager = this$0.getParentFragmentManager();
        Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
        companion.a(parentFragmentManager, purpose, d9.PurposeLI);
    }

    private final void b(C1939x2 binding, final InternalPurpose purpose) {
        DidomiToggle updatePurposeLegInt$lambda$17 = binding.c;
        Intrinsics.checkNotNullExpressionValue(updatePurposeLegInt$lambda$17, "updatePurposeLegInt$lambda$17");
        j9.a(updatePurposeLegInt$lambda$17, b().x0());
        updatePurposeLegInt$lambda$17.setHasMiddleState(false);
        updatePurposeLegInt$lambda$17.setState(b().q(purpose) ? DidomiToggle.b.ENABLED : DidomiToggle.b.DISABLED);
        updatePurposeLegInt$lambda$17.setCallback(new c(purpose, updatePurposeLegInt$lambda$17));
        TextView updatePurposeLegInt$lambda$18 = binding.f8803d;
        Intrinsics.checkNotNullExpressionValue(updatePurposeLegInt$lambda$18, "updatePurposeLegInt$lambda$18");
        C1955y8.a(updatePurposeLegInt$lambda$18, a().i().c());
        updatePurposeLegInt$lambda$18.setText(b().e0());
        String strN = b().n(purpose);
        if (strN != null) {
            AppCompatButton updatePurposeLegInt$lambda$21$lambda$20 = binding.b;
            Intrinsics.checkNotNullExpressionValue(updatePurposeLegInt$lambda$21$lambda$20, "updatePurposeLegInt$lambda$21$lambda$20");
            C1955y8.a(updatePurposeLegInt$lambda$21$lambda$20, a().i().s());
            updatePurposeLegInt$lambda$21$lambda$20.setText(strN);
            updatePurposeLegInt$lambda$21$lambda$20.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.qf
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C1911u4.b(this.a, purpose, view);
                }
            });
            updatePurposeLegInt$lambda$21$lambda$20.setVisibility(0);
        }
        ConstraintLayout root = binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        root.setVisibility(0);
        View view = binding.f8804e;
        Intrinsics.checkNotNullExpressionValue(view, "binding.viewPurposeChoiceDivider");
        k9.a(view, a(), true);
    }

    private final void c() {
        b().d1();
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        P0 p0 = this.binding;
        if (p0 != null) {
            if (b().S0()) {
                View viewPurposeDetailBottomDivider = p0.i;
                Intrinsics.checkNotNullExpressionValue(viewPurposeDetailBottomDivider, "viewPurposeDetailBottomDivider");
                viewPurposeDetailBottomDivider.setVisibility(8);
                PurposeSaveView savePurposeDetail = p0.f8323d;
                Intrinsics.checkNotNullExpressionValue(savePurposeDetail, "savePurposeDetail");
                savePurposeDetail.setVisibility(8);
                return;
            }
            View viewPurposeDetailBottomDivider2 = p0.i;
            Intrinsics.checkNotNullExpressionValue(viewPurposeDetailBottomDivider2, "viewPurposeDetailBottomDivider");
            viewPurposeDetailBottomDivider2.setVisibility(0);
            PurposeSaveView updateButtons$lambda$23$lambda$22 = p0.f8323d;
            Intrinsics.checkNotNullExpressionValue(updateButtons$lambda$23$lambda$22, "updateButtons$lambda$23$lambda$22");
            updateButtons$lambda$23$lambda$22.setVisibility(0);
            if (b().R0()) {
                updateButtons$lambda$23$lambda$22.b();
            } else {
                updateButtons$lambda$23$lambda$22.a();
            }
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

    public final C1712a5 b() {
        C1712a5 c1712a5 = this.model;
        if (c1712a5 != null) {
            return c1712a5;
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

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        c();
        super.onCancel(dialog);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        P0 p0A = P0.a(inflater, container, false);
        this.binding = p0A;
        ConstraintLayout root = p0A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, contai…g = it\n            }.root");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        C3 c3F0 = b().f0();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
        c3F0.a(viewLifecycleOwner);
        this.binding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.dismissHelper.a();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        ScrollView scrollView;
        super.onResume();
        P0 p0 = this.binding;
        if (p0 != null && (scrollView = p0.f8324e) != null) {
            scrollView.scrollTo(0, 0);
        }
        this.dismissHelper.a(this, b().G0());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    @Override // io.didomi.drawable.I0, androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onViewCreated(android.view.View r10, android.os.Bundle r11) {
        /*
            Method dump skipped, instruction units count: 671
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.C1911u4.onViewCreated(android.view.View, android.os.Bundle):void");
    }
}
