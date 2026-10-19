package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatButton;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: renamed from: io.didomi.sdk.m2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1829m2 implements ViewBinding {

    @NonNull
    private final LinearLayout a;

    @NonNull
    public final AppCompatButton b;

    @NonNull
    public final TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f8698d;

    private C1829m2(@NonNull LinearLayout linearLayout, @NonNull AppCompatButton appCompatButton, @NonNull TextView textView, @NonNull TextView textView2) {
        this.a = linearLayout;
        this.b = appCompatButton;
        this.c = textView;
        this.f8698d = textView2;
    }

    @NonNull
    public static C1829m2 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_vendors_header, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1829m2 a(@NonNull View view) {
        int i = R.id.image_button_vendors_header_user_info;
        AppCompatButton appCompatButton = (AppCompatButton) ViewBindings.findChildViewById(view, i);
        if (appCompatButton != null) {
            i = R.id.text_vendors_header_description;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R.id.text_vendors_header_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    return new C1829m2((LinearLayout) view, appCompatButton, textView, textView2);
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
