package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import io.didomi.drawable.view.mobile.HeaderView;

/* JADX INFO: renamed from: io.didomi.sdk.m1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1828m1 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final AppCompatImageButton b;

    @NonNull
    public final AppCompatButton c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f8694d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f8695e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f8696f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final HeaderView f8697g;

    @NonNull
    public final ScrollView h;

    @NonNull
    public final TextView i;

    private C1828m1(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatImageButton appCompatImageButton, @NonNull AppCompatButton appCompatButton, @NonNull TextView textView, @NonNull AppCompatImageView appCompatImageView, @NonNull TextView textView2, @NonNull HeaderView headerView, @NonNull ScrollView scrollView, @NonNull TextView textView3) {
        this.a = constraintLayout;
        this.b = appCompatImageButton;
        this.c = appCompatButton;
        this.f8694d = textView;
        this.f8695e = appCompatImageView;
        this.f8696f = textView2;
        this.f8697g = headerView;
        this.h = scrollView;
        this.i = textView3;
    }

    @NonNull
    public static C1828m1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_fragment_user_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1828m1 a(@NonNull View view) {
        int i = R.id.button_user_info_header_close;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) ViewBindings.findChildViewById(view, i);
        if (appCompatImageButton != null) {
            i = R.id.user_info_content_button;
            AppCompatButton appCompatButton = (AppCompatButton) ViewBindings.findChildViewById(view, i);
            if (appCompatButton != null) {
                i = R.id.user_info_content_text;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.user_info_copied_image;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                    if (appCompatImageView != null) {
                        i = R.id.user_info_copied_text;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            i = R.id.user_info_header;
                            HeaderView headerView = (HeaderView) ViewBindings.findChildViewById(view, i);
                            if (headerView != null) {
                                i = R.id.user_info_scroll;
                                ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, i);
                                if (scrollView != null) {
                                    i = R.id.user_info_title;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView3 != null) {
                                        return new C1828m1((ConstraintLayout) view, appCompatImageButton, appCompatButton, textView, appCompatImageView, textView2, headerView, scrollView, textView3);
                                    }
                                }
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
