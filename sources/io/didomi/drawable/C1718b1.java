package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: renamed from: io.didomi.sdk.b1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1718b1 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final ConstraintLayout b;

    @NonNull
    public final RecyclerView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f8505d;

    private C1718b1(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull RecyclerView recyclerView, @NonNull View view) {
        this.a = constraintLayout;
        this.b = constraintLayout2;
        this.c = recyclerView;
        this.f8505d = view;
    }

    @NonNull
    public static C1718b1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_fragment_tv_purpose_category, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1718b1 a(@NonNull View view) {
        View viewFindChildViewById;
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i = R.id.list_ctv_purpose_category;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView == null || (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_ctv_purpose_category))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
        return new C1718b1(constraintLayout, constraintLayout, recyclerView, viewFindChildViewById);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.a;
    }
}
