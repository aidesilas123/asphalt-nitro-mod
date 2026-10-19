package com.kidoz.sdk.api.general.utils;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: loaded from: classes4.dex */
public class SdkToast {
    private static SdkToast mInstance;
    private Context mContext;
    private TextView mTextView;
    private Toast mToast;

    private SdkToast(Context context) {
        this.mContext = context;
        initToast(context);
    }

    private View generateToastLayout(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setGravity(17);
        TextView textView = new TextView(context);
        this.mTextView = textView;
        textView.setGravity(17);
        this.mTextView.setTypeface(Typeface.DEFAULT_BOLD);
        this.mTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.mTextView.setTextColor(-1);
        this.mTextView.setTextSize(2, 17.0f);
        this.mTextView.setMinLines(2);
        int iDpTOpx = Utils.dpTOpx(this.mContext, 12.0f);
        this.mTextView.setPadding(iDpTOpx, iDpTOpx, iDpTOpx, iDpTOpx);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#ee39b0c6"));
        gradientDrawable.setStroke(Utils.spTOpx(this.mContext, 1.0f), Color.parseColor("#ffffff"));
        gradientDrawable.setCornerRadius(Utils.dpTOpx(this.mContext, 15.0f));
        if (Build.VERSION.SDK_INT >= 16) {
            this.mTextView.setBackground(gradientDrawable);
        } else {
            this.mTextView.setBackgroundDrawable(gradientDrawable);
        }
        linearLayout.addView(this.mTextView, new LinearLayout.LayoutParams(-1, -2));
        return linearLayout;
    }

    public static SdkToast getSdkInstance(Context context) {
        if (mInstance == null) {
            mInstance = new SdkToast(context);
        }
        return mInstance;
    }

    private void initToast(Context context) {
        Toast toast = new Toast(context);
        this.mToast = toast;
        toast.setView(generateToastLayout(context));
    }

    public void showToast(String str, int i) {
        this.mTextView.setText(str);
        this.mToast.setDuration(i);
        this.mToast.show();
    }
}
