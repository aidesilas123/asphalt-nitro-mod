package com.fyber.inneractive.sdk.activities;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.fyber.inneractive.sdk.config.global.features.p;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveAdSpotManager;
import com.fyber.inneractive.sdk.flow.p;
import com.fyber.inneractive.sdk.flow.r;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.l;
import com.fyber.inneractive.sdk.web.t;
import com.google.android.gms.drive.DriveFile;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class InternalStoreWebpageActivity extends InneractiveBaseActivity {
    public static final String EXTRA_KEY_SPOT_ID = "spotId";
    public ViewGroup b;
    public t c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p.a f1909d = p.a.FullScreen;

    public static void startActivity(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) InternalStoreWebpageActivity.class);
        intent.putExtra("spotId", str);
        if (!(context instanceof Activity)) {
            intent.setFlags(DriveFile.MODE_READ_ONLY);
        }
        context.startActivity(intent);
    }

    public final InneractiveAdSpot a() {
        String stringExtra = getIntent().getStringExtra("spotId");
        if (!TextUtils.isEmpty(stringExtra)) {
            return InneractiveAdSpotManager.get().getSpot(stringExtra);
        }
        IAlog.e("%sSpot id is empty", IAlog.a(this));
        return null;
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        t tVar = this.c;
        if (tVar != null) {
            tVar.C = false;
            t.g gVar = tVar.i;
            if (gVar != null) {
                IAlog.a("onInternalStoreWebpageDismissed callback called", new Object[0]);
                ((r) gVar).F();
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        t tVar = this.c;
        if (tVar != null) {
            boolean z = true;
            if (!tVar.x) {
                if (tVar.w) {
                    tVar.f("navigateBack();");
                } else {
                    z = false;
                }
            }
            if (z) {
                return;
            }
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        if (attributes.width == l.e() || this.f1909d != p.a.Modal) {
            return;
        }
        attributes.gravity = 83;
        attributes.height = (int) (l.d() * 0.8f);
        attributes.width = l.e();
        getWindow().setAttributes(attributes);
    }

    @Override // com.fyber.inneractive.sdk.activities.InneractiveBaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        p.a aVar;
        String strA;
        InneractiveAdSpot inneractiveAdSpotA = a();
        if (inneractiveAdSpotA == null || inneractiveAdSpotA.getAdContent() == null) {
            super.onCreate(bundle);
            finish();
            return;
        }
        p pVar = (p) inneractiveAdSpotA.getAdContent().c.a(p.class);
        if (pVar == null || (strA = pVar.a("presentation_mode", (String) null)) == null) {
            aVar = p.a.FullScreen;
        } else {
            p.a[] aVarArrValues = p.a.values();
            int length = aVarArrValues.length;
            for (int i = 0; i < length; i++) {
                aVar = aVarArrValues[i];
                Locale locale = Locale.US;
                if (strA.toLowerCase(locale).equals(aVar.value.toLowerCase(locale))) {
                    break;
                }
            }
            aVar = p.a.FullScreen;
        }
        this.f1909d = aVar;
        if (aVar == p.a.Modal) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.gravity = 83;
            attributes.height = (int) (l.d() * 0.8f);
            attributes.width = l.e();
            attributes.dimAmount = 0.3f;
            getWindow().setAttributes(attributes);
            getWindow().getDecorView().setBackgroundColor(0);
            getWindow().addFlags(IronSourceConstants.INIT_COMPLETE);
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
        } else {
            setTheme(R.style.Theme.NoTitleBar.Fullscreen);
        }
        super.onCreate(bundle);
        setContentView(com.fyber.inneractive.sdk.R.layout.activity_internal_store_webpage);
        this.b = (ViewGroup) findViewById(com.fyber.inneractive.sdk.R.id.internal_store_content);
        t tVarC = inneractiveAdSpotA.getAdContent().c();
        this.c = tVarC;
        if (tVarC != null) {
            tVarC.q = new WeakReference<>(this);
            t tVar = this.c;
            com.fyber.inneractive.sdk.ignite.j jVar = tVar.h;
            if (jVar != null) {
                ((p.a) jVar).a(com.fyber.inneractive.sdk.network.r.IGNITE_FLOW_STORE_PAGE_OPENED, tVar.B ? com.fyber.inneractive.sdk.ignite.k.TRUE_SINGLE_TAP : com.fyber.inneractive.sdk.ignite.k.SINGLE_TAP);
            }
            this.c.t.set(0);
        }
    }

    @Override // com.fyber.inneractive.sdk.activities.InneractiveBaseActivity, android.app.Activity
    public void onDestroy() {
        t tVar;
        super.onDestroy();
        InneractiveAdSpot inneractiveAdSpotA = a();
        if (inneractiveAdSpotA == null || inneractiveAdSpotA.getAdContent() == null || inneractiveAdSpotA.getAdContent().e() || (tVar = this.c) == null) {
            return;
        }
        tVar.a();
        this.c = null;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        ViewGroup viewGroup = this.b;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        t tVar = this.c;
        if (tVar != null) {
            this.b.addView(tVar.a, new ViewGroup.LayoutParams(-1, -1));
        }
    }
}
