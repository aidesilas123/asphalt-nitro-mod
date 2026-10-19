package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: loaded from: classes5.dex */
public final class N0 implements ViewBinding {

    @NonNull
    private final LinearLayout a;

    @NonNull
    public final AppCompatButton b;

    @NonNull
    public final ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ScrollView f8300d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewStub f8301e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ViewStub f8302f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ViewStub f8303g;

    @NonNull
    public final ViewStub h;

    @NonNull
    public final TextView i;

    @NonNull
    public final TextView j;

    @NonNull
    public final ConstraintLayout k;

    private N0(@NonNull LinearLayout linearLayout, @NonNull AppCompatButton appCompatButton, @NonNull ImageView imageView, @NonNull ScrollView scrollView, @NonNull ViewStub viewStub, @NonNull ViewStub viewStub2, @NonNull ViewStub viewStub3, @NonNull ViewStub viewStub4, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ConstraintLayout constraintLayout) {
        this.a = linearLayout;
        this.b = appCompatButton;
        this.c = imageView;
        this.f8300d = scrollView;
        this.f8301e = viewStub;
        this.f8302f = viewStub2;
        this.f8303g = viewStub3;
        this.h = viewStub4;
        this.i = textView;
        this.j = textView2;
        this.k = constraintLayout;
    }

    @NonNull
    public static N0 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_fragment_consent_notice, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static N0 a(@NonNull View view) {
        int i = R.id.button_notice_vendor_link;
        AppCompatButton appCompatButton = (AppCompatButton) ViewBindings.findChildViewById(view, i);
        if (appCompatButton != null) {
            i = R.id.image_notice_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = R.id.scroll_notice;
                ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, i);
                if (scrollView != null) {
                    i = R.id.stub_notice_footer;
                    ViewStub viewStub = (ViewStub) ViewBindings.findChildViewById(view, i);
                    if (viewStub != null) {
                        i = R.id.stub_notice_footer_sticky;
                        ViewStub viewStub2 = (ViewStub) ViewBindings.findChildViewById(view, i);
                        if (viewStub2 != null) {
                            i = R.id.stub_notice_header;
                            ViewStub viewStub3 = (ViewStub) ViewBindings.findChildViewById(view, i);
                            if (viewStub3 != null) {
                                i = R.id.stub_notice_header_sticky;
                                ViewStub viewStub4 = (ViewStub) ViewBindings.findChildViewById(view, i);
                                if (viewStub4 != null) {
                                    i = R.id.text_notice_content;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = R.id.text_notice_title;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView2 != null) {
                                            i = R.id.view_notice_content;
                                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                                            if (constraintLayout != null) {
                                                return new N0((LinearLayout) view, appCompatButton, imageView, scrollView, viewStub, viewStub2, viewStub3, viewStub4, textView, textView2, constraintLayout);
                                            }
                                        }
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
    public LinearLayout getRoot() {
        return this.a;
    }
}
