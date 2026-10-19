package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzctd extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {
    private final Context zza;
    private View zzb;

    private zzctd(Context context) {
        super(context);
        this.zza = context;
    }

    public static zzctd zza(Context context, View view, zzfdu zzfduVar) {
        Resources resources;
        DisplayMetrics displayMetrics;
        zzctd zzctdVar = new zzctd(context);
        if (!zzfduVar.zzv.isEmpty() && (resources = zzctdVar.zza.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            float f2 = ((zzfdv) zzfduVar.zzv.get(0)).zza;
            float f3 = displayMetrics.density;
            zzctdVar.setLayoutParams(new FrameLayout.LayoutParams((int) (f2 * f3), (int) (r1.zzb * f3)));
        }
        zzctdVar.zzb = view;
        zzctdVar.addView(view);
        com.google.android.gms.ads.internal.zzt.zzx();
        zzccn.zzb(zzctdVar, zzctdVar);
        com.google.android.gms.ads.internal.zzt.zzx();
        zzccn.zza(zzctdVar, zzctdVar);
        JSONObject jSONObject = zzfduVar.zzai;
        RelativeLayout relativeLayout = new RelativeLayout(zzctdVar.zza);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("header");
        if (jSONObjectOptJSONObject != null) {
            zzctdVar.zzc(jSONObjectOptJSONObject, relativeLayout, 10);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("footer");
        if (jSONObjectOptJSONObject2 != null) {
            zzctdVar.zzc(jSONObjectOptJSONObject2, relativeLayout, 12);
        }
        zzctdVar.addView(relativeLayout);
        return zzctdVar;
    }

    private final int zzb(double d2) {
        com.google.android.gms.ads.internal.client.zzay.zzb();
        return zzcbg.zzx(this.zza, (int) d2);
    }

    private final void zzc(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.zza);
        textView.setTextColor(-1);
        textView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int iZzb = zzb(jSONObject.optDouble("padding", 0.0d));
        textView.setPadding(0, iZzb, 0, iZzb);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, zzb(jSONObject.optDouble("height", 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        getLocationInWindow(new int[2]);
        this.zzb.setY(-r0[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        getLocationInWindow(new int[2]);
        this.zzb.setY(-r0[1]);
    }
}
