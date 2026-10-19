package com.hyprmx.android.sdk.graphics;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.utility.w;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends AppCompatImageView {
    public /* synthetic */ a(Context context) {
        this(context, false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, boolean z) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        setId(R.id.hyprmx_video_controller_close_button);
        setTag(a.class.getSimpleName());
        setPadding(w.a(8, context), w.a(8, context), w.a(8, context), w.a(8, context));
        setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        setAdjustViewBounds(true);
        setImageResource(R.drawable.hyprmx_close_button);
        if (z) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(-12303292);
            gradientDrawable.setAlpha(180);
            setBackground(gradientDrawable);
        }
    }
}
