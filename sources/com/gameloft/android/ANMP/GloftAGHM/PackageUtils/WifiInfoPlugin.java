package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.view.ViewGroup;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.json.k2;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class WifiInfoPlugin implements com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a {
    private static Activity a;
    private static WifiManager b;
    private static c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ScheduledExecutorService f2826d = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ScheduledFuture f2827e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f2828f = 60;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f2829g = -1;
    private static volatile boolean h = false;
    private static volatile boolean i = true;
    private static volatile boolean j = false;
    private static final Runnable k = new a();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!WifiInfoPlugin.h || WifiInfoPlugin.i) {
                return;
            }
            WifiInfoPlugin.InitializeWifiScanner();
            if (2 == WifiInfoPlugin.f2829g || 3 == WifiInfoPlugin.f2829g) {
                JNIBridge.SetWifiScannerResult(WifiInfoPlugin.f2829g, JsonUtils.EMPTY_JSON);
                return;
            }
            if (PermissionPlugin.isLocationPermissionEnabled()) {
                WifiInfoPlugin.b.startScan();
                return;
            }
            WifiInfo connectionInfo = WifiInfoPlugin.b.getConnectionInfo();
            JSONObject jSONObject = new JSONObject();
            WifiInfoPlugin.AppendCurrentWifiInfo(jSONObject, connectionInfo);
            JNIBridge.SetWifiScannerResult(WifiInfoPlugin.f2829g, jSONObject.toString());
        }
    }

    class b implements Comparator<ScanResult> {
        b() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(ScanResult scanResult, ScanResult scanResult2) {
            int iCompareTo = scanResult.SSID.compareTo(scanResult2.SSID);
            return iCompareTo == 0 ? scanResult.BSSID.compareTo(scanResult2.BSSID) : iCompareTo;
        }
    }

    static class c extends BroadcastReceiver {
        final Runnable a = new a();

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                WifiInfo connectionInfo = WifiInfoPlugin.b.getConnectionInfo();
                List<ScanResult> scanResults = WifiInfoPlugin.b.getScanResults();
                JSONObject jSONObject = new JSONObject();
                WifiInfoPlugin.AppendCurrentWifiInfo(jSONObject, connectionInfo);
                WifiInfoPlugin.AppendScannedWifiInfo(jSONObject, scanResults);
                JNIBridge.SetWifiScannerResult(WifiInfoPlugin.f2829g, jSONObject.toString());
            }
        }

        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            WifiInfoPlugin.f2826d.submit(this.a);
        }
    }

    public static void AppendCurrentWifiInfo(JSONObject jSONObject, WifiInfo wifiInfo) {
        try {
            boolean z = true;
            NetworkInfo networkInfo = ((ConnectivityManager) a.getSystemService("connectivity")).getNetworkInfo(1);
            JSONObject jSONObject2 = new JSONObject();
            boolean zIsConnected = networkInfo.isConnected();
            if (!wifiInfo.getSSID().isEmpty() && zIsConnected) {
                jSONObject2.put("SSID", wifiInfo.getSSID());
                zIsConnected = true;
            }
            if (wifiInfo.getBSSID().isEmpty() || !zIsConnected) {
                z = zIsConnected;
            } else {
                jSONObject2.put("BSSID", wifiInfo.getBSSID());
            }
            if (z) {
                jSONObject.put("connected_wifi", jSONObject2);
            }
        } catch (Exception unused) {
        }
    }

    public static void AppendScannedWifiInfo(JSONObject jSONObject, List<ScanResult> list) {
        boolean z;
        try {
            Collections.sort(list, new b());
        } catch (Exception unused) {
        }
        try {
            JSONArray jSONArray = new JSONArray();
            boolean z2 = false;
            for (ScanResult scanResult : list) {
                JSONObject jSONObject2 = new JSONObject();
                if (scanResult.SSID.isEmpty()) {
                    z = false;
                } else {
                    jSONObject2.put("SSID", scanResult.SSID);
                    z = true;
                }
                if (!scanResult.BSSID.isEmpty()) {
                    jSONObject2.put("BSSID", scanResult.BSSID);
                    z = true;
                }
                if (Build.VERSION.SDK_INT >= 23) {
                    String string = scanResult.venueName.toString();
                    if (!string.isEmpty()) {
                        jSONObject2.put("Venue", string);
                        z = true;
                    }
                }
                if (z) {
                    jSONArray.put(jSONObject2);
                    z2 = true;
                }
            }
            if (z2) {
                jSONObject.accumulate("available_wifis", jSONArray);
            }
        } catch (Exception unused2) {
        }
    }

    public static void DisableWifiScanner() {
        ScheduledFuture scheduledFuture = f2827e;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            f2827e = null;
        }
        UnregisterScannerReceiver();
        i = false;
        f2829g = -1;
        JNIBridge.SetWifiScannerResult(-1, JsonUtils.EMPTY_JSON);
    }

    public static void EnableWifiScanner() {
        h = true;
        if (f2827e == null) {
            f2827e = f2826d.scheduleAtFixedRate(k, 0L, f2828f, TimeUnit.SECONDS);
        }
    }

    public static int GetWifiScannerStatus() {
        return f2829g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void InitializeWifiScanner() {
        if (!h) {
            f2829g = -1;
            return;
        }
        try {
            if (b == null) {
                b = (WifiManager) a.getSystemService(k2.b);
            }
            WifiManager wifiManager = b;
            if (wifiManager == null) {
                f2829g = 3;
                return;
            }
            if (wifiManager.getWifiState() != 3) {
                f2829g = 2;
                return;
            }
            if (!PermissionPlugin.isLocationPermissionEnabled()) {
                f2829g = 1;
                return;
            }
            if (!j) {
                c = new c();
                RegisterScannerReceiver();
            }
            f2829g = 0;
        } catch (Exception unused) {
            f2829g = 3;
        }
    }

    private static void RegisterScannerReceiver() {
        if (!h || b == null || c == null || j) {
            return;
        }
        a.registerReceiver(c, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
        j = true;
    }

    private static void UnregisterScannerReceiver() {
        if (h && j && b != null && c != null && j) {
            a.unregisterReceiver(c);
            j = false;
        }
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public boolean onActivityResult(int i2, int i3, Intent intent) {
        return false;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPluginStart(Activity activity, ViewGroup viewGroup) {
        a = activity;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativeResume() {
        i = false;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativePause() {
        i = true;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativeResume() {
    }
}
