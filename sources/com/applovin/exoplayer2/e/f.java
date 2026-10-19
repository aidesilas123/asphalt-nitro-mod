package com.applovin.exoplayer2.e;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.e.i.ac;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class f implements l {
    private static final int[] ug = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 14};

    @Nullable
    private static final Constructor<? extends h> uh;
    private boolean ui;
    private boolean uj;
    private int uk;
    private int ul;
    private int um;
    private int un;
    private int uo;
    private int uq;
    private int ur;
    private int ut;
    private int us = 1;
    private int uu = 112800;

    static {
        Constructor<? extends h> constructor = null;
        try {
            if (Boolean.TRUE.equals(Class.forName("com.applovin.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                constructor = Class.forName("com.applovin.exoplayer2.ext.flac.FlacExtractor").asSubclass(h.class).getConstructor(Integer.TYPE);
            }
        } catch (ClassNotFoundException unused) {
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        uh = constructor;
    }

    private void b(int i, List<h> list) {
        switch (i) {
            case 0:
                list.add(new com.applovin.exoplayer2.e.i.a());
                return;
            case 1:
                list.add(new com.applovin.exoplayer2.e.i.c());
                return;
            case 2:
                list.add(new com.applovin.exoplayer2.e.i.e((this.uj ? 2 : 0) | this.uk | (this.ui ? 1 : 0)));
                return;
            case 3:
                list.add(new com.applovin.exoplayer2.e.a.a((this.uj ? 2 : 0) | this.ul | (this.ui ? 1 : 0)));
                return;
            case 4:
                Constructor<? extends h> constructor = uh;
                if (constructor == null) {
                    list.add(new com.applovin.exoplayer2.e.b.b(this.um));
                    return;
                }
                try {
                    list.add(constructor.newInstance(Integer.valueOf(this.um)));
                    return;
                } catch (Exception e2) {
                    throw new IllegalStateException("Unexpected error creating FLAC extractor", e2);
                }
            case 5:
                list.add(new com.applovin.exoplayer2.e.c.b());
                return;
            case 6:
                list.add(new com.applovin.exoplayer2.e.e.d(this.un));
                return;
            case 7:
                list.add(new com.applovin.exoplayer2.e.f.d((this.uj ? 2 : 0) | this.ur | (this.ui ? 1 : 0)));
                return;
            case 8:
                list.add(new com.applovin.exoplayer2.e.g.e(this.uq));
                list.add(new com.applovin.exoplayer2.e.g.g(this.uo));
                return;
            case 9:
                list.add(new com.applovin.exoplayer2.e.h.c());
                return;
            case 10:
                list.add(new com.applovin.exoplayer2.e.i.w());
                return;
            case 11:
                list.add(new ac(this.us, this.ut, this.uu));
                return;
            case 12:
                list.add(new com.applovin.exoplayer2.e.j.a());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new com.applovin.exoplayer2.e.d.a());
                return;
        }
    }

    @Override // com.applovin.exoplayer2.e.l
    public synchronized h[] a(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        arrayList = new ArrayList(14);
        int iE = com.applovin.exoplayer2.l.l.e(map);
        if (iE != -1) {
            b(iE, arrayList);
        }
        int iG = com.applovin.exoplayer2.l.l.g(uri);
        if (iG != -1 && iG != iE) {
            b(iG, arrayList);
        }
        for (int i : ug) {
            if (i != iE && i != iG) {
                b(i, arrayList);
            }
        }
        return (h[]) arrayList.toArray(new h[arrayList.size()]);
    }

    @Override // com.applovin.exoplayer2.e.l
    public synchronized h[] createExtractors() {
        return a(Uri.EMPTY, new HashMap());
    }
}
