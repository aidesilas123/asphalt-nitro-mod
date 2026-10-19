package com.applovin.exoplayer2.e.g;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.common.base.Splitter;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.g.f.c;
import com.applovin.exoplayer2.l.y;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class i {
    private static final Splitter AJ = Splitter.on(':');
    private static final Splitter AK = Splitter.on('*');
    private final List<a> AL = new ArrayList();
    private int AM = 0;
    private int AN;

    private static final class a {
        public final int gn;
        public final int oW;
        public final long wE;

        public a(int i, long j, int i2) {
            this.gn = i;
            this.wE = j;
            this.oW = i2;
        }
    }

    private static int I(String str) throws ai {
        str.hashCode();
        switch (str) {
            case "SlowMotion_Data":
                return 2192;
            case "Super_SlowMotion_Edit_Data":
                return 2819;
            case "Super_SlowMotion_Data":
                return 2816;
            case "Super_SlowMotion_Deflickering_On":
                return 2820;
            case "Super_SlowMotion_BGM":
                return 2817;
            default:
                throw ai.c("Invalid SEF name", null);
        }
    }

    private void a(com.applovin.exoplayer2.e.i iVar, List<a.InterfaceC0038a> list) throws IOException {
        long jIe = iVar.ie();
        int iMo28if = (int) ((iVar.mo28if() - iVar.ie()) - ((long) this.AN));
        y yVar = new y(iMo28if);
        iVar.a(yVar.hO(), 0, iMo28if);
        for (int i = 0; i < this.AL.size(); i++) {
            a aVar = this.AL.get(i);
            yVar.fx((int) (aVar.wE - jIe));
            yVar.fz(4);
            int iPy = yVar.py();
            int I = I(yVar.fB(iPy));
            int i2 = aVar.oW - (iPy + 8);
            if (I == 2192) {
                list.add(m(yVar, i2));
            } else if (I != 2816 && I != 2817 && I != 2819 && I != 2820) {
                throw new IllegalStateException();
            }
        }
    }

    private void g(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        y yVar = new y(8);
        iVar.a(yVar.hO(), 0, 8);
        this.AN = yVar.py() + 8;
        if (yVar.px() != 1397048916) {
            uVar.uc = 0L;
        } else {
            uVar.uc = iVar.ie() - ((long) (this.AN - 12));
            this.AM = 2;
        }
    }

    private void h(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        long jMo28if = iVar.mo28if();
        int i = (this.AN - 12) - 8;
        y yVar = new y(i);
        iVar.a(yVar.hO(), 0, i);
        for (int i2 = 0; i2 < i / 12; i2++) {
            yVar.fz(2);
            short sPs = yVar.ps();
            if (sPs == 2192 || sPs == 2816 || sPs == 2817 || sPs == 2819 || sPs == 2820) {
                this.AL.add(new a(sPs, (jMo28if - ((long) this.AN)) - ((long) yVar.py()), yVar.py()));
            } else {
                yVar.fz(8);
            }
        }
        if (this.AL.isEmpty()) {
            uVar.uc = 0L;
        } else {
            this.AM = 3;
            uVar.uc = this.AL.get(0).wE;
        }
    }

    private static com.applovin.exoplayer2.g.f.c m(y yVar, int i) throws ai {
        ArrayList arrayList = new ArrayList();
        List<String> listSplitToList = AK.splitToList(yVar.fB(i));
        for (int i2 = 0; i2 < listSplitToList.size(); i2++) {
            List<String> listSplitToList2 = AJ.splitToList(listSplitToList.get(i2));
            if (listSplitToList2.size() != 3) {
                throw ai.c(null, null);
            }
            try {
                arrayList.add(new c.a(Long.parseLong(listSplitToList2.get(0)), Long.parseLong(listSplitToList2.get(1)), 1 << (Integer.parseInt(listSplitToList2.get(2)) - 1)));
            } catch (NumberFormatException e2) {
                throw ai.c(null, e2);
            }
        }
        return new com.applovin.exoplayer2.g.f.c(arrayList);
    }

    public void Y() {
        this.AL.clear();
        this.AM = 0;
    }

    public int a(com.applovin.exoplayer2.e.i iVar, u uVar, List<a.InterfaceC0038a> list) throws IOException {
        int i = this.AM;
        long j = 0;
        if (i == 0) {
            long jMo28if = iVar.mo28if();
            if (jMo28if != -1 && jMo28if >= 8) {
                j = jMo28if - 8;
            }
            uVar.uc = j;
            this.AM = 1;
        } else if (i == 1) {
            g(iVar, uVar);
        } else if (i == 2) {
            h(iVar, uVar);
        } else {
            if (i != 3) {
                throw new IllegalStateException();
            }
            a(iVar, list);
            uVar.uc = 0L;
        }
        return 1;
    }
}
