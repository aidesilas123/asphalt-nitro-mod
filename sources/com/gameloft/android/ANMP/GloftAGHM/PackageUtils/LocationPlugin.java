package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.app.Activity;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.view.ViewGroup;
import androidx.work.PeriodicWorkRequest;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;

/* JADX INFO: loaded from: classes2.dex */
public class LocationPlugin implements com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a {
    private static Activity a = null;
    private static int b = -1;
    private static double c = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static double f2819d = 0.0d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static float f2820e = 0.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f2821f = "0";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Location f2822g = null;
    private static Location h = null;
    private static double i = 30.0d;
    private static LocationListener j;
    private static LocationManager k;
    private static boolean l;
    private static boolean m;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LocationPlugin.initUserLocation();
        }
    }

    class b implements LocationListener {
        b() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            int unused = LocationPlugin.b = 0;
            if (location != null) {
                Location locationToTrack = LocationPlugin.getLocationToTrack(location);
                double unused2 = LocationPlugin.c = locationToTrack.getLatitude();
                double unused3 = LocationPlugin.f2819d = locationToTrack.getLongitude();
                float unused4 = LocationPlugin.f2820e = locationToTrack.getAccuracy();
                String unused5 = LocationPlugin.f2821f = String.valueOf(System.currentTimeMillis() - locationToTrack.getTime());
            } else {
                LocationPlugin.resetLocationValues();
            }
            JNIBridge.SetUserLocation(LocationPlugin.b, LocationPlugin.c, LocationPlugin.f2819d, LocationPlugin.f2820e, LocationPlugin.f2821f);
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            int unused = LocationPlugin.b = 1;
            LocationPlugin.resetLocationValues();
            JNIBridge.SetUserLocation(LocationPlugin.b, LocationPlugin.c, LocationPlugin.f2819d, LocationPlugin.f2820e, LocationPlugin.f2821f);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            int unused = LocationPlugin.b = 0;
            Location lastKnownLocation = LocationPlugin.k.getLastKnownLocation("network");
            if (lastKnownLocation != null) {
                Location locationToTrack = LocationPlugin.getLocationToTrack(lastKnownLocation);
                double unused2 = LocationPlugin.c = locationToTrack.getLatitude();
                double unused3 = LocationPlugin.f2819d = locationToTrack.getLongitude();
                float unused4 = LocationPlugin.f2820e = locationToTrack.getAccuracy();
                String unused5 = LocationPlugin.f2821f = String.valueOf(System.currentTimeMillis() - locationToTrack.getTime());
            } else {
                LocationPlugin.resetLocationValues();
            }
            JNIBridge.SetUserLocation(LocationPlugin.b, LocationPlugin.c, LocationPlugin.f2819d, LocationPlugin.f2820e, LocationPlugin.f2821f);
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
            if (i == 0 || i == 1) {
                int unused = LocationPlugin.b = 2;
                LocationPlugin.resetLocationValues();
            } else {
                int unused2 = LocationPlugin.b = 0;
            }
            JNIBridge.SetUserLocation(LocationPlugin.b, LocationPlugin.c, LocationPlugin.f2819d, LocationPlugin.f2820e, LocationPlugin.f2821f);
        }
    }

    public static void DisableUserLocation() {
        unregisterLocationListener();
        m = false;
        resetLocationValues();
        b = -1;
        JNIBridge.SetUserLocation(-1, c, f2819d, f2820e, f2821f);
    }

    public static void EnableUserLocation() {
        if (!PermissionPlugin.isLocationPermissionEnabled()) {
            b = 3;
            JNIBridge.SetUserLocation(3, c, f2819d, f2820e, f2821f);
        } else {
            b = -1;
            m = true;
            a.runOnUiThread(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Location getLocationToTrack(Location location) {
        try {
            if (f2822g == null) {
                f2822g = location;
            } else if (location.distanceTo(r0) / 1000.0f <= i) {
                f2822g = location;
                h = null;
            } else {
                if (h == null || location.distanceTo(r2) / 1000.0f > i) {
                    h = location;
                    location = f2822g;
                } else {
                    f2822g = location;
                    h = null;
                }
            }
        } catch (Exception unused) {
        }
        return location;
    }

    public static float getUserLocationAccuracy() {
        return f2820e;
    }

    public static double getUserLocationLatitude() {
        return c;
    }

    public static double getUserLocationLongitude() {
        return f2819d;
    }

    public static int getUserLocationStatus() {
        if (b == -1) {
            if (!PermissionPlugin.isLocationPermissionEnabled()) {
                b = 3;
                resetLocationValues();
                return b;
            }
            initUserLocation();
        }
        return b;
    }

    public static String getUserLocationTime() {
        return f2821f;
    }

    public static String initUserLocation() {
        if (m && b == -1) {
            try {
                LocationManager locationManager = (LocationManager) SUtils.getApplicationContext().getSystemService(WebPreferenceConstants.LOCATION);
                k = locationManager;
                if (locationManager == null || !locationManager.getAllProviders().contains("network")) {
                    b = 2;
                    resetLocationValues();
                    JNIBridge.SetUserLocation(b, c, f2819d, f2820e, f2821f);
                } else {
                    j = new b();
                    registerLocationListener();
                    if (k.isProviderEnabled("network")) {
                        b = 0;
                        Location lastKnownLocation = k.getLastKnownLocation("network");
                        if (lastKnownLocation != null) {
                            Location locationToTrack = getLocationToTrack(lastKnownLocation);
                            c = locationToTrack.getLatitude();
                            f2819d = locationToTrack.getLongitude();
                            f2820e = locationToTrack.getAccuracy();
                            f2821f = String.valueOf(System.currentTimeMillis() - locationToTrack.getTime());
                        } else {
                            resetLocationValues();
                        }
                        JNIBridge.SetUserLocation(b, c, f2819d, f2820e, f2821f);
                    } else {
                        b = 1;
                        resetLocationValues();
                        JNIBridge.SetUserLocation(b, c, f2819d, f2820e, f2821f);
                    }
                }
            } catch (Exception unused) {
                b = 2;
                resetLocationValues();
                JNIBridge.SetUserLocation(b, c, f2819d, f2820e, f2821f);
            }
        }
        return c + ", " + f2819d;
    }

    public static void registerLocationListener() {
        LocationManager locationManager;
        LocationListener locationListener;
        if (!m || (locationManager = k) == null || (locationListener = j) == null || l) {
            return;
        }
        locationManager.requestLocationUpdates("network", PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS, 0.0f, locationListener);
        l = true;
    }

    public static void resetLocationValues() {
        c = 0.0d;
        f2819d = 0.0d;
        f2820e = 0.0f;
        f2821f = "0";
    }

    public static void unregisterLocationListener() {
        LocationManager locationManager;
        LocationListener locationListener;
        if (!m || (locationManager = k) == null || (locationListener = j) == null || !l) {
            return;
        }
        locationManager.removeUpdates(locationListener);
        l = false;
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
        f2822g = null;
        registerLocationListener();
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativePause() {
        unregisterLocationListener();
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativeResume() {
    }
}
