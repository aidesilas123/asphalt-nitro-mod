package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: loaded from: classes5.dex */
public final class G0 implements ViewBinding {

    @NonNull
    private final FrameLayout a;

    @NonNull
    public final FrameLayout b;

    @NonNull
    public final FrameLayout c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f8224d;

    private G0(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull View view) {
        this.a = frameLayout;
        this.b = frameLayout2;
        this.c = frameLayout3;
        this.f8224d = view;
    }

    @NonNull
    public static G0 a(@NonNull LayoutInflater layoutInflater) {
        return a(layoutInflater, null, false);
    }

    @NonNull
    public static G0 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_activity_tv_notice_dialog, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static G0 a(@NonNull View view) {
        View viewFindChildViewById;
        int i = R.id.container_ctv_notice_primary;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = R.id.container_ctv_notice_secondary;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout2 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_ctv_notice_background))) != null) {
                return new G0((FrameLayout) view, frameLayout, frameLayout2, viewFindChildViewById);
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
