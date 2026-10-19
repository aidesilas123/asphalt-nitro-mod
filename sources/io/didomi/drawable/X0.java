package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: loaded from: classes5.dex */
public final class X0 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final Button b;

    @NonNull
    public final Button c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f8442d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f8443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f8444f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f8445g;

    @NonNull
    public final ImageView h;

    @NonNull
    public final TextView i;

    @NonNull
    public final View j;

    @NonNull
    public final View k;

    @NonNull
    public final View l;

    @NonNull
    public final View m;

    private X0(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull Button button4, @NonNull Button button5, @NonNull Button button6, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull View view, @NonNull View view2, @NonNull View view3, @NonNull View view4) {
        this.a = constraintLayout;
        this.b = button;
        this.c = button2;
        this.f8442d = button3;
        this.f8443e = button4;
        this.f8444f = button5;
        this.f8445g = button6;
        this.h = imageView;
        this.i = textView;
        this.j = view;
        this.k = view2;
        this.l = view3;
        this.m = view4;
    }

    @NonNull
    public static X0 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_fragment_tv_consent_notice, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static X0 a(@NonNull View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        View viewFindChildViewById3;
        View viewFindChildViewById4;
        int i = R.id.button_ctv_notice_agree;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.button_ctv_notice_disagree;
            Button button2 = (Button) ViewBindings.findChildViewById(view, i);
            if (button2 != null) {
                i = R.id.button_ctv_notice_learn_more;
                Button button3 = (Button) ViewBindings.findChildViewById(view, i);
                if (button3 != null) {
                    i = R.id.button_ctv_notice_partners;
                    Button button4 = (Button) ViewBindings.findChildViewById(view, i);
                    if (button4 != null) {
                        i = R.id.button_ctv_notice_privacy;
                        Button button5 = (Button) ViewBindings.findChildViewById(view, i);
                        if (button5 != null) {
                            i = R.id.button_ctv_notice_select;
                            Button button6 = (Button) ViewBindings.findChildViewById(view, i);
                            if (button6 != null) {
                                i = R.id.image_ctv_notice_logo;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView != null) {
                                    i = R.id.text_ctv_notice_content;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_ctv_notice_divider))) != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R.id.view_ctv_notice_side_end))) != null && (viewFindChildViewById3 = ViewBindings.findChildViewById(view, (i = R.id.view_ctv_notice_side_main))) != null && (viewFindChildViewById4 = ViewBindings.findChildViewById(view, (i = R.id.view_ctv_notice_side_main_shadow))) != null) {
                                        return new X0((ConstraintLayout) view, button, button2, button3, button4, button5, button6, imageView, textView, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, viewFindChildViewById4);
                                    }
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
