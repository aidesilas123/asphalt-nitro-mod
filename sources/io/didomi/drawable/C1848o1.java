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
import io.didomi.drawable.view.mobile.HeaderView;

/* JADX INFO: renamed from: io.didomi.sdk.o1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1848o1 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final AppCompatImageButton b;

    @NonNull
    public final G2 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final HeaderView f8721d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RecyclerView f8722e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f8723f;

    private C1848o1(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatImageButton appCompatImageButton, @NonNull G2 g2, @NonNull HeaderView headerView, @NonNull RecyclerView recyclerView, @NonNull View view) {
        this.a = constraintLayout;
        this.b = appCompatImageButton;
        this.c = g2;
        this.f8721d = headerView;
        this.f8722e = recyclerView;
        this.f8723f = view;
    }

    @NonNull
    public static C1848o1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_fragment_vendors, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1848o1 a(@NonNull View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        int i = R.id.button_vendors_header_close;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) ViewBindings.findChildViewById(view, i);
        if (appCompatImageButton != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.vendors_footer))) != null) {
            G2 g2A = G2.a(viewFindChildViewById);
            i = R.id.vendors_header;
            HeaderView headerView = (HeaderView) ViewBindings.findChildViewById(view, i);
            if (headerView != null) {
                i = R.id.vendors_recycler_view;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                if (recyclerView != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R.id.view_vendors_bottom_divider))) != null) {
                    return new C1848o1((ConstraintLayout) view, appCompatImageButton, g2A, headerView, recyclerView, viewFindChildViewById2);
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
