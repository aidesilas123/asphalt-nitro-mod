package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import io.didomi.drawable.view.ctv.DidomiTVSwitch;

/* JADX INFO: renamed from: io.didomi.sdk.c2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1729c2 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final ImageView b;

    @NonNull
    public final DidomiTVSwitch c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f8522d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f8523e;

    private C1729c2(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull DidomiTVSwitch didomiTVSwitch, @NonNull TextView textView, @NonNull TextView textView2) {
        this.a = constraintLayout;
        this.b = imageView;
        this.c = didomiTVSwitch;
        this.f8522d = textView;
        this.f8523e = textView2;
    }

    @NonNull
    public static C1729c2 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_tv_vendor_detail_consent, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1729c2 a(@NonNull View view) {
        int i = R.id.image_ctv_vendor_detail_consent;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = R.id.switch_ctv_vendor_detail_consent;
            DidomiTVSwitch didomiTVSwitch = (DidomiTVSwitch) ViewBindings.findChildViewById(view, i);
            if (didomiTVSwitch != null) {
                i = R.id.text_ctv_vendor_detail_consent_status;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.text_ctv_vendor_detail_consent_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        return new C1729c2((ConstraintLayout) view, imageView, didomiTVSwitch, textView, textView2);
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
