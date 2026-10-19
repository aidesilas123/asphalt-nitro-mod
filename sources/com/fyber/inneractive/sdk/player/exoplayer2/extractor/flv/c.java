package com.fyber.inneractive.sdk.player.exoplayer2.extractor.flv;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.n;
import com.fyber.inneractive.sdk.player.exoplayer2.l;
import com.fyber.inneractive.sdk.player.exoplayer2.util.k;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends d {
    public long b;

    public c(n nVar) {
        super(null);
        this.b = C.TIME_UNSET;
    }

    public static Object a(k kVar, int i) {
        if (i == 8) {
            return b(kVar);
        }
        if (i == 10) {
            int iO = kVar.o();
            ArrayList arrayList = new ArrayList(iO);
            for (int i2 = 0; i2 < iO; i2++) {
                arrayList.add(a(kVar, kVar.l()));
            }
            return arrayList;
        }
        if (i == 11) {
            Date date = new Date((long) Double.valueOf(Double.longBitsToDouble(kVar.i())).doubleValue());
            kVar.f(2);
            return date;
        }
        if (i == 0) {
            return Double.valueOf(Double.longBitsToDouble(kVar.i()));
        }
        if (i == 1) {
            return Boolean.valueOf(kVar.l() == 1);
        }
        if (i == 2) {
            int iQ = kVar.q();
            int i3 = kVar.b;
            kVar.f(iQ);
            return new String(kVar.a, i3, iQ);
        }
        if (i != 3) {
            return null;
        }
        HashMap map = new HashMap();
        while (true) {
            int iQ2 = kVar.q();
            int i4 = kVar.b;
            kVar.f(iQ2);
            String str = new String(kVar.a, i4, iQ2);
            int iL = kVar.l();
            if (iL == 9) {
                return map;
            }
            map.put(str, a(kVar, iL));
        }
    }

    public static HashMap<String, Object> b(k kVar) {
        int iO = kVar.o();
        HashMap<String, Object> map = new HashMap<>(iO);
        for (int i = 0; i < iO; i++) {
            int iQ = kVar.q();
            int i2 = kVar.b;
            kVar.f(iQ);
            map.put(new String(kVar.a, i2, iQ), a(kVar, kVar.l()));
        }
        return map;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.flv.d
    public boolean a(k kVar) {
        return true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.flv.d
    public void b(k kVar, long j) throws l {
        if (kVar.l() != 2) {
            throw new l();
        }
        int iQ = kVar.q();
        int i = kVar.b;
        kVar.f(iQ);
        if ("onMetaData".equals(new String(kVar.a, i, iQ)) && kVar.l() == 8) {
            HashMap<String, Object> mapB = b(kVar);
            if (mapB.containsKey("duration")) {
                double dDoubleValue = ((Double) mapB.get("duration")).doubleValue();
                if (dDoubleValue > 0.0d) {
                    this.b = (long) (dDoubleValue * 1000000.0d);
                }
            }
        }
    }
}
