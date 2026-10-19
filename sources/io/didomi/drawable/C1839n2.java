package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import io.didomi.drawable.view.mobile.DidomiToggle;

/* JADX INFO: renamed from: io.didomi.sdk.n2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1839n2 implements ViewBinding {

    @NonNull
    private final LinearLayout a;

    @NonNull
    public final AppCompatImageView b;

    @NonNull
    public final TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final DidomiToggle f8710d;

    private C1839n2(@NonNull LinearLayout linearLayout, @NonNull AppCompatImageView appCompatImageView, @NonNull TextView textView, @NonNull DidomiToggle didomiToggle) {
        this.a = linearLayout;
        this.b = appCompatImageView;
        this.c = textView;
        this.f8710d = didomiToggle;
    }

    @NonNull
    public static C1839n2 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_vendors_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1839n2 a(@NonNull View view) {
        int i = R.id.image_vendor_item;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = R.id.text_vendor_item;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R.id.toggle_vendor_item;
                DidomiToggle didomiToggle = (DidomiToggle) ViewBindings.findChildViewById(view, i);
                if (didomiToggle != null) {
                    return new C1839n2((LinearLayout) view, appCompatImageView, textView, didomiToggle);
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
