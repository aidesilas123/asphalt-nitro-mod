package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzoc;
import com.google.android.gms.internal.measurement.zzof;
import com.google.android.gms.internal.measurement.zzol;
import com.google.android.gms.internal.measurement.zzpm;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzin extends zzf {

    @VisibleForTesting
    protected zzim zza;
    final zzr zzb;

    @VisibleForTesting
    protected boolean zzc;
    private zzhi zzd;
    private final Set zze;
    private boolean zzf;
    private final AtomicReference zzg;
    private final Object zzh;

    @GuardedBy("consentLock")
    private zzah zzi;

    @GuardedBy("consentLock")
    private int zzj;
    private final AtomicLong zzk;
    private long zzl;
    private int zzm;
    private final zzlo zzn;

    protected zzin(zzgi zzgiVar) {
        super(zzgiVar);
        this.zze = new CopyOnWriteArraySet();
        this.zzh = new Object();
        this.zzc = true;
        this.zzn = new zzib(this);
        this.zzg = new AtomicReference();
        this.zzi = new zzah(null, null);
        this.zzj = 100;
        this.zzl = -1L;
        this.zzm = 100;
        this.zzk = new AtomicLong(0L);
        this.zzb = new zzr(zzgiVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* JADX INFO: renamed from: zzac, reason: merged with bridge method [inline-methods] */
    public final void zzC(Bundle bundle, long j) {
        if (TextUtils.isEmpty(this.zzs.zzh().zzm())) {
            zzS(bundle, 0, j);
        } else {
            this.zzs.zzaz().zzl().zza("Using developer consent only; google app id found");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzad(Boolean bool, boolean z) {
        zzg();
        zza();
        this.zzs.zzaz().zzc().zzb("Setting app measurement enabled (FE)", bool);
        this.zzs.zzm().zzh(bool);
        if (z) {
            zzfn zzfnVarZzm = this.zzs.zzm();
            zzgi zzgiVar = zzfnVarZzm.zzs;
            zzfnVarZzm.zzg();
            SharedPreferences.Editor editorEdit = zzfnVarZzm.zza().edit();
            if (bool != null) {
                editorEdit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                editorEdit.remove("measurement_enabled_from_api");
            }
            editorEdit.apply();
        }
        if (this.zzs.zzK() || !(bool == null || bool.booleanValue())) {
            zzae();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzae() {
        zzg();
        String strZza = this.zzs.zzm().zzh.zza();
        if (strZza != null) {
            if ("unset".equals(strZza)) {
                zzaa(MBridgeConstans.DYNAMIC_VIEW_WX_APP, "_npa", null, this.zzs.zzaw().currentTimeMillis());
            } else {
                zzaa(MBridgeConstans.DYNAMIC_VIEW_WX_APP, "_npa", Long.valueOf(true != "true".equals(strZza) ? 0L : 1L), this.zzs.zzaw().currentTimeMillis());
            }
        }
        if (!this.zzs.zzJ() || !this.zzc) {
            this.zzs.zzaz().zzc().zza("Updating Scion state (FE)");
            this.zzs.zzt().zzI();
            return;
        }
        this.zzs.zzaz().zzc().zza("Recording app launch after enabling measurement for the first time (FE)");
        zzz();
        zzol.zzc();
        if (this.zzs.zzf().zzs(null, zzel.zzae)) {
            this.zzs.zzu().zza.zza();
        }
        this.zzs.zzaA().zzp(new zzhq(this));
    }

    static /* bridge */ /* synthetic */ void zzv(zzin zzinVar, zzah zzahVar, zzah zzahVar2) {
        boolean z;
        zzag[] zzagVarArr = {zzag.ANALYTICS_STORAGE, zzag.AD_STORAGE};
        int i = 0;
        while (true) {
            if (i >= 2) {
                z = false;
                break;
            }
            zzag zzagVar = zzagVarArr[i];
            if (!zzahVar2.zzi(zzagVar) && zzahVar.zzi(zzagVar)) {
                z = true;
                break;
            }
            i++;
        }
        boolean zZzl = zzahVar.zzl(zzahVar2, zzag.ANALYTICS_STORAGE, zzag.AD_STORAGE);
        if (z || zZzl) {
            zzinVar.zzs.zzh().zzo();
        }
    }

    static /* synthetic */ void zzw(zzin zzinVar, zzah zzahVar, int i, long j, boolean z, boolean z2) {
        zzinVar.zzg();
        zzinVar.zza();
        if (j <= zzinVar.zzl && zzah.zzj(zzinVar.zzm, i)) {
            zzinVar.zzs.zzaz().zzi().zzb("Dropped out-of-date consent setting, proposed settings", zzahVar);
            return;
        }
        zzfn zzfnVarZzm = zzinVar.zzs.zzm();
        zzgi zzgiVar = zzfnVarZzm.zzs;
        zzfnVarZzm.zzg();
        if (!zzfnVarZzm.zzl(i)) {
            zzinVar.zzs.zzaz().zzi().zzb("Lower precedence consent source ignored, proposed source", Integer.valueOf(i));
            return;
        }
        SharedPreferences.Editor editorEdit = zzfnVarZzm.zza().edit();
        editorEdit.putString("consent_settings", zzahVar.zzh());
        editorEdit.putInt("consent_source", i);
        editorEdit.apply();
        zzinVar.zzl = j;
        zzinVar.zzm = i;
        zzinVar.zzs.zzt().zzF(z);
        if (z2) {
            zzinVar.zzs.zzt().zzu(new AtomicReference());
        }
    }

    public final void zzA(String str, String str2, Bundle bundle) {
        long jCurrentTimeMillis = this.zzs.zzaw().currentTimeMillis();
        Preconditions.checkNotEmpty(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, jCurrentTimeMillis);
        if (str2 != null) {
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str2);
            bundle2.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle);
        }
        this.zzs.zzaA().zzp(new zzhx(this, bundle2));
    }

    public final void zzB() {
        if (!(this.zzs.zzav().getApplicationContext() instanceof Application) || this.zza == null) {
            return;
        }
        ((Application) this.zzs.zzav().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.zza);
    }

    final /* synthetic */ void zzD(Bundle bundle) {
        if (bundle == null) {
            this.zzs.zzm().zzr.zzb(new Bundle());
            return;
        }
        Bundle bundleZza = this.zzs.zzm().zzr.zza();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                if (this.zzs.zzv().zzaf(obj)) {
                    this.zzs.zzv().zzN(this.zzn, null, 27, null, null, 0);
                }
                this.zzs.zzaz().zzl().zzc("Invalid default event parameter type. Name, value", str, obj);
            } else if (zzlp.zzah(str)) {
                this.zzs.zzaz().zzl().zzb("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                bundleZza.remove(str);
            } else {
                zzlp zzlpVarZzv = this.zzs.zzv();
                this.zzs.zzf();
                if (zzlpVarZzv.zzaa("param", str, 100, obj)) {
                    this.zzs.zzv().zzO(bundleZza, str, obj);
                }
            }
        }
        this.zzs.zzv();
        int iZzc = this.zzs.zzf().zzc();
        if (bundleZza.size() > iZzc) {
            int i = 0;
            for (String str2 : new TreeSet(bundleZza.keySet())) {
                i++;
                if (i > iZzc) {
                    bundleZza.remove(str2);
                }
            }
            this.zzs.zzv().zzN(this.zzn, null, 26, null, null, 0);
            this.zzs.zzaz().zzl().zza("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        this.zzs.zzm().zzr.zzb(bundleZza);
        this.zzs.zzt().zzH(bundleZza);
    }

    public final void zzE(String str, String str2, Bundle bundle) {
        zzF(str, str2, bundle, true, true, this.zzs.zzaw().currentTimeMillis());
    }

    public final void zzF(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        String str3 = str == null ? MBridgeConstans.DYNAMIC_VIEW_WX_APP : str;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (zzlp.zzal(str2, "screen_view")) {
            this.zzs.zzs().zzx(bundle2, j);
        } else {
            zzN(str3, str2, j, bundle2, z2, !z2 || this.zzd == null || zzlp.zzah(str2), z, null);
        }
    }

    public final void zzG(String str, String str2, Bundle bundle, String str3) {
        zzgi.zzO();
        zzN("auto", str2, this.zzs.zzaw().currentTimeMillis(), bundle, false, true, true, str3);
    }

    @WorkerThread
    final void zzH(String str, String str2, Bundle bundle) {
        zzg();
        zzI(str, str2, this.zzs.zzaw().currentTimeMillis(), bundle);
    }

    @WorkerThread
    final void zzI(String str, String str2, long j, Bundle bundle) {
        zzg();
        zzJ(str, str2, j, bundle, true, this.zzd == null || zzlp.zzah(str2), true, null);
    }

    @WorkerThread
    protected final void zzJ(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean z4;
        String str4;
        long j2;
        String str5;
        String str6;
        Bundle[] bundleArr;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(bundle);
        zzg();
        zza();
        if (!this.zzs.zzJ()) {
            this.zzs.zzaz().zzc().zza("Event not sent since app measurement is disabled");
            return;
        }
        List listZzn = this.zzs.zzh().zzn();
        if (listZzn != null && !listZzn.contains(str2)) {
            this.zzs.zzaz().zzc().zzc("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        if (!this.zzf) {
            this.zzf = true;
            try {
                try {
                    (!this.zzs.zzN() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, this.zzs.zzav().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod(MobileAdsBridgeBase.initializeMethodName, Context.class).invoke(null, this.zzs.zzav());
                } catch (Exception e2) {
                    this.zzs.zzaz().zzk().zzb("Failed to invoke Tag Manager's initialize() method", e2);
                }
            } catch (ClassNotFoundException unused) {
                this.zzs.zzaz().zzi().zza("Tag Manager is not found and thus will not be used");
            }
        }
        if ("_cmp".equals(str2) && bundle.containsKey("gclid")) {
            this.zzs.zzax();
            zzaa("auto", "_lgclid", bundle.getString("gclid"), this.zzs.zzaw().currentTimeMillis());
        }
        this.zzs.zzax();
        if (z && zzlp.zzam(str2)) {
            this.zzs.zzv().zzL(bundle, this.zzs.zzm().zzr.zza());
        }
        if (!z3) {
            this.zzs.zzax();
            if (!"_iap".equals(str2)) {
                zzlp zzlpVarZzv = this.zzs.zzv();
                int i = 2;
                if (zzlpVarZzv.zzac(NotificationCompat.CATEGORY_EVENT, str2)) {
                    if (zzlpVarZzv.zzZ(NotificationCompat.CATEGORY_EVENT, zzhf.zza, zzhf.zzb, str2)) {
                        zzlpVarZzv.zzs.zzf();
                        if (zzlpVarZzv.zzY(NotificationCompat.CATEGORY_EVENT, 40, str2)) {
                            i = 0;
                        }
                    } else {
                        i = 13;
                    }
                }
                if (i != 0) {
                    this.zzs.zzaz().zze().zzb("Invalid public event name. Event will not be logged (FE)", this.zzs.zzj().zzd(str2));
                    zzlp zzlpVarZzv2 = this.zzs.zzv();
                    this.zzs.zzf();
                    this.zzs.zzv().zzN(this.zzn, null, i, "_ev", zzlpVarZzv2.zzD(str2, 40, true), str2 != null ? str2.length() : 0);
                    return;
                }
            }
        }
        zzpm.zzc();
        if (this.zzs.zzf().zzs(null, zzel.zzat)) {
            this.zzs.zzax();
            zziu zziuVarZzj = this.zzs.zzs().zzj(false);
            if (zziuVarZzj != null && !bundle.containsKey("_sc")) {
                zziuVarZzj.zzd = true;
            }
            zzlp.zzK(zziuVarZzj, bundle, z && !z3);
        } else {
            this.zzs.zzax();
            zziu zziuVarZzj2 = this.zzs.zzs().zzj(false);
            if (zziuVarZzj2 != null && !bundle.containsKey("_sc")) {
                zziuVarZzj2.zzd = true;
            }
            zzlp.zzK(zziuVarZzj2, bundle, z && !z3);
        }
        boolean zEquals = "am".equals(str);
        boolean zZzah = zzlp.zzah(str2);
        if (!z || this.zzd == null || zZzah) {
            z4 = zEquals;
        } else {
            if (!zEquals) {
                this.zzs.zzaz().zzc().zzc("Passing event to registered event handler (FE)", this.zzs.zzj().zzd(str2), this.zzs.zzj().zzb(bundle));
                Preconditions.checkNotNull(this.zzd);
                this.zzd.interceptEvent(str, str2, bundle, j);
                return;
            }
            z4 = true;
        }
        if (this.zzs.zzM()) {
            int iZzh = this.zzs.zzv().zzh(str2);
            if (iZzh != 0) {
                this.zzs.zzaz().zze().zzb("Invalid event name. Event will not be logged (FE)", this.zzs.zzj().zzd(str2));
                zzlp zzlpVarZzv3 = this.zzs.zzv();
                this.zzs.zzf();
                this.zzs.zzv().zzN(this.zzn, str3, iZzh, "_ev", zzlpVarZzv3.zzD(str2, 40, true), str2 != null ? str2.length() : 0);
                return;
            }
            Bundle bundleZzy = this.zzs.zzv().zzy(str3, str2, bundle, CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"}), z3);
            Preconditions.checkNotNull(bundleZzy);
            this.zzs.zzax();
            if (this.zzs.zzs().zzj(false) != null && "_ae".equals(str2)) {
                zzkp zzkpVar = this.zzs.zzu().zzb;
                long jElapsedRealtime = zzkpVar.zzc.zzs.zzaw().elapsedRealtime();
                long j3 = jElapsedRealtime - zzkpVar.zzb;
                zzkpVar.zzb = jElapsedRealtime;
                if (j3 > 0) {
                    this.zzs.zzv().zzI(bundleZzy, j3);
                }
            }
            zzoc.zzc();
            if (this.zzs.zzf().zzs(null, zzel.zzad)) {
                if (!"auto".equals(str) && "_ssr".equals(str2)) {
                    zzlp zzlpVarZzv4 = this.zzs.zzv();
                    String string = bundleZzy.getString("_ffr");
                    if (Strings.isEmptyOrWhitespace(string)) {
                        string = null;
                    } else if (string != null) {
                        string = string.trim();
                    }
                    if (zzlp.zzal(string, zzlpVarZzv4.zzs.zzm().zzo.zza())) {
                        zzlpVarZzv4.zzs.zzaz().zzc().zza("Not logging duplicate session_start_with_rollout event");
                        return;
                    }
                    zzlpVarZzv4.zzs.zzm().zzo.zzb(string);
                } else if ("_ae".equals(str2)) {
                    String strZza = this.zzs.zzv().zzs.zzm().zzo.zza();
                    if (!TextUtils.isEmpty(strZza)) {
                        bundleZzy.putString("_ffr", strZza);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(bundleZzy);
            if (this.zzs.zzm().zzj.zza() > 0 && this.zzs.zzm().zzk(j) && this.zzs.zzm().zzl.zzb()) {
                this.zzs.zzaz().zzj().zza("Current session is expired, remove the session number, ID, and engagement time");
                str4 = "_ae";
                j2 = 0;
                zzaa("auto", "_sid", null, this.zzs.zzaw().currentTimeMillis());
                zzaa("auto", "_sno", null, this.zzs.zzaw().currentTimeMillis());
                zzaa("auto", "_se", null, this.zzs.zzaw().currentTimeMillis());
            } else {
                str4 = "_ae";
                j2 = 0;
            }
            if (bundleZzy.getLong("extend_session", j2) == 1) {
                this.zzs.zzaz().zzj().zza("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                this.zzs.zzu().zza.zzb(j, true);
            }
            ArrayList arrayList2 = new ArrayList(bundleZzy.keySet());
            Collections.sort(arrayList2);
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str7 = (String) arrayList2.get(i2);
                if (str7 != null) {
                    this.zzs.zzv();
                    Object obj = bundleZzy.get(str7);
                    if (obj instanceof Bundle) {
                        bundleArr = new Bundle[]{(Bundle) obj};
                    } else if (obj instanceof Parcelable[]) {
                        Parcelable[] parcelableArr = (Parcelable[]) obj;
                        bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList3 = (ArrayList) obj;
                        bundleArr = (Bundle[]) arrayList3.toArray(new Bundle[arrayList3.size()]);
                    } else {
                        bundleArr = null;
                    }
                    if (bundleArr != null) {
                        bundleZzy.putParcelableArray(str7, bundleArr);
                    }
                }
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                Bundle bundleZzt = (Bundle) arrayList.get(i3);
                if (i3 != 0) {
                    str6 = "_ep";
                    str5 = str;
                } else {
                    str5 = str;
                    str6 = str2;
                }
                bundleZzt.putString("_o", str5);
                if (z2) {
                    bundleZzt = this.zzs.zzv().zzt(bundleZzt);
                }
                Bundle bundle2 = bundleZzt;
                this.zzs.zzt().zzA(new zzav(str6, new zzat(bundle2), str, j), str3);
                if (!z4) {
                    Iterator it = this.zze.iterator();
                    while (it.hasNext()) {
                        ((zzhj) it.next()).onEvent(str, str2, new Bundle(bundle2), j);
                    }
                }
            }
            this.zzs.zzax();
            if (this.zzs.zzs().zzj(false) == null || !str4.equals(str2)) {
                return;
            }
            this.zzs.zzu().zzb.zzd(true, true, this.zzs.zzaw().elapsedRealtime());
        }
    }

    public final void zzK(zzhj zzhjVar) {
        zza();
        Preconditions.checkNotNull(zzhjVar);
        if (this.zze.add(zzhjVar)) {
            return;
        }
        this.zzs.zzaz().zzk().zza("OnEventListener already registered");
    }

    public final void zzL(long j) {
        this.zzg.set(null);
        this.zzs.zzaA().zzp(new zzhv(this, j));
    }

    final void zzM(long j, boolean z) {
        zzg();
        zza();
        this.zzs.zzaz().zzc().zza("Resetting analytics data (FE)");
        zzkr zzkrVarZzu = this.zzs.zzu();
        zzkrVarZzu.zzg();
        zzkrVarZzu.zzb.zza();
        boolean zZzJ = this.zzs.zzJ();
        zzfn zzfnVarZzm = this.zzs.zzm();
        zzfnVarZzm.zzc.zzb(j);
        if (!TextUtils.isEmpty(zzfnVarZzm.zzs.zzm().zzo.zza())) {
            zzfnVarZzm.zzo.zzb(null);
        }
        zzol.zzc();
        zzaf zzafVarZzf = zzfnVarZzm.zzs.zzf();
        zzek zzekVar = zzel.zzae;
        if (zzafVarZzf.zzs(null, zzekVar)) {
            zzfnVarZzm.zzj.zzb(0L);
        }
        if (!zzfnVarZzm.zzs.zzf().zzv()) {
            zzfnVarZzm.zzi(!zZzJ);
        }
        zzfnVarZzm.zzp.zzb(null);
        zzfnVarZzm.zzq.zzb(0L);
        zzfnVarZzm.zzr.zzb(null);
        if (z) {
            this.zzs.zzt().zzC();
        }
        zzol.zzc();
        if (this.zzs.zzf().zzs(null, zzekVar)) {
            this.zzs.zzu().zza.zza();
        }
        this.zzc = !zZzJ;
    }

    protected final void zzN(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                int i = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i < parcelableArr.length) {
                        Parcelable parcelable = parcelableArr[i];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i] = new Bundle((Bundle) parcelable);
                        }
                        i++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i < list.size()) {
                        Object obj2 = list.get(i);
                        if (obj2 instanceof Bundle) {
                            list.set(i, new Bundle((Bundle) obj2));
                        }
                        i++;
                    }
                }
            }
        }
        this.zzs.zzaA().zzp(new zzhs(this, str, str2, j, bundle2, z, z2, z3, str3));
    }

    final void zzO(String str, String str2, long j, Object obj) {
        this.zzs.zzaA().zzp(new zzht(this, str, str2, obj, j));
    }

    final void zzP(String str) {
        this.zzg.set(str);
    }

    public final void zzQ(Bundle bundle) {
        zzR(bundle, this.zzs.zzaw().currentTimeMillis());
    }

    public final void zzR(Bundle bundle, long j) {
        Preconditions.checkNotNull(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            this.zzs.zzaz().zzk().zza("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Preconditions.checkNotNull(bundle2);
        zzhe.zza(bundle2, "app_id", String.class, null);
        zzhe.zza(bundle2, "origin", String.class, null);
        zzhe.zza(bundle2, "name", String.class, null);
        zzhe.zza(bundle2, "value", Object.class, null);
        zzhe.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        zzhe.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L);
        zzhe.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        zzhe.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        zzhe.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        zzhe.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        zzhe.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L);
        zzhe.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        zzhe.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        Preconditions.checkNotEmpty(bundle2.getString("name"));
        Preconditions.checkNotEmpty(bundle2.getString("origin"));
        Preconditions.checkNotNull(bundle2.get("value"));
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, j);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        if (this.zzs.zzv().zzl(string) != 0) {
            this.zzs.zzaz().zzd().zzb("Invalid conditional user property name", this.zzs.zzj().zzf(string));
            return;
        }
        if (this.zzs.zzv().zzd(string, obj) != 0) {
            this.zzs.zzaz().zzd().zzc("Invalid conditional user property value", this.zzs.zzj().zzf(string), obj);
            return;
        }
        Object objZzB = this.zzs.zzv().zzB(string, obj);
        if (objZzB == null) {
            this.zzs.zzaz().zzd().zzc("Unable to normalize conditional user property value", this.zzs.zzj().zzf(string), obj);
            return;
        }
        zzhe.zzb(bundle2, objZzB);
        long j2 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT);
        if (!TextUtils.isEmpty(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME))) {
            this.zzs.zzf();
            if (j2 > 15552000000L || j2 < 1) {
                this.zzs.zzaz().zzd().zzc("Invalid conditional user property timeout", this.zzs.zzj().zzf(string), Long.valueOf(j2));
                return;
            }
        }
        long j3 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE);
        this.zzs.zzf();
        if (j3 > 15552000000L || j3 < 1) {
            this.zzs.zzaz().zzd().zzc("Invalid conditional user property time to live", this.zzs.zzj().zzf(string), Long.valueOf(j3));
        } else {
            this.zzs.zzaA().zzp(new zzhw(this, bundle2));
        }
    }

    public final void zzS(Bundle bundle, int i, long j) {
        zza();
        String strZzg = zzah.zzg(bundle);
        if (strZzg != null) {
            this.zzs.zzaz().zzl().zzb("Ignoring invalid consent setting", strZzg);
            this.zzs.zzaz().zzl().zza("Valid consent values are 'granted', 'denied'");
        }
        zzT(zzah.zza(bundle), i, j);
    }

    public final void zzT(zzah zzahVar, int i, long j) {
        zzah zzahVar2;
        boolean z;
        boolean z2;
        boolean z3;
        zzah zzahVarZzd = zzahVar;
        zza();
        if (i != -10 && zzahVar.zze() == null && zzahVar.zzf() == null) {
            this.zzs.zzaz().zzl().zza("Discarding empty consent settings");
            return;
        }
        synchronized (this.zzh) {
            zzahVar2 = this.zzi;
            z = true;
            z2 = false;
            if (zzah.zzj(i, this.zzj)) {
                boolean zZzk = zzahVarZzd.zzk(this.zzi);
                zzag zzagVar = zzag.ANALYTICS_STORAGE;
                if (zzahVarZzd.zzi(zzagVar) && !this.zzi.zzi(zzagVar)) {
                    z2 = true;
                }
                zzahVarZzd = zzahVarZzd.zzd(this.zzi);
                this.zzi = zzahVarZzd;
                this.zzj = i;
                z3 = z2;
                z2 = zZzk;
            } else {
                z = false;
                z3 = false;
            }
        }
        if (!z) {
            this.zzs.zzaz().zzi().zzb("Ignoring lower-priority consent settings, proposed settings", zzahVarZzd);
            return;
        }
        long andIncrement = this.zzk.getAndIncrement();
        if (z2) {
            this.zzg.set(null);
            this.zzs.zzaA().zzq(new zzih(this, zzahVarZzd, j, i, andIncrement, z3, zzahVar2));
            return;
        }
        zzii zziiVar = new zzii(this, zzahVarZzd, i, andIncrement, z3, zzahVar2);
        if (i == 30 || i == -10) {
            this.zzs.zzaA().zzq(zziiVar);
        } else {
            this.zzs.zzaA().zzp(zziiVar);
        }
    }

    public final void zzU(final Bundle bundle, final long j) {
        zzof.zzc();
        if (this.zzs.zzf().zzs(null, zzel.zzal)) {
            this.zzs.zzaA().zzq(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzho
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzC(bundle, j);
                }
            });
        } else {
            zzC(bundle, j);
        }
    }

    @WorkerThread
    public final void zzV(zzhi zzhiVar) {
        zzhi zzhiVar2;
        zzg();
        zza();
        if (zzhiVar != null && zzhiVar != (zzhiVar2 = this.zzd)) {
            Preconditions.checkState(zzhiVar2 == null, "EventInterceptor already set.");
        }
        this.zzd = zzhiVar;
    }

    public final void zzW(Boolean bool) {
        zza();
        this.zzs.zzaA().zzp(new zzig(this, bool));
    }

    @WorkerThread
    final void zzX(zzah zzahVar) {
        zzg();
        boolean z = (zzahVar.zzi(zzag.ANALYTICS_STORAGE) && zzahVar.zzi(zzag.AD_STORAGE)) || this.zzs.zzt().zzM();
        if (z != this.zzs.zzK()) {
            this.zzs.zzG(z);
            zzfn zzfnVarZzm = this.zzs.zzm();
            zzgi zzgiVar = zzfnVarZzm.zzs;
            zzfnVarZzm.zzg();
            Boolean boolValueOf = zzfnVarZzm.zza().contains("measurement_enabled_from_api") ? Boolean.valueOf(zzfnVarZzm.zza().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z || boolValueOf == null || boolValueOf.booleanValue()) {
                zzad(Boolean.valueOf(z), false);
            }
        }
    }

    public final void zzY(String str, String str2, Object obj, boolean z) {
        zzZ("auto", "_ldl", obj, true, this.zzs.zzaw().currentTimeMillis());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzZ(java.lang.String r16, java.lang.String r17, java.lang.Object r18, boolean r19, long r20) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzin.zzZ(java.lang.String, java.lang.String, java.lang.Object, boolean, long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zzaa(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
            r8 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r9)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r10)
            r8.zzg()
            r8.zza()
            java.lang.String r0 = "allow_personalized_ads"
            boolean r0 = r0.equals(r10)
            java.lang.String r1 = "_npa"
            if (r0 == 0) goto L64
            boolean r0 = r11 instanceof java.lang.String
            if (r0 == 0) goto L52
            r0 = r11
            java.lang.String r0 = (java.lang.String) r0
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L52
            r10 = 1
            java.util.Locale r11 = java.util.Locale.ENGLISH
            java.lang.String r11 = r0.toLowerCase(r11)
            java.lang.String r0 = "false"
            boolean r11 = r0.equals(r11)
            r2 = 1
            if (r10 == r11) goto L37
            r10 = 0
            goto L38
        L37:
            r10 = r2
        L38:
            java.lang.Long r11 = java.lang.Long.valueOf(r10)
            com.google.android.gms.measurement.internal.zzgi r10 = r8.zzs
            com.google.android.gms.measurement.internal.zzfn r10 = r10.zzm()
            com.google.android.gms.measurement.internal.zzfm r10 = r10.zzh
            long r4 = r11.longValue()
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 != 0) goto L4e
            java.lang.String r0 = "true"
        L4e:
            r10.zzb(r0)
            goto L61
        L52:
            if (r11 != 0) goto L64
            com.google.android.gms.measurement.internal.zzgi r10 = r8.zzs
            com.google.android.gms.measurement.internal.zzfn r10 = r10.zzm()
            com.google.android.gms.measurement.internal.zzfm r10 = r10.zzh
            java.lang.String r0 = "unset"
            r10.zzb(r0)
        L61:
            r6 = r11
            r3 = r1
            goto L66
        L64:
            r3 = r10
            r6 = r11
        L66:
            com.google.android.gms.measurement.internal.zzgi r10 = r8.zzs
            boolean r10 = r10.zzJ()
            if (r10 != 0) goto L7e
            com.google.android.gms.measurement.internal.zzgi r9 = r8.zzs
            com.google.android.gms.measurement.internal.zzey r9 = r9.zzaz()
            com.google.android.gms.measurement.internal.zzew r9 = r9.zzj()
            java.lang.String r10 = "User property not set since app measurement is disabled"
            r9.zza(r10)
            return
        L7e:
            com.google.android.gms.measurement.internal.zzgi r10 = r8.zzs
            boolean r10 = r10.zzM()
            if (r10 != 0) goto L87
            return
        L87:
            com.google.android.gms.measurement.internal.zzll r10 = new com.google.android.gms.measurement.internal.zzll
            r2 = r10
            r4 = r12
            r7 = r9
            r2.<init>(r3, r4, r6, r7)
            com.google.android.gms.measurement.internal.zzgi r9 = r8.zzs
            com.google.android.gms.measurement.internal.zzkb r9 = r9.zzt()
            r9.zzK(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzin.zzaa(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    public final void zzab(zzhj zzhjVar) {
        zza();
        Preconditions.checkNotNull(zzhjVar);
        if (this.zze.remove(zzhjVar)) {
            return;
        }
        this.zzs.zzaz().zzk().zza("OnEventListener had not been registered");
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzf() {
        return false;
    }

    public final int zzh(String str) {
        Preconditions.checkNotEmpty(str);
        this.zzs.zzf();
        return 25;
    }

    public final Boolean zzi() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.zzs.zzaA().zzd(atomicReference, 15000L, "boolean test flag value", new zzhz(this, atomicReference));
    }

    public final Double zzj() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.zzs.zzaA().zzd(atomicReference, 15000L, "double test flag value", new zzif(this, atomicReference));
    }

    public final Integer zzl() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.zzs.zzaA().zzd(atomicReference, 15000L, "int test flag value", new zzie(this, atomicReference));
    }

    public final Long zzm() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.zzs.zzaA().zzd(atomicReference, 15000L, "long test flag value", new zzid(this, atomicReference));
    }

    public final String zzo() {
        return (String) this.zzg.get();
    }

    public final String zzp() {
        zziu zziuVarZzi = this.zzs.zzs().zzi();
        if (zziuVarZzi != null) {
            return zziuVarZzi.zzb;
        }
        return null;
    }

    public final String zzq() {
        zziu zziuVarZzi = this.zzs.zzs().zzi();
        if (zziuVarZzi != null) {
            return zziuVarZzi.zza;
        }
        return null;
    }

    public final String zzr() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.zzs.zzaA().zzd(atomicReference, 15000L, "String test flag value", new zzic(this, atomicReference));
    }

    public final ArrayList zzs(String str, String str2) {
        if (this.zzs.zzaA().zzs()) {
            this.zzs.zzaz().zzd().zza("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        this.zzs.zzax();
        if (zzaa.zza()) {
            this.zzs.zzaz().zzd().zza("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzs.zzaA().zzd(atomicReference, 5000L, "get conditional user properties", new zzhy(this, atomicReference, null, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return zzlp.zzH(list);
        }
        this.zzs.zzaz().zzd().zzb("Timed out waiting for get conditional user properties", null);
        return new ArrayList();
    }

    public final List zzt(boolean z) {
        zza();
        this.zzs.zzaz().zzj().zza("Getting user properties (FE)");
        if (this.zzs.zzaA().zzs()) {
            this.zzs.zzaz().zzd().zza("Cannot get all user properties from analytics worker thread");
            return Collections.emptyList();
        }
        this.zzs.zzax();
        if (zzaa.zza()) {
            this.zzs.zzaz().zzd().zza("Cannot get all user properties from main thread");
            return Collections.emptyList();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzs.zzaA().zzd(atomicReference, 5000L, "get user properties", new zzhu(this, atomicReference, z));
        List list = (List) atomicReference.get();
        if (list != null) {
            return list;
        }
        this.zzs.zzaz().zzd().zzb("Timed out waiting for get user properties, includeInternal", Boolean.valueOf(z));
        return Collections.emptyList();
    }

    public final Map zzu(String str, String str2, boolean z) {
        if (this.zzs.zzaA().zzs()) {
            this.zzs.zzaz().zzd().zza("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        this.zzs.zzax();
        if (zzaa.zza()) {
            this.zzs.zzaz().zzd().zza("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzs.zzaA().zzd(atomicReference, 5000L, "get user properties", new zzia(this, atomicReference, null, str, str2, z));
        List<zzll> list = (List) atomicReference.get();
        if (list == null) {
            this.zzs.zzaz().zzd().zzb("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
            return Collections.emptyMap();
        }
        ArrayMap arrayMap = new ArrayMap(list.size());
        for (zzll zzllVar : list) {
            Object objZza = zzllVar.zza();
            if (objZza != null) {
                arrayMap.put(zzllVar.zzb, objZza);
            }
        }
        return arrayMap;
    }

    @WorkerThread
    public final void zzz() {
        zzg();
        zza();
        if (this.zzs.zzM()) {
            if (this.zzs.zzf().zzs(null, zzel.zzY)) {
                zzaf zzafVarZzf = this.zzs.zzf();
                zzafVarZzf.zzs.zzax();
                Boolean boolZzk = zzafVarZzf.zzk("google_analytics_deferred_deep_link_enabled");
                if (boolZzk != null && boolZzk.booleanValue()) {
                    this.zzs.zzaz().zzc().zza("Deferred Deep Link feature enabled.");
                    this.zzs.zzaA().zzp(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzhm
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzin zzinVar = this.zza;
                            zzinVar.zzg();
                            if (zzinVar.zzs.zzm().zzm.zzb()) {
                                zzinVar.zzs.zzaz().zzc().zza("Deferred Deep Link already retrieved. Not fetching again.");
                                return;
                            }
                            long jZza = zzinVar.zzs.zzm().zzn.zza();
                            zzinVar.zzs.zzm().zzn.zzb(1 + jZza);
                            zzinVar.zzs.zzf();
                            if (jZza < 5) {
                                zzinVar.zzs.zzE();
                            } else {
                                zzinVar.zzs.zzaz().zzk().zza("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                                zzinVar.zzs.zzm().zzm.zza(true);
                            }
                        }
                    });
                }
            }
            this.zzs.zzt().zzq();
            this.zzc = false;
            zzfn zzfnVarZzm = this.zzs.zzm();
            zzfnVarZzm.zzg();
            String string = zzfnVarZzm.zza().getString("previous_os_version", null);
            zzfnVarZzm.zzs.zzg().zzu();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor editorEdit = zzfnVarZzm.zza().edit();
                editorEdit.putString("previous_os_version", str);
                editorEdit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.zzs.zzg().zzu();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            zzH("auto", "_ou", bundle);
        }
    }
}
