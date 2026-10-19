package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: renamed from: io.didomi.sdk.c1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1728c1 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final Button b;

    @NonNull
    public final E2 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final D2 f8518d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f8519e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f8520f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f8521g;

    @NonNull
    public final TextView h;

    @NonNull
    public final View i;

    private C1728c1(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull E2 e2, @NonNull D2 d2, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull View view) {
        this.a = constraintLayout;
        this.b = button;
        this.c = e2;
        this.f8518d = d2;
        this.f8519e = constraintLayout2;
        this.f8520f = textView;
        this.f8521g = textView2;
        this.h = textView3;
        this.i = view;
    }

    @NonNull
    public static C1728c1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_fragment_tv_purpose_detail, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1728c1 a(@NonNull View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        int i = R.id.button_ctv_purpose_detail_read_more;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.include_ctv_purpose_detail_consent))) != null) {
            E2 e2A = E2.a(viewFindChildViewById);
            i = R.id.include_ctv_purpose_detail_legitimate_interest;
            View viewFindChildViewById3 = ViewBindings.findChildViewById(view, i);
            if (viewFindChildViewById3 != null) {
                D2 d2A = D2.a(viewFindChildViewById3);
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i = R.id.text_ctv_purpose_detail_description;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.text_ctv_purpose_detail_settings_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = R.id.text_ctv_purpose_detail_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R.id.view_ctv_purpose_detail_divider))) != null) {
                            return new C1728c1(constraintLayout, button, e2A, d2A, constraintLayout, textView, textView2, textView3, viewFindChildViewById2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.a;
    }
}
