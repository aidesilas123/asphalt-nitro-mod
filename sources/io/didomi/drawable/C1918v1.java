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

/* JADX INFO: renamed from: io.didomi.sdk.v1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1918v1 implements ViewBinding {

    @NonNull
    private final LinearLayout a;

    @NonNull
    public final AppCompatImageView b;

    @NonNull
    public final DidomiToggle c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f8771d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f8772e;

    private C1918v1(@NonNull LinearLayout linearLayout, @NonNull AppCompatImageView appCompatImageView, @NonNull DidomiToggle didomiToggle, @NonNull TextView textView, @NonNull TextView textView2) {
        this.a = linearLayout;
        this.b = appCompatImageView;
        this.c = didomiToggle;
        this.f8771d = textView;
        this.f8772e = textView2;
    }

    @NonNull
    public static C1918v1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_purpose_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1918v1 a(@NonNull View view) {
        int i = R.id.image_holder_purpose_item_arrow;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = R.id.switch_holder_purpose_item;
            DidomiToggle didomiToggle = (DidomiToggle) ViewBindings.findChildViewById(view, i);
            if (didomiToggle != null) {
                i = R.id.text_holder_purpose_item_essential_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.text_holder_purpose_item_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        return new C1918v1((LinearLayout) view, appCompatImageView, didomiToggle, textView, textView2);
                    }
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
