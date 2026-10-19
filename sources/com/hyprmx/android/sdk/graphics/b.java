package com.hyprmx.android.sdk.graphics;

import android.graphics.drawable.GradientDrawable;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.ViewCompat;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.utility.w;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends RelativeLayout {
    public final ThreadAssert a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(AppCompatActivity context, ThreadAssert threadAssert) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(threadAssert, "assert");
        this.a = threadAssert;
        setTag(b.class.getSimpleName());
        setId(R.id.hyprmx_learn_more_button);
        setVisibility(4);
        setClickable(false);
        addView(a());
    }

    public final TextView a() {
        this.a.runningOnMainThread();
        TextView textView = new TextView(getContext());
        textView.setText(getContext().getString(R.string.hyprmx_learn_more));
        textView.setSingleLine();
        textView.setTextColor(-1);
        textView.setTextSize(0, w.a(15, getContext()));
        textView.setGravity(17);
        textView.setPadding(w.a(12, getContext()), w.a(8, getContext()), w.a(12, getContext()), w.a(8, getContext()));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(12.0f);
        gradientDrawable.setColor(ViewCompat.MEASURED_STATE_MASK);
        gradientDrawable.setAlpha(180);
        textView.setBackground(gradientDrawable);
        return textView;
    }

    public final ThreadAssert getAssert() {
        return this.a;
    }
}
