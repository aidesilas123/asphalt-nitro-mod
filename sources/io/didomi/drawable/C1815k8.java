package io.didomi.drawable;

import android.content.Context;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.vendors.ctv.model.TVDataProcessingLegalType;
import io.didomi.drawable.view.mobile.DidomiToggle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.k8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u0003¨\u0006\u0011"}, d2 = {"Lio/didomi/sdk/k8;", "Lio/didomi/sdk/H7;", "<init>", "()V", "Landroid/content/Context;", "context", "", "onAttach", "(Landroid/content/Context;)V", "Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;", CampaignEx.JSON_KEY_AD_K, "i", "g", "e", "a", "android_release"}, mv = {1, 8, 0})
public final class C1815k8 extends H7 {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(D2 this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.b.callOnClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(D2 this_apply, C1815k8 this$0, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this_apply.b.setChecked(!r3.isChecked());
        this$0.e().d(this_apply.b.isChecked());
        this_apply.c.setText(this_apply.b.isChecked() ? this$0.e().K0() : this$0.e().J0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1815k8 this$0, ViewStub viewStub, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(D2.a(view));
    }

    @Override // io.didomi.drawable.H7
    public TVDataProcessingLegalType d() {
        return TVDataProcessingLegalType.LEGINT;
    }

    @Override // io.didomi.drawable.H7
    public void g() {
        ViewStub viewStub;
        C1788i1 binding = getBinding();
        if (binding != null && (viewStub = binding.f8577e) != null) {
            viewStub.setOnInflateListener(new ViewStub.OnInflateListener() { // from class: io.didomi.sdk.ve
                @Override // android.view.ViewStub.OnInflateListener
                public final void onInflate(ViewStub viewStub2, View view) {
                    C1815k8.a(this.a, viewStub2, view);
                }
            });
            viewStub.setLayoutResource(R.layout.didomi_view_tv_item_checkbox);
            viewStub.inflate();
        }
        final D2 bindingCheckbox = getBindingCheckbox();
        if (bindingCheckbox != null) {
            bindingCheckbox.b.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.te
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C1815k8.a(bindingCheckbox, this, view);
                }
            });
            DidomiToggle.b value = e().O().getValue();
            if (value != null) {
                bindingCheckbox.b.setChecked(value != DidomiToggle.b.ENABLED);
            }
            bindingCheckbox.f8201d.setText(e().I0());
            bindingCheckbox.c.setText(bindingCheckbox.b.isChecked() ? e().K0() : e().J0());
            bindingCheckbox.getRoot().setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.ue
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C1815k8.a(bindingCheckbox, view);
                }
            });
            ConstraintLayout root = bindingCheckbox.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "root");
            a(root);
        }
    }

    @Override // io.didomi.drawable.H7
    public void i() {
        C1788i1 binding = getBinding();
        TextView textView = binding != null ? binding.f8579g : null;
        if (textView == null) {
            return;
        }
        textView.setText(e().k0());
    }

    @Override // io.didomi.drawable.H7
    public void k() {
        C1788i1 binding = getBinding();
        TextView textView = binding != null ? binding.h : null;
        if (textView == null) {
            return;
        }
        String upperCase = e().D().toUpperCase(e().p0());
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        textView.setText(upperCase);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
        super.onAttach(context);
    }
}
