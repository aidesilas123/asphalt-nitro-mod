package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import io.didomi.drawable.view.mobile.HeaderView;

/* JADX INFO: loaded from: classes5.dex */
public final class O0 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final AppCompatImageButton b;

    @NonNull
    public final HeaderView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f8309d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f8310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f8311f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f8312g;

    private O0(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatImageButton appCompatImageButton, @NonNull HeaderView headerView, @NonNull Button button, @NonNull Button button2, @NonNull FrameLayout frameLayout, @NonNull View view) {
        this.a = constraintLayout;
        this.b = appCompatImageButton;
        this.c = headerView;
        this.f8309d = button;
        this.f8310e = button2;
        this.f8311f = frameLayout;
        this.f8312g = view;
    }

    @NonNull
    public static O0 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_fragment_device_storage_disclosure, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static O0 a(@NonNull View view) {
        View viewFindChildViewById;
        int i = R.id.button_disclosure_header_close;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) ViewBindings.findChildViewById(view, i);
        if (appCompatImageButton != null) {
            i = R.id.disclosure_header;
            HeaderView headerView = (HeaderView) ViewBindings.findChildViewById(view, i);
            if (headerView != null) {
                i = R.id.disclosure_next;
                Button button = (Button) ViewBindings.findChildViewById(view, i);
                if (button != null) {
                    i = R.id.disclosure_previous;
                    Button button2 = (Button) ViewBindings.findChildViewById(view, i);
                    if (button2 != null) {
                        i = R.id.selected_disclosure_container;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                        if (frameLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_disclosures_bottom_divider))) != null) {
                            return new O0((ConstraintLayout) view, appCompatImageButton, headerView, button, button2, frameLayout, viewFindChildViewById);
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
