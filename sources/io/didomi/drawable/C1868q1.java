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

/* JADX INFO: renamed from: io.didomi.sdk.q1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1868q1 implements ViewBinding {

    @NonNull
    private final LinearLayout a;

    @NonNull
    public final LinearLayout b;

    @NonNull
    public final TextView c;

    private C1868q1(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.a = linearLayout;
        this.b = linearLayout2;
        this.c = textView;
    }

    @NonNull
    public static C1868q1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_purpose_additional_data_processing, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1868q1 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i = R.id.additional_data_processing_section_description;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            return new C1868q1(linearLayout, linearLayout, textView);
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
