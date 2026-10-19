package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
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
public final class R0 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final AppCompatImageButton b;

    @NonNull
    public final HeaderView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final C1929w2 f8351d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final FrameLayout f8352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RecyclerView f8353f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final PurposeSaveView f8354g;

    @NonNull
    public final TextView h;

    @NonNull
    public final View i;

    private R0(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatImageButton appCompatImageButton, @NonNull HeaderView headerView, @NonNull C1929w2 c1929w2, @NonNull FrameLayout frameLayout, @NonNull RecyclerView recyclerView, @NonNull PurposeSaveView purposeSaveView, @NonNull TextView textView, @NonNull View view) {
        this.a = constraintLayout;
        this.b = appCompatImageButton;
        this.c = headerView;
        this.f8351d = c1929w2;
        this.f8352e = frameLayout;
        this.f8353f = recyclerView;
        this.f8354g = purposeSaveView;
        this.h = textView;
        this.i = view;
    }

    @NonNull
    public static R0 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_fragment_purposes, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static R0 a(@NonNull View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        int i = R.id.button_purposes_close;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) ViewBindings.findChildViewById(view, i);
        if (appCompatImageButton != null) {
            i = R.id.header_purposes;
            HeaderView headerView = (HeaderView) ViewBindings.findChildViewById(view, i);
            if (headerView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.layout_purposes_agree_disagree))) != null) {
                C1929w2 c1929w2A = C1929w2.a(viewFindChildViewById);
                i = R.id.layout_purposes_bottom_bars;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                if (frameLayout != null) {
                    i = R.id.list_purposes;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                    if (recyclerView != null) {
                        i = R.id.save_purposes;
                        PurposeSaveView purposeSaveView = (PurposeSaveView) ViewBindings.findChildViewById(view, i);
                        if (purposeSaveView != null) {
                            i = R.id.text_purposes_scroll_indicator;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R.id.view_purposes_bottom_divider))) != null) {
                                return new R0((ConstraintLayout) view, appCompatImageButton, headerView, c1929w2A, frameLayout, recyclerView, purposeSaveView, textView, viewFindChildViewById2);
                            }
                        }
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
