package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.media.AudioManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import com.gameloft.adsmanager.JavaUtils;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.VirtualKeyboard;
import com.gameloft.android.ANMP.GloftAGHM.MainActivity;
import com.gameloft.android.ANMP.GloftAGHM.R;
import java.io.DataInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidUtils {
    private static WeakReference<Activity> a;
    private static UtilsNetworkStateReceiver b = new UtilsNetworkStateReceiver();
    private static UtilsBatteryStateReceiver c = new UtilsBatteryStateReceiver();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f2816d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f2817e;

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ boolean c;

        /* JADX INFO: renamed from: com.gameloft.android.ANMP.GloftAGHM.PackageUtils.AndroidUtils$a$a, reason: collision with other inner class name */
        class DialogInterfaceOnClickListenerC0212a implements DialogInterface.OnClickListener {
            DialogInterfaceOnClickListenerC0212a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                boolean unused = AndroidUtils.f2816d = true;
                boolean unused2 = AndroidUtils.f2817e = true;
            }
        }

        class b implements DialogInterface.OnClickListener {
            b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                boolean unused = AndroidUtils.f2816d = true;
                boolean unused2 = AndroidUtils.f2817e = false;
            }
        }

        a(String str, String str2, boolean z) {
            this.a = str;
            this.b = str2;
            this.c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertDialog.Builder builder = new AlertDialog.Builder(SUtils.getActivity());
            builder.setTitle(this.a).setMessage(this.b).setCancelable(false);
            builder.setPositiveButton(R.string.UTILS_SKB_OK, new DialogInterfaceOnClickListenerC0212a());
            if (this.c) {
                builder.setNegativeButton(R.string.UTILS_SKB_CANCEL, new b());
            }
            AlertDialog alertDialogCreate = builder.create();
            alertDialogCreate.setCancelable(false);
            alertDialogCreate.setCanceledOnTouchOutside(false);
            alertDialogCreate.show();
        }
    }

    static class b extends AsyncTask<String, Integer, Integer> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer doInBackground(String... strArr) {
            int i = 0;
            for (String str : strArr) {
                try {
                    new DefaultHttpClient().execute(new HttpGet(str));
                    i++;
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            return Integer.valueOf(i);
        }
    }

    public static boolean AreNotificationsEnabled() {
        return NotificationManagerCompat.from(SUtils.getApplicationContext()).areNotificationsEnabled();
    }

    public static void DeleteFile(String str) {
        SUtils.deleteFile(str);
    }

    public static int Device_GetDefaultScreenOrientation() {
        return ((MainActivity) a.get()).P();
    }

    public static void DisableUserLocation() {
        LocationPlugin.DisableUserLocation();
    }

    public static void EnableUserLocation() {
        LocationPlugin.EnableUserLocation();
    }

    public static void ExitApplication(boolean z) {
        ((MainActivity) a.get()).N(z);
    }

    public static boolean GenericUnzipArchive(String str, String str2) {
        return SUtils.genericUnzipArchive(str, str2);
    }

    public static Activity GetActivity() {
        return SUtils.getActivity();
    }

    public static String GetAndroidID() {
        return Device.getAndroidId();
    }

    public static String GetApkPath() {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = SUtils.getApplicationContext().getPackageManager().getApplicationInfo("com.gameloft.android.ANMP.GloftAGHM", 0);
        } catch (Exception e2) {
            e2.printStackTrace();
            applicationInfo = null;
        }
        return applicationInfo.sourceDir;
    }

    public static byte[] GetAssetAsString(String str) {
        try {
            if (str.startsWith(".")) {
                str = str.substring(1);
            }
            DataInputStream dataInputStream = new DataInputStream(SUtils.getApplicationContext().getAssets().open(str, 2));
            byte[] bArr = new byte[dataInputStream.available()];
            dataInputStream.readFully(bArr);
            dataInputStream.close();
            return bArr;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static AssetManager GetAssetManager() {
        return a.get().getAssets();
    }

    public static String GetBrowserBookmarks(String str, int i, int i2) {
        return SUtils.GetBrowserBookmarks(str, i, i2);
    }

    public static String GetBrowserHistory(String str, int i, int i2) {
        return SUtils.GetBrowserHistory(str, i, i2);
    }

    public static String GetCPUSerial() {
        return Device.retrieveCPUSerial();
    }

    public static String GetCarrierAgent() {
        return Device.retrieveDeviceCarrier();
    }

    public static String GetCountry() {
        return Device.retrieveDeviceCountry();
    }

    public static String GetDefaultIGP() {
        return "AGHM";
    }

    public static String GetDeviceIMEI() {
        try {
            String deviceId = isPermissionEnabled("android.permission.READ_PHONE_STATE") ? ((TelephonyManager) SUtils.getApplicationContext().getSystemService("phone")).getDeviceId() : "";
            return deviceId == null ? "" : deviceId;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String GetDeviceLanguage() {
        return Device.retrieveDeviceLanguage();
    }

    public static String GetDeviceManufacturer() {
        return Device.getPhoneManufacturer();
    }

    public static String GetDeviceModel() {
        return Device.getPhoneModel();
    }

    public static long GetDiskFreeSpace(String str) {
        return SUtils.getFreeSpace(str);
    }

    public static int GetDiskTotalSpace() {
        return SUtils.getTotalSpace();
    }

    public static String GetFirmware() {
        return Device.getDeviceFirmware();
    }

    public static String GetGameName() {
        return SUtils.getGameName();
    }

    public static String GetGoogleAdId() {
        return Device.getGoogleAdId();
    }

    public static int GetGoogleAdIdStatus() {
        return Device.getGoogleAdIdStatus();
    }

    public static String GetHDIDFV() {
        return Device.getHDIDFV();
    }

    public static String GetInjectedIGP() {
        return SUtils.getInjectedIGP(SUtils.getApplicationContext());
    }

    public static String GetInjectedSerialKey() {
        return SUtils.getInjectedSerialKey(SUtils.getApplicationContext());
    }

    public static int GetLastMemoryWarning() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo.lastTrimLevel;
    }

    public static String GetMacAddress() {
        return Device.getMacAddress();
    }

    public static String GetMetaDataValue(String str) {
        return SUtils.getMetaDataValue(str);
    }

    public static String GetPhoneDevice() {
        return Device.getPhoneDevice();
    }

    public static String GetPhoneProduct() {
        return Device.getPhoneProduct();
    }

    public static boolean GetPreferenceBool(String str, String str2, boolean z) {
        return SUtils.getPreferenceBoolean(SUtils.getApplicationContext(), str, z, str2);
    }

    public static int GetPreferenceInt(String str, String str2, int i) {
        return SUtils.getPreferenceInt(SUtils.getApplicationContext(), str, i, str2);
    }

    public static long GetPreferenceLong(String str, String str2, long j) {
        return SUtils.getPreferenceLong(SUtils.getApplicationContext(), str, j, str2);
    }

    public static String GetPreferenceString(String str, String str2, String str3) {
        return SUtils.getPreferenceString(SUtils.getApplicationContext(), str, str3, str2);
    }

    public static String GetSerial() {
        return Device.getSerial();
    }

    public static long GetSystemUpTimeMillis() {
        return Device.getSystemUpTimeMillis();
    }

    public static String GetUserAgent() {
        return Device.getUserAgent();
    }

    public static String GetVKeyboardText() {
        return VirtualKeyboard.GetVirtualKeyboardText();
    }

    public static float GetXDpi() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        a.get().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.xdpi;
    }

    public static float GetYDpi() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        a.get().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.ydpi;
    }

    public static void HideKeyboard() {
        VirtualKeyboard.HideKeyboard();
    }

    public static void HttpExecuteAsync(String str) {
        try {
            new b().execute(str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static boolean IsKeyboardVisible() {
        return VirtualKeyboard.isKeyboardVisible();
    }

    public static boolean IsMusicActive() {
        return ((AudioManager) SUtils.getApplicationContext().getSystemService("audio")).isMusicActive();
    }

    public static boolean IsSimReady() {
        return Device.isSimReady();
    }

    public static int IsVideoCompleted() {
        return 1;
    }

    public static boolean LaunchBrowser(String str) {
        if (str != null && str.length() > 0) {
            try {
                a.get().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    public static boolean LaunchVideoPlayer(String str) {
        return false;
    }

    public static boolean LaunchWifiSettings() {
        try {
            a.get().startActivity(new Intent("android.settings.WIFI_SETTINGS"));
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void MinimizeApplication() {
        ((MainActivity) a.get()).U();
    }

    public static boolean RemoveDirectoryRecursively(String str) {
        return SUtils.removeDirectoryRecursively(str);
    }

    public static void RemovePreference(String str, String str2) {
        SUtils.removePreference(SUtils.getApplicationContext(), str, str2);
    }

    public static String RetrieveDataPath() {
        return SUtils.getApplicationContext().getExternalFilesDir(null) == null ? "" : SUtils.getApplicationContext().getExternalFilesDir(null).getAbsolutePath();
    }

    public static String RetrieveObbPath() {
        return "NA";
    }

    public static String RetrieveSDCardPath() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public static String RetrieveSavePath() {
        return SUtils.getApplicationContext().getFilesDir().getAbsolutePath();
    }

    public static String RetrieveTempPath() {
        return SUtils.getApplicationContext().getCacheDir().getAbsolutePath();
    }

    public static void SavePreferenceBool(String str, String str2, boolean z) {
        SUtils.setPreference(SUtils.getApplicationContext(), str, Boolean.valueOf(z), str2);
    }

    public static void SavePreferenceInt(String str, String str2, int i) {
        SUtils.setPreference(SUtils.getApplicationContext(), str, Integer.valueOf(i), str2);
    }

    public static void SavePreferenceLong(String str, String str2, long j) {
        SUtils.setPreference(SUtils.getApplicationContext(), str, Long.valueOf(j), str2);
    }

    public static void SavePreferenceString(String str, String str2, String str3) {
        SUtils.setPreference(SUtils.getApplicationContext(), str, str3, str2);
    }

    public static void SetActivityRef(Activity activity) {
        if (a == null) {
            a = new WeakReference<>(activity);
            SUtils.setActivity(activity);
            Device.init();
        }
    }

    public static void SetKeepScreenOn(boolean z) {
        ((MainActivity) a.get()).W(z);
    }

    public static void SetOrientation(boolean z) {
        ((MainActivity) a.get()).X(z);
    }

    public static void SetVKeyboardText(String str) {
        VirtualKeyboard.SetKeyboardText(str);
    }

    public static void ShowCannotGoBack() {
        SUtils.showCantGoBackPopup(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
    }

    public static boolean ShowGameDialog(String str, String str2, boolean z) {
        f2816d = false;
        f2817e = false;
        SUtils.getActivity().runOnUiThread(new a(str, str2, z));
        while (!f2816d) {
            try {
                Thread.sleep(500L);
            } catch (Exception unused) {
            }
        }
        return f2817e;
    }

    public static void ShowKeyboard(String str, int i, int i2, int i3, int i4) {
        VirtualKeyboard.ShowKeyboard(str, i, i2, i3, i4);
    }

    public static void ShowToastMessage(String str, int i) {
        SUtils.ShowToastMessage(str, i);
    }

    public static void ShowWelcomeScreen(int i) {
    }

    public static float getUserLocationAccuracy() {
        return LocationPlugin.getUserLocationAccuracy();
    }

    public static double getUserLocationLatitude() {
        return LocationPlugin.getUserLocationLatitude();
    }

    public static double getUserLocationLongitude() {
        return LocationPlugin.getUserLocationLongitude();
    }

    public static int getUserLocationStatus() {
        return LocationPlugin.getUserLocationStatus();
    }

    public static String getUserLocationTime() {
        return LocationPlugin.getUserLocationTime();
    }

    public static void initBatteryInfo() {
        WeakReference<Activity> weakReference = a;
        if (weakReference == null) {
            return;
        }
        UtilsBatteryStateReceiver.SetInitialBatteryState(weakReference.get());
    }

    public static int initCheckConnectionType() {
        if (a == null) {
            return 0;
        }
        return UtilsNetworkStateReceiver.CheckConnectionType(SUtils.getApplicationContext());
    }

    public static boolean isPermissionEnabled(String str) {
        return ContextCompat.checkSelfPermission(SUtils.getApplicationContext(), str) == 0;
    }

    public static void onPause() {
        JNIBridge.NativeOnPause();
    }

    public static void onPostNativePause() {
    }

    public static void onPostNativeResume() {
        Activity activity = a.get();
        activity.registerReceiver(b, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        activity.registerReceiver(c, UtilsBatteryStateReceiver.getIntentFilter());
    }

    public static void onPreNativePause() {
        Activity activity = a.get();
        activity.unregisterReceiver(b);
        activity.unregisterReceiver(c);
    }

    public static void onPreNativeResume() {
        SUtils.setActivity(a.get());
    }

    public static void onResume() {
        JNIBridge.NativeOnResume();
    }

    public static int[] retrieveBarrels() {
        return SUtils.retrieveBarrels();
    }
}
