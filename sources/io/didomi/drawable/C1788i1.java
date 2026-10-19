package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: renamed from: io.didomi.sdk.i1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1788i1 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final Button b;

    @NonNull
    public final View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f8576d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewStub f8577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f8578f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f8579g;

    @NonNull
    public final TextView h;

    @NonNull
    public final TextView i;

    @NonNull
    public final LinearLayout j;

    private C1788i1(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull View view, @NonNull ConstraintLayout constraintLayout2, @NonNull ViewStub viewStub, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout) {
        this.a = constraintLayout;
        this.b = button;
        this.c = view;
        this.f8576d = constraintLayout2;
        this.f8577e = viewStub;
        this.f8578f = textView;
        this.f8579g = textView2;
        this.h = textView3;
        this.i = textView4;
        this.j = linearLayout;
    }

    @NonNull
    public static C1788i1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_fragment_tv_vendor_data, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1788i1 a(@NonNull View view) {
        View viewFindChildViewById;
        int i = R.id.button_ctv_vendor_data_read_more;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.divider_ctv_vendor_data))) != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i = R.id.stub_ctv_vendor_data;
            ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, i);
            if (viewStub != null) {
                i = R.id.text_ctv_vendor_data_iabtcf_tag;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.text_ctv_vendor_data_purposes;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = R.id.text_ctv_vendor_data_subtitle;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            i = R.id.text_ctv_vendor_data_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView4 != null) {
                                i = R.id.text_ctv_vendor_data_title_container;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                if (linearLayout != null) {
                                    return new C1788i1(constraintLayout, button, viewFindChildViewById, constraintLayout, viewStub, textView, textView2, textView3, textView4, linearLayout);
                                }
                            }
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
