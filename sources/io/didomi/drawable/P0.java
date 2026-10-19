package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import io.didomi.drawable.purpose.mobile.PurposeSaveView;
import io.didomi.drawable.view.mobile.HeaderView;

/* JADX INFO: loaded from: classes5.dex */
public final class P0 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final AppCompatImageButton b;

    @NonNull
    public final HeaderView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PurposeSaveView f8323d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ScrollView f8324e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f8325f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f8326g;

    @NonNull
    public final TextView h;

    @NonNull
    public final View i;

    @NonNull
    public final C1939x2 j;

    @NonNull
    public final C1949y2 k;

    @NonNull
    public final C1939x2 l;

    private P0(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatImageButton appCompatImageButton, @NonNull HeaderView headerView, @NonNull PurposeSaveView purposeSaveView, @NonNull ScrollView scrollView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull View view, @NonNull C1939x2 c1939x2, @NonNull C1949y2 c1949y2, @NonNull C1939x2 c1939x22) {
        this.a = constraintLayout;
        this.b = appCompatImageButton;
        this.c = headerView;
        this.f8323d = purposeSaveView;
        this.f8324e = scrollView;
        this.f8325f = textView;
        this.f8326g = textView2;
        this.h = textView3;
        this.i = view;
        this.j = c1939x2;
        this.k = c1949y2;
        this.l = c1939x22;
    }

    @NonNull
    public static P0 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_fragment_purpose_detail, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static P0 a(@NonNull View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        int i = R.id.button_purpose_detail_close;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) ViewBindings.findChildViewById(view, i);
        if (appCompatImageButton != null) {
            i = R.id.header_purpose_detail;
            HeaderView headerView = (HeaderView) ViewBindings.findChildViewById(view, i);
            if (headerView != null) {
                i = R.id.save_purpose_detail;
                PurposeSaveView purposeSaveView = (PurposeSaveView) ViewBindings.findChildViewById(view, i);
                if (purposeSaveView != null) {
                    i = R.id.scroll_purpose_detail;
                    ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, i);
                    if (scrollView != null) {
                        i = R.id.text_purpose_detail_description;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView != null) {
                            i = R.id.text_purpose_detail_description_legal;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView2 != null) {
                                i = R.id.text_purpose_detail_title;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView3 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_purpose_detail_bottom_divider))) != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R.id.view_purpose_detail_consent))) != null) {
                                    C1939x2 c1939x2A = C1939x2.a(viewFindChildViewById2);
                                    i = R.id.view_purpose_detail_illustrations;
                                    View viewFindChildViewById3 = ViewBindings.findChildViewById(view, i);
                                    if (viewFindChildViewById3 != null) {
                                        C1949y2 c1949y2A = C1949y2.a(viewFindChildViewById3);
                                        i = R.id.view_purpose_detail_legitimate_interest;
                                        View viewFindChildViewById4 = ViewBindings.findChildViewById(view, i);
                                        if (viewFindChildViewById4 != null) {
                                            return new P0((ConstraintLayout) view, appCompatImageButton, headerView, purposeSaveView, scrollView, textView, textView2, textView3, viewFindChildViewById, c1939x2A, c1949y2A, C1939x2.a(viewFindChildViewById4));
                                        }
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
