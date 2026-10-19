package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.Command;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.HashMap;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteImageManager {
    private static Bitmap a;
    private static Boolean b = Boolean.FALSE;
    private static String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f2847d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static HashMap<String, String> f2848e;

    class a extends Thread {
        final /* synthetic */ Context a;

        a(Context context) {
            this.a = context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            String unused = RemoteImageManager.c = RemoteImageManager.GetAssetURL(this.a);
            if (RemoteImageManager.c == null || RemoteImageManager.c.isEmpty()) {
                RemoteImageManager.GetIrisService(this.a);
                String unused2 = RemoteImageManager.c = RemoteImageManager.GetAssetURL(this.a);
                if (RemoteImageManager.c == null || RemoteImageManager.c.isEmpty()) {
                    Boolean unused3 = RemoteImageManager.b = Boolean.TRUE;
                    return;
                }
            }
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(RemoteImageManager.c).openConnection();
                httpURLConnection.setReadTimeout(5000);
                httpURLConnection.addRequestProperty("Accept-Language", "en-US,en;q=0.8");
                httpURLConnection.addRequestProperty(Command.HTTP_HEADER_USER_AGENT, "Mozilla");
                httpURLConnection.addRequestProperty("Referer", "google.com");
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 200 && (responseCode == 302 || responseCode == 301 || responseCode == 303)) {
                    httpURLConnection = (HttpURLConnection) new URL(httpURLConnection.getHeaderField("Location")).openConnection();
                }
                String headerField = httpURLConnection.getHeaderField(Command.HTTP_HEADER_ETAG);
                Environment.getExternalStorageDirectory().getAbsolutePath();
                String etagAssetFromFile = PNImageHelper.getEtagAssetFromFile(this.a, SimplifiedAndroidUtils.i);
                if (headerField == null || headerField.isEmpty()) {
                    RemoteImageManager.GetLocalAsset(this.a);
                    return;
                }
                if (headerField.equals(etagAssetFromFile)) {
                    Bitmap unused4 = RemoteImageManager.a = PNImageHelper.LoadBitmapImageFromStorage(this.a, SimplifiedAndroidUtils.i);
                    return;
                }
                try {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                    if (PNImageHelper.SaveBitmapImageToExternalStorage(this.a, bitmapDecodeStream, SimplifiedAndroidUtils.i) != null) {
                        PNImageHelper.saveAssetEtag(this.a, SimplifiedAndroidUtils.i, headerField);
                        PNImageHelper.loadMap(this.a);
                        PNImageHelper.addAsset(this.a, SimplifiedAndroidUtils.i, Long.valueOf(System.currentTimeMillis()));
                        PNImageHelper.saveMap(this.a);
                    }
                    Bitmap unused5 = RemoteImageManager.a = bitmapDecodeStream;
                } catch (IOException unused6) {
                }
            } catch (Exception unused7) {
                Boolean unused8 = RemoteImageManager.b = Boolean.TRUE;
                Bitmap unused9 = RemoteImageManager.a = null;
            }
        }
    }

    public static Bitmap GetAsset() {
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String GetAssetURL(Context context) {
        String strGetIrisServiceFromPreference = GetIrisServiceFromPreference(context);
        if (strGetIrisServiceFromPreference == null) {
            strGetIrisServiceFromPreference = GetIrisService(context);
        }
        if (strGetIrisServiceFromPreference == null) {
            return null;
        }
        return "https://" + strGetIrisServiceFromPreference + "/assets/2361:59882:1.8.0a:android:googleplay/" + SimplifiedAndroidUtils.i;
    }

    private static String GetDatacenter() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://eve.gameloft.com:443/config/2361:59882:1.8.0a:android:googleplay/datacenters").openConnection();
            if (httpURLConnection.getResponseCode() != 200) {
                return null;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    try {
                        return new JSONObject(stringBuffer.toString()).getString("name");
                    } catch (JSONException unused) {
                        JSONArray jSONArray = new JSONArray(stringBuffer.toString());
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            String string = jSONObject.getString("name");
                            String string2 = jSONObject.getString("status");
                            Boolean boolValueOf = Boolean.valueOf(jSONObject.getBoolean("preferred"));
                            if (string2.equals(AppMeasurementSdk.ConditionalUserProperty.ACTIVE) && boolValueOf.booleanValue()) {
                                return string;
                            }
                        }
                        return null;
                    }
                }
                stringBuffer.append(line);
                stringBuffer.append('\r');
            }
        } catch (JSONException | Exception unused2) {
            return null;
        }
    }

    private static String GetEnvironment() {
        if (f2848e == null) {
            f2848e = new HashMap<>();
        }
        String string = f2848e.get("pandora");
        if (string != null && !string.isEmpty()) {
            return string;
        }
        try {
            String strGetDatacenter = GetDatacenter();
            if (strGetDatacenter != null) {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://eve.gameloft.com:443/config/2361:59882:1.8.0a:android:googleplay/datacenters/" + strGetDatacenter + "/urls").openConnection();
                if (httpURLConnection.getResponseCode() == 200) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        stringBuffer.append(line);
                        stringBuffer.append('\r');
                    }
                    bufferedReader.close();
                    try {
                        try {
                            string = new JSONObject(stringBuffer.toString()).getString("pandora");
                        } catch (JSONException unused) {
                        }
                    } catch (JSONException unused2) {
                        string = new JSONObject(new JSONArray(stringBuffer.toString()).get(0).toString()).getString("pandora");
                    }
                    if (string != null && !string.isEmpty()) {
                        f2848e.put("pandora", string);
                    }
                }
                httpURLConnection.disconnect();
            }
        } catch (UnknownHostException | Exception unused3) {
        }
        return string;
    }

    public static String GetIrisService(Context context) {
        String strGetEnvironment = GetEnvironment();
        String string = null;
        if (strGetEnvironment != null) {
            try {
                if (!strGetEnvironment.isEmpty()) {
                    HttpEntity entity = new DefaultHttpClient().execute(new HttpGet(strGetEnvironment + "/locate?service=asset")).getEntity();
                    if (entity != null && (string = EntityUtils.toString(entity)) != null && !string.isEmpty()) {
                        SharedPreferences.Editor editorEdit = Prefs.get(context).edit();
                        editorEdit.putString("iris_service", string);
                        editorEdit.commit();
                    }
                }
            } catch (UnknownHostException | Exception unused) {
            }
        }
        return string;
    }

    private static String GetIrisServiceFromPreference(Context context) {
        SharedPreferences sharedPreferences = Prefs.get(context);
        sharedPreferences.edit();
        if (sharedPreferences.contains("iris_service")) {
            return sharedPreferences.getString("iris_service", "");
        }
        return null;
    }

    public static boolean GetLocalAsset(Context context) {
        int identifier;
        a = null;
        try {
            identifier = context.getResources().getIdentifier(SimplifiedAndroidUtils.i, "raw", context.getPackageName());
            try {
                a = BitmapFactory.decodeResource(context.getResources(), identifier);
            } catch (Exception unused) {
                a = null;
            }
        } catch (Exception unused2) {
            identifier = 0;
        }
        return a != null && identifier > 0;
    }

    public static boolean GetRemoteAsset(Context context) {
        a = null;
        c = null;
        b = Boolean.FALSE;
        new a(context).start();
        int i = 0;
        do {
            i++;
            if (a != null || b.booleanValue()) {
                break;
            }
            try {
                Thread.sleep(500L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        } while (i <= 20);
        c = null;
        return a != null;
    }
}
