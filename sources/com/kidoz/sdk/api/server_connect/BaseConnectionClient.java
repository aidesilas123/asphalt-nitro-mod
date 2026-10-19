package com.kidoz.sdk.api.server_connect;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import androidx.browser.trusted.sharing.ShareTarget;
import com.json.b4;
import com.json.o2;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.TestUtils;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"NewApi"})
public class BaseConnectionClient {
    protected static String DOMAIN = "sdk.kidoz.net";
    protected static final String HTTP_SCHEME = "https://";
    protected static final String KIDOZ_ANALITYCS_SERVER_URL = "analytics.kidoz.net/parents/KidozRestMobile.php";
    protected static final String MAIN_API = "/api/sdk";
    protected static final String SDK_API_URL = "sdk-api.kidoz.net/api/";
    protected static final String TAG = "BaseConnectionClient";
    protected static String WATERFALL_DOMAIN = null;
    protected static String WATERFALL_URL = "/api/waterfall";
    protected static String mPublicherId;
    protected static String mSecurityToken;

    protected enum CONNECTION_TYPE {
        POST,
        GET
    }

    public interface IOnImageRequestCallback {
        void onImageRecieved(InputStream inputStream) throws IOException;
    }

    public static boolean downloadAndSaveFile(String str, File file) {
        boolean z = false;
        try {
            if (!TestUtils.isMultiEnv() && str.startsWith("http://")) {
                return false;
            }
            SDKLogger.printDebugLog(TAG, "Downloading file url: " + str);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Content-length", "0");
            httpURLConnection.setChunkedStreamingMode(0);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setRequestProperty(b4.I, ShareTarget.ENCODING_TYPE_URL_ENCODED);
            httpURLConnection.setRequestProperty("Access-Key", mPublicherId + "::" + mSecurityToken);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = bufferedInputStream.read(bArr);
                    if (i <= 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i);
                }
                fileOutputStream.close();
                bufferedInputStream.close();
                z = true;
            }
            httpURLConnection.disconnect();
        } catch (Exception e2) {
            SDKLogger.printDebugLog(TAG, "Error when trying download file: " + e2.getMessage());
        }
        return z;
    }

    private static String getPostDataString(ContentValues contentValues) throws UnsupportedEncodingException {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : contentValues.keySet()) {
            if (z) {
                z = false;
            } else {
                sb.append(o2.i.c);
            }
            sb.append(str);
            sb.append(o2.i.b);
            sb.append(contentValues.getAsString(str));
        }
        return sb.toString();
    }

    protected static void initConnectionClient(Context context) {
        initCookieManager();
    }

    private static void initCookieManager() {
        CookieManager cookieManager = new CookieManager();
        cookieManager.setCookiePolicy(CookiePolicy.ACCEPT_ALL);
        CookieHandler.setDefault(cookieManager);
    }

    public static void makeAsyncGet(final String str, final ContentValues contentValues) {
        new Thread(new Runnable() { // from class: com.kidoz.sdk.api.server_connect.BaseConnectionClient.1
            @Override // java.lang.Runnable
            public void run() {
                BaseConnectionClient.makeGetConnection(str, contentValues);
            }
        }).start();
    }

    public static String makeGetConnection(String str, ContentValues contentValues) {
        String stream = null;
        if (!TestUtils.isMultiEnv() && str.startsWith("http://")) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str);
        if (contentValues != null && contentValues.size() > 0) {
            boolean z = str.indexOf(63) <= 0;
            if (z) {
                sb.append("?");
            }
            Iterator<String> it = contentValues.keySet().iterator();
            if ((z || str.endsWith(o2.i.c)) && it.hasNext()) {
                String next = it.next();
                sb.append(next);
                sb.append(o2.i.b);
                sb.append(Uri.encode(contentValues.getAsString(next)));
            }
            while (it.hasNext()) {
                String next2 = it.next();
                sb.append(o2.i.c);
                sb.append(next2);
                sb.append(o2.i.b);
                sb.append(Uri.encode(contentValues.getAsString(next2)));
            }
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(sb.toString()).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Content-length", "0");
            httpURLConnection.setChunkedStreamingMode(0);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setRequestProperty(b4.I, ShareTarget.ENCODING_TYPE_URL_ENCODED);
            httpURLConnection.setRequestProperty("Access-Key", mPublicherId + "::" + mSecurityToken);
            if (contentValues != null && contentValues.containsKey(Command.HTTP_HEADER_USER_AGENT)) {
                httpURLConnection.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, contentValues.getAsString(Command.HTTP_HEADER_USER_AGENT));
            }
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200 || responseCode == 204) {
                stream = StreamToStringConverter.readStream(new BufferedInputStream(httpURLConnection.getInputStream()), null, false);
            } else {
                SDKLogger.printErrorLog("Server response " + responseCode + " for request:\n" + str);
            }
            httpURLConnection.disconnect();
        } catch (IOException e2) {
            SDKLogger.printErrorLog(" \n IO Exception GET request! \n" + e2.getMessage());
        }
        return stream;
    }

    public static String makePostConnection(String str, ContentValues contentValues) {
        if (!TestUtils.isMultiEnv() && str.startsWith("http://")) {
            return null;
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setChunkedStreamingMode(0);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setRequestProperty(b4.I, ShareTarget.ENCODING_TYPE_URL_ENCODED);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(bufferedOutputStream, C.UTF8_NAME));
            bufferedWriter.write(getPostDataString(contentValues));
            bufferedWriter.flush();
            bufferedWriter.close();
            bufferedOutputStream.close();
            httpURLConnection.connect();
            stream = httpURLConnection.getResponseCode() == 200 ? StreamToStringConverter.readStream(new BufferedInputStream(httpURLConnection.getInputStream()), null, false) : null;
            httpURLConnection.disconnect();
        } catch (IOException e2) {
            SDKLogger.printErrorLog(" \n IO Exception POST request! \n" + e2.getMessage());
        }
        return stream;
    }

    public static void updateDomain(String str) {
        if (str == null || str.equals("")) {
            return;
        }
        DOMAIN = str;
    }

    public static void updateWaterfallDomain(String str) {
        if (str == null || str.equals("")) {
            return;
        }
        WATERFALL_DOMAIN = str;
    }
}
