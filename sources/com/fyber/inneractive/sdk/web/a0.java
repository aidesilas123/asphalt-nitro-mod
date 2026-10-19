package com.fyber.inneractive.sdk.web;

import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import androidx.annotation.RequiresApi;
import java.io.ByteArrayInputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class a0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Pattern f2749g = Pattern.compile("max-age=(\\d+)");
    public static final SimpleDateFormat h = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.ENGLISH);
    public final byte[] a;
    public final Map<String, String> b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f2750d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2751e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f2752f;

    public a0(byte[] bArr, Map<String, String> map, String str, String str2, int i, String str3) {
        this.a = bArr;
        this.b = map;
        this.c = str;
        this.f2750d = str2;
        this.f2751e = i;
        this.f2752f = str3;
    }

    public boolean a() {
        boolean z;
        String str;
        if (TextUtils.isEmpty(this.f2752f)) {
            return false;
        }
        loop0: while (true) {
            z = true;
            for (String str2 : this.b.keySet()) {
                if (!z) {
                    break loop0;
                }
                if (str2 == null || !str2.equalsIgnoreCase("Cache-Control")) {
                    if (str2 == null || !str2.equalsIgnoreCase("Vary")) {
                        if (str2 != null && str2.equalsIgnoreCase("Pragma")) {
                            String str3 = this.b.get(str2);
                            if (str3 != null) {
                                z = !str3.equalsIgnoreCase("no-cache");
                            }
                        } else if (str2 != null && str2.equalsIgnoreCase("Expires") && (str = this.b.get(str2)) != null) {
                            try {
                                Date date = h.parse(str);
                                if (date != null && date.getTime() + TimeUnit.MILLISECONDS.convert(1L, TimeUnit.HOURS) > System.currentTimeMillis()) {
                                    break;
                                }
                            } catch (ParseException unused) {
                            }
                        }
                    }
                    z = false;
                } else {
                    String str4 = this.b.get(str2);
                    if (str4 != null) {
                        Pattern pattern = f2749g;
                        Locale locale = Locale.ENGLISH;
                        Matcher matcher = pattern.matcher(str4.toLowerCase(locale));
                        int iA = (matcher.find() && matcher.groupCount() == 1) ? com.fyber.inneractive.sdk.util.q.a(matcher.group(1), 0) : 0;
                        if ((str4.toLowerCase(locale).contains("public") || str4.toLowerCase(locale).contains("private") || iA > TimeUnit.SECONDS.convert(1L, TimeUnit.HOURS)) && !str4.toLowerCase(locale).contains("no-") && !str4.toLowerCase(locale).contains("must-")) {
                            break;
                        }
                        z = false;
                    } else {
                        continue;
                    }
                }
            }
        }
        return z;
    }

    @RequiresApi(api = 21)
    public WebResourceResponse b() {
        return new WebResourceResponse(this.c, this.f2750d, this.f2751e, this.f2752f, this.b, new ByteArrayInputStream(this.a));
    }
}
