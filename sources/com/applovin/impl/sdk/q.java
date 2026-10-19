package com.applovin.impl.sdk;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.hardware.SensorManager;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.os.PowerManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.e.i;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.d;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinSdkUtils;
import com.json.o2;
import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class q {
    private static final AtomicReference<d.a> aDL = new AtomicReference<>();
    private static final AtomicReference<b> aDM = new AtomicReference<>();
    private static final AtomicReference<Integer> aDN = new AtomicReference<>();
    private final Context E;

    @Nullable
    private e aDA;

    @Nullable
    private e aDB;

    @Nullable
    private e aDC;

    @Nullable
    private e aDD;

    @Nullable
    private e aDE;
    private final int aDF;
    private final int aDG;
    private final int aDH;
    private final int aDI;
    private final int aDJ;
    private final int aDK;
    private boolean aDc;
    private final h aDl;
    private final i aDm;
    private final c aDn;
    private final d aDo;
    private final f aDp;
    private final g aDq;
    private final String aDr;
    private final String aDs;
    private final double aDt;
    private final boolean aDu;

    @Nullable
    private String aDv;
    private long aDw;
    private final a aDx;

    @Nullable
    private e aDy;

    @Nullable
    private e aDz;
    private final n sdk;

    public class a {
        private final String aDP;
        private final String aDQ;
        private final Long aDR;
        private final long aDS;
        private final int aDT;
        private final int aDU;
        private final String abm;
        private final String name;
        private final String version;

        private a() {
            PackageManager packageManager = q.this.E.getPackageManager();
            ApplicationInfo applicationInfo = q.this.E.getApplicationInfo();
            File file = new File(applicationInfo.sourceDir);
            PackageInfo packageInfo = packageManager.getPackageInfo(q.this.E.getPackageName(), 0);
            this.name = packageManager.getApplicationLabel(applicationInfo).toString();
            this.version = packageInfo.versionName;
            this.aDT = packageInfo.versionCode;
            String str = applicationInfo.packageName;
            this.abm = str;
            this.aDP = StringUtils.toShortSHA1Hash(str);
            this.aDS = file.lastModified();
            this.aDR = Long.valueOf(packageInfo.firstInstallTime);
            this.aDU = applicationInfo.targetSdkVersion;
            this.aDQ = packageManager.getInstallerPackageName(str);
        }

        @Nullable
        protected Long Em() {
            n nVar = q.this.sdk;
            com.applovin.impl.sdk.c.d<Long> dVar = com.applovin.impl.sdk.c.d.aRk;
            Long l = (Long) nVar.a(dVar);
            if (l != null) {
                return l;
            }
            q.this.sdk.a(dVar, Long.valueOf(this.aDS));
            return null;
        }

        public String En() {
            return this.abm;
        }

        public String Eo() {
            return this.aDP;
        }

        public String Ep() {
            return this.aDQ;
        }

        public Long Eq() {
            return this.aDR;
        }

        public long Er() {
            return this.aDS;
        }

        public int Es() {
            return this.aDU;
        }

        public String getName() {
            return this.name;
        }

        public String getVersion() {
            return this.version;
        }

        public int getVersionCode() {
            return this.aDT;
        }
    }

    public static class b {
        private final int aDh;

        /* JADX INFO: renamed from: do, reason: not valid java name */
        @Nullable
        private final String f12do;

        public b(@Nullable String str, int i) {
            this.f12do = str;
            this.aDh = i;
        }

        public int Et() {
            return this.aDh;
        }

        @Nullable
        public String mQ() {
            return this.f12do;
        }
    }

    protected class c {

        @Nullable
        private final AudioManager K;

        @Nullable
        private e aDV;

        @Nullable
        private e aDW;

        @Nullable
        private e aDX;

        @Nullable
        private e aDY;

        @Nullable
        private e aDZ;

        private c() {
            this.K = (AudioManager) q.this.E.getSystemService("audio");
        }

        protected int Eu() {
            e eVar = this.aDX;
            if (eVar != null && !eVar.isExpired()) {
                return ((Integer) this.aDX.aEf).intValue();
            }
            q qVar = q.this;
            e eVar2 = new e(Integer.valueOf(qVar.sdk.Cj().AV()), q.this.aDH);
            this.aDX = eVar2;
            return ((Integer) eVar2.aEf).intValue();
        }

        @Nullable
        protected Integer Ev() {
            e eVar = this.aDV;
            if (eVar != null && !eVar.isExpired()) {
                return Integer.valueOf(((Integer) this.aDV.aEf).intValue());
            }
            if (this.K == null) {
                return null;
            }
            try {
                e eVar2 = new e(Integer.valueOf((int) (this.K.getStreamVolume(3) * ((Float) q.this.sdk.a(com.applovin.impl.sdk.c.b.aOQ)).floatValue())), q.this.aDG);
                this.aDV = eVar2;
                return Integer.valueOf(((Integer) eVar2.aEf).intValue());
            } catch (Throwable th) {
                q.this.sdk.BN();
                if (x.Fn()) {
                    q.this.sdk.BN().c("DataProvider", "Unable to collect device volume", th);
                }
                return null;
            }
        }

        @Nullable
        protected String Ew() {
            e eVar = this.aDW;
            if (eVar != null && !eVar.isExpired()) {
                return (String) this.aDW.aEf;
            }
            if (this.K == null) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            if (com.applovin.impl.sdk.utils.h.KY()) {
                for (AudioDeviceInfo audioDeviceInfo : this.K.getDevices(2)) {
                    sb.append(audioDeviceInfo.getType());
                    sb.append(",");
                }
            } else {
                if (this.K.isWiredHeadsetOn()) {
                    sb.append(3);
                    sb.append(",");
                }
                if (this.K.isBluetoothScoOn()) {
                    sb.append(7);
                    sb.append(",");
                }
                if (this.K.isBluetoothA2dpOn()) {
                    sb.append(8);
                }
            }
            if (sb.length() > 0 && sb.charAt(sb.length() - 1) == ',') {
                sb.deleteCharAt(sb.length() - 1);
            }
            String string = sb.toString();
            if (TextUtils.isEmpty(string)) {
                q.this.sdk.BN();
                if (x.Fn()) {
                    q.this.sdk.BN().f("DataProvider", "No sound outputs detected");
                }
            }
            e eVar2 = new e(string, r3.aDI);
            this.aDW = eVar2;
            return (String) eVar2.aEf;
        }

        @Nullable
        protected Boolean Ex() {
            e eVar = this.aDY;
            if (eVar != null && !eVar.isExpired()) {
                return Boolean.valueOf(((Boolean) this.aDY.aEf).booleanValue());
            }
            AudioManager audioManager = this.K;
            if (audioManager == null) {
                return null;
            }
            e eVar2 = new e(Boolean.valueOf(audioManager.isMusicActive()), q.this.aDI);
            this.aDY = eVar2;
            return Boolean.valueOf(((Boolean) eVar2.aEf).booleanValue());
        }

        @Nullable
        protected Boolean Ey() {
            e eVar = this.aDZ;
            if (eVar != null && !eVar.isExpired()) {
                return Boolean.valueOf(((Boolean) this.aDZ.aEf).booleanValue());
            }
            AudioManager audioManager = this.K;
            if (audioManager == null) {
                return null;
            }
            e eVar2 = new e(Boolean.valueOf(audioManager.isSpeakerphoneOn()), q.this.aDI);
            this.aDZ = eVar2;
            return Boolean.valueOf(((Boolean) eVar2.aEf).booleanValue());
        }
    }

    protected class d {

        @Nullable
        private e aEa;

        @Nullable
        private e aEb;

        @Nullable
        private e aEc;

        @Nullable
        private final Intent aEd;

        @Nullable
        private BatteryManager aEe;

        private d() {
            this.aEd = q.this.E.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (com.applovin.impl.sdk.utils.h.KX()) {
                this.aEe = (BatteryManager) q.this.E.getSystemService("batterymanager");
            }
        }

        @Nullable
        protected Integer EA() {
            int intExtra;
            BatteryManager batteryManager;
            e eVar = this.aEb;
            if (eVar != null && !eVar.isExpired()) {
                return Integer.valueOf(((Integer) this.aEb.aEf).intValue());
            }
            if (!com.applovin.impl.sdk.utils.h.La() || (batteryManager = this.aEe) == null) {
                Intent intent = this.aEd;
                if (intent == null || (intExtra = intent.getIntExtra("status", -1)) < 0) {
                    return null;
                }
            } else {
                intExtra = batteryManager.getIntProperty(6);
            }
            e eVar2 = new e(Integer.valueOf(intExtra), q.this.aDH);
            this.aEb = eVar2;
            return Integer.valueOf(((Integer) eVar2.aEf).intValue());
        }

        @Nullable
        protected Boolean EB() {
            e eVar = this.aEc;
            if (eVar != null && !eVar.isExpired()) {
                return Boolean.valueOf(((Boolean) this.aEc.aEf).booleanValue());
            }
            if (com.applovin.impl.sdk.utils.h.KV()) {
                this.aEc = new e(Boolean.valueOf(Settings.Global.getInt(q.this.E.getContentResolver(), "stay_on_while_plugged_in", -1) > 0), q.this.aDH);
            } else {
                Intent intent = this.aEd;
                if (intent == null) {
                    return null;
                }
                this.aEc = new e(Boolean.valueOf(((((intent.getIntExtra("plugged", -1) & 1) | 2) | 4) | 8) > 0), q.this.aDH);
            }
            return Boolean.valueOf(((Boolean) this.aEc.aEf).booleanValue());
        }

        @Nullable
        protected Integer Ez() {
            int intProperty;
            BatteryManager batteryManager;
            e eVar = this.aEa;
            if (eVar != null && !eVar.isExpired()) {
                return Integer.valueOf(((Integer) this.aEa.aEf).intValue());
            }
            if (!com.applovin.impl.sdk.utils.h.KX() || (batteryManager = this.aEe) == null) {
                Intent intent = this.aEd;
                if (intent == null) {
                    return null;
                }
                int intExtra = intent.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1);
                int intExtra2 = this.aEd.getIntExtra("scale", -1);
                if (intExtra < 0 || intExtra2 < 0) {
                    return null;
                }
                intProperty = (int) ((intExtra / intExtra2) * 100.0f);
            } else {
                intProperty = batteryManager.getIntProperty(4);
            }
            e eVar2 = new e(Integer.valueOf(intProperty), q.this.aDH);
            this.aEa = eVar2;
            return Integer.valueOf(((Integer) eVar2.aEf).intValue());
        }
    }

    private class e {
        private final Object aEf;
        private final long aEg;

        private e(Object obj, long j) {
            this.aEf = obj;
            this.aEg = EC() + j;
        }

        private long EC() {
            return System.currentTimeMillis() / 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isExpired() {
            return !((Boolean) q.this.sdk.a(com.applovin.impl.sdk.c.b.aOp)).booleanValue() || this.aEg - EC() <= 0;
        }
    }

    protected class f {
        private float Wy;
        private int aEh;
        private int aEi;
        private int aEj;
        private float aEk;
        private float aEl;
        private double aEm;

        @Nullable
        private final Boolean aEn;

        private f() {
            this.aEn = com.applovin.impl.sdk.utils.h.La() ? Boolean.valueOf(q.this.E.getResources().getConfiguration().isScreenHdr()) : null;
            DisplayMetrics displayMetrics = q.this.E.getResources().getDisplayMetrics();
            if (displayMetrics == null) {
                return;
            }
            this.Wy = displayMetrics.density;
            this.aEk = displayMetrics.xdpi;
            this.aEl = displayMetrics.ydpi;
            this.aEj = displayMetrics.densityDpi;
            Point pointY = com.applovin.impl.sdk.utils.h.Y(q.this.E);
            int i = pointY.x;
            this.aEh = i;
            this.aEi = pointY.y;
            this.aEm = Math.sqrt(Math.pow(i, 2.0d) + Math.pow(this.aEi, 2.0d)) / ((double) this.aEk);
        }

        public int ED() {
            return this.aEh;
        }

        public int EE() {
            return this.aEi;
        }

        public int EF() {
            return this.aEj;
        }

        public float EG() {
            return this.aEk;
        }

        public float EH() {
            return this.aEl;
        }

        public float EI() {
            return this.Wy;
        }

        public double EJ() {
            return this.aEm;
        }

        @Nullable
        public Boolean EK() {
            return this.aEn;
        }
    }

    protected class g {
        private long aEo;

        @Nullable
        private e aEp;

        @Nullable
        private e aEq;

        @Nullable
        private e aEr;

        @Nullable
        private final ActivityManager aEs;

        private g() {
            ActivityManager activityManager = (ActivityManager) q.this.E.getSystemService("activity");
            this.aEs = activityManager;
            if (activityManager == null) {
                return;
            }
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            try {
                activityManager.getMemoryInfo(memoryInfo);
                this.aEo = memoryInfo.totalMem;
            } catch (Throwable th) {
                q.this.sdk.BN();
                if (x.Fn()) {
                    q.this.sdk.BN().c("DataProvider", "Unable to collect memory info.", th);
                }
            }
        }

        @Nullable
        protected Long EL() {
            e eVar = this.aEp;
            if (eVar != null && !eVar.isExpired()) {
                return Long.valueOf(((Long) this.aEp.aEf).longValue());
            }
            if (this.aEs == null) {
                return null;
            }
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            try {
                this.aEs.getMemoryInfo(memoryInfo);
                e eVar2 = new e(Long.valueOf(memoryInfo.availMem), q.this.aDF);
                this.aEp = eVar2;
                return Long.valueOf(((Long) eVar2.aEf).longValue());
            } catch (Throwable th) {
                q.this.sdk.BN();
                if (x.Fn()) {
                    q.this.sdk.BN().c("DataProvider", "Unable to collect available memory.", th);
                }
                return null;
            }
        }

        @Nullable
        protected Long EM() {
            e eVar = this.aEq;
            if (eVar != null && !eVar.isExpired()) {
                return Long.valueOf(((Long) this.aEq.aEf).longValue());
            }
            if (this.aEs == null) {
                return null;
            }
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            try {
                this.aEs.getMemoryInfo(memoryInfo);
                e eVar2 = new e(Long.valueOf(memoryInfo.threshold), q.this.aDF);
                this.aEq = eVar2;
                return Long.valueOf(((Long) eVar2.aEf).longValue());
            } catch (Throwable th) {
                q.this.sdk.BN();
                if (x.Fn()) {
                    q.this.sdk.BN().c("DataProvider", "Unable to collect low memory threshold.", th);
                }
                return null;
            }
        }

        @Nullable
        protected Boolean EN() {
            e eVar = this.aEr;
            if (eVar != null && !eVar.isExpired()) {
                return Boolean.valueOf(((Boolean) this.aEr.aEf).booleanValue());
            }
            if (this.aEs == null) {
                return null;
            }
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            try {
                this.aEs.getMemoryInfo(memoryInfo);
                e eVar2 = new e(Boolean.valueOf(memoryInfo.lowMemory), q.this.aDF);
                this.aEr = eVar2;
                return Boolean.valueOf(((Boolean) eVar2.aEf).booleanValue());
            } catch (Throwable th) {
                q.this.sdk.BN();
                if (x.Fn()) {
                    q.this.sdk.BN().c("DataProvider", "Unable to collect has low memory.", th);
                }
                return null;
            }
        }

        public long EO() {
            return this.aEo;
        }
    }

    protected class h {

        @Nullable
        private final PowerManager iT;

        private h() {
            this.iT = (PowerManager) q.this.E.getSystemService("power");
        }

        @Nullable
        protected Integer EP() {
            if (q.this.aDy != null && !q.this.aDy.isExpired()) {
                return Integer.valueOf(((Integer) q.this.aDy.aEf).intValue());
            }
            if (this.iT == null || !com.applovin.impl.sdk.utils.h.KX()) {
                return null;
            }
            q qVar = q.this;
            qVar.aDy = new e(Integer.valueOf(this.iT.isPowerSaveMode() ? 1 : 0), q.this.aDH);
            return Integer.valueOf(((Integer) q.this.aDy.aEf).intValue());
        }
    }

    protected class i {

        @Nullable
        private final TelephonyManager aEt;

        @Nullable
        private String aEu;

        @Nullable
        private String aEv;

        @Nullable
        private String aEw;

        @Nullable
        private String aEx;

        @Nullable
        private String aEy;

        @Nullable
        private e aEz;

        private i() {
            TelephonyManager telephonyManager = (TelephonyManager) q.this.E.getSystemService("phone");
            this.aEt = telephonyManager;
            if (telephonyManager == null) {
                return;
            }
            this.aEv = telephonyManager.getSimCountryIso().toUpperCase(Locale.ENGLISH);
            try {
                this.aEw = telephonyManager.getNetworkOperatorName();
            } catch (Throwable th) {
                q.this.sdk.BN();
                if (x.Fn()) {
                    q.this.sdk.BN().c("DataProvider", "Unable to collect carrier", th);
                }
            }
            try {
                this.aEu = this.aEt.getNetworkOperator();
            } catch (Throwable th2) {
                q.this.sdk.BN();
                if (x.Fn()) {
                    q.this.sdk.BN().c("DataProvider", "Unable to collect get network operator", th2);
                }
            }
            String str = this.aEu;
            if (str == null) {
                return;
            }
            int iMin = Math.min(3, str.length());
            this.aEx = this.aEu.substring(0, iMin);
            this.aEy = this.aEu.substring(iMin);
        }

        @Nullable
        protected Integer EQ() {
            e eVar = this.aEz;
            if (eVar != null && !eVar.isExpired()) {
                return Integer.valueOf(((Integer) this.aEz.aEf).intValue());
            }
            if (!com.applovin.impl.sdk.utils.h.d("android.permission.READ_PHONE_STATE", q.this.E) || this.aEt == null || !com.applovin.impl.sdk.utils.h.KZ()) {
                return null;
            }
            e eVar2 = new e(Integer.valueOf(this.aEt.getDataNetworkType()), q.this.aDK);
            this.aEz = eVar2;
            return Integer.valueOf(((Integer) eVar2.aEf).intValue());
        }

        @Nullable
        public String ER() {
            return this.aEw;
        }

        @Nullable
        public String ES() {
            return this.aEx;
        }

        @Nullable
        public String ET() {
            return this.aEy;
        }

        @Nullable
        public String getCountryCode() {
            return this.aEv;
        }
    }

    protected q(n nVar) {
        this.sdk = nVar;
        Context applicationContext = n.getApplicationContext();
        this.E = applicationContext;
        this.aDF = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPe)).intValue();
        this.aDG = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPf)).intValue();
        this.aDH = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPg)).intValue();
        this.aDI = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPh)).intValue();
        this.aDJ = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPi)).intValue();
        this.aDK = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPj)).intValue();
        this.aDl = new h();
        this.aDm = new i();
        this.aDn = new c();
        this.aDo = new d();
        this.aDp = new f();
        this.aDq = new g();
        this.aDr = AppLovinSdkUtils.isFireOS(applicationContext) ? "fireos" : "android";
        int orientation = AppLovinSdkUtils.getOrientation(applicationContext);
        if (orientation == 1) {
            this.aDs = o2.h.D;
        } else if (orientation == 2) {
            this.aDs = o2.h.C;
        } else {
            this.aDs = "none";
        }
        this.aDt = Math.round((((double) TimeZone.getDefault().getOffset(new Date().getTime())) * 10.0d) / 3600000.0d) / 10.0d;
        SensorManager sensorManager = (SensorManager) applicationContext.getSystemService("sensor");
        this.aDu = (sensorManager == null || sensorManager.getDefaultSensor(4) == null) ? false : true;
        if (com.applovin.impl.sdk.utils.h.KZ()) {
            LocaleList locales = applicationContext.getResources().getConfiguration().getLocales();
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < locales.size(); i2++) {
                sb.append(locales.get(i2));
                sb.append(",");
            }
            if (sb.length() > 0 && sb.charAt(sb.length() - 1) == ',') {
                sb.deleteCharAt(sb.length() - 1);
            }
            this.aDv = sb.toString();
        }
        try {
            this.aDw = Environment.getDataDirectory().getTotalSpace();
        } catch (Throwable th) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().c("DataProvider", "Unable to collect total disk space.", th);
            }
        }
        this.aDx = new a();
    }

    private boolean DB() {
        String str = Build.TAGS;
        return str != null && str.contains(cF("lz}$blpz"));
    }

    private boolean DC() {
        String[] strArr = {"&zpz}ld&hyy&Z|yl{|zl{'hyb", "&zk`g&z|", "&zpz}ld&k`g&z|", "&zpz}ld&qk`g&z|", "&mh}h&efjhe&qk`g&z|", "&mh}h&efjhe&k`g&z|", "&zpz}ld&zm&qk`g&z|", "&zpz}ld&k`g&oh`ezhol&z|", "&mh}h&efjhe&z|"};
        for (int i2 = 0; i2 < 9; i2++) {
            if (new File(cF(strArr[i2])).exists()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Ek() {
        aDN.set(this.aDn.Ev());
    }

    public static void a(b bVar) {
        aDM.set(bVar);
    }

    public static void a(d.a aVar) {
        aDL.set(aVar);
    }

    private boolean cD(String str) {
        return cE(str) == 1;
    }

    private int cE(String str) {
        try {
            return Settings.Secure.getInt(this.E.getContentResolver(), str);
        } catch (Throwable unused) {
            return -1;
        }
    }

    private String cF(String str) {
        int length = str.length();
        int[] iArr = {11, 12, 10, 3, 2, 1, 15, 10, 15, 14};
        char[] cArr = new char[length];
        for (int i2 = 0; i2 < length; i2++) {
            cArr[i2] = str.charAt(i2);
            for (int i3 = 9; i3 >= 0; i3--) {
                cArr[i2] = (char) (cArr[i2] ^ iArr[i3]);
            }
        }
        return new String(cArr);
    }

    @Nullable
    protected String[] DA() {
        if (com.applovin.impl.sdk.utils.h.KX()) {
            return Build.SUPPORTED_ABIS;
        }
        return null;
    }

    @Nullable
    public b DJ() {
        return aDM.get();
    }

    @Nullable
    protected d.a DK() {
        return aDL.get();
    }

    @Nullable
    protected Integer DL() {
        return aDN.get();
    }

    public d.a DM() {
        d.a aVarU = com.applovin.impl.sdk.utils.d.U(this.E);
        if (aVarU == null) {
            return new d.a();
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOr)).booleanValue()) {
            if (aVarU.KQ() && !((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOq)).booleanValue()) {
                aVarU.dx("");
            }
            aDL.set(aVarU);
        } else {
            aVarU = new d.a();
        }
        boolean z = false;
        if (StringUtils.isValidString(aVarU.KR())) {
            List<String> testDeviceAdvertisingIds = this.sdk.getSettings().getTestDeviceAdvertisingIds();
            if (testDeviceAdvertisingIds != null && testDeviceAdvertisingIds.contains(aVarU.KR())) {
                z = true;
            }
            this.aDc = z;
        } else {
            this.aDc = false;
        }
        return aVarU;
    }

    protected void DN() {
        this.sdk.BO().a(new com.applovin.impl.sdk.e.i(this.sdk, new i.a() { // from class: com.applovin.impl.sdk.q.1
            @Override // com.applovin.impl.sdk.e.i.a
            public void b(d.a aVar) {
                q.aDL.set(aVar);
            }
        }), q.b.ADVERTISING_INFO_COLLECTION);
        this.sdk.BO().a(new com.applovin.impl.sdk.e.ab(this.sdk, true, "setDeviceVolume", new Runnable() { // from class: com.applovin.impl.sdk.q1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.Ek();
            }
        }), q.b.CACHING_OTHER);
    }

    protected String DO() {
        e eVar = this.aDD;
        if (eVar != null && !eVar.isExpired()) {
            return (String) this.aDD.aEf;
        }
        e eVar2 = new e(com.applovin.impl.sdk.utils.i.G(this.sdk), this.aDK);
        this.aDD = eVar2;
        return (String) eVar2.aEf;
    }

    @Nullable
    protected Long DP() {
        e eVar = this.aDz;
        if (eVar != null && !eVar.isExpired()) {
            return Long.valueOf(((Long) this.aDz.aEf).longValue());
        }
        try {
            e eVar2 = new e(Long.valueOf(Environment.getDataDirectory().getFreeSpace()), this.aDI);
            this.aDz = eVar2;
            return Long.valueOf(((Long) eVar2.aEf).longValue());
        } catch (Throwable th) {
            this.sdk.BN();
            if (!x.Fn()) {
                return null;
            }
            this.sdk.BN().c("DataProvider", "Unable to collect free space.", th);
            return null;
        }
    }

    @Nullable
    protected Float DQ() {
        e eVar = this.aDB;
        if (eVar != null && !eVar.isExpired()) {
            return Float.valueOf(((Float) this.aDB.aEf).floatValue());
        }
        if (this.sdk.Ci() == null) {
            return null;
        }
        e eVar2 = new e(Float.valueOf(this.sdk.Ci().Ls()), this.aDF);
        this.aDB = eVar2;
        return Float.valueOf(((Float) eVar2.aEf).floatValue());
    }

    @Nullable
    protected Float DR() {
        e eVar = this.aDC;
        if (eVar != null && !eVar.isExpired()) {
            return Float.valueOf(((Float) this.aDC.aEf).floatValue());
        }
        if (this.sdk.Ci() == null) {
            return null;
        }
        e eVar2 = new e(Float.valueOf(this.sdk.Ci().Lr()), this.aDF);
        this.aDC = eVar2;
        return Float.valueOf(((Float) eVar2.aEf).floatValue());
    }

    @Nullable
    protected Integer DS() {
        e eVar = this.aDE;
        if (eVar != null && !eVar.isExpired()) {
            return Integer.valueOf(((Integer) this.aDE.aEf).intValue());
        }
        try {
            e eVar2 = new e(Integer.valueOf((int) ((Settings.System.getInt(this.E.getContentResolver(), "screen_brightness") / 255.0f) * 100.0f)), this.aDG);
            this.aDE = eVar2;
            return Integer.valueOf(((Integer) eVar2.aEf).intValue());
        } catch (Settings.SettingNotFoundException e2) {
            this.sdk.BN();
            if (!x.Fn()) {
                return null;
            }
            this.sdk.BN().c("DataProvider", "Unable to collect screen brightness", e2);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected long DT() {
        /*
            Method dump skipped, instruction units count: 488
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.q.DT():long");
    }

    protected float DU() {
        try {
            return Settings.System.getFloat(this.E.getContentResolver(), "font_scale");
        } catch (Settings.SettingNotFoundException e2) {
            this.sdk.BN();
            if (!x.Fn()) {
                return -1.0f;
            }
            this.sdk.BN().c("DataProvider", "Error collecting font scale", e2);
            return -1.0f;
        }
    }

    protected boolean DV() {
        e eVar = this.aDA;
        if (eVar != null && !eVar.isExpired()) {
            return ((Boolean) this.aDA.aEf).booleanValue();
        }
        e eVar2 = new e(Boolean.valueOf(com.applovin.impl.sdk.utils.u.Lz()), this.aDI);
        this.aDA = eVar2;
        return ((Boolean) eVar2.aEf).booleanValue();
    }

    protected boolean DW() {
        return (this.E.getResources().getConfiguration().keyboard == 2) && (this.E.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE") || this.E.getPackageManager().hasSystemFeature("android.hardware.type.pc"));
    }

    public h DX() {
        return this.aDl;
    }

    public i DY() {
        return this.aDm;
    }

    public c DZ() {
        return this.aDn;
    }

    public boolean Da() {
        return this.aDc;
    }

    protected boolean Dh() {
        ConnectivityManager connectivityManager;
        if (!com.applovin.impl.sdk.utils.h.KZ() || (connectivityManager = (ConnectivityManager) this.E.getSystemService("connectivity")) == null) {
            return false;
        }
        try {
            return connectivityManager.getRestrictBackgroundStatus() == 3;
        } catch (Throwable th) {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().c("DataProvider", "Unable to collect constrained network info.", th);
            }
            return false;
        }
    }

    protected boolean Dy() {
        try {
            if (!DB()) {
                if (!DC()) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public d Ea() {
        return this.aDo;
    }

    public f Eb() {
        return this.aDp;
    }

    public g Ec() {
        return this.aDq;
    }

    public String Ed() {
        return this.aDr;
    }

    public String Ee() {
        return this.aDs;
    }

    public double Ef() {
        return this.aDt;
    }

    public boolean Eg() {
        return this.aDu;
    }

    @Nullable
    public String Eh() {
        return this.aDv;
    }

    public long Ei() {
        return this.aDw;
    }

    public a Ej() {
        return this.aDx;
    }
}
