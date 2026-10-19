package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: MimeDetector.java */
/* JADX INFO: loaded from: classes2.dex */
public class n {
    private static volatile n c;
    private Map<String, String> a;
    private volatile boolean b = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f1084d;

    private n(Context context) {
        if (context != null && this.f1084d == null) {
            this.f1084d = context.getApplicationContext();
            a();
        }
        this.f1084d = context;
    }

    static n a(Context context) {
        if (c == null) {
            synchronized (n.class) {
                if (c == null) {
                    c = new n(context);
                }
            }
        }
        return c;
    }

    public static String a(Context context, String str) {
        if (str != null) {
            try {
                if (str.startsWith(ProxyConfig.MATCH_HTTP) && str.contains("?")) {
                    str = str.split("\\?")[0];
                    if (str.endsWith("/")) {
                        str = str.substring(0, str.length() - 1);
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return a(context).a(str);
    }

    private void a() {
        if (this.f1084d == null || this.b) {
            return;
        }
        synchronized (this) {
            if (!this.b) {
                List list = (List) AccessController.doPrivileged(new PrivilegedAction<List<String>>() { // from class: com.bytedance.sdk.component.utils.n.1
                    @Override // java.security.PrivilegedAction
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public List<String> run() {
                        BufferedReader bufferedReader;
                        InputStream inputStream = null;
                        try {
                            ArrayList arrayList = new ArrayList();
                            InputStream inputStreamOpen = n.this.f1084d.getAssets().open("tt_mime_type.pro");
                            try {
                                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen));
                                while (true) {
                                    try {
                                        String line = bufferedReader.readLine();
                                        if (line == null) {
                                            break;
                                        }
                                        if (!TextUtils.isEmpty(line)) {
                                            arrayList.add(line);
                                        }
                                    } catch (Throwable unused) {
                                        inputStream = inputStreamOpen;
                                        try {
                                            List<String> listEmptyList = Collections.emptyList();
                                            if (inputStream != null) {
                                                try {
                                                    inputStream.close();
                                                } catch (Throwable unused2) {
                                                }
                                            }
                                            if (bufferedReader != null) {
                                                try {
                                                    bufferedReader.close();
                                                } catch (Throwable unused3) {
                                                }
                                            }
                                            return listEmptyList;
                                        } finally {
                                        }
                                    }
                                }
                                if (inputStreamOpen != null) {
                                    try {
                                        inputStreamOpen.close();
                                    } catch (Throwable unused4) {
                                    }
                                }
                                try {
                                    bufferedReader.close();
                                } catch (Throwable unused5) {
                                }
                                return arrayList;
                            } catch (Throwable unused6) {
                                bufferedReader = null;
                            }
                        } catch (Throwable unused7) {
                            bufferedReader = null;
                        }
                    }
                });
                this.a = new HashMap(list.size());
                String strSubstring = "";
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str = strSubstring + ((String) it.next());
                    if (str.endsWith("\\")) {
                        strSubstring = str.substring(0, str.length() - 1);
                    } else {
                        f(str);
                        strSubstring = "";
                    }
                }
                if (!strSubstring.isEmpty()) {
                    f(strSubstring);
                }
                this.b = true;
            }
        }
    }

    private void a(String str, String str2) {
        if (str == null || str.isEmpty() || str2 == null || str2.isEmpty() || this.a.containsKey(str)) {
            return;
        }
        this.a.put(str, str2);
    }

    private static boolean a(char c2) {
        return c2 > ' ' && c2 < 127 && "()<>@,;:/[]?=\\\"".indexOf(c2) < 0;
    }

    private static String b(String str) {
        int iIndexOf = str.indexOf(47);
        int iIndexOf2 = str.indexOf(59);
        if (iIndexOf < 0) {
            return null;
        }
        String strTrim = str.substring(0, iIndexOf).trim();
        Locale locale = Locale.ENGLISH;
        String lowerCase = strTrim.toLowerCase(locale);
        if (!c(lowerCase)) {
            return null;
        }
        int i = iIndexOf + 1;
        String lowerCase2 = (iIndexOf2 < 0 ? str.substring(i) : str.substring(i, iIndexOf2)).trim().toLowerCase(locale);
        if (!c(lowerCase2)) {
            return null;
        }
        StringBuilder sb = new StringBuilder(lowerCase.length() + lowerCase2.length() + 1);
        sb.append(lowerCase);
        sb.append('/');
        sb.append(lowerCase2);
        return sb.toString();
    }

    private static boolean c(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (!a(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private String d(String str) {
        String str2;
        String strE = e(str);
        if (strE.isEmpty()) {
            return null;
        }
        a();
        Map<String, String> map = this.a;
        if (map == null || map.isEmpty()) {
            return null;
        }
        do {
            str2 = this.a.get(strE);
            if (str2 == null) {
                strE = e(strE);
            }
            if (str2 != null) {
                break;
            }
        } while (!strE.isEmpty());
        return str2;
    }

    private static String e(String str) {
        int iIndexOf;
        return (str == null || str.isEmpty() || (iIndexOf = str.indexOf(46)) < 0 || iIndexOf >= str.length() + (-1)) ? "" : str.substring(iIndexOf + 1);
    }

    private void f(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return;
        }
        if (strTrim.charAt(0) == '#') {
            return;
        }
        String strReplaceAll = strTrim.replaceAll("\\s*#.*", "");
        if (strReplaceAll.indexOf(61) <= 0) {
            String[] strArrSplit = strReplaceAll.split("\\s+");
            for (int i = 1; i < strArrSplit.length; i++) {
                a(strArrSplit[i], strArrSplit[0]);
            }
            return;
        }
        Matcher matcher = Pattern.compile("\\btype=(\"\\p{Graph}+?/\\p{Graph}+?\"|\\p{Graph}+/\\p{Graph}+\\b)").matcher(strReplaceAll);
        if (matcher.find()) {
            String strSubstring = matcher.group().substring(5);
            if (strSubstring.charAt(0) == '\"') {
                strSubstring = strSubstring.substring(1, strSubstring.length() - 1);
            }
            Matcher matcher2 = Pattern.compile("\\bexts=(\"[\\p{Graph}|\\p{Blank}]+?\"|\\p{Graph}+\\b)").matcher(strReplaceAll);
            if (matcher2.find()) {
                String strSubstring2 = matcher2.group().substring(5);
                if (strSubstring2.charAt(0) == '\"') {
                    strSubstring2 = strSubstring2.substring(1, strSubstring2.length() - 1);
                }
                for (String str2 : strSubstring2.split("[\\p{Blank}|\\p{Punct}]+")) {
                    a(str2, strSubstring);
                }
            }
        }
    }

    public final String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String strD = d(str);
        if (TextUtils.isEmpty(strD)) {
            return null;
        }
        return b(strD);
    }
}
