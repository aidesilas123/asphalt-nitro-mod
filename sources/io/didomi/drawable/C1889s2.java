package io.didomi.drawable;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: renamed from: io.didomi.sdk.s2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1889s2 implements ViewBinding {

    @NonNull
    private final FrameLayout a;

    @NonNull
    public final AppCompatImageButton b;

    @NonNull
    public final AppCompatButton c;

    private C1889s2(@NonNull FrameLayout frameLayout, @NonNull AppCompatImageButton appCompatImageButton, @NonNull AppCompatButton appCompatButton) {
        this.a = frameLayout;
        this.b = appCompatImageButton;
        this.c = appCompatButton;
    }

    @NonNull
    public static C1889s2 a(@NonNull View view) {
        int i = R.id.button_notice_header_disagree_cross;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) ViewBindings.findChildViewById(view, i);
        if (appCompatImageButton != null) {
            i = R.id.button_notice_header_disagree_link;
            AppCompatButton appCompatButton = (AppCompatButton) ViewBindings.findChildViewById(view, i);
            if (appCompatButton != null) {
                return new C1889s2((FrameLayout) view, appCompatImageButton, appCompatButton);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.a;
    }
}
