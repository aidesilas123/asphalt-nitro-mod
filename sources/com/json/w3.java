package com.json;

import android.text.TextUtils;
import com.json.mediationsdk.logger.IronLog;
import java.util.Random;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class w3 {
    private static final w3 a = new w3();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f6703d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f6704e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f6705f = "C38FB23A402222A0C17D34A92F971D1F";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f6706g = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDaUZaiASqhU4+s3JiQaIzVYtC+rZiPX2K+ZRg4C21kBZDNQM5+SEkp5GT5a9W/IR2oz6Q/ucifXcc7QEo5Xl5GX1BAhFI+8KaxPmn5Km5zFdH0aCvrrpDYQpH239Q+2uuUC79G5MpfSIw0zixU4VkF0WbVdHDpgQDds39cPl6cTwIDAQAB";
    public static final String h = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!#$%&'()*+,-./:;<=>?@[\\]^_`{|}~";
    public static final int i = 32;
    private String b = "";
    private String c = "";
    private String j = "";

    public static w3 b() {
        return a;
    }

    private String b(String str, int i2) {
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append(str.charAt(random.nextInt(str.length())));
        }
        return sb.toString();
    }

    public String a() throws JSONException {
        if (TextUtils.isEmpty(this.j)) {
            try {
                this.j = e8.a(d(), f6706g);
            } catch (Exception e2) {
                String str = "Session key encryption exception: " + e2.getLocalizedMessage();
                IronLog.INTERNAL.error(str);
                throw new JSONException(str);
            }
        }
        return this.j;
    }

    public String c() {
        if (TextUtils.isEmpty(this.b)) {
            this.b = f6705f;
        }
        return this.b;
    }

    public synchronized String d() {
        if (TextUtils.isEmpty(this.c)) {
            this.c = b(h, 32);
        }
        return this.c;
    }
}
