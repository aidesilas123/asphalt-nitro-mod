package com.json.adqualitysdk.sdk.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class iu extends BroadcastReceiver {
    private static String a = null;
    private static long b = 0;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5800d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f5801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5802f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Set<in> f5803g = new HashSet();

    final class a extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static char[] f5804d = {'<', 'y', '}', 'z', 'w', 'x', 132, 143, 137, 129, 130, 130, 129, '~', 'w', '|', 129, 129, '|', 'k', 129, 161, 161, 156, '{', 132, 159, 156, 129, '|', 153, 159, 163, 158, 156, 154, 'i', 206, 165, 161, 201, 206, 206, 201, 196, 203, 206, 207, 207, 206, 214, 172, 161, 197, 196, 199, 202, 198, 185, 185, 204, 213, 211, '7', 'n', 'Y', 'Y', 'n', 'n', 'i', 'd', 'k', 'n', 'o', 'o', 'n', 'v', 149, 295, 287, 288, 288, 287, 284, 277, 282, 287, 287, 282, 242, 246, 287, 289, 292, 294, 285, 282, 248, 248, 287, 248, 250, 254, 247, 284, 284, 279, 271, 290, 288, 290, 271, 299, 300, 221, 299, 294, 221, 303, 300, 303, 303, 258, 290, 307, 294};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5805e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5806f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private /* synthetic */ Intent f5807g;
        private /* synthetic */ Context h;

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.iu$a$a, reason: collision with other inner class name */
        final class C0347a extends il {
            C0347a() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                iu.f(iu.this, false);
                iu.this.m861();
            }
        }

        final class b extends il {
            b() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                iu.f(iu.this, true);
                iu.this.m859();
            }
        }

        final class c extends il {
            c() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                iu.this.m861();
                iu.f(iu.this, false);
            }
        }

        a(Intent intent, Context context) {
            this.f5807g = intent;
            this.h = context;
        }

        private static String b(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
            String str2;
            Object bytes = str;
            if (str != null) {
                bytes = str.getBytes("ISO-8859-1");
            }
            byte[] bArr = (byte[]) bytes;
            synchronized (i.f67) {
                int i = iArr[0];
                int i2 = iArr[1];
                int i3 = iArr[2];
                int i4 = iArr[3];
                char[] cArr = new char[i2];
                System.arraycopy(f5804d, i, cArr, 0, i2);
                if (bArr != null) {
                    char[] cArr2 = new char[i2];
                    i.f68 = 0;
                    char c2 = 0;
                    while (true) {
                        int i5 = i.f68;
                        if (i5 >= i2) {
                            break;
                        }
                        if (bArr[i5] == 1) {
                            cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c2);
                        } else {
                            cArr2[i5] = (char) ((cArr[i5] << 1) - c2);
                        }
                        c2 = cArr2[i5];
                        i.f68 = i5 + 1;
                    }
                    cArr = cArr2;
                }
                if (i4 > 0) {
                    char[] cArr3 = new char[i2];
                    System.arraycopy(cArr, 0, cArr3, 0, i2);
                    int i6 = i2 - i4;
                    System.arraycopy(cArr3, 0, cArr, i6, i4);
                    System.arraycopy(cArr3, i4, cArr, 0, i6);
                }
                if (z) {
                    char[] cArr4 = new char[i2];
                    i.f68 = 0;
                    while (true) {
                        int i7 = i.f68;
                        if (i7 >= i2) {
                            break;
                        }
                        cArr4[i7] = cArr[(i2 - i7) - 1];
                        i.f68 = i7 + 1;
                    }
                    cArr = cArr4;
                }
                if (i3 > 0) {
                    i.f68 = 0;
                    while (true) {
                        int i8 = i.f68;
                        if (i8 >= i2) {
                            break;
                        }
                        cArr[i8] = (char) (cArr[i8] - iArr[2]);
                        i.f68 = i8 + 1;
                    }
                }
                str2 = new String(cArr);
            }
            return str2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x00b5, code lost:
        
            if (r15.f5807g.getBooleanExtra(b(false, new int[]{63, 14, 0, 0}, "\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001").intern(), false) != false) goto L20;
         */
        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void mo225() {
            /*
                Method dump skipped, instruction units count: 298
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.iu.a.mo225():void");
        }
    }

    static {
        a();
        a = e("㠭酎㡣Ⓒ늅\ud9d7ׇ┉\uee0e\u1ae3\uf39c퉟铁\uf304ꕏ\ue83d몛\ua95c峬蛱慴鿻皶岒", TextUtils.getCapsMode("", 0, 0) + 1).intern();
        int i = f5800d + 123;
        c = i % 128;
        if (!(i % 2 == 0)) {
            int i2 = 23 / 0;
        }
    }

    public iu(Context context) {
        this.f5801e = context.getApplicationContext();
        m.m1019(a, e("ո䡜ԫﶪ䢒⏀㐾ᓳ퍝쏭ই\ue3d6ꦕ⨇弌\ud9c0蟮灄\ua6f9뜊尫䛾買浮⨤괡퉕䒥Õ\uf36e㠊㈗\ud91e\ud9d5", -TextUtils.lastIndexOf("", '0', 0, 0)).intern());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(e("撓읁擲犼\ue24b褉孹箲늰䳷ꍝ貙졥ꔏ\uf581뛍\ue614ｙయ\ud841㶍직♒ȕ䮡∋碪⯓愒籌鋬嵧룞嚹ꔲ蜷횲ꃼﾊ꣮", (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))).intern());
        this.f5801e.registerReceiver(this, intentFilter);
    }

    static void a() {
        b = -3220641899879615085L;
    }

    private synchronized Set<in> b() {
        HashSet hashSet;
        hashSet = new HashSet(this.f5803g);
        int i = f5800d + 31;
        c = i % 128;
        int i2 = i % 2;
        return hashSet;
    }

    private synchronized void c(boolean z) {
        int i = f5800d;
        int i2 = i + 45;
        c = i2 % 128;
        if (i2 % 2 != 0) {
            this.f5802f = z;
            int i3 = 71 / 0;
        } else {
            this.f5802f = z;
        }
        int i4 = i + 99;
        c = i4 % 128;
        int i5 = i4 % 2;
    }

    private static NetworkInfo d(Context context) {
        if (context != null) {
            int i = c + 65;
            f5800d = i % 128;
            return ((ConnectivityManager) context.getSystemService(((i % 2 == 0 ? 'B' : '3') != '3' ? e("\uf21c忂\uf27f\uea3e訝\ue155\ue34e쎙\u2435푾쬛㓵廲㶀鷗ັ", TextUtils.indexOf("", "") + 0) : e("\uf21c忂\uf27f\uea3e訝\ue155\ue34e쎙\u2435푾쬛㓵廲㶀鷗ັ", TextUtils.indexOf("", "") + 1)).intern())).getActiveNetworkInfo();
        }
        int i2 = c + 121;
        f5800d = i2 % 128;
        if (i2 % 2 != 0) {
            return null;
        }
        int i3 = 54 / 0;
        return null;
    }

    private static String e(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f54) {
            char[] cArrM713 = f.m713(b, cArr, i);
            f.f52 = 4;
            while (true) {
                int i2 = f.f52;
                if (i2 < cArrM713.length) {
                    f.f53 = i2 - 4;
                    cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * b));
                    f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    static /* synthetic */ void f(iu iuVar, boolean z) {
        int i = f5800d + 15;
        c = i % 128;
        boolean z2 = i % 2 != 0;
        iuVar.c(z);
        if (!z2) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ String g() {
        int i = c + 101;
        int i2 = i % 128;
        f5800d = i2;
        int i3 = i % 2;
        String str = a;
        int i4 = i2 + 15;
        c = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    private static boolean h(Context context) {
        int i = c + 65;
        f5800d = i % 128;
        if (i % 2 == 0) {
            d(context);
            throw null;
        }
        NetworkInfo networkInfoD = d(context);
        if (!(networkInfoD != null) || !networkInfoD.isConnected()) {
            int i2 = f5800d + 119;
            c = i2 % 128;
            int i3 = i2 % 2;
            return false;
        }
        String str = a;
        StringBuilder sb = new StringBuilder();
        sb.append(e("⬧즒⭩籤\uf013魁它筍ﴄ䈿넊豨", (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))).intern());
        sb.append(networkInfoD.getTypeName());
        sb.append(e("⁊ꮤ\u206aṔ땲\ude3b㡭ᢺ\uf668„\uf463\uefcb買짫ꋢ", -TextUtils.lastIndexOf("", '0', 0)).intern());
        m.m1024(str, sb.toString());
        return true;
    }

    static /* synthetic */ boolean i(iu iuVar, Context context) {
        int i = f5800d + 13;
        c = i % 128;
        int i2 = i % 2;
        boolean zH = h(context);
        int i3 = c + 49;
        f5800d = i3 % 128;
        if ((i3 % 2 == 0 ? '*' : '\r') != '*') {
            return zH;
        }
        throw null;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        t.m1044(new a(intent, context));
        int i = f5800d + 57;
        c = i % 128;
        if (i % 2 == 0) {
            return;
        }
        int i2 = 24 / 0;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final synchronized boolean m858() {
        boolean z;
        int i = c;
        int i2 = i + 125;
        f5800d = i2 % 128;
        int i3 = i2 % 2;
        z = this.f5802f;
        int i4 = i + 43;
        f5800d = i4 % 128;
        int i5 = i4 % 2;
        return z;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m859() {
        int i = f5800d + 21;
        c = i % 128;
        int i2 = i % 2;
        Iterator<in> it = b().iterator();
        while (true) {
            if (!it.hasNext()) {
                int i3 = f5800d + 35;
                c = i3 % 128;
                int i4 = i3 % 2;
                return;
            } else {
                int i5 = c + 95;
                f5800d = i5 % 128;
                int i6 = i5 % 2;
                it.next().mo267();
            }
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized void m860(in inVar) {
        int i = f5800d + 45;
        c = i % 128;
        int i2 = i % 2;
        this.f5803g.remove(inVar);
        int i3 = c + 53;
        f5800d = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m861() {
        Iterator<in> it;
        int i = c + 57;
        f5800d = i % 128;
        if (i % 2 == 0) {
            it = b().iterator();
            int i2 = 69 / 0;
        } else {
            it = b().iterator();
        }
        while (it.hasNext()) {
            int i3 = f5800d + 49;
            c = i3 % 128;
            boolean z = i3 % 2 != 0;
            it.next();
            if (z) {
                int i4 = 29 / 0;
            }
            int i5 = f5800d + 85;
            c = i5 % 128;
            int i6 = i5 % 2;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m862() {
        int i = c + 45;
        f5800d = i % 128;
        if (i % 2 == 0) {
            this.f5801e.unregisterReceiver(this);
            throw null;
        }
        this.f5801e.unregisterReceiver(this);
        int i2 = f5800d + 117;
        c = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m863(in inVar) {
        int i = c + 49;
        f5800d = i % 128;
        int i2 = i % 2;
        this.f5803g.add(inVar);
        int i3 = f5800d + 21;
        c = i3 % 128;
        if (!(i3 % 2 == 0)) {
            throw null;
        }
    }
}
