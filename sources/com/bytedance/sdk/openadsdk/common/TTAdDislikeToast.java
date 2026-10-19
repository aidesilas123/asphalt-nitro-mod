package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;

/* JADX INFO: loaded from: classes2.dex */
public class TTAdDislikeToast extends PAGFrameLayout {
    private static String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f1256d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f1257e;
    private final Handler a;
    private TextView b;

    public TTAdDislikeToast(Context context) {
        this(context, null);
    }

    public TTAdDislikeToast(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTAdDislikeToast(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new Handler(Looper.getMainLooper());
        setVisibility(8);
        setClickable(false);
        setFocusable(false);
        a(context);
    }

    public static void a() {
        Context contextA = o.a();
        f1256d = s.a(contextA, "tt_txt_skip");
        c = s.a(contextA, "tt_feedback_submit_text");
        f1257e = s.a(contextA, "tt_feedback_thank_text") + "\n" + s.a(contextA, "tt_feedback_experience_text");
    }

    private void a(Context context) {
        TextView textView = new TextView(context);
        this.b = textView;
        textView.setClickable(false);
        this.b.setFocusable(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        int iB = ad.b(o.a(), 20.0f);
        int iB2 = ad.b(o.a(), 12.0f);
        this.b.setPadding(iB, iB2, iB, iB2);
        this.b.setLayoutParams(layoutParams);
        this.b.setTextColor(-1);
        this.b.setTextSize(16.0f);
        this.b.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#CC000000"));
        gradientDrawable.setCornerRadius(ad.b(o.a(), 6.0f));
        this.b.setBackgroundDrawable(gradientDrawable);
        addView(this.b);
    }

    public static String getDislikeSendTip() {
        if (f1257e == null) {
            Context contextA = o.a();
            f1257e = s.a(contextA, "tt_feedback_thank_text") + "\n" + s.a(contextA, "tt_feedback_experience_text");
        }
        return f1257e;
    }

    public static String getDislikeTip() {
        if (c == null) {
            c = s.a(o.a(), "tt_feedback_submit_text");
        }
        return c;
    }

    public static String getSkipText() {
        if (f1256d == null) {
            f1256d = s.a(o.a(), "tt_txt_skip");
        }
        return f1256d;
    }

    public void a(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.removeCallbacksAndMessages(null);
        this.a.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.TTAdDislikeToast.1
            @Override // java.lang.Runnable
            public void run() {
                if (TTAdDislikeToast.this.b != null) {
                    TTAdDislikeToast.this.b.setText(String.valueOf(str));
                }
                TTAdDislikeToast.this.setVisibility(0);
            }
        });
        this.a.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.TTAdDislikeToast.2
            @Override // java.lang.Runnable
            public void run() {
                TTAdDislikeToast.this.setVisibility(8);
            }
        }, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
    }

    public void b() {
        setVisibility(8);
        this.a.removeCallbacksAndMessages(null);
    }

    public void c() {
        setVisibility(8);
        this.a.removeCallbacksAndMessages(null);
    }
}
