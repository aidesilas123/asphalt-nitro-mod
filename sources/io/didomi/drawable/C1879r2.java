package io.didomi.drawable;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: renamed from: io.didomi.sdk.r2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1879r2 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final AppCompatButton b;

    @NonNull
    public final AppCompatButton c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final AppCompatButton f8745d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final AppCompatButton f8746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Flow f8747f;

    private C1879r2(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatButton appCompatButton, @NonNull AppCompatButton appCompatButton2, @NonNull AppCompatButton appCompatButton3, @NonNull AppCompatButton appCompatButton4, @NonNull Flow flow) {
        this.a = constraintLayout;
        this.b = appCompatButton;
        this.c = appCompatButton2;
        this.f8745d = appCompatButton3;
        this.f8746e = appCompatButton4;
        this.f8747f = flow;
    }

    @NonNull
    public static C1879r2 a(@NonNull View view) {
        int i = R.id.button_notice_footer_agree;
        AppCompatButton appCompatButton = (AppCompatButton) ViewBindings.findChildViewById(view, i);
        if (appCompatButton != null) {
            i = R.id.button_notice_footer_disagree;
            AppCompatButton appCompatButton2 = (AppCompatButton) ViewBindings.findChildViewById(view, i);
            if (appCompatButton2 != null) {
                i = R.id.button_notice_footer_learn_more;
                AppCompatButton appCompatButton3 = (AppCompatButton) ViewBindings.findChildViewById(view, i);
                if (appCompatButton3 != null) {
                    i = R.id.button_notice_footer_manage_spi_choices;
                    AppCompatButton appCompatButton4 = (AppCompatButton) ViewBindings.findChildViewById(view, i);
                    if (appCompatButton4 != null) {
                        i = R.id.flow_notice_footer;
                        Flow flow = (Flow) ViewBindings.findChildViewById(view, i);
                        if (flow != null) {
                            return new C1879r2((ConstraintLayout) view, appCompatButton, appCompatButton2, appCompatButton3, appCompatButton4, flow);
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
