package com.hyprmx.android.sdk.graphics;

import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.ViewCompat;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.utility.w;
import java.text.SimpleDateFormat;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends RelativeLayout {
    public final int a;
    public final ThreadAssert b;
    public final TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4544d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public a f4546f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4547g;
    public boolean h;
    public boolean i;
    public final SimpleDateFormat j;

    public interface a {
        void a();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(AppCompatActivity context, int i, ThreadAssert threadAssert) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(threadAssert, "assert");
        this.a = i;
        this.b = threadAssert;
        this.j = new SimpleDateFormat("ss", Locale.US);
        setTag(c.class.getSimpleName());
        setId(R.id.hyprmx_skip_controller);
        setVisibility(4);
        setClickable(false);
        TextView textViewA = a();
        this.c = textViewA;
        addView(textViewA);
    }

    public final TextView a() {
        this.b.runningOnMainThread();
        TextView textView = new TextView(getContext());
        textView.setTag(c.class.getSimpleName());
        textView.setText(getContext().getString(R.string.hyprmx_skip_in, 30));
        textView.setSingleLine();
        textView.setTextColor(-1);
        textView.setTextSize(0, w.a(15, getContext()));
        textView.setWidth(w.a(80, getContext()));
        textView.setGravity(17);
        textView.setPadding(0, w.a(8, getContext()), 0, w.a(8, getContext()));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(12.0f);
        gradientDrawable.setColor(ViewCompat.MEASURED_STATE_MASK);
        gradientDrawable.setAlpha(180);
        textView.setBackground(gradientDrawable);
        return textView;
    }

    public final boolean getAlreadyHiddenAfterThreeSeconds() {
        return this.f4547g;
    }

    public final boolean getSkipOffsetReached() {
        return this.h;
    }

    public final boolean getVisibleWhenSkipOffsetReached() {
        return this.i;
    }

    @Override // android.view.View
    public final boolean performClick() {
        this.f4545e = 0;
        return super.performClick();
    }

    public final void setAlreadyHiddenAfterThreeSeconds(boolean z) {
        this.f4547g = z;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        setClickable(false);
    }

    public final void setSkipControllerListener(a skipControllerListener) {
        Intrinsics.checkNotNullParameter(skipControllerListener, "skipControllerListener");
        this.f4546f = skipControllerListener;
    }

    public final void setSkipOffsetReached(boolean z) {
        this.h = z;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        int i2 = this.f4544d - this.a;
        if (i2 > -1000 && i2 < 3000 && this.f4545e >= 1000) {
            i = 0;
        }
        super.setVisibility(i);
    }

    public final void setVisibleWhenSkipOffsetReached(boolean z) {
        this.i = z;
    }
}
