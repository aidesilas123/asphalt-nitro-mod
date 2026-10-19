package com.mbridge.msdk.video.dynview.i.a;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.f.b;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.l;
import com.mbridge.msdk.video.dynview.c;
import com.mbridge.msdk.video.dynview.g.a;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: ChoiceOneDrawBitBg.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static volatile a a;
    private View b;
    private Bitmap c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bitmap f7527d;

    private a() {
    }

    public static a a() {
        a aVar;
        if (a != null) {
            return a;
        }
        synchronized (a.class) {
            if (a == null) {
                a = new a();
            }
            aVar = a;
        }
        return aVar;
    }

    private synchronized void a(final int i, final float f2, final float f3, final Bitmap bitmap, Bitmap bitmap2) {
        try {
            b.d().execute(new Runnable() { // from class: com.mbridge.msdk.video.dynview.i.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Bitmap bitmapA = l.a(bitmap, 10);
                        Bitmap bitmapA2 = l.a(bitmap, 10);
                        final a.C0430a c0430aA = com.mbridge.msdk.video.dynview.g.a.a();
                        c0430aA.a(i).a(bitmapA).b(bitmapA2);
                        if (i == 2) {
                            float f4 = f2;
                            float f5 = f3;
                            if (f4 > f5) {
                                c0430aA.a(f4).b(f3);
                            } else {
                                c0430aA.a(f5).b(f2);
                            }
                        } else {
                            c0430aA.a(f2).b(f3);
                        }
                        if (a.this.b != null) {
                            a.this.b.post(new Runnable() { // from class: com.mbridge.msdk.video.dynview.i.a.a.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    if (a.this.b == null || c0430aA.a() == null) {
                                        return;
                                    }
                                    a.this.b.setBackground(c0430aA.a());
                                }
                            });
                        }
                    } catch (Exception e2) {
                        aa.d("ChoiceOneDrawBitBg", e2.getMessage());
                    }
                }
            });
        } catch (Exception e2) {
            aa.a("ChoiceOneDrawBitBg", e2.getMessage());
        }
    }

    public final void a(Map<String, Bitmap> map, c cVar, View view) {
        if (view == null || cVar == null || map == null || map.size() == 0 || map.size() < 2 || cVar.g() == null || cVar.g().size() < 2) {
            return;
        }
        this.b = view;
        int iE = cVar.e();
        float fD = cVar.d();
        float fC = cVar.c();
        try {
            List<CampaignEx> listG = cVar.g();
            String md5 = listG.get(0) != null ? SameMD5.getMD5(listG.get(0).getImageUrl()) : "";
            String md52 = listG.get(1) != null ? SameMD5.getMD5(listG.get(1).getImageUrl()) : "";
            Bitmap bitmap = (TextUtils.isEmpty(md5) || !map.containsKey(md5)) ? null : map.get(md5);
            Bitmap bitmap2 = (TextUtils.isEmpty(md52) || !map.containsKey(md52)) ? null : map.get(md52);
            if (bitmap == null || bitmap.isRecycled() || bitmap2 == null || bitmap2.isRecycled()) {
                return;
            }
            a(iE, fD, fC, bitmap, bitmap2);
        } catch (Exception e2) {
            aa.d("ChoiceOneDrawBitBg", e2.getMessage());
        }
    }

    public final void b() {
        if (this.b != null) {
            this.b = null;
        }
        Bitmap bitmap = this.c;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.c.recycle();
            this.c = null;
        }
        Bitmap bitmap2 = this.f7527d;
        if (bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        this.f7527d.recycle();
        this.f7527d = null;
    }
}
