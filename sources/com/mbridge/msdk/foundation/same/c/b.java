package com.mbridge.msdk.foundation.same.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.c.d;
import com.mbridge.msdk.foundation.same.c.e;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ae;
import com.mbridge.msdk.foundation.tools.af;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: compiled from: CommonImageLoader.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private static b a;
    private com.mbridge.msdk.foundation.same.e.b b;
    private com.mbridge.msdk.foundation.same.a.c<String, Bitmap> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinkedHashMap<String, List<c>> f7105d = new LinkedHashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f7106e = new Handler(Looper.getMainLooper()) { // from class: com.mbridge.msdk.foundation.same.c.b.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            try {
                int i = message.what;
                if (i == 1) {
                    String string = message.getData().getString("message_key");
                    Bitmap bitmapA = a.a(message.getData().getString("message_bitmap"));
                    b.this.a(string, bitmapA);
                    LinkedList<c> linkedList = (LinkedList) b.this.f7105d.get(string);
                    if (linkedList != null) {
                        for (c cVar : linkedList) {
                            if (cVar != null) {
                                cVar.onSuccessLoad(bitmapA, string);
                            }
                        }
                    }
                    b.this.f7105d.remove(string);
                    return;
                }
                if (i == 2) {
                    String string2 = message.getData().getString("message_key");
                    String string3 = message.getData().getString("message_message");
                    LinkedList<c> linkedList2 = (LinkedList) b.this.f7105d.get(string2);
                    if (linkedList2 != null) {
                        for (c cVar2 : linkedList2) {
                            if (cVar2 != null) {
                                cVar2.onFailedLoad(string3, string2);
                            }
                        }
                    }
                    b.this.f7105d.remove(string2);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    };

    private b(Context context) {
        this.b = new com.mbridge.msdk.foundation.same.e.b(context);
        com.mbridge.msdk.c.e eVarG = com.mbridge.msdk.c.f.a().g(com.mbridge.msdk.foundation.controller.b.d().h());
        int iZ = eVarG != null ? eVarG.z() : 10;
        this.c = new com.mbridge.msdk.foundation.same.a.a(((int) Runtime.getRuntime().maxMemory()) / (iZ > 0 ? iZ : 10));
    }

    public static b a(Context context) {
        if (a == null) {
            a = new b(context);
        }
        return a;
    }

    private e a(String str, String str2, String str3, boolean z, boolean z2) {
        e.a aVar = new e.a() { // from class: com.mbridge.msdk.foundation.same.c.b.5
            @Override // com.mbridge.msdk.foundation.same.c.e.a
            public final void a(String str4, String str5) {
                Message messageObtainMessage = b.this.f7106e.obtainMessage();
                messageObtainMessage.what = 1;
                Bundle bundle = new Bundle();
                bundle.putString("message_key", str4);
                bundle.putString("message_bitmap", str5);
                messageObtainMessage.setData(bundle);
                b.this.f7106e.sendMessage(messageObtainMessage);
            }

            @Override // com.mbridge.msdk.foundation.same.c.e.a
            public final void b(String str4, String str5) {
                Message messageObtainMessage = b.this.f7106e.obtainMessage();
                messageObtainMessage.what = 2;
                Bundle bundle = new Bundle();
                bundle.putString("message_key", str4);
                bundle.putString("message_message", str5);
                messageObtainMessage.setData(bundle);
                b.this.f7106e.sendMessage(messageObtainMessage);
            }
        };
        e eVar = new e(str, str2, str3);
        eVar.a(z);
        eVar.a(aVar);
        return eVar;
    }

    static /* synthetic */ void a(b bVar, final String str, final Bitmap bitmap, final c cVar) {
        if (MBridgeConstans.DEBUG) {
            aa.a("ImageLoader", "handler image load success event");
        }
        if (cVar == null) {
            return;
        }
        bVar.f7106e.post(new Runnable() { // from class: com.mbridge.msdk.foundation.same.c.b.3
            @Override // java.lang.Runnable
            public final void run() {
                c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.onSuccessLoad(bitmap, str);
                }
            }
        });
    }

    static /* synthetic */ void a(b bVar, final String str, final String str2, final c cVar) {
        if (MBridgeConstans.DEBUG) {
            aa.a("ImageLoader", "handler image load failed event");
        }
        if (cVar == null) {
            return;
        }
        bVar.f7106e.post(new Runnable() { // from class: com.mbridge.msdk.foundation.same.c.b.4
            @Override // java.lang.Runnable
            public final void run() {
                c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.onFailedLoad(str2, str);
                }
            }
        });
    }

    static /* synthetic */ void a(b bVar, final String str, String str2, String str3, boolean z, boolean z2, final c cVar, final h hVar) {
        if (bVar.f7105d.containsKey(str2)) {
            LinkedList linkedList = (LinkedList) bVar.f7105d.get(str2);
            if (linkedList == null || linkedList.contains(cVar)) {
                return;
            }
            linkedList.add(cVar);
            return;
        }
        LinkedList linkedList2 = new LinkedList();
        linkedList2.add(cVar);
        bVar.f7105d.put(str2, linkedList2);
        e.a aVar = new e.a() { // from class: com.mbridge.msdk.foundation.same.c.b.6
            @Override // com.mbridge.msdk.foundation.same.c.e.a
            public final void a(String str4, String str5) {
                Bitmap bitmapA = a.a(str5);
                if (bitmapA == null || bitmapA.isRecycled()) {
                    b.a(b.this, str, "bitmap file not found", cVar);
                    return;
                }
                h hVar2 = hVar;
                if (hVar2 == null) {
                    b.a(b.this, str, bitmapA, cVar);
                    return;
                }
                try {
                    Bitmap bitmapA2 = hVar2.a(bitmapA);
                    if (bitmapA2 != null) {
                        b.a(b.this, str, bitmapA2, cVar);
                    } else {
                        b.a(b.this, str, "bitmap transform failed", cVar);
                    }
                } catch (Exception unused) {
                    b.a(b.this, str, "bitmap transform failed", cVar);
                }
            }

            @Override // com.mbridge.msdk.foundation.same.c.e.a
            public final void b(String str4, String str5) {
                b.a(b.this, str, str5, cVar);
            }
        };
        e eVar = new e(str, str2, str3, hVar);
        eVar.a(z);
        eVar.a(aVar);
        com.mbridge.msdk.foundation.same.f.b.e().execute(eVar);
    }

    private void a(String str, String str2, String str3, boolean z, boolean z2, c cVar) {
        if (this.f7105d.containsKey(str2)) {
            LinkedList linkedList = (LinkedList) this.f7105d.get(str2);
            if (linkedList == null || linkedList.contains(cVar)) {
                return;
            }
            linkedList.add(cVar);
            return;
        }
        LinkedList linkedList2 = new LinkedList();
        linkedList2.add(cVar);
        this.f7105d.put(str2, linkedList2);
        this.b.a(a(str, str2, str3, z, z2));
    }

    public static void b() {
        if (g.b()) {
            return;
        }
        a.c();
    }

    private Bitmap d(String str) {
        return this.c.b(str);
    }

    public final Bitmap a(String str) {
        Bitmap bitmapA;
        if (af.a(str)) {
            return null;
        }
        if (g.b()) {
            return d.a.a.a(str);
        }
        String strA = ae.a(str);
        File file = new File(strA);
        if (d(str) != null) {
            return d(str);
        }
        if (!file.exists() || (bitmapA = a.a(strA)) == null) {
            return null;
        }
        a(str, bitmapA);
        return bitmapA;
    }

    public final void a() {
        if (g.b()) {
            return;
        }
        this.c.b();
        LinkedHashMap<String, List<c>> linkedHashMap = this.f7105d;
        if (linkedHashMap != null) {
            linkedHashMap.clear();
        }
    }

    public final void a(String str, Bitmap bitmap) {
        if (d(str) != null || bitmap == null) {
            return;
        }
        this.c.a(str, bitmap);
    }

    public final void a(final String str, final c cVar) {
        if (g.b()) {
            d.a.a.a(str, null, cVar);
            return;
        }
        final String strA = ae.a(str);
        if (g.a()) {
            final boolean z = false;
            if (af.a(str) || af.a(str) || af.a(strA)) {
                return;
            }
            if (g.b()) {
                d.a.a.a(str, null, cVar);
                return;
            }
            final h hVar = null;
            g.c().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.c.b.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (!new File(strA).exists()) {
                        b.a(b.this, str, str, strA, false, z, cVar, hVar);
                        return;
                    }
                    Bitmap bitmapA = a.a(strA);
                    if (bitmapA == null || bitmapA.isRecycled()) {
                        b.a(b.this, str, str, strA, true, z, cVar, hVar);
                        return;
                    }
                    h hVar2 = hVar;
                    if (hVar2 == null) {
                        b.a(b.this, str, bitmapA, cVar);
                        return;
                    }
                    try {
                        Bitmap bitmapA2 = hVar2.a(bitmapA);
                        if (bitmapA2 != null) {
                            b.a(b.this, str, bitmapA2, cVar);
                        } else {
                            b.a(b.this, str, "image transform failed", cVar);
                        }
                    } catch (Exception unused) {
                        b.a(b.this, str, "image transform failed", cVar);
                    }
                }
            });
            return;
        }
        if (af.a(str) || af.a(str) || af.a(strA)) {
            return;
        }
        if (g.b()) {
            d.a.a.a(str, null, cVar);
            return;
        }
        File file = new File(strA);
        Bitmap bitmapD = d(str);
        if (bitmapD != null && !bitmapD.isRecycled()) {
            cVar.onSuccessLoad(bitmapD, str);
            return;
        }
        if (!file.exists()) {
            a(str, str, strA, false, false, cVar);
            return;
        }
        Bitmap bitmapA = a.a(strA);
        if (bitmapA == null || bitmapA.isRecycled()) {
            a(str, str, strA, true, false, cVar);
        } else {
            a(str, bitmapA);
            cVar.onSuccessLoad(bitmapA, str);
        }
    }

    public final boolean b(String str) {
        if (af.a(str)) {
            return false;
        }
        if (g.b()) {
            return d.a.a.b(str);
        }
        return d(str) != null || new File(ae.a(str)).exists();
    }

    public final void c() {
        com.mbridge.msdk.foundation.same.a.c<String, Bitmap> cVar;
        if (g.b() || (cVar = this.c) == null) {
            return;
        }
        cVar.b();
    }

    public final void c(String str) {
        if (g.b()) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.a.c<String, Bitmap> cVar = this.c;
            if (cVar == null || !cVar.a().contains(str)) {
                return;
            }
            this.c.a(str);
        } catch (Throwable th) {
            aa.d("ImageLoader", th.getMessage());
        }
    }
}
