package io.didomi.drawable;

import android.os.Bundle;
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
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.vendors.ctv.model.TVDataProcessingLegalType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H&¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0004H&¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H&¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\r\u0010\u000eJ+\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\u0003J\u0017\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0015H\u0004¢\u0006\u0004\b\u001d\u0010\u001eR\"\u0010%\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001d\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R$\u0010,\u001a\u0004\u0018\u00010&8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b\u001d\u0010)\"\u0004\b*\u0010+R$\u00102\u001a\u0004\u0018\u00010-8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b'\u00100\"\u0004\b\u001d\u00101R$\u00107\u001a\u0004\u0018\u0001038\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\r\u00104\u001a\u0004\b.\u00105\"\u0004\b\u001d\u00106¨\u00068"}, d2 = {"Lio/didomi/sdk/H7;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "", "l", "h", "j", InneractiveMediationDefs.GENDER_FEMALE, "g", CampaignEx.JSON_KEY_AD_K, "i", "Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "parent", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "consentView", "a", "(Landroid/view/View;)V", "Lio/didomi/sdk/t8;", "Lio/didomi/sdk/t8;", "e", "()Lio/didomi/sdk/t8;", "setModel", "(Lio/didomi/sdk/t8;)V", "model", "Lio/didomi/sdk/i1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/i1;", "()Lio/didomi/sdk/i1;", "setBinding", "(Lio/didomi/sdk/i1;)V", "binding", "Lio/didomi/sdk/D2;", "c", "Lio/didomi/sdk/D2;", "()Lio/didomi/sdk/D2;", "(Lio/didomi/sdk/D2;)V", "bindingCheckbox", "Lio/didomi/sdk/E2;", "Lio/didomi/sdk/E2;", "()Lio/didomi/sdk/E2;", "(Lio/didomi/sdk/E2;)V", "bindingSwitch", "android_release"}, mv = {1, 8, 0})
public abstract class H7 extends Fragment {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    public C1905t8 model;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private C1788i1 binding;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private D2 bindingCheckbox;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private E2 bindingSwitch;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(View consentView, C1788i1 this_apply) {
        Intrinsics.checkNotNullParameter(consentView, "$consentView");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        ViewGroup.LayoutParams layoutParams = consentView.getLayoutParams();
        layoutParams.width = this_apply.c.getMeasuredWidth() / 2;
        consentView.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = this_apply.b.getLayoutParams();
        layoutParams2.width = layoutParams.width;
        this_apply.b.setLayoutParams(layoutParams2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(H7 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(H7 this$0, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i != 23 || keyEvent.getAction() != 1) {
            return false;
        }
        this$0.f();
        return true;
    }

    private final void f() {
        requireActivity().getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.didomi_enter_from_right, R.anim.didomi_fade_out, R.anim.didomi_fade_in, R.anim.didomi_exit_to_right_alpha).replace(R.id.container_ctv_preferences_secondary, C1944x7.c.a(d())).addToBackStack("io.didomi.dialog.TV_VENDOR_ADDITIONAL_INFO_FRAGMENT").commit();
    }

    private final void h() {
        C1788i1 c1788i1 = this.binding;
        TextView textView = c1788i1 != null ? c1788i1.f8578f : null;
        if (textView == null) {
            return;
        }
        textView.setVisibility(e().v0() ? 0 : 8);
    }

    private final void j() {
        Button button;
        C1788i1 c1788i1 = this.binding;
        if (c1788i1 == null || (button = c1788i1.b) == null) {
            return;
        }
        if (e().y0()) {
            button.setVisibility(8);
            return;
        }
        button.setText(e().Q0());
        button.setVisibility(0);
        button.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.oa
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                H7.a(this.a, view);
            }
        });
        button.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.ma
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                return H7.a(this.a, view, i, keyEvent);
            }
        });
    }

    private final void l() {
        C1788i1 c1788i1 = this.binding;
        TextView textView = c1788i1 != null ? c1788i1.i : null;
        if (textView == null) {
            return;
        }
        textView.setText(e().w0());
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    protected final C1788i1 getBinding() {
        return this.binding;
    }

    protected final void a(final View consentView) {
        Intrinsics.checkNotNullParameter(consentView, "consentView");
        final C1788i1 c1788i1 = this.binding;
        if (c1788i1 != null) {
            Button buttonCtvVendorDataReadMore = c1788i1.b;
            Intrinsics.checkNotNullExpressionValue(buttonCtvVendorDataReadMore, "buttonCtvVendorDataReadMore");
            if (buttonCtvVendorDataReadMore.getVisibility() == 8) {
                return;
            }
            c1788i1.getRoot().post(new Runnable() { // from class: io.didomi.sdk.na
                @Override // java.lang.Runnable
                public final void run() {
                    H7.a(consentView, c1788i1);
                }
            });
        }
    }

    protected final void a(D2 d2) {
        this.bindingCheckbox = d2;
    }

    protected final void a(E2 e2) {
        this.bindingSwitch = e2;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    protected final D2 getBindingCheckbox() {
        return this.bindingCheckbox;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    protected final E2 getBindingSwitch() {
        return this.bindingSwitch;
    }

    public abstract TVDataProcessingLegalType d();

    public final C1905t8 e() {
        C1905t8 c1905t8 = this.model;
        if (c1905t8 != null) {
            return c1905t8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    public abstract void g();

    public abstract void i();

    public abstract void k();

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup parent, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        C1788i1 c1788i1A = C1788i1.a(inflater, parent, false);
        this.binding = c1788i1A;
        ConstraintLayout root = c1788i1A.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "inflate(inflater, parent…g = it\n            }.root");
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
        l();
        h();
        k();
        i();
        j();
        g();
    }
}
