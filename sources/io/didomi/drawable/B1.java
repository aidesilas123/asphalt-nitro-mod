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

/* JADX INFO: loaded from: classes5.dex */
public final class B1 implements ViewBinding {

    @NonNull
    private final LinearLayout a;

    @NonNull
    public final AppCompatImageView b;

    @NonNull
    public final DidomiToggle c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f8180d;

    private B1(@NonNull LinearLayout linearLayout, @NonNull AppCompatImageView appCompatImageView, @NonNull DidomiToggle didomiToggle, @NonNull TextView textView) {
        this.a = linearLayout;
        this.b = appCompatImageView;
        this.c = didomiToggle;
        this.f8180d = textView;
    }

    @NonNull
    public static B1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_spi_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static B1 a(@NonNull View view) {
        int i = R.id.image_holder_spi_item_arrow;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = R.id.switch_holder_spi_item;
            DidomiToggle didomiToggle = (DidomiToggle) ViewBindings.findChildViewById(view, i);
            if (didomiToggle != null) {
                i = R.id.text_holder_spi_item_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    return new B1((LinearLayout) view, appCompatImageView, didomiToggle, textView);
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
