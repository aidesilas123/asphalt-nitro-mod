package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzcbn;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@KeepForSdk
public final class AdActivity extends Activity {

    @NonNull
    @KeepForSdk
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";

    @Nullable
    private zzbtp zza;

    private final void zza() {
        zzbtp zzbtpVar = this.zza;
        if (zzbtpVar != null) {
            try {
                zzbtpVar.zzx();
            } catch (RemoteException e2) {
                zzcbn.zzl("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i, int i2, @NonNull Intent intent) {
        try {
            zzbtp zzbtpVar = this.zza;
            if (zzbtpVar != null) {
                zzbtpVar.zzh(i, i2, intent);
            }
        } catch (Exception e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        try {
            zzbtp zzbtpVar = this.zza;
            if (zzbtpVar != null) {
                if (!zzbtpVar.zzH()) {
                    return;
                }
            }
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
        }
        super.onBackPressed();
        try {
            zzbtp zzbtpVar2 = this.zza;
            if (zzbtpVar2 != null) {
                zzbtpVar2.zzi();
            }
        } catch (RemoteException e3) {
            zzcbn.zzl("#007 Could not call remote method.", e3);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            zzbtp zzbtpVar = this.zza;
            if (zzbtpVar != null) {
                zzbtpVar.zzk(ObjectWrapper.wrap(configuration));
            }
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.app.Activity
    protected final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        zzbtp zzbtpVarZzo = zzay.zza().zzo(this);
        this.zza = zzbtpVarZzo;
        if (zzbtpVarZzo == null) {
            zzcbn.zzl("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            zzbtpVarZzo.zzl(bundle);
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        try {
            zzbtp zzbtpVar = this.zza;
            if (zzbtpVar != null) {
                zzbtpVar.zzm();
            }
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected final void onPause() {
        try {
            zzbtp zzbtpVar = this.zza;
            if (zzbtpVar != null) {
                zzbtpVar.zzo();
            }
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        try {
            zzbtp zzbtpVar = this.zza;
            if (zzbtpVar != null) {
                zzbtpVar.zzp(i, strArr, iArr);
            }
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.app.Activity
    protected final void onRestart() {
        super.onRestart();
        try {
            zzbtp zzbtpVar = this.zza;
            if (zzbtpVar != null) {
                zzbtpVar.zzq();
            }
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        super.onResume();
        try {
            zzbtp zzbtpVar = this.zza;
            if (zzbtpVar != null) {
                zzbtpVar.zzr();
            }
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(@NonNull Bundle bundle) {
        try {
            zzbtp zzbtpVar = this.zza;
            if (zzbtpVar != null) {
                zzbtpVar.zzs(bundle);
            }
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected final void onStart() {
        super.onStart();
        try {
            zzbtp zzbtpVar = this.zza;
            if (zzbtpVar != null) {
                zzbtpVar.zzt();
            }
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onStop() {
        try {
            zzbtp zzbtpVar = this.zza;
            if (zzbtpVar != null) {
                zzbtpVar.zzu();
            }
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    protected final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            zzbtp zzbtpVar = this.zza;
            if (zzbtpVar != null) {
                zzbtpVar.zzv();
            }
        } catch (RemoteException e2) {
            zzcbn.zzl("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        zza();
    }

    @Override // android.app.Activity
    public final void setContentView(@NonNull View view) {
        super.setContentView(view);
        zza();
    }

    @Override // android.app.Activity
    public final void setContentView(@NonNull View view, @NonNull ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        zza();
    }
}
