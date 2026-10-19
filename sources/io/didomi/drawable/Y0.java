package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextSwitcher;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: loaded from: classes5.dex */
public final class Y0 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final ImageView b;

    @NonNull
    public final ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f8449d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ScrollView f8450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextSwitcher f8451f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextSwitcher f8452g;

    @NonNull
    public final TextView h;

    private Y0(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull ScrollView scrollView, @NonNull TextSwitcher textSwitcher, @NonNull TextSwitcher textSwitcher2, @NonNull TextView textView) {
        this.a = constraintLayout;
        this.b = imageView;
        this.c = imageView2;
        this.f8449d = linearLayout;
        this.f8450e = scrollView;
        this.f8451f = textSwitcher;
        this.f8452g = textSwitcher2;
        this.h = textView;
    }

    @NonNull
    public static Y0 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_fragment_tv_data_processing_detail, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static Y0 a(@NonNull View view) {
        int i = R.id.image_ctv_data_processing_detail_left_arrow_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = R.id.image_ctv_data_processing_detail_right_arrow_image;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView2 != null) {
                i = R.id.layout_ctv_data_processing_detail_container;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = R.id.scroll_ctv_data_processing_detail;
                    ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, i);
                    if (scrollView != null) {
                        i = R.id.switcher_ctv_data_processing_detail_description;
                        TextSwitcher textSwitcher = (TextSwitcher) ViewBindings.findChildViewById(view, i);
                        if (textSwitcher != null) {
                            i = R.id.switcher_ctv_data_processing_detail_subtitle;
                            TextSwitcher textSwitcher2 = (TextSwitcher) ViewBindings.findChildViewById(view, i);
                            if (textSwitcher2 != null) {
                                i = R.id.text_ctv_data_processing_detail_title;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView != null) {
                                    return new Y0((ConstraintLayout) view, imageView, imageView2, linearLayout, scrollView, textSwitcher, textSwitcher2, textView);
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
