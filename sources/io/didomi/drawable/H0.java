package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: loaded from: classes5.dex */
public final class H0 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final FrameLayout b;

    @NonNull
    public final F2 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f8235d;

    private H0(@NonNull ConstraintLayout constraintLayout, @NonNull FrameLayout frameLayout, @NonNull F2 f2, @NonNull View view) {
        this.a = constraintLayout;
        this.b = frameLayout;
        this.c = f2;
        this.f8235d = view;
    }

    @NonNull
    public static H0 a(@NonNull LayoutInflater layoutInflater) {
        return a(layoutInflater, null, false);
    }

    @NonNull
    public static H0 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_activity_tv_preferences_dialog, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static H0 a(@NonNull View view) {
        View viewFindChildViewById;
        int i = R.id.container_ctv_preferences_secondary;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.include_ctv_preferences_menu))) != null) {
            F2 f2A = F2.a(viewFindChildViewById);
            int i2 = R.id.view_ctv_preferences_background;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, i2);
            if (viewFindChildViewById2 != null) {
                return new H0((ConstraintLayout) view, frameLayout, f2A, viewFindChildViewById2);
            }
            i = i2;
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
