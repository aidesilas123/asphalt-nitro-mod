package io.didomi.drawable;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import io.didomi.drawable.view.mobile.DidomiToggle;

/* JADX INFO: renamed from: io.didomi.sdk.x2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1939x2 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final AppCompatButton b;

    @NonNull
    public final DidomiToggle c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f8803d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f8804e;

    private C1939x2(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatButton appCompatButton, @NonNull DidomiToggle didomiToggle, @NonNull TextView textView, @NonNull View view) {
        this.a = constraintLayout;
        this.b = appCompatButton;
        this.c = didomiToggle;
        this.f8803d = textView;
        this.f8804e = view;
    }

    @NonNull
    public static C1939x2 a(@NonNull View view) {
        View viewFindChildViewById;
        int i = R.id.button_purpose_choice_vendors_count;
        AppCompatButton appCompatButton = (AppCompatButton) ViewBindings.findChildViewById(view, i);
        if (appCompatButton != null) {
            i = R.id.switch_purpose_choice;
            DidomiToggle didomiToggle = (DidomiToggle) ViewBindings.findChildViewById(view, i);
            if (didomiToggle != null) {
                i = R.id.text_purpose_choice;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_purpose_choice_divider))) != null) {
                    return new C1939x2((ConstraintLayout) view, appCompatButton, didomiToggle, textView, viewFindChildViewById);
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
