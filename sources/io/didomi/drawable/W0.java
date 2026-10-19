package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import io.didomi.drawable.purpose.mobile.PurposeSaveView;
import io.didomi.drawable.view.mobile.HeaderView;

/* JADX INFO: loaded from: classes5.dex */
public final class W0 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final AppCompatImageButton b;

    @NonNull
    public final HeaderView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerView f8433d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final PurposeSaveView f8434e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f8435f;

    private W0(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatImageButton appCompatImageButton, @NonNull HeaderView headerView, @NonNull RecyclerView recyclerView, @NonNull PurposeSaveView purposeSaveView, @NonNull View view) {
        this.a = constraintLayout;
        this.b = appCompatImageButton;
        this.c = headerView;
        this.f8433d = recyclerView;
        this.f8434e = purposeSaveView;
        this.f8435f = view;
    }

    @NonNull
    public static W0 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_fragment_sensitive_personal_info_category, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static W0 a(@NonNull View view) {
        View viewFindChildViewById;
        int i = R.id.button_spi_category_close;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) ViewBindings.findChildViewById(view, i);
        if (appCompatImageButton != null) {
            i = R.id.header_spi_category;
            HeaderView headerView = (HeaderView) ViewBindings.findChildViewById(view, i);
            if (headerView != null) {
                i = R.id.list_spi_category;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                if (recyclerView != null) {
                    i = R.id.save_spi_category;
                    PurposeSaveView purposeSaveView = (PurposeSaveView) ViewBindings.findChildViewById(view, i);
                    if (purposeSaveView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_spi_category_bottom_divider))) != null) {
                        return new W0((ConstraintLayout) view, appCompatImageButton, headerView, recyclerView, purposeSaveView, viewFindChildViewById);
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
