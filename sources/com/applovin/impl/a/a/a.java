package com.applovin.impl.a.a;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.core.net.MailTo;
import androidx.webkit.internal.AssetHelper;
import com.applovin.creative.MaxCreativeDebuggerActivity;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.h;
import com.applovin.impl.sdk.utils.k;
import com.applovin.impl.sdk.utils.r;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.google.android.gms.drive.DriveFile;
import com.json.o2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a implements k.a {
    private static WeakReference<MaxCreativeDebuggerActivity> akk;
    private static final AtomicBoolean akq = new AtomicBoolean();
    private final Context E;
    private final com.applovin.impl.a.a.b.a.b akj;
    private k akm;
    private r akn;
    private int ako;
    private boolean akp;
    private final n sdk;
    private final List<com.applovin.impl.a.a.a.a> akh = new ArrayList(10);
    private final Object aki = new Object();
    private WeakReference<View> akl = new WeakReference<>(null);

    public a(n nVar) {
        this.sdk = nVar;
        Context applicationContext = n.getApplicationContext();
        this.E = applicationContext;
        this.akj = new com.applovin.impl.a.a.b.a.b(applicationContext);
    }

    private boolean W(Object obj) {
        MaxAdFormat format = obj instanceof com.applovin.impl.sdk.ad.e ? ((com.applovin.impl.sdk.ad.e) obj).getAdZone().getFormat() : obj instanceof com.applovin.impl.mediation.b.a ? ((com.applovin.impl.mediation.b.a) obj).getFormat() : null;
        return format != null && format.isFullscreenAd();
    }

    @Nullable
    private Bundle Y(Object obj) {
        Bundle bundleCu = this.sdk.Cv().cu(u.ah(obj));
        if (bundleCu == null) {
            return null;
        }
        for (String str : bundleCu.keySet()) {
            Object obj2 = bundleCu.get(str);
            bundleCu.remove(str);
            BundleUtils.put(StringUtils.toHumanReadableString(str), obj2, bundleCu);
        }
        return bundleCu;
    }

    private View a(Activity activity) {
        View view;
        int iDpToPx = AppLovinSdkUtils.dpToPx(activity, 40);
        int i = iDpToPx / 10;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iDpToPx, iDpToPx, 8388629);
        layoutParams.setMargins(i, i, i, i);
        try {
            ImageButton imageButton = new ImageButton(activity);
            imageButton.setImageDrawable(activity.getResources().getDrawable(R.drawable.applovin_ic_white_small));
            imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageButton.setPadding(i, i, i, i * 2);
            view = imageButton;
        } catch (Throwable unused) {
            Button button = new Button(activity);
            button.setText("ⓘ");
            button.setTextColor(-1);
            button.setAllCaps(false);
            button.setTextSize(2, 20.0f);
            button.setPadding(0, 0, 0, 0);
            view = button;
        }
        view.setLayoutParams(layoutParams);
        view.setBackground(tC());
        view.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.a.a.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.a.n(view2);
            }
        });
        if (h.KX()) {
            view.setElevation(AppLovinSdkUtils.dpToPx(activity, 5));
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, FrameLayout frameLayout) {
        if (view.getParent() != null || this.akl.get() == null) {
            return;
        }
        frameLayout.addView(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(FrameLayout frameLayout, View view, ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        frameLayout.removeView(view);
        this.akl = new WeakReference<>(null);
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(View view) {
        showCreativeDebugger();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tB() {
        if (isCreativeDebuggerEnabled() && this.akl.get() == null && !tx()) {
            Activity activityAz = this.sdk.BM().Az();
            if (activityAz == null) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().i("AppLovinSdk", "Failed to display Creative Debugger button");
                    return;
                }
                return;
            }
            View viewFindViewById = activityAz.findViewById(android.R.id.content);
            if (viewFindViewById instanceof FrameLayout) {
                final FrameLayout frameLayout = (FrameLayout) viewFindViewById;
                final View viewA = a(activityAz);
                frameLayout.addView(viewA);
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration(150L);
                viewA.startAnimation(alphaAnimation);
                final ViewTreeObserver viewTreeObserver = viewFindViewById.getViewTreeObserver();
                final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.applovin.impl.a.a.b
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public final void onGlobalLayout() {
                        this.a.a(viewA, frameLayout);
                    }
                };
                viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.a.a.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(frameLayout, viewA, viewTreeObserver, onGlobalLayoutListener);
                    }
                }, TimeUnit.SECONDS.toMillis(5L));
                this.akl = new WeakReference<>(viewA);
            }
        }
    }

    private Drawable tC() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.rgb(5, 131, 170));
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(1);
        gradientDrawable2.setColor(Color.rgb(2, 98, 127));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        return stateListDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void tD() {
        this.ako = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean tx() {
        WeakReference<MaxCreativeDebuggerActivity> weakReference = akk;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    private void ty() {
        this.sdk.BM().a(new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.a.a.a.1
            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                if (activity instanceof MaxCreativeDebuggerActivity) {
                    x.D("AppLovinSdk", "Started Creative Debugger");
                    if (!a.this.tx() || a.akk.get() != activity) {
                        MaxCreativeDebuggerActivity maxCreativeDebuggerActivity = (MaxCreativeDebuggerActivity) activity;
                        WeakReference unused = a.akk = new WeakReference(maxCreativeDebuggerActivity);
                        maxCreativeDebuggerActivity.a(a.this.akj, a.this.sdk.BM());
                    }
                    a.akq.set(false);
                }
            }

            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                if (activity instanceof MaxCreativeDebuggerActivity) {
                    x.D("AppLovinSdk", "Creative Debugger destroyed");
                    WeakReference unused = a.akk = null;
                }
            }
        });
    }

    public void V(Object obj) {
        if (isCreativeDebuggerEnabled() && obj != null) {
            if (!com.applovin.impl.mediation.e.c.Z(obj) || W(obj)) {
                if (com.applovin.impl.mediation.e.c.aa(obj) && W(obj)) {
                    return;
                }
                synchronized (this.aki) {
                    this.akh.add(0, new com.applovin.impl.a.a.a.a(obj, System.currentTimeMillis()));
                    if (this.akh.size() > 10) {
                        this.akh.remove(r7.size() - 1);
                    }
                }
            }
        }
    }

    @Nullable
    public String X(Object obj) {
        JSONObject jSONObjectFR;
        if (obj instanceof com.applovin.impl.sdk.ad.e) {
            return ((com.applovin.impl.sdk.ad.e) obj).getOriginalFullResponse().toString();
        }
        if (!(obj instanceof com.applovin.impl.mediation.b.a)) {
            return null;
        }
        String bidResponse = ((com.applovin.impl.mediation.b.a) obj).getBidResponse();
        return (!com.applovin.impl.mediation.e.c.aa(obj) || (jSONObjectFR = new com.applovin.impl.sdk.ad.c(bidResponse, this.sdk).FR()) == null) ? bidResponse : jSONObjectFR.toString();
    }

    public String a(com.applovin.impl.a.a.a.a aVar) {
        Object objTH = aVar.tH();
        com.applovin.impl.sdk.utils.n nVar = new com.applovin.impl.sdk.utils.n();
        nVar.dA("Ad Info:\n");
        if (objTH instanceof com.applovin.impl.sdk.ad.e) {
            com.applovin.impl.sdk.ad.e eVar = (com.applovin.impl.sdk.ad.e) objTH;
            nVar.e("Network", "APPLOVIN").g(eVar).h(eVar);
        } else if (objTH instanceof com.applovin.impl.mediation.b.a) {
            nVar.n((com.applovin.impl.mediation.b.a) objTH);
        }
        nVar.L(this.sdk);
        nVar.e("Epoch Timestamp (ms)", Long.valueOf(aVar.tI()));
        nVar.dz("\nDebug Info:\n").e("Platform", "fireos".equals(this.sdk.BV() != null ? this.sdk.BU().Ed() : this.sdk.BS().CX()) ? "Fire OS" : o2.f6459e).e("AppLovin SDK Version", AppLovinSdk.VERSION).e("Plugin Version", this.sdk.a(com.applovin.impl.sdk.c.b.aOD)).e("App Package Name", this.E.getPackageName()).e("Device", String.format("%s %s (%s)", Build.BRAND, Build.MODEL, Build.DEVICE)).e("OS Version", Build.VERSION.RELEASE).e("AppLovin Random Token", this.sdk.BB()).e("Ad Review Version", com.applovin.impl.sdk.f.getVersion()).T(Y(objTH)).e("User ID", this.sdk.Bz() != null ? this.sdk.Bz() : "None").e("AEI", this.sdk.a(com.applovin.impl.sdk.c.b.aKC)).e("MEI", this.sdk.a(com.applovin.impl.sdk.c.b.aKD));
        return nVar.toString();
    }

    public void a(com.applovin.impl.a.a.a.a aVar, Context context, boolean z) {
        Object objTH = aVar.tH();
        String strA = a(aVar);
        com.applovin.impl.sdk.utils.n nVar = new com.applovin.impl.sdk.utils.n();
        if (z) {
            nVar.dA("Please describe the issue you had with this ad:\n\n\n\n");
        }
        nVar.dA(strA);
        String strX = this.sdk.Co().X(objTH);
        if (strX != null) {
            nVar.dz("\nBid Response:\n");
            nVar.dz(strX);
        }
        String str = "AppLovin Ad Report";
        Intent intentCreateChooser = Intent.createChooser(new Intent("android.intent.action.SEND").setType(AssetHelper.DEFAULT_MIME_TYPE).putExtra("android.intent.extra.SUBJECT", objTH instanceof com.applovin.impl.sdk.ad.e ? "AppLovin Ad Report" : "MAX Ad Report").putExtra("android.intent.extra.TEXT", nVar.toString()).setPackage(null), "Share Ad Report");
        if (!z) {
            context.startActivity(intentCreateChooser);
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse(MailTo.MAILTO_SCHEME));
            if (!(objTH instanceof com.applovin.impl.sdk.ad.e)) {
                str = "MAX Ad Report";
            }
            context.startActivity(intent.putExtra("android.intent.extra.SUBJECT", str).putExtra("android.intent.extra.TEXT", nVar.toString()).setPackage("com.google.android.gm"));
        } catch (ActivityNotFoundException unused) {
            context.startActivity(intentCreateChooser);
        }
    }

    public boolean isCreativeDebuggerEnabled() {
        return ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aMr)).booleanValue() && this.sdk.getSettings().isCreativeDebuggerEnabled();
    }

    public void showCreativeDebugger() {
        ArrayList arrayList;
        if (tx() || !akq.compareAndSet(false, true)) {
            x.H("AppLovinSdk", "Creative Debugger is already showing");
            return;
        }
        synchronized (this.aki) {
            arrayList = new ArrayList(this.akh);
        }
        this.akj.initialize(arrayList, this.sdk);
        if (!this.akp) {
            ty();
            this.akp = true;
        }
        Intent intent = new Intent(this.E, (Class<?>) MaxCreativeDebuggerActivity.class);
        intent.setFlags(DriveFile.MODE_READ_ONLY);
        x.D("AppLovinSdk", "Starting Creative Debugger...");
        this.E.startActivity(intent);
    }

    @Override // com.applovin.impl.sdk.utils.k.a
    public void tA() {
        int i = this.ako;
        if (i % 2 == 1) {
            this.ako = i + 1;
        }
        if (this.ako / 2 == 2) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.a.a.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.tB();
                }
            });
            this.ako = 0;
            this.akn.tT();
        }
    }

    public void tv() {
        if (isCreativeDebuggerEnabled()) {
            if (this.akm == null) {
                this.akm = new k(this.sdk, this);
            }
            this.akm.Lm();
        }
    }

    public void tw() {
        k kVar = this.akm;
        if (kVar != null) {
            kVar.Ln();
        }
    }

    @Override // com.applovin.impl.sdk.utils.k.a
    public void tz() {
        if (this.ako == 0) {
            this.akn = r.b(TimeUnit.SECONDS.toMillis(3L), this.sdk, new Runnable() { // from class: com.applovin.impl.a.a.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.tD();
                }
            });
        }
        int i = this.ako;
        if (i % 2 == 0) {
            this.ako = i + 1;
        }
    }
}
