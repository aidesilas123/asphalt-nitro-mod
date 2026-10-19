package com.gameloft.android.ANMP.GloftAGHM.GLUtils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.support.v4.media.session.PlaybackStateCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View;
import android.widget.Toast;
import androidx.webkit.internal.AssetHelper;
import com.gameloft.android.ANMP.GloftAGHM.FrameworkApplication;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.json.o2;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.security.MessageDigest;
import java.util.Random;
import java.util.UUID;
import java.util.Vector;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class SUtils implements com.gameloft.android.ANMP.GloftAGHM.GLUtils.a {
    private static Activity a;
    static Context b;
    private static Toast c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Toast f2797d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int[] f2798e = new int[4];

    class a implements Runnable {
        final /* synthetic */ int a;

        /* JADX INFO: renamed from: com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils$a$a, reason: collision with other inner class name */
        class RunnableC0210a implements Runnable {
            RunnableC0210a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (SUtils.c == null) {
                        Toast unused = SUtils.c = Toast.makeText(SUtils.getApplicationContext(), R.string.CAN_GO_BACK, a.this.a);
                    }
                    SUtils.c.setText(R.string.CAN_GO_BACK);
                    SUtils.c.setDuration(a.this.a);
                    View view = SUtils.c.getView();
                    if (view == null || !view.isShown()) {
                        SUtils.c.show();
                    }
                } catch (Exception unused2) {
                }
            }
        }

        a(int i) {
            this.a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            SUtils.runOnUiThread(new RunnableC0210a());
        }
    }

    class b implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ int b;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (SUtils.f2797d == null) {
                        Context applicationContext = SUtils.getApplicationContext();
                        b bVar = b.this;
                        Toast unused = SUtils.f2797d = Toast.makeText(applicationContext, bVar.a, bVar.b);
                    }
                    SUtils.f2797d.setText(b.this.a);
                    SUtils.f2797d.setDuration(b.this.b);
                    View view = SUtils.f2797d.getView();
                    if (view == null || !view.isShown()) {
                        SUtils.f2797d.show();
                    }
                } catch (Exception unused2) {
                }
            }
        }

        b(String str, int i) {
            this.a = str;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            SUtils.runOnUiThread(new a());
        }
    }

    public static int CheckConnectionType() {
        if (getApplicationContext() == null || hasConnectivity() == 0) {
            return 0;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) getApplicationContext().getSystemService("connectivity");
        int type = connectivityManager.getActiveNetworkInfo().getType();
        int i = 1;
        if (type != 1) {
            switch (type) {
                case 6:
                    i = 5;
                    break;
                case 7:
                    i = 2;
                    break;
                case 8:
                    i = 3;
                    break;
                case 9:
                    i = 4;
                    break;
                default:
                    i = 9;
                    break;
            }
        }
        if (i == 9) {
            int networkType = -1;
            try {
                networkType = ((TelephonyManager) getApplicationContext().getSystemService("phone")).getNetworkType();
            } catch (SecurityException unused) {
                if (Build.VERSION.SDK_INT >= 23) {
                    Network[] allNetworks = connectivityManager.getAllNetworks();
                    if (allNetworks.length > 0) {
                        for (Network network : allNetworks) {
                            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
                            if (networkCapabilities != null && networkCapabilities.hasTransport(0)) {
                                networkType = 13;
                            }
                        }
                    }
                } else if (type == 0 || type == 4 || type == 5) {
                    networkType = 13;
                }
            }
            switch (networkType) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    i = 6;
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    i = 7;
                    break;
                case 13:
                    i = 8;
                    break;
            }
        }
        if (i == 3) {
            return 9;
        }
        return i;
    }

    public static String GenerateUUID() {
        return UUID.randomUUID().toString();
    }

    public static String GetBrowserBookmarks(String str, int i, int i2) {
        return getBrowserInfo(str, i, i2, true);
    }

    public static String GetBrowserHistory(String str, int i, int i2) {
        return getBrowserInfo(str, i, i2, false);
    }

    public static String GetSerialKey() {
        return "null";
    }

    public static String ReadFile(int i) {
        InputStream inputStreamOpenRawResource = a.getResources().openRawResource(i);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            for (int i2 = inputStreamOpenRawResource.read(); i2 != -1; i2 = inputStreamOpenRawResource.read()) {
                byteArrayOutputStream.write(i2);
            }
            inputStreamOpenRawResource.close();
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toString();
    }

    public static String ReadFile(String str) {
        try {
            File file = new File(str);
            byte[] bArr = new byte[(int) file.length()];
            FileInputStream fileInputStream = new FileInputStream(file);
            fileInputStream.read(bArr);
            fileInputStream.close();
            return new String(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] ReadFileByte(int i) {
        InputStream inputStreamOpenRawResource = getApplicationContext().getResources().openRawResource(i);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            for (int i2 = inputStreamOpenRawResource.read(); i2 != -1; i2 = inputStreamOpenRawResource.read()) {
                byteArrayOutputStream.write(i2);
            }
            inputStreamOpenRawResource.close();
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] ReadFileByte(String str) {
        try {
            File file = new File(str);
            byte[] bArr = new byte[(int) file.length()];
            FileInputStream fileInputStream = new FileInputStream(file);
            fileInputStream.read(bArr);
            fileInputStream.close();
            return bArr;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void ShowToastMessage(String str, int i) {
        if (getApplicationContext() == null) {
            return;
        }
        new Thread(new b(str, i)).start();
    }

    public static boolean WriteFile(String str, String str2) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                new File(file.getParent()).mkdirs();
                file.createNewFile();
            }
        } catch (Exception unused) {
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream);
            outputStreamWriter.append((CharSequence) str2);
            outputStreamWriter.flush();
            outputStreamWriter.close();
            fileOutputStream.close();
            return true;
        } catch (Exception unused2) {
            return true;
        }
    }

    public static boolean WriteFile(String str, byte[] bArr) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                new File(file.getParent()).mkdirs();
                file.createNewFile();
            }
        } catch (Exception unused) {
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStream);
            dataOutputStream.write(bArr, 0, bArr.length);
            dataOutputStream.flush();
            dataOutputStream.close();
            fileOutputStream.close();
            return true;
        } catch (Exception unused2) {
            return true;
        }
    }

    public static void deleteFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    public static boolean genericUnzipArchive(String str, String str2) {
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(str)));
            byte[] bArr = new byte[4096];
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    return true;
                }
                String name = nextEntry.getName();
                if (nextEntry.isDirectory()) {
                    new File(str2 + name).mkdirs();
                } else {
                    FileOutputStream fileOutputStream = new FileOutputStream(str2 + name);
                    while (true) {
                        int i = zipInputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, i);
                    }
                    fileOutputStream.close();
                    zipInputStream.closeEntry();
                }
            }
        } catch (IOException unused) {
            return false;
        }
    }

    public static Activity getActivity() {
        return a;
    }

    public static Context getApplicationContext() {
        if (b == null) {
            b = FrameworkApplication.getContext();
        }
        return b;
    }

    public static byte[] getAssetAsString(String str) {
        try {
            if (str.startsWith(".")) {
                str = str.substring(1);
            }
            DataInputStream dataInputStream = new DataInputStream(getApplicationContext().getAssets().open(str, 2));
            byte[] bArr = new byte[dataInputStream.available()];
            dataInputStream.readFully(bArr);
            dataInputStream.close();
            return bArr;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static String getBrowserInfo(String str, int i, int i2, boolean z) {
        return "{\"FWDisabled\":true}";
    }

    public static long getFreeSpace(String str) {
        try {
            File file = str.contains("com.gameloft.android.ANMP.GloftAGHM") ? new File(str.substring(0, str.indexOf("com.gameloft.android.ANMP.GloftAGHM"))) : str == "/sdcard/Android/data/com.gameloft.android.ANMP.GloftAGHM/files" ? new File("/sdcard/") : new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            StatFs statFs = new StatFs(file.getAbsolutePath());
            if (Build.VERSION.SDK_INT >= 18) {
                return statFs.getAvailableBytes();
            }
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static int[] getGLUID(String str) {
        int[] iArr = new int[4];
        try {
            String str2 = str + SUtils.class.getPackage().getName().replace(".GLUtils", "");
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            messageDigest.update(str2.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            iArr[0] = getInt(bArrDigest, 0);
            iArr[1] = getInt(bArrDigest, 4);
            iArr[2] = getInt(bArrDigest, 8);
            iArr[3] = getInt(bArrDigest, 12);
            return iArr;
        } catch (Exception e2) {
            e2.printStackTrace();
            return iArr;
        }
    }

    public static String getGameName() {
        try {
            String str = getPackage();
            return str.indexOf("com.gameloft.android.") == -1 ? str : str.substring(21);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getInjectedIGP(Context context) {
        return "";
    }

    public static String getInjectedSerialKey(Context context) {
        return "";
    }

    public static int getInt(byte[] bArr, int i) {
        return ((((((0 + (bArr[i] & 255)) << 8) + (bArr[i + 1] & 255)) << 8) + (bArr[i + 2] & 255)) << 8) + (bArr[i + 3] & 255);
    }

    public static String getMetaDataValue(String str) {
        try {
            Object obj = getApplicationContext().getPackageManager().getApplicationInfo(getApplicationContext().getPackageName(), 128).metaData.get(str);
            String string = obj != null ? obj.toString() : "";
            return TextUtils.isEmpty(string) ? "" : string;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getOverriddenSetting(String str, String str2) {
        String line;
        try {
            FileReader fileReader = new FileReader(str);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while (true) {
                line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (line.startsWith(str2)) {
                    line = line.substring(line.indexOf(o2.i.b) + 1).trim();
                    break;
                }
            }
            bufferedReader.close();
            fileReader.close();
            return line;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean getOverriddenSettingBoolean(String str, String str2) {
        String overriddenSetting = getOverriddenSetting(str, str2);
        if (overriddenSetting == null || overriddenSetting.length() <= 0) {
            return false;
        }
        return Boolean.valueOf(overriddenSetting).booleanValue();
    }

    public static String getPackage() {
        return "com.gameloft.android.ANMP.GloftAGHM";
    }

    public static boolean getPreferenceBoolean(Context context, String str, boolean z, String str2) {
        try {
            return context.getSharedPreferences(str2, 0).getBoolean(str, z);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean getPreferenceBoolean(String str, boolean z, String str2) {
        return getPreferenceBoolean(getApplicationContext(), str, z, str2);
    }

    public static int getPreferenceInt(Context context, String str, int i, String str2) {
        return context.getSharedPreferences(str2, 0).getInt(str, i);
    }

    public static int getPreferenceInt(String str, int i, String str2) {
        return getPreferenceInt(getApplicationContext(), str, i, str2);
    }

    public static long getPreferenceLong(Context context, String str, long j, String str2) {
        return Long.valueOf(context.getSharedPreferences(str2, 0).getLong(str, j)).longValue();
    }

    public static long getPreferenceLong(String str, long j, String str2) {
        return getPreferenceLong(getApplicationContext(), str, j, str2);
    }

    public static String getPreferenceString(Context context, String str, String str2) {
        return context.getSharedPreferences(str2, 0).getString(str, "");
    }

    public static String getPreferenceString(Context context, String str, String str2, String str3) {
        return context.getSharedPreferences(str3, 0).getString(str, str2);
    }

    public static String getPreferenceString(String str, String str2) {
        return getPreferenceString(getApplicationContext(), str, str2);
    }

    public static String getPreferenceString(String str, String str2, String str3) {
        return getPreferenceString(getApplicationContext(), str, str2, str3);
    }

    public static InputStream getResourceAsStream(String str) {
        try {
            return getApplicationContext().getAssets().open(str);
        } catch (IOException unused) {
            return null;
        }
    }

    public static String getSDFolder() {
        return "/sdcard/Android/data/com.gameloft.android.ANMP.GloftAGHM/files";
    }

    public static String getSaveFolder() {
        try {
            return getApplicationContext().getFilesDir().toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static int getTotalSpace() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
            return Build.VERSION.SDK_INT >= 18 ? (int) ((statFs.getBlockCountLong() * statFs.getBlockSizeLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) : (statFs.getBlockCount() * statFs.getBlockSize()) / 1048576;
        } catch (Exception unused) {
            return 0;
        }
    }

    protected static int getUniqueCode(int i, int i2) {
        return (int) ((((double) ((i2 - i) + 1)) * new Random().nextDouble()) + ((double) i));
    }

    public static String getVersionInstalled() {
        try {
            return getApplicationContext().getPackageManager().getPackageInfo("com.gameloft.android.ANMP.GloftAGHM", 128).versionName;
        } catch (Exception unused) {
            return "1.8.0";
        }
    }

    public static int hasConnectivity() {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (getApplicationContext() == null || (connectivityManager = (ConnectivityManager) getApplicationContext().getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            return 0;
        }
        return activeNetworkInfo.isConnected() ? 1 : 0;
    }

    public static void inGameVideoSetSkipEnabled(boolean z) {
    }

    public static void init() {
    }

    public static int initCheckConnectionType() {
        if (getApplicationContext() == null) {
            return 0;
        }
        NetworkStateReceiver.a = true;
        return CheckConnectionType();
    }

    public static boolean isAirplaneModeOn() {
        return Settings.System.getInt(getApplicationContext().getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    protected static void logWindowMessage(Context context, String str) {
    }

    public static Bundle nativeGetPreference(Bundle bundle) {
        int i = bundle.getInt("npDataType");
        String string = bundle.getString("npKey");
        String string2 = bundle.getString("npPrefName");
        if (i == 0) {
            bundle.putInt("npResult", getPreferenceInt(getApplicationContext(), string, bundle.getInt("npDefaultValue"), string2));
        } else if (i == 1) {
            bundle.putLong("npResult", getPreferenceLong(getApplicationContext(), string, bundle.getLong("npDefaultValue"), string2));
        } else if (i == 2) {
            bundle.putBoolean("npResult", getPreferenceBoolean(getApplicationContext(), string, bundle.getBoolean("npDefaultValue"), string2));
        } else if (i == 3) {
            bundle.putString("npResult", getPreferenceString(getApplicationContext(), string, bundle.getString("npDefaultValue"), string2));
        }
        return bundle;
    }

    public static void nativeSetPreference(Bundle bundle) {
        Object num;
        Object obj;
        int i = bundle.getInt("npDataType");
        String string = bundle.getString("npKey");
        String string2 = bundle.getString("npPrefName");
        if (i == 0) {
            num = new Integer(bundle.getInt("npData"));
        } else if (i == 1) {
            num = new Long(bundle.getLong("npData"));
        } else if (i == 2) {
            num = new Boolean(bundle.getBoolean("npData"));
        } else {
            if (i != 3) {
                obj = null;
                setPreference(getApplicationContext(), string, obj, string2);
            }
            num = new String(bundle.getString("npData"));
        }
        obj = num;
        setPreference(getApplicationContext(), string, obj, string2);
    }

    protected static String[] objectArrayToStringArray(Object[] objArr) {
        int length = objArr.length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = objArr[i].toString();
        }
        return strArr;
    }

    public static native void onVideoFinished();

    protected static String[] readTextFile(String str, String str2) {
        String str3;
        InputStream resourceAsStream = getResourceAsStream(str);
        try {
            byte[] bArr = new byte[resourceAsStream.available()];
            resourceAsStream.read(bArr);
            str3 = new String(bArr, str2);
            try {
                resourceAsStream.close();
            } catch (IOException | Exception unused) {
            }
        } catch (IOException | Exception unused2) {
            str3 = null;
        }
        if (str3 == null) {
            return null;
        }
        Vector vector = new Vector();
        String str4 = "";
        for (int i = 0; i < str3.length(); i++) {
            char cCharAt = str3.charAt(i);
            if (cCharAt == '\n') {
                vector.addElement(str4);
                str4 = "";
            } else {
                str4 = str4 + cCharAt;
            }
        }
        String[] strArr = new String[vector.size()];
        vector.copyInto(strArr);
        return strArr;
    }

    public static boolean removeDirectoryRecursively(String str) {
        return removeFileDirectoryRecursively(new File(str));
    }

    public static boolean removeFileDirectoryRecursively(File file) {
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return true;
            }
            for (int i = 0; i < fileArrListFiles.length; i++) {
                if (fileArrListFiles[i].isDirectory()) {
                    removeFileDirectoryRecursively(fileArrListFiles[i]);
                } else {
                    fileArrListFiles[i].delete();
                }
            }
        }
        return file.delete();
    }

    public static void removePreference(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(str2, 0).edit();
        editorEdit.remove(str);
        editorEdit.commit();
    }

    public static void removePreference(String str, String str2) {
        removePreference(getApplicationContext(), str, str2);
    }

    public static int[] retrieveBarrels() {
        int[] iArr = f2798e;
        iArr[3] = 0;
        iArr[2] = 0;
        iArr[1] = 0;
        iArr[0] = 0;
        try {
            if (getApplicationContext() != null) {
                Signature[] signatureArr = getApplicationContext().getPackageManager().getPackageInfo(getApplicationContext().getPackageName(), 64).signatures;
                int length = signatureArr.length < 4 ? signatureArr.length : 4;
                for (int i = 0; i < length; i++) {
                    f2798e[i] = signatureArr[i].hashCode();
                }
                return f2798e;
            }
        } catch (Exception unused) {
        }
        return f2798e;
    }

    public static void runOnUiThread(Runnable runnable) {
        try {
            a.runOnUiThread(runnable);
        } catch (Exception unused) {
        }
    }

    public static void setActivity(Activity activity) {
        a = activity;
    }

    public static void setAirplaneMode(boolean z) {
        boolean zIsAirplaneModeOn = isAirplaneModeOn();
        if (zIsAirplaneModeOn && z) {
            return;
        }
        if (zIsAirplaneModeOn || z) {
            if (zIsAirplaneModeOn && !z) {
                Settings.System.putInt(getApplicationContext().getContentResolver(), "airplane_mode_on", 0);
                Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
                intent.putExtra("state", 0);
                getApplicationContext().sendBroadcast(intent);
                return;
            }
            if (zIsAirplaneModeOn || !z) {
                return;
            }
            Settings.System.putInt(getApplicationContext().getContentResolver(), "airplane_mode_on", 1);
            Intent intent2 = new Intent("android.intent.action.AIRPLANE_MODE");
            intent2.putExtra("state", 1);
            getApplicationContext().sendBroadcast(intent2);
        }
    }

    public static void setOverriddenSetting(String str, String str2, String str3) {
        String line;
        int i;
        FileWriter fileWriter;
        BufferedWriter bufferedWriter;
        try {
            FileReader fileReader = new FileReader(str);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while (true) {
                line = bufferedReader.readLine();
                i = 0;
                if (line == null) {
                    break;
                }
                if (line.startsWith(str2)) {
                    line = line.substring(0, line.indexOf(o2.i.b) + 1).trim();
                    i = 1;
                    break;
                }
            }
            bufferedReader.close();
            fileReader.close();
            if (line != null) {
                fileWriter = new FileWriter(str);
                bufferedWriter = new BufferedWriter(fileWriter);
            } else {
                fileWriter = new FileWriter(str, true);
                bufferedWriter = new BufferedWriter(fileWriter);
            }
            while (i >= 0) {
                bufferedWriter.newLine();
                i--;
            }
            bufferedWriter.write(str2 + o2.i.b + str3);
            bufferedWriter.close();
            fileWriter.close();
        } catch (Exception unused) {
        }
    }

    public static void setPreference(Context context, String str, Object obj, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(str2, 0).edit();
        if (obj instanceof String) {
            editorEdit.putString(str, (String) obj);
        } else if (obj instanceof Integer) {
            editorEdit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Boolean) {
            editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Long) {
            editorEdit.putLong(str, ((Long) obj).longValue());
        }
        editorEdit.commit();
    }

    public static void setPreference(String str, Object obj, String str2) {
        setPreference(getApplicationContext(), str, obj, str2);
    }

    public static void shareInfo(String str, String str2, String str3) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", str2);
        getActivity().startActivity(Intent.createChooser(intent, str3));
    }

    public static void showCantGoBackPopup(int i) {
        new Thread(new a(i)).start();
    }
}
