package com.hyprmx.android.sdk.graphics;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.ViewCompat;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.utility.w;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends RelativeLayout {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f4548e = 0;
    public final com.hyprmx.android.sdk.graphics.a a;
    public final ImageView b;
    public final TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SimpleDateFormat f4549d;

    public static final class a {
        public static RelativeLayout.LayoutParams a(AppCompatActivity context) {
            int iA;
            Intrinsics.checkNotNullParameter(context, "context");
            int iA2 = w.a(34, context);
            int iA3 = w.a(34, context);
            int iA4 = w.a(34, context);
            if (context.getResources().getDisplayMetrics().widthPixels > iA2 + 270 + iA3) {
                iA4 = w.a(35, context);
                iA = w.a(270, context);
                iA2 = 0;
                iA3 = 0;
            } else {
                iA = -1;
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA, -2);
            layoutParams.addRule(14);
            layoutParams.addRule(12);
            layoutParams.setMargins(iA2, 0, iA3, iA4);
            return layoutParams;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Context context, boolean z) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("mm:ss", Locale.US);
        this.f4549d = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        setId(R.id.hyprmx_video_controller_root_view);
        setTag(d.class.getSimpleName());
        setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(12.0f);
        gradientDrawable.setColor(ViewCompat.MEASURED_STATE_MASK);
        gradientDrawable.setAlpha(180);
        setBackground(gradientDrawable);
        com.hyprmx.android.sdk.graphics.a aVar = new com.hyprmx.android.sdk.graphics.a(context);
        this.a = aVar;
        ImageView imageViewB = b();
        this.b = imageViewB;
        TextView textViewA = a();
        this.c = textViewA;
        if (z) {
            addView(aVar, getLayoutParamsForLeftHorizontal());
            addView(imageViewB, getLayoutParamsForMiddleHorizontal());
            addView(textViewA, getLayoutParamsForRightHorizontal());
        } else {
            addView(imageViewB, getLayoutParamsForLeftHorizontal());
            addView(aVar, getLayoutParamsForMiddleHorizontal());
            addView(textViewA, getLayoutParamsForRightHorizontal());
            aVar.setVisibility(4);
        }
    }

    public static final void a(Function1 listener, View view) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        Intrinsics.checkNotNullExpressionValue(view, "view");
        listener.invoke(view);
    }

    private final ViewGroup.LayoutParams getLayoutParamsForLeftHorizontal() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.addRule(9);
        layoutParams.setMargins(w.a(12, getContext()), w.a(8, getContext()), 0, w.a(8, getContext()));
        return layoutParams;
    }

    private final ViewGroup.LayoutParams getLayoutParamsForMiddleHorizontal() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.addRule(14);
        layoutParams.setMargins(0, w.a(8, getContext()), 0, w.a(8, getContext()));
        return layoutParams;
    }

    private final RelativeLayout.LayoutParams getLayoutParamsForRightHorizontal() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, w.a(8, getContext()), w.a(12, getContext()), w.a(8, getContext()));
        return layoutParams;
    }

    public final TextView a() {
        TextView textView = new TextView(getContext());
        textView.setId(R.id.hyprmx_video_controller_countdown_view);
        textView.setText(getContext().getString(R.string.hyprmx_count_down_default));
        textView.setSingleLine();
        textView.setTextColor(-1);
        textView.setTextSize(0, w.a(15, getContext()));
        return textView;
    }

    public final ImageView b() {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(R.drawable.hyprmx_video_logo);
        imageView.setId(R.id.hyprmx_video_controller_logo_imageview);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setAdjustViewBounds(true);
        return imageView;
    }

    public final void c() {
        this.a.setVisibility(4);
        this.b.setLayoutParams(getLayoutParamsForLeftHorizontal());
        this.c.setLayoutParams(getLayoutParamsForRightHorizontal());
    }

    public final void setCloseButtonOnClickListener(final Function1<? super View, v> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.a.setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.graphics.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.a(listener, view);
            }
        });
    }
}
