package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: renamed from: io.didomi.sdk.g2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1769g2 implements ViewBinding {

    @NonNull
    private final LinearLayout a;

    @NonNull
    public final TextView b;

    @NonNull
    public final View c;

    private C1769g2(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull View view) {
        this.a = linearLayout;
        this.b = textView;
        this.c = view;
    }

    @NonNull
    public static C1769g2 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_tv_vendor_detail_section_title, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1769g2 a(@NonNull View view) {
        View viewFindChildViewById;
        int i = R.id.text_ctv_vendor_detail_section_title;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView == null || (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_ctv_vendor_detail_section_title_divider))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
        return new C1769g2((LinearLayout) view, textView, viewFindChildViewById);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.a;
    }
}
