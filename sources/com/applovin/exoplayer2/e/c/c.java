package com.applovin.exoplayer2.e.c;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.e.g;
import com.applovin.exoplayer2.l.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class c extends d {
    private long fH;
    private long[] wj;
    private long[] wk;

    public c() {
        super(new g());
        this.fH = C.TIME_UNSET;
        this.wj = new long[0];
        this.wk = new long[0];
    }

    @Nullable
    private static Object e(y yVar, int i) {
        if (i == 0) {
            return h(yVar);
        }
        if (i == 1) {
            return g(yVar);
        }
        if (i == 2) {
            return i(yVar);
        }
        if (i == 3) {
            return k(yVar);
        }
        if (i == 8) {
            return l(yVar);
        }
        if (i == 10) {
            return j(yVar);
        }
        if (i != 11) {
            return null;
        }
        return m(yVar);
    }

    private static int f(y yVar) {
        return yVar.po();
    }

    private static Boolean g(y yVar) {
        return Boolean.valueOf(yVar.po() == 1);
    }

    private static Double h(y yVar) {
        return Double.valueOf(Double.longBitsToDouble(yVar.pz()));
    }

    private static String i(y yVar) {
        int iPp = yVar.pp();
        int iIl = yVar.il();
        yVar.fz(iPp);
        return new String(yVar.hO(), iIl, iPp);
    }

    private static ArrayList<Object> j(y yVar) {
        int iPD = yVar.pD();
        ArrayList<Object> arrayList = new ArrayList<>(iPD);
        for (int i = 0; i < iPD; i++) {
            Object objE = e(yVar, f(yVar));
            if (objE != null) {
                arrayList.add(objE);
            }
        }
        return arrayList;
    }

    private static HashMap<String, Object> k(y yVar) {
        HashMap<String, Object> map = new HashMap<>();
        while (true) {
            String strI = i(yVar);
            int iF = f(yVar);
            if (iF == 9) {
                return map;
            }
            Object objE = e(yVar, iF);
            if (objE != null) {
                map.put(strI, objE);
            }
        }
    }

    private static HashMap<String, Object> l(y yVar) {
        int iPD = yVar.pD();
        HashMap<String, Object> map = new HashMap<>(iPD);
        for (int i = 0; i < iPD; i++) {
            String strI = i(yVar);
            Object objE = e(yVar, f(yVar));
            if (objE != null) {
                map.put(strI, objE);
            }
        }
        return map;
    }

    private static Date m(y yVar) {
        Date date = new Date((long) h(yVar).doubleValue());
        yVar.fz(2);
        return date;
    }

    @Override // com.applovin.exoplayer2.e.c.d
    protected boolean a(y yVar, long j) {
        if (f(yVar) != 2 || !"onMetaData".equals(i(yVar)) || f(yVar) != 8) {
            return false;
        }
        HashMap<String, Object> mapL = l(yVar);
        Object obj = mapL.get("duration");
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (dDoubleValue > 0.0d) {
                this.fH = (long) (dDoubleValue * 1000000.0d);
            }
        }
        Object obj2 = mapL.get("keyframes");
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get("times");
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.wj = new long[size];
                this.wk = new long[size];
                for (int i = 0; i < size; i++) {
                    Object obj5 = list.get(i);
                    Object obj6 = list2.get(i);
                    if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                        this.wj = new long[0];
                        this.wk = new long[0];
                        break;
                    }
                    this.wj[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                    this.wk[i] = ((Double) obj5).longValue();
                }
            }
        }
        return false;
    }

    public long dd() {
        return this.fH;
    }

    @Override // com.applovin.exoplayer2.e.c.d
    protected boolean e(y yVar) {
        return true;
    }

    public long[] is() {
        return this.wj;
    }

    public long[] it() {
        return this.wk;
    }
}
