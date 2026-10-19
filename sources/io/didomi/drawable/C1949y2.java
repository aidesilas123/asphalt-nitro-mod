package io.didomi.drawable;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: renamed from: io.didomi.sdk.y2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1949y2 implements ViewBinding {

    @NonNull
    private final LinearLayout a;

    @NonNull
    public final TextView b;

    @NonNull
    public final TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f8810d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f8811e;

    private C1949y2(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull View view) {
        this.a = linearLayout;
        this.b = textView;
        this.c = textView2;
        this.f8810d = textView3;
        this.f8811e = view;
    }

    @NonNull
    public static C1949y2 a(@NonNull View view) {
        View viewFindChildViewById;
        int i = R.id.text_purpose_illustration_1;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.text_purpose_illustration_2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView2 != null) {
                i = R.id.text_purpose_illustrations_header;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView3 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_purpose_illustrations_divider))) != null) {
                    return new C1949y2((LinearLayout) view, textView, textView2, textView3, viewFindChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.a;
    }
}
