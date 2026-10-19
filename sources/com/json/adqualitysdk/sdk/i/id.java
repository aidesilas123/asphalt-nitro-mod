package com.json.adqualitysdk.sdk.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.ImageFormat;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class id {
    private static final Object a;
    private static id b = null;
    private static long c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char[] f5759d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5760e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5761f = 1;
    private final Context h;
    private final Handler l;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5762g = true;
    private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> i = new HashMap<>();
    private final HashMap<String, ArrayList<b>> j = new HashMap<>();
    private final ArrayList<c> k = new ArrayList<>();

    final class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                id.c(id.this);
            }
        }
    }

    static class b {
        private static long a = -4858642362933984997L;
        private static int b = 0;
        private static int c = 1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final IntentFilter f5763d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final BroadcastReceiver f5764e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f5765f;

        private static String a(String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (h.f63) {
                h.f64 = i;
                char[] cArr2 = new char[cArr.length];
                h.f65 = 0;
                while (true) {
                    int i2 = h.f65;
                    if (i2 < cArr.length) {
                        cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ a);
                        h.f65++;
                    } else {
                        str2 = new String(cArr2);
                    }
                }
            }
            return str2;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append(a("셉㠿㏺⪽⑶Ἠᛸᆮ୨", 63809 - View.resolveSize(0, 0)).intern());
            sb.append(this.f5764e);
            sb.append(a("섻⋢ٌ殪伓덥铓\uf87f", ExpandableListView.getPackedPositionGroup(0L) + 58271).intern());
            sb.append(this.f5763d);
            sb.append(a("셦", 35797 - View.resolveSize(0, 0)).intern());
            String string = sb.toString();
            int i = b + 83;
            c = i % 128;
            int i2 = i % 2;
            return string;
        }
    }

    static class c {
        final Intent a;
        final ArrayList<b> b;

        c(Intent intent, ArrayList<b> arrayList) {
            this.a = intent;
            this.b = arrayList;
        }
    }

    static {
        e();
        a = new Object();
        int i = f5761f + 85;
        f5760e = i % 128;
        int i2 = i % 2;
    }

    private id(Context context) {
        this.h = context;
        this.l = new a(context.getMainLooper());
    }

    private void a() {
        synchronized (this.i) {
            Iterator it = new HashMap(this.i).keySet().iterator();
            while (it.hasNext()) {
                b((BroadcastReceiver) it.next());
            }
        }
    }

    private void b(BroadcastReceiver broadcastReceiver) {
        synchronized (this.i) {
            ArrayList<IntentFilter> arrayListRemove = this.i.remove(broadcastReceiver);
            if (arrayListRemove == null) {
                return;
            }
            for (int i = 0; i < arrayListRemove.size(); i++) {
                IntentFilter intentFilter = arrayListRemove.get(i);
                for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                    String action = intentFilter.getAction(i2);
                    ArrayList<b> arrayList = this.j.get(action);
                    if (arrayList != null) {
                        int i3 = 0;
                        while (i3 < arrayList.size()) {
                            if (arrayList.get(i3).f5764e == broadcastReceiver) {
                                arrayList.remove(i3);
                                i3--;
                            }
                            i3++;
                        }
                        if (arrayList.size() <= 0) {
                            this.j.remove(action);
                        }
                    }
                }
            }
        }
    }

    static /* synthetic */ void c(id idVar) {
        int i = f5761f + 75;
        f5760e = i % 128;
        int i2 = i % 2;
        idVar.g();
        int i3 = f5761f + 25;
        f5760e = i3 % 128;
        if ((i3 % 2 != 0 ? 'V' : (char) 0) != 'V') {
            return;
        }
        int i4 = 59 / 0;
    }

    private static String d(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (h.f63) {
            h.f64 = i;
            char[] cArr2 = new char[cArr.length];
            h.f65 = 0;
            while (true) {
                int i2 = h.f65;
                if (i2 < cArr.length) {
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ c);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    static void e() {
        c = 5277579353674322125L;
        f5759d = new char[]{16, 'B', 'j', 't', 'v', 'J', 'C', 'j', 'k', 'o', 'q', 'm', 'q', 'l', '[', 16, 'I', 'k', 'e', 'f', 'i', 'i', 'B', ':', 's', 'p', 'k', 'e', 'd', 'd', '@', 'C', 'j', 'k', 'h', 'e', 'k', 'j', 'W', '6', 'I', 'k', 'l', 'p', 'j', 'g', 'C', 'G', 143, 149, 145, 144, 'n', 'k', 140, 143, 144, 138, 139, 137, 'g', 'E', 'E', 'k', 140, 143, 144, 138, 'w', '[', 'y', 'q', 'E', 'X', 'w', 232, 227, 236, 239, 237, '1', 'b', 'j', 'l', 'f', 'k', 'p', 'u', '@', Ascii.MAX, 135, 135};
    }

    private static String f(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
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
            System.arraycopy(f5759d, i, cArr, 0, i2);
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

    private void g() {
        int size;
        c[] cVarArr;
        while (true) {
            synchronized (this.i) {
                size = this.k.size();
                if (size <= 0) {
                    return;
                }
                cVarArr = new c[size];
                this.k.toArray(cVarArr);
                this.k.clear();
            }
            for (int i = 0; i < size; i++) {
                c cVar = cVarArr[i];
                for (int i2 = 0; i2 < cVar.b.size(); i2++) {
                    cVar.b.get(i2).f5764e.onReceive(this.h, cVar.a);
                }
            }
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static id m828(Context context) {
        id idVar;
        synchronized (a) {
            if (b == null) {
                b = new id(context.getApplicationContext());
            }
            idVar = b;
        }
        return idVar;
    }

    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final boolean m829(Intent intent) {
        int i;
        ArrayList<b> arrayList;
        String str;
        ArrayList arrayList2;
        long j;
        boolean z;
        int i2 = 0;
        String strIntern = d("邁ꈕ\uf5c0ࢉ婽洜ꃵ\uf3a3Ԕ壆殈뵱\uf02aϲ嚂栕믓캋t匽曳", 12984 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1))).intern();
        if (!this.f5762g) {
            return false;
        }
        synchronized (this.i) {
            String action = intent.getAction();
            String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.h.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            ?? r13 = 1;
            boolean z2 = (intent.getFlags() & 8) != 0;
            int i3 = 4;
            if (z2) {
                StringBuilder sb = new StringBuilder();
                sb.append(f(true, new int[]{0, 15, 0, 0}, "\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001").intern());
                sb.append(strResolveTypeIfNeeded);
                sb.append(f(false, new int[]{15, 8, 0, 0}, "\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0001").intern());
                sb.append(scheme);
                sb.append(d("郭\uf03f冑넺ዐ玲팗㓣鑋\uf53c囏", ImageFormat.getBitsPerPixel(0) + 24734).intern());
                sb.append(intent);
                Log.v(strIntern, sb.toString());
            }
            ArrayList<b> arrayList3 = this.j.get(intent.getAction());
            if (arrayList3 != null) {
                if (z2) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(d("邌䧃≣᳣\uf516꾂衣慚富㑫\ueefb의ꇱ", 55661 - (KeyEvent.getMaxKeyCode() >> 16)).intern());
                    sb2.append(arrayList3);
                    Log.v(strIntern, sb2.toString());
                }
                ArrayList arrayList4 = null;
                int i4 = 0;
                while (i4 < arrayList3.size()) {
                    b bVar = arrayList3.get(i4);
                    if (z2) {
                        StringBuilder sb3 = new StringBuilder();
                        int[] iArr = new int[i3];
                        iArr[i2] = 23;
                        iArr[r13] = 24;
                        iArr[2] = i2;
                        iArr[3] = 16;
                        sb3.append(f(r13, iArr, "\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000").intern());
                        sb3.append(bVar.f5763d);
                        Log.v(strIntern, sb3.toString());
                    }
                    if (bVar.f5765f) {
                        if (z2) {
                            Log.v(strIntern, d("郭ר몁⾫쒵禠\ueeb6莜㣂궓䋟\uf78e沐Ǿ뛬⯣샩疸\ueaf6鿾㓛꧁廂\uf3da棌ᶐ눮✮\udc25焹\ue63f", ImageFormat.getBitsPerPixel(i2) + 38150).intern());
                        }
                        i = i4;
                        arrayList2 = arrayList4;
                        arrayList = arrayList3;
                        str = scheme;
                    } else {
                        i = i4;
                        ArrayList arrayList5 = arrayList4;
                        arrayList = arrayList3;
                        str = scheme;
                        int iMatch = bVar.f5763d.match(action, strResolveTypeIfNeeded, scheme, data, categories, strIntern);
                        if (iMatch >= 0) {
                            if (z2) {
                                StringBuilder sb4 = new StringBuilder();
                                z = true;
                                sb4.append(f(false, new int[]{47, 27, 37, 24}, "\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0000").intern());
                                sb4.append(Integer.toHexString(iMatch));
                                Log.v(strIntern, sb4.toString());
                            } else {
                                z = true;
                            }
                            arrayList4 = arrayList5 == null ? new ArrayList() : arrayList5;
                            arrayList4.add(bVar);
                            bVar.f5765f = z;
                            j = 0;
                            i4 = i + 1;
                            arrayList3 = arrayList;
                            scheme = str;
                            i2 = 0;
                            i3 = 4;
                            r13 = 1;
                        } else {
                            arrayList2 = arrayList5;
                            if (z2) {
                                String strIntern2 = iMatch != -4 ? iMatch != -3 ? iMatch != -2 ? iMatch != -1 ? d("邸㸄취魖⨾粒蝉噼\ue587덷䈪ᆓ뽶付", 44710 - Process.getGidForName("")).intern() : d("邹칉ⵇ豟", (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 24316).intern() : f(false, new int[]{88, 4, 29, 4}, "\u0001\u0001\u0001\u0001").intern() : f(false, new int[]{74, 6, 129, 1}, "\u0001\u0001\u0000\u0001\u0001\u0000").intern() : f(false, new int[]{80, 8, 0, 8}, "\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001").intern();
                                StringBuilder sb5 = new StringBuilder();
                                j = 0;
                                sb5.append(d("郭Ꝇ\uffdd㞥不蛮\udeaaᔒⶵ斪밊\uf4f0೩䌌鯸펼\uea5d⋻窪너짲Ƣ塅邰", 14252 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1))).intern());
                                sb5.append(strIntern2);
                                Log.v(strIntern, sb5.toString());
                            }
                            arrayList4 = arrayList2;
                            i4 = i + 1;
                            arrayList3 = arrayList;
                            scheme = str;
                            i2 = 0;
                            i3 = 4;
                            r13 = 1;
                        }
                    }
                    j = 0;
                    arrayList4 = arrayList2;
                    i4 = i + 1;
                    arrayList3 = arrayList;
                    scheme = str;
                    i2 = 0;
                    i3 = 4;
                    r13 = 1;
                }
                ArrayList arrayList6 = arrayList4;
                if (arrayList6 != null) {
                    for (int i5 = 0; i5 < arrayList6.size(); i5++) {
                        ((b) arrayList6.get(i5)).f5765f = false;
                    }
                    this.k.add(new c(intent, arrayList6));
                    if (!this.l.hasMessages(1)) {
                        this.l.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized void m830() {
        int i = f5760e + 89;
        f5761f = i % 128;
        if (!(i % 2 != 0)) {
            this.f5762g = true;
        } else {
            this.f5762g = false;
        }
        a();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m831() {
        int i = f5761f + 105;
        int i2 = i % 128;
        f5760e = i2;
        int i3 = i % 2;
        this.f5762g = true;
        int i4 = i2 + 61;
        f5761f = i4 % 128;
        int i5 = i4 % 2;
    }
}
