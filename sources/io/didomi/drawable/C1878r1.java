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
import io.didomi.drawable.view.mobile.DidomiToggle;

/* JADX INFO: renamed from: io.didomi.sdk.r1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1878r1 implements ViewBinding {

    @NonNull
    private final LinearLayout a;

    @NonNull
    public final DidomiToggle b;

    @NonNull
    public final TextView c;

    private C1878r1(@NonNull LinearLayout linearLayout, @NonNull DidomiToggle didomiToggle, @NonNull TextView textView) {
        this.a = linearLayout;
        this.b = didomiToggle;
        this.c = textView;
    }

    @NonNull
    public static C1878r1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_purpose_bulk_action, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1878r1 a(@NonNull View view) {
        int i = R.id.switch_holder_purpose_bulk;
        DidomiToggle didomiToggle = (DidomiToggle) ViewBindings.findChildViewById(view, i);
        if (didomiToggle != null) {
            i = R.id.text_holder_purpose_bulk_label;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                return new C1878r1((LinearLayout) view, didomiToggle, textView);
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
