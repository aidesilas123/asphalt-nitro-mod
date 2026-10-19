package com.tapjoy;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.json.o2;
import com.tapjoy.internal.i8;
import com.tapjoy.internal.z0;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class TJAdUnitActivity extends TJActivity {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static TJAdUnitActivity f7791f;
    public TJAdUnit h;
    public w i;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Handler f7792g = new Handler(Looper.getMainLooper());
    public l j = new l();
    public boolean k = false;
    public boolean l = false;

    @Override // com.tapjoy.TJActivity
    public final void b() {
        e(false);
    }

    public final void e(boolean z) {
        TJAdUnit tJAdUnit = this.h;
        if (tJAdUnit == null) {
            finish();
        } else if (!tJAdUnit.f()) {
            TapjoyLog.d("TJAdUnitActivity", "closeRequested");
            this.h.a(z);
            this.f7792g.postDelayed(new z0(this), 1000L);
        }
        if (this.i != null) {
            TJMemoryDataStorage.getInstance().c(this.i.i());
        }
    }

    public final void f() {
        f7791f = null;
        this.k = true;
        TJAdUnit tJAdUnit = this.h;
        if (tJAdUnit != null) {
            tJAdUnit.b();
        }
        w wVar = this.i;
        if (wVar != null) {
            if (wVar.e() != null) {
                TapjoyConnectCore.viewDidClose(this.i.e());
            }
            o oVarA = TJPlacementManager.a(this.i.g());
            if (oVarA != null) {
                if (i8.c) {
                    HashMap map = new HashMap();
                    map.put("sdkCloseBtn", String.valueOf(this.l));
                    this.h.i().a("dismiss", map);
                }
                TJPlacement tJPlacementA = oVarA.a("SHOW");
                if (tJPlacementA == null || tJPlacementA.d() == null) {
                    return;
                }
                TapjoyLog.i("TJCorePlacement", "Content dismissed for placement " + oVarA.f8037d.i());
                TJPlacementListener tJPlacementListener = tJPlacementA.c;
                if (tJPlacementListener != null) {
                    tJPlacementListener.onContentDismiss(tJPlacementA);
                }
            }
        }
    }

    @Override // com.tapjoy.TJActivity, android.view.View.OnClickListener
    public void onClick(View view) {
        e(false);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TJAdUnit tJAdUnit = this.h;
        if (tJAdUnit != null) {
            tJAdUnit.r();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00db  */
    @Override // com.tapjoy.TJActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onCreate(android.os.Bundle r10) {
        /*
            Method dump skipped, instruction units count: 467
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.TJAdUnitActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (!this.k) {
            f();
        }
        f7791f = null;
    }

    @Override // android.app.Activity
    public final void onPause() {
        w wVar;
        super.onPause();
        TapjoyLog.d("TJAdUnitActivity", o2.h.t0);
        TJAdUnit tJAdUnit = this.h;
        if (tJAdUnit != null) {
            tJAdUnit.s();
        } else {
            finish();
        }
        if (isFinishing() && (wVar = this.i) != null && wVar.D()) {
            TapjoyLog.d("TJAdUnitActivity", "is Finishing");
            f();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        TapjoyLog.d("TJAdUnitActivity", o2.h.u0);
        super.onResume();
        TJAdUnit tJAdUnit = this.h;
        if (tJAdUnit != null) {
            tJAdUnit.v(this.j);
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        TapjoyLog.d("TJAdUnitActivity", "onSaveInstanceState");
        TJAdUnit tJAdUnit = this.h;
        if (tJAdUnit != null) {
            this.j.a = tJAdUnit.j();
            this.j.b = this.h.p();
            this.j.c = this.h.o();
            bundle.putSerializable("ad_unit_bundle", this.j);
        }
    }

    @Override // com.tapjoy.TJActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        TapjoyLog.d("TJAdUnitActivity", "onStart");
    }

    @Override // com.tapjoy.TJActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        TapjoyLog.d("TJAdUnitActivity", "onStop");
    }
}
