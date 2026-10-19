package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.ViewConfiguration;
import com.json.b4;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class ix {
    private static Handler a = null;
    private static long b = 7768279826469623468L;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5819d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private hx f5820e;

    public interface a {
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        void mo884(String str);
    }

    final class b extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5821d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ a f5822e;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ String f5824d;

            a(String str) {
                this.f5824d = str;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                b.this.f5822e.mo884(this.f5824d);
            }
        }

        b(String str, a aVar) {
            this.f5821d = str;
            this.f5822e = aVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            t.m1046(new a(ix.this.m879(this.f5821d)));
        }
    }

    final class c extends il {
        c(d dVar) {
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
        }
    }

    public interface d {
        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        void mo885();
    }

    public interface e {
        /* JADX INFO: renamed from: ﾇ */
        void mo850(boolean z);
    }

    final class f extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5826d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ String f5827e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ d f5828f;

        f(String str, String str2, d dVar) {
            this.f5826d = str;
            this.f5827e = str2;
            this.f5828f = dVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            ix.this.m874(this.f5826d, this.f5827e);
            ix.b(ix.this, this.f5828f);
        }
    }

    final class g extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5830d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ long f5831e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ e f5832f;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ boolean f5834d;

            a(boolean z) {
                this.f5834d = z;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                g.this.f5832f.mo850(this.f5834d);
            }
        }

        g(String str, long j, e eVar) {
            this.f5830d = str;
            this.f5831e = j;
            this.f5832f = eVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            t.m1046(new a(ix.this.m876(this.f5830d, this.f5831e)));
        }
    }

    final class h extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5836d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ String f5837e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ d f5838f;

        h(String str, String str2, d dVar) {
            this.f5836d = str;
            this.f5837e = str2;
            this.f5838f = dVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            ix.this.m880(this.f5836d, this.f5837e);
            ix.b(ix.this, this.f5838f);
        }
    }

    public ix(Context context, String str, String str2) {
        this.f5820e = new hx(context, str, str2);
    }

    private static String a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(c("ᚂ針\u18f7莈બ땈㱲꜃⸥훝凫", (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 34588).intern());
        String string = sb.toString();
        int i = c + 21;
        f5819d = i % 128;
        if (i % 2 != 0) {
            return string;
        }
        int i2 = 86 / 0;
        return string;
    }

    static /* synthetic */ void b(ix ixVar, d dVar) {
        int i = f5819d + 121;
        c = i % 128;
        int i2 = i % 2;
        ixVar.d(dVar);
        int i3 = f5819d + 79;
        c = i3 % 128;
        if ((i3 % 2 != 0 ? 'V' : '\b') != '\b') {
            int i4 = 6 / 0;
        }
    }

    private static String c(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (com.json.adqualitysdk.sdk.i.h.f63) {
            com.json.adqualitysdk.sdk.i.h.f64 = i;
            char[] cArr2 = new char[cArr.length];
            com.json.adqualitysdk.sdk.i.h.f65 = 0;
            while (true) {
                int i2 = com.json.adqualitysdk.sdk.i.h.f65;
                if (i2 < cArr.length) {
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (com.json.adqualitysdk.sdk.i.h.f64 * i2))) ^ b);
                    com.json.adqualitysdk.sdk.i.h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    private void d(d dVar) {
        int i = f5819d + 11;
        c = i % 128;
        if (!(i % 2 == 0)) {
            int i2 = 95 / 0;
            if (dVar == null) {
                return;
            }
        } else if (dVar == null) {
            return;
        }
        t.m1046(new c(dVar));
        int i3 = f5819d + 45;
        c = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static Handler m872() {
        Handler handler;
        synchronized (ix.class) {
            if (a == null) {
                HandlerThread handlerThread = new HandlerThread(c("ᛧ此\ued8f濽\ue079抡\ue4d7祲ﮗ緍︁炱\uf2d1眂즿", 32174 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))).intern());
                handlerThread.start();
                a = new Handler(handlerThread.getLooper());
            }
            handler = a;
        }
        return handler;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m873(String str) {
        int i = f5819d + 39;
        c = i % 128;
        int i2 = i % 2;
        this.f5820e.m818(str);
        int i3 = f5819d + 91;
        c = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m874(String str, String str2) {
        int i = c + 99;
        f5819d = i % 128;
        int i2 = i % 2;
        this.f5820e.m820(str, str2);
        int i3 = c + 35;
        f5819d = i3 % 128;
        if ((i3 % 2 == 0 ? (char) 15 : 'O') != 'O') {
            int i4 = 25 / 0;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m875(String str, a aVar) {
        m872().post(new b(str, aVar));
        int i = c + 49;
        f5819d = i % 128;
        int i2 = i % 2;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean m876(String str, long j) {
        int i = f5819d + 95;
        c = i % 128;
        int i2 = i % 2;
        String strM879 = m879(a(str));
        if ((strM879 != null ? (char) 24 : '4') != 24) {
            return true;
        }
        int i3 = c + 11;
        f5819d = i3 % 128;
        int i4 = i3 % 2;
        return (((jt.m948() - Long.parseLong(strM879)) > j ? 1 : ((jt.m948() - Long.parseLong(strM879)) == j ? 0 : -1)) >= 0 ? b4.R : '3') == '=';
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m877(String str, long j, e eVar) {
        m872().post(new g(str, j, eVar));
        int i = c + 49;
        f5819d = i % 128;
        int i2 = i % 2;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m878(String str, String str2, d dVar) {
        m872().post(new h(str, str2, dVar));
        int i = f5819d + 109;
        c = i % 128;
        if ((i % 2 != 0 ? '&' : (char) 2) == 2) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m879(String str) {
        int i = f5819d + 99;
        c = i % 128;
        int i2 = i % 2;
        String strM817 = this.f5820e.m817(str);
        int i3 = c + 33;
        f5819d = i3 % 128;
        if ((i3 % 2 == 0 ? (char) 14 : 'K') != 14) {
            return strM817;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m880(String str, String str2) {
        int i = c + 31;
        f5819d = i % 128;
        if (i % 2 == 0) {
            m874(str, str2);
            m874(a(str), Long.toString(jt.m948()));
            throw null;
        }
        m874(str, str2);
        m874(a(str), Long.toString(jt.m948()));
        int i2 = c + 73;
        f5819d = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m881(String str, String str2, d dVar) {
        m872().post(new f(str, str2, dVar));
        int i = f5819d + 73;
        c = i % 128;
        int i2 = i % 2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int m882(String str) {
        int i = f5819d + 61;
        c = i % 128;
        if ((i % 2 != 0 ? '&' : (char) 18) == 18) {
            return this.f5820e.m821(str);
        }
        this.f5820e.m821(str);
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final HashMap<String, String> m883(String str, int i) {
        int i2 = f5819d + 63;
        c = i2 % 128;
        if (i2 % 2 != 0) {
            this.f5820e.m819(str, i);
            throw null;
        }
        HashMap<String, String> mapM819 = this.f5820e.m819(str, i);
        int i3 = c + 119;
        f5819d = i3 % 128;
        int i4 = i3 % 2;
        return mapM819;
    }
}
