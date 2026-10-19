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

/* JADX INFO: renamed from: io.didomi.sdk.l2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1819l2 implements ViewBinding {

    @NonNull
    private final LinearLayout a;

    @NonNull
    public final TextView b;

    @NonNull
    public final DidomiToggle c;

    private C1819l2(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull DidomiToggle didomiToggle) {
        this.a = linearLayout;
        this.b = textView;
        this.c = didomiToggle;
    }

    @NonNull
    public static C1819l2 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_vendors_bulk_action, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1819l2 a(@NonNull View view) {
        int i = R.id.text_vendors_bulk_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.toggle_vendors_bulk_action;
            DidomiToggle didomiToggle = (DidomiToggle) ViewBindings.findChildViewById(view, i);
            if (didomiToggle != null) {
                return new C1819l2((LinearLayout) view, textView, didomiToggle);
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
