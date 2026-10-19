package com.gameloft.android2d.iap.utils;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.work.Data;
import com.bykv.vk.openvk.preload.falconx.statistic.StatisticData;
import com.facebook.internal.security.CertificateUtil;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.gameloft.android2d.iap.IAPLib;
import com.gameloft.android2d.iap.wrapper.Image;
import com.gameloft.android2d.iap.wrapper.Utils;
import com.json.b4;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Currency;
import java.util.Date;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SUtils {
    private static Context a;
    private static char[] b = {' ', '{', '}', ':', '*', ',', '|', '\"', '+', '-', '/', '$', b4.R};

    private static String EncodeChar(char c) {
        int i = 0;
        while (true) {
            char[] cArr = b;
            if (i >= cArr.length) {
                return String.valueOf(c);
            }
            if (cArr[i] == c) {
                return "%" + Integer.toHexString(c);
            }
            i++;
        }
    }

    public static String GetCurrentTimeStamp() {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetEncodedUrl(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            stringBuffer.append(EncodeChar(str.charAt(i)));
        }
        return stringBuffer.toString();
    }

    public static String GetSerialKey() {
        try {
            InputStream inputStreamOpenRawResource = getContext().getResources().openRawResource(getContext().getResources().getIdentifier("serialkey", "raw", getContext().getPackageName()));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource, Charset.forName(C.UTF8_NAME)));
            String line = bufferedReader.readLine();
            if (line == null) {
                line = "";
            }
            inputStreamOpenRawResource.close();
            bufferedReader.close();
            return line;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String GetVersionNumber() {
        try {
            String str = getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 0).versionName;
            return str != null ? str.equals("") ? StatisticData.ERROR_CODE_NOT_FOUND : str : StatisticData.ERROR_CODE_NOT_FOUND;
        } catch (Exception unused) {
            return StatisticData.ERROR_CODE_NOT_FOUND;
        }
    }

    public static boolean IsActivated() {
        String str = "0";
        try {
            InputStream inputStreamOpenRawResource = getContext().getResources().openRawResource(getContext().getResources().getIdentifier("iapswitch", "raw", getContext().getPackageName()));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource, Charset.forName(C.UTF8_NAME)));
            String line = bufferedReader.readLine();
            if (line == null) {
                line = "0";
            }
            inputStreamOpenRawResource.close();
            bufferedReader.close();
            str = line;
        } catch (Exception unused) {
        }
        return str.equals("1");
    }

    public static String KeyGenerator(String str, int i) {
        String stringRS = getStringRS(R.string.k_ValidChar);
        String stringRS2 = i == 1 ? getStringRS(R.string.k_ExtraKey1) : "";
        if (i == 2) {
            stringRS2 = getStringRS(R.string.k_ExtraKey2);
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            stringRS2 = stringRS2.replace(stringRS2.charAt(stringRS.indexOf(cCharAt) % stringRS2.length()), cCharAt);
        }
        if (i == 1) {
            stringRS2 = stringRS2 + str;
        }
        if (i != 2) {
            return stringRS2;
        }
        return str + stringRS2;
    }

    public static boolean LoadImageData() {
        try {
            h shopProfile = IAPLib.getShopProfile();
            if (shopProfile != null && LoadItemsSetImage(shopProfile, getStringRS(R.string.k_ItemCash))) {
                return LoadItemsSetImage(shopProfile, getStringRS(R.string.k_ItemCoin));
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean LoadItemsSetImage(h hVar, String str) throws Exception {
        if (hVar == null) {
            return false;
        }
        int iGetItemNumber = IAPLib.GetItemNumber(str);
        for (int i = 0; i < iGetItemNumber; i++) {
            g gVarL = hVar.l(str, i);
            if (gVarL != null && gVarL.M() == null) {
                FileInputStream fileToInputStream = readFileToInputStream(gVarL.N());
                if (fileToInputStream == null) {
                    return false;
                }
                gVarL.T(Image.createImage(fileToInputStream));
            }
        }
        return true;
    }

    public static void Mem_ArrayCopy(Object obj, int i, Object obj2, int i2, int i3) {
        System.arraycopy(obj, i, obj2, i2, i3);
    }

    public static void Mem_FillArray(int[] iArr, int i) {
        Mem_FillArray(iArr, i, iArr.length);
    }

    public static void Mem_FillArray(int[] iArr, int i, int i2) {
        if (i2 > 0) {
            iArr[0] = i;
        }
        for (int i3 = 1; i3 < i2; i3 += i3) {
            int i4 = i2 - i3;
            if (i4 >= i3) {
                i4 = i3;
            }
            System.arraycopy(iArr, 0, iArr, i3, i4);
        }
    }

    public static int Mem_GetArray(byte[] bArr, int i, byte[] bArr2) {
        Mem_ArrayCopy(bArr, i, bArr2, 0, bArr2.length);
        return i + bArr2.length;
    }

    public static byte Mem_GetByte(byte[] bArr, int i) {
        return bArr[i];
    }

    public static int Mem_GetInt(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (bArr[i] & 255) | ((bArr[i2] & 255) << 8);
        int i5 = i3 + 1;
        return ((bArr[i5] & 255) << 24) | i4 | ((bArr[i3] & 255) << 16);
    }

    public static long Mem_GetLong(byte[] bArr, int i) {
        int i2 = i + 1;
        long j = bArr[i] & 255;
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        long j2 = j | (((long) (bArr[i2] & 255)) << 8) | (((long) (bArr[i3] & 255)) << 16);
        int i5 = i4 + 1;
        long j3 = j2 | (((long) (bArr[i4] & 255)) << 24);
        int i6 = i5 + 1;
        long j4 = j3 | (((long) (bArr[i5] & 255)) << 32);
        int i7 = i6 + 1;
        long j5 = j4 | (((long) (bArr[i6] & 255)) << 40);
        return (((long) (bArr[i7 + 1] & 255)) << 56) | j5 | (((long) (bArr[i7] & 255)) << 48);
    }

    public static short Mem_GetShort(byte[] bArr, int i) {
        int i2 = i + 1;
        return (short) (((bArr[i2] & 255) << 8) | (bArr[i] & 255));
    }

    public static int Mem_SetArray(byte[] bArr, int i, byte[] bArr2) {
        Mem_ArrayCopy(bArr2, 0, bArr, i, bArr2.length);
        return i + bArr2.length;
    }

    public static int Mem_SetByte(byte[] bArr, int i, byte b2) {
        int i2 = i + 1;
        bArr[i] = b2;
        return i2;
    }

    public static int Mem_SetInt(byte[] bArr, int i, int i2) {
        int i3 = i + 1;
        bArr[i] = (byte) (i2 & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i2 >>> 8) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i2 >>> 16) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i2 >>> 24) & 255);
        return i6;
    }

    public static int Mem_SetLong(byte[] bArr, int i, long j) {
        int i2 = i + 1;
        bArr[i] = (byte) (j & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 8) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 24) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 32) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 40) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 48) & 255);
        int i9 = i8 + 1;
        bArr[i8] = (byte) ((j >>> 56) & 255);
        return i9;
    }

    public static int Mem_SetShort(byte[] bArr, int i, short s) {
        int i2 = i + 1;
        bArr[i] = (byte) (s & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((s >>> 8) & 255);
        return i3;
    }

    public static int MixIAPErrorCode(String str, String str2) {
        if (str2 == null || str2.indexOf("-") == -1) {
            return parseIntNumber(str + String.valueOf(parseIntNumber(str2)));
        }
        return parseIntNumber("-" + str + String.valueOf(Math.abs(parseIntNumber(str2))));
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

    public static String SHA256(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.reset();
            messageDigest.update(str.getBytes(C.UTF8_NAME));
            byte[] bArrDigest = messageDigest.digest();
            for (byte b2 : bArrDigest) {
                stringBuffer.append(Integer.toString((b2 & 255) + 256, 16).substring(1));
            }
        } catch (Exception unused) {
        }
        return stringBuffer.toString();
    }

    public static String StringFormat(String str, String[] strArr) {
        if (strArr == null) {
            return str;
        }
        for (int i = 0; i < strArr.length; i++) {
            str = str.replace("%s" + i, strArr[i]);
        }
        return str;
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

    public static long computeCountDownTime(String str, String str2) {
        try {
            long serverTime = parseServerTime(str);
            long j = Long.parseLong(str2);
            if (serverTime <= 0 || j <= 0) {
                return -2000L;
            }
            return serverTime - j;
        } catch (Exception unused) {
            return -2000L;
        }
    }

    public static String convertInputStreamToString(InputStream inputStream) {
        try {
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            do {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
            } while (bufferedReader.ready());
            bufferedReader.close();
            return sb.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String convertIntArrayToString(int[] iArr, String str) {
        String str2 = "";
        for (int i : iArr) {
            str2 = str2 + i + str;
        }
        return str2;
    }

    static boolean downloadFile(String str, String str2, String str3, g gVar) throws Exception {
        HttpURLConnection httpURLConnection;
        boolean zExists;
        int length;
        DataInputStream dataInputStream;
        HttpURLConnection httpURLConnection2 = null;
        FileOutputStream fileOutputStream = null;
        HttpURLConnection httpURLConnection3 = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        } catch (Exception unused) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Connection", "close");
            String str4 = str2 + "/" + str3;
            int i = 0;
            if (str2 != null) {
                File file = new File(str4);
                if (file.exists()) {
                    length = (int) file.length();
                } else {
                    file.createNewFile();
                    length = 0;
                }
                zExists = file.exists();
            } else {
                zExists = false;
                length = 0;
            }
            if (httpURLConnection.getResponseCode() != 200) {
                httpURLConnection.disconnect();
                return false;
            }
            int contentLength = httpURLConnection.getContentLength();
            if (contentLength == length) {
                httpURLConnection.disconnect();
                return true;
            }
            synchronized (httpURLConnection) {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream(), Data.MAX_DATA_BYTES);
                bufferedInputStream.mark(Data.MAX_DATA_BYTES);
                if (zExists) {
                    DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
                    FileOutputStream fileOutputStream2 = new FileOutputStream(str4);
                    while (i < contentLength) {
                        int i2 = contentLength - i;
                        if (i2 > 131072) {
                            i2 = 131072;
                        }
                        byte[] bArr = new byte[i2];
                        dataInputStream2.readFully(bArr);
                        fileOutputStream2.write(bArr);
                        fileOutputStream2.flush();
                        i += i2;
                    }
                    if (dataInputStream2.markSupported()) {
                        dataInputStream2.reset();
                    }
                    fileOutputStream = fileOutputStream2;
                    dataInputStream = dataInputStream2;
                } else {
                    dataInputStream = null;
                }
                gVar.T(Image.createImage(bufferedInputStream));
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                if (dataInputStream != null) {
                    dataInputStream.close();
                }
                bufferedInputStream.close();
            }
            httpURLConnection.disconnect();
        } catch (Exception unused2) {
            httpURLConnection3 = httpURLConnection;
            if (httpURLConnection3 != null) {
                httpURLConnection3.disconnect();
            }
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
        return true;
    }

    public static boolean downloadImageItems() {
        try {
            String iAPFolder = getIAPFolder();
            if (iAPFolder != null) {
                File file = new File(iAPFolder);
                if (!file.exists()) {
                    file.mkdirs();
                } else if (!file.isDirectory()) {
                    file.delete();
                    file.mkdirs();
                }
            }
            h shopProfile = IAPLib.getShopProfile();
            if (shopProfile == null) {
                return false;
            }
            String stringRS = getStringRS(R.string.k_ItemCash);
            int iGetItemNumber = IAPLib.GetItemNumber(stringRS);
            for (int i = 0; i < iGetItemNumber; i++) {
                g gVarL = shopProfile.l(stringRS, i);
                if (gVarL != null) {
                    downloadFile(gVarL.y(), iAPFolder, gVarL.x() + ".png", gVarL);
                    gVarL.U(iAPFolder + "/" + gVarL.x() + ".png");
                }
            }
            String stringRS2 = getStringRS(R.string.k_ItemCoin);
            int iGetItemNumber2 = IAPLib.GetItemNumber(stringRS2);
            for (int i2 = 0; i2 < iGetItemNumber2; i2++) {
                g gVarL2 = shopProfile.l(stringRS2, i2);
                if (gVarL2 != null) {
                    downloadFile(gVarL2.y(), iAPFolder, gVarL2.x() + ".png", gVarL2);
                    gVarL2.U(iAPFolder + "/" + gVarL2.x() + ".png");
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static Context getContext() {
        return a;
    }

    public static String getCountryId() {
        String simCountry = Utils.getSimCountry();
        return TextUtils.isEmpty(simCountry) ? Utils.getDeviceCountry() : simCountry;
    }

    public static String getCurrencySymbol(String str) {
        try {
            return Currency.getInstance(str).getSymbol();
        } catch (Exception unused) {
            return str;
        }
    }

    static String getIAPFolder() {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 8) {
            return getContext().getExternalFilesDir(null) + getStringRS(R.string.k_IAPImageFolderName);
        }
        return Environment.getDownloadCacheDirectory() + getStringRS(R.string.k_IAPImageFolderName);
    }

    public static String getIAPRegion() {
        String simCountry = !Utils.isAirplaneModeOn() ? Utils.getSimCountry() : null;
        if (TextUtils.isEmpty(simCountry)) {
            simCountry = Utils.getDeviceCountry();
        }
        return IAPLib.getLanguage() + "_" + simCountry;
    }

    public static String getJADProperty(String str) {
        String appProperty = Utils.getAppProperty(getContext(), str);
        if (appProperty != null) {
            return appProperty;
        }
        return "can not get properties" + str;
    }

    public static String getJSONValue(String str, String str2) {
        try {
            return new JSONObject(str).getString(str2);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String getLocalizedString(int i) {
        return getLocalizedString(i, IAPLib.getLanguage());
    }

    public static String getLocalizedString(int i, String str) {
        String lowerCase = str.toLowerCase();
        Locale locale = Locale.getDefault();
        Locale locale2 = new Locale(lowerCase);
        Locale.setDefault(locale2);
        Configuration configuration = new Configuration();
        configuration.locale = locale2;
        getContext().getResources().updateConfiguration(configuration, getContext().getResources().getDisplayMetrics());
        String string = ((Activity) getContext()).getString(i);
        Locale.setDefault(locale);
        Configuration configuration2 = new Configuration();
        configuration2.locale = locale;
        getContext().getResources().updateConfiguration(configuration2, getContext().getResources().getDisplayMetrics());
        return string;
    }

    public static String getMD5String(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            return String.format("%0" + (bArrDigest.length << 1) + "x", new BigInteger(1, bArrDigest));
        } catch (Exception unused) {
            return null;
        }
    }

    public static int getOccurenceOfPattern(String str, String str2) {
        String lowerCase = str.toLowerCase();
        String lowerCase2 = str2.toLowerCase();
        int length = 0;
        int i = 0;
        while (true) {
            try {
                int iIndexOf = lowerCase.indexOf(lowerCase2, length);
                if (iIndexOf == -1) {
                    break;
                }
                i++;
                length = iIndexOf + lowerCase2.length();
            } catch (Exception unused) {
            }
        }
        return i;
    }

    public static String getPlatformId() {
        String jADProperty = getJADProperty(getStringRS(R.string.k_getJADPhoneModel));
        String strRmsLoad = RMS.rmsLoad(getStringRS(R.string.k_IAPSaveUpdatePlatformIdRMSName));
        if (isValidString(strRmsLoad)) {
            jADProperty = strRmsLoad;
        }
        return jADProperty == null ? "6686" : jADProperty;
    }

    public static String getPortalName() {
        return getStringRS(R.string.k_Portal_GGP);
    }

    public static boolean getPreferenceBoolean(String str, boolean z, String str2) {
        try {
            return getContext().getSharedPreferences(str2, 0).getBoolean(str, z);
        } catch (Exception unused) {
            return false;
        }
    }

    public static int getPreferenceInt(String str, int i, String str2) {
        return getContext().getSharedPreferences(str2, 0).getInt(str, i);
    }

    public static long getPreferenceLong(String str, long j, String str2) {
        return Long.valueOf(getContext().getSharedPreferences(str2, 0).getLong(str, j)).longValue();
    }

    public static String getPreferenceString(String str, String str2) {
        return getContext().getSharedPreferences(str2, 0).getString(str, "");
    }

    public static String getPreferenceString(String str, String str2, String str3) {
        return getContext().getSharedPreferences(str3, 0).getString(str, str2);
    }

    public static String getShopName() {
        return getStringRS(R.string.k_Shop_GGP);
    }

    public static String getStringRS(int i) {
        return ((Activity) getContext()).getString(i);
    }

    public static String getUniqueCode(int i, int i2) {
        int iAbs = Math.abs(new Random().nextInt() % 9999);
        while (iAbs < 1000) {
            if (iAbs < 1000) {
                iAbs += 1000;
            }
        }
        return String.valueOf(iAbs);
    }

    public static boolean isAirplaneModeOn() {
        return Settings.System.getInt(getContext().getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    public static boolean isJSONValid(String str) {
        try {
            try {
                new JSONObject(str);
                return true;
            } catch (JSONException unused) {
                new JSONArray(str);
                return true;
            }
        } catch (JSONException unused2) {
            return false;
        }
    }

    public static boolean isUsing3G() {
        return ((ConnectivityManager) getContext().getSystemService("connectivity")).getNetworkInfo(0).isConnected();
    }

    public static boolean isUsingWIFI() {
        return ((ConnectivityManager) getContext().getSystemService("connectivity")).getNetworkInfo(1).isConnected();
    }

    public static boolean isValidString(String str) {
        return (str == null || str.equals("")) ? false : true;
    }

    public static boolean isValidUnlockCode(String str, String str2) {
        return str.equals(String.valueOf(Integer.parseInt(str2) ^ 53412));
    }

    public static float parseFloatNumber(String str) {
        try {
            return Float.parseFloat(str.replace(',', '.'));
        } catch (NumberFormatException unused) {
            return -1.0f;
        }
    }

    public static int parseIntNumber(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static long parseLongNumber(String str) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static long parseServerTime(String str) {
        if (str == null || str.equals("")) {
            return 0L;
        }
        str.trim();
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(Integer.parseInt(str.substring(0, 4)) + "-" + Integer.parseInt(str.substring(5, 7)) + "-" + Integer.parseInt(str.substring(8, 10)) + " " + Integer.parseInt(str.substring(11, 13)) + CertificateUtil.DELIMITER + Integer.parseInt(str.substring(14, 16)) + CertificateUtil.DELIMITER + Integer.parseInt(str.substring(17, 19))).getTime() + ((long) TimeZone.getDefault().getRawOffset());
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static String parseTransactionID(String str) {
        for (String str2 : str.replace('.', ' ').replace(':', ' ').replace(',', ' ').replace(';', ' ').split(" ")) {
            if (str2.startsWith("#") && str2.length() > 2) {
                String strSubstring = str2.substring(1);
                if (parseLongNumber(strSubstring) > 0) {
                    return strSubstring;
                }
            }
        }
        return Device.hasConnectivity() ? "" : "11111";
    }

    public static String parseUnlockCode(String str) {
        String[] strArrSplit = str.replace('.', ' ').replace(':', ' ').split(" ");
        String unlockCodeStored = RMS.getUnlockCodeStored();
        int i = -1;
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            int intNumber = parseIntNumber(strArrSplit[i2]);
            if (intNumber != -1 && strArrSplit[i2].length() == 5) {
                if (unlockCodeStored != null && unlockCodeStored.length() > 0 && isValidUnlockCode(String.valueOf(intNumber), unlockCodeStored)) {
                    return String.valueOf(intNumber);
                }
                i = intNumber;
            }
        }
        return String.valueOf(i);
    }

    public static byte[] readAsset(String str) {
        return readAsset(str, false);
    }

    public static byte[] readAsset(String str, boolean z) {
        return readAsset(str, z, false);
    }

    public static byte[] readAsset(String str, boolean z, boolean z2) {
        byte[] bArr;
        try {
            InputStream inputStreamOpen = !z ? getContext().getResources().getAssets().open(str) : Utils.getResourceAsStream(str);
            if (z2) {
                f.b.b bVar = new f.b.b(new BufferedInputStream(inputStreamOpen), new lzma.sdk.lzma.a());
                byte[] inputStream = readInputStream(bVar, 1024);
                bVar.close();
                bArr = inputStream;
            } else {
                bArr = new byte[inputStreamOpen.available()];
                inputStreamOpen.read(bArr);
            }
            inputStreamOpen.close();
            return bArr;
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] readFile(String str) throws Exception {
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        byte[] bArr = new byte[(int) file.length()];
        FileInputStream fileInputStream = new FileInputStream(file);
        fileInputStream.read(bArr);
        fileInputStream.close();
        return bArr;
    }

    public static FileInputStream readFileToInputStream(String str) throws Exception {
        File file = new File(str);
        if (file.exists()) {
            return new FileInputStream(file);
        }
        return null;
    }

    public static byte[] readInputStream(InputStream inputStream, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[i];
            while (true) {
                int i2 = inputStream.read(bArr, 0, i);
                if (i2 == -1) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean searchForCodeFromInbox() {
        Cursor cursorQuery;
        try {
            cursorQuery = IAPLib.getMainActivity().getContentResolver().query(Uri.parse(getStringRS(R.string.k_SMSInboxPath)), null, null, null, null);
        } catch (Exception unused) {
        }
        if (cursorQuery == null) {
            return false;
        }
        if (cursorQuery.moveToFirst()) {
            do {
                String string = cursorQuery.getString(cursorQuery.getColumnIndex("body"));
                String unlockCode = parseUnlockCode(string);
                if (!unlockCode.equals("") && IAPLib.NewVerifyRequest(unlockCode)) {
                    RMS.rmsSave(com.gameloft.android2d.iap.a.b[5], "1");
                    RMS.rms_SaveInfo(parseTransactionID(string), 39);
                    return true;
                }
            } while (cursorQuery.moveToNext());
        }
        cursorQuery.close();
        return false;
    }

    public static String searchForTrxIDFromInbox(String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = IAPLib.getMainActivity().getContentResolver().query(Uri.parse(getStringRS(R.string.k_SMSInboxPath)), null, null, null, null);
        } catch (Exception unused) {
        }
        if (cursorQuery == null) {
            return Device.hasConnectivity() ? "" : "11111";
        }
        if (cursorQuery.moveToFirst()) {
            do {
                String string = cursorQuery.getString(cursorQuery.getColumnIndex("body"));
                if (string.indexOf(str) != -1) {
                    return parseTransactionID(string);
                }
            } while (cursorQuery.moveToNext());
        }
        cursorQuery.close();
        return Device.hasConnectivity() ? "" : "11111";
    }

    public static void setContext(Context context) {
        a = context;
    }

    public static void setPreference(String str, Object obj, String str2) {
        SharedPreferences.Editor editorEdit = getContext().getSharedPreferences(str2, 0).edit();
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
}
