package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.i.ju;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class jj {
    private static jj a;
    private Map<String, b> c;
    private Map<String, b> b = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f5911d = new Handler(Looper.getMainLooper());

    final class a implements ju.a<b> {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ju.a
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ b mo339(JSONObject jSONObject, String str) {
            return b.m915(jSONObject.optString(str));
        }
    }

    public enum b {
        a,
        f128,
        f127;

        private static char[] c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static char f5912d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5913e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5914f = 1;

        static {
            e();
            int i = f5913e + 1;
            f5914f = i % 128;
            if (i % 2 == 0) {
                throw null;
            }
        }

        private static String a(byte b2, String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (g.f56) {
                char[] cArr2 = c;
                char c2 = f5912d;
                char[] cArr3 = new char[i];
                if (i % 2 != 0) {
                    i--;
                    cArr3[i] = (char) (cArr[i] - b2);
                }
                if (i > 1) {
                    g.f60 = 0;
                    while (true) {
                        int i2 = g.f60;
                        if (i2 >= i) {
                            break;
                        }
                        g.f58 = cArr[i2];
                        g.f62 = cArr[g.f60 + 1];
                        if (g.f58 == g.f62) {
                            cArr3[g.f60] = (char) (g.f58 - b2);
                            cArr3[g.f60 + 1] = (char) (g.f62 - b2);
                        } else {
                            g.f59 = g.f58 / c2;
                            g.f55 = g.f58 % c2;
                            g.f61 = g.f62 / c2;
                            g.f57 = g.f62 % c2;
                            if (g.f55 == g.f57) {
                                g.f59 = ((g.f59 + c2) - 1) % c2;
                                g.f61 = ((g.f61 + c2) - 1) % c2;
                                int i3 = (g.f59 * c2) + g.f55;
                                int i4 = (g.f61 * c2) + g.f57;
                                int i5 = g.f60;
                                cArr3[i5] = cArr2[i3];
                                cArr3[i5 + 1] = cArr2[i4];
                            } else if (g.f59 == g.f61) {
                                g.f55 = ((g.f55 + c2) - 1) % c2;
                                g.f57 = ((g.f57 + c2) - 1) % c2;
                                int i6 = (g.f59 * c2) + g.f55;
                                int i7 = (g.f61 * c2) + g.f57;
                                int i8 = g.f60;
                                cArr3[i8] = cArr2[i6];
                                cArr3[i8 + 1] = cArr2[i7];
                            } else {
                                int i9 = (g.f59 * c2) + g.f57;
                                int i10 = (g.f61 * c2) + g.f55;
                                int i11 = g.f60;
                                cArr3[i11] = cArr2[i9];
                                cArr3[i11 + 1] = cArr2[i10];
                            }
                        }
                        g.f60 += 2;
                    }
                }
                str2 = new String(cArr3);
            }
            return str2;
        }

        static void e() {
            f5912d = (char) 5;
            c = new char[]{'n', 'o', 'a', 't', 'l', 'r', 'N', 'O', 'E', 'T', 'R', 'A', 'S', 'P', '_', 'L', 'Y', 'C', 'U', 'H', 'I', 'p', 'q', 's', 'u'};
        }

        public static b valueOf(String str) {
            int i = f5914f + 81;
            f5913e = i % 128;
            int i2 = i % 2;
            b bVar = (b) Enum.valueOf(b.class, str);
            int i3 = f5914f + 57;
            f5913e = i3 % 128;
            if ((i3 % 2 != 0 ? (char) 24 : (char) 15) == 15) {
                return bVar;
            }
            throw null;
        }

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static b[] valuesCustom() {
            int i = f5914f + 107;
            f5913e = i % 128;
            int i2 = i % 2;
            b[] bVarArr = (b[]) values().clone();
            int i3 = f5914f + 125;
            f5913e = i3 % 128;
            if (i3 % 2 != 0) {
                throw null;
            }
            return bVarArr;
        }

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public static b m915(String str) {
            if (!TextUtils.isEmpty(str)) {
                int i = f5913e + 75;
                f5914f = i % 128;
                if ((i % 2 == 0 ? '-' : 'B') == '-') {
                    str.hashCode();
                    throw null;
                }
                int iHashCode = str.hashCode();
                byte b2 = -1;
                if (iHashCode != 3642) {
                    if (iHashCode == 96921) {
                        if (str.equals(a((byte) (62 - (ViewConfiguration.getKeyRepeatDelay() >> 16)), "\u0003\u0004ª", 3 - TextUtils.indexOf("", "", 0, 0)).intern())) {
                            int i2 = f5914f + 73;
                            f5913e = i2 % 128;
                            int i3 = i2 % 2;
                            b2 = 1;
                        }
                    } else if (iHashCode == 109261 && str.equals(a((byte) (TextUtils.getCapsMode("", 0, 0) + 49), "\u0001\u0002\u009f", 2 - TextUtils.lastIndexOf("", '0', 0, 0)).intern())) {
                        b2 = 0;
                    }
                } else if (str.equals(a((byte) ((ViewConfiguration.getMaximumFlingVelocity() >> 16) + 73), "\t\u0000", 2 - (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern())) {
                    int i4 = f5913e + 27;
                    f5914f = i4 % 128;
                    int i5 = i4 % 2;
                    b2 = 2;
                }
                if (b2 == 0) {
                    b bVar = a;
                    int i6 = f5914f + 63;
                    f5913e = i6 % 128;
                    if (i6 % 2 == 0) {
                        return bVar;
                    }
                    throw null;
                }
                if (b2 == 1) {
                    return f128;
                }
                if (b2 == 2) {
                    return f127;
                }
            }
            return null;
        }
    }

    final class c extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5915d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ b f5916e;

        c(String str, b bVar) {
            this.f5915d = str;
            this.f5916e = bVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            synchronized (jj.this) {
                jj.this.b.put(this.f5915d, this.f5916e);
            }
        }
    }

    private synchronized Map<String, b> b() {
        return new HashMap(this.b);
    }

    private synchronized b c(Activity activity) {
        if (activity != null) {
            String name = activity.getClass().getName();
            if (b().containsKey(name)) {
                return b().get(name);
            }
            if (d().containsKey(name)) {
                return d().get(name);
            }
        }
        return b.m915(ao.m303().mo310());
    }

    private synchronized Map<String, b> d() {
        if (this.c == null) {
            this.c = new HashMap();
            JSONObject jSONObjectMo309 = ao.m303().mo309();
            if (jSONObjectMo309 != null) {
                this.c = ju.m958(jSONObjectMo309, new a());
            }
        }
        return this.c;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static synchronized jj m911() {
        if (a == null) {
            a = new jj();
        }
        return a;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized boolean m912(Activity activity) {
        return b.f128 == c(activity);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized boolean m913(Activity activity) {
        return b.f127 == c(activity);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m914(String str, b bVar) {
        this.f5911d.post(new c(str, bVar));
    }
}
