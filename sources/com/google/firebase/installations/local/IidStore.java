package com.google.firebase.installations.local;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.stats.CodePackage;
import com.google.firebase.FirebaseApp;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class IidStore {
    private static final String[] a = {ProxyConfig.MATCH_ALL_SCHEMES, "FCM", CodePackage.GCM, ""};

    @GuardedBy("iidPrefs")
    private final SharedPreferences b;
    private final String c;

    public IidStore(@NonNull FirebaseApp firebaseApp) {
        this.b = firebaseApp.i().getSharedPreferences("com.google.android.gms.appid", 0);
        this.c = b(firebaseApp);
    }

    private String a(@NonNull String str, @NonNull String str2) {
        return "|T|" + str + "|" + str2;
    }

    private static String b(FirebaseApp firebaseApp) {
        String strC = firebaseApp.k().c();
        if (strC != null) {
            return strC;
        }
        String strB = firebaseApp.k().b();
        if (!strB.startsWith("1:") && !strB.startsWith("2:")) {
            return strB;
        }
        String[] strArrSplit = strB.split(CertificateUtil.DELIMITER);
        if (strArrSplit.length != 4) {
            return null;
        }
        String str = strArrSplit[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    @Nullable
    private static String c(@NonNull PublicKey publicKey) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            bArrDigest[0] = (byte) (((bArrDigest[0] & Ascii.SI) + 112) & 255);
            return Base64.encodeToString(bArrDigest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    private String d(String str) {
        try {
            return new JSONObject(str).getString("token");
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    private PublicKey e(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e2) {
            Log.w("ContentValues", "Invalid key stored " + e2);
            return null;
        }
    }

    @Nullable
    private String g() {
        String string;
        synchronized (this.b) {
            string = this.b.getString("|S|id", null);
        }
        return string;
    }

    @Nullable
    private String h() {
        synchronized (this.b) {
            String string = this.b.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            PublicKey publicKeyE = e(string);
            if (publicKeyE == null) {
                return null;
            }
            return c(publicKeyE);
        }
    }

    @Nullable
    public String f() {
        synchronized (this.b) {
            String strG = g();
            if (strG != null) {
                return strG;
            }
            return h();
        }
    }

    @Nullable
    public String i() {
        synchronized (this.b) {
            for (String str : a) {
                String string = this.b.getString(a(this.c, str), null);
                if (string != null && !string.isEmpty()) {
                    if (string.startsWith("{")) {
                        string = d(string);
                    }
                    return string;
                }
            }
            return null;
        }
    }
}
