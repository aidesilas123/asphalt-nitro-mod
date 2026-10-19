package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.ai;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class r {
    private static final Pattern uN = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int dO = -1;
    public int dP = -1;

    private boolean D(String str) {
        Matcher matcher = uN.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int i = Integer.parseInt((String) ai.R(matcher.group(1)), 16);
            int i2 = Integer.parseInt((String) ai.R(matcher.group(2)), 16);
            if (i <= 0 && i2 <= 0) {
                return false;
            }
            this.dO = i;
            this.dP = i2;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public boolean bP(int i) {
        int i2 = i >> 12;
        int i3 = i & 4095;
        if (i2 <= 0 && i3 <= 0) {
            return false;
        }
        this.dO = i2;
        this.dP = i3;
        return true;
    }

    public boolean e(com.applovin.exoplayer2.g.a aVar) {
        for (int i = 0; i < aVar.kD(); i++) {
            a.InterfaceC0038a interfaceC0038aDe = aVar.de(i);
            if (interfaceC0038aDe instanceof com.applovin.exoplayer2.g.e.e) {
                com.applovin.exoplayer2.g.e.e eVar = (com.applovin.exoplayer2.g.e.e) interfaceC0038aDe;
                if ("iTunSMPB".equals(eVar.oc) && D(eVar.JN)) {
                    return true;
                }
            } else if (interfaceC0038aDe instanceof com.applovin.exoplayer2.g.e.i) {
                com.applovin.exoplayer2.g.e.i iVar = (com.applovin.exoplayer2.g.e.i) interfaceC0038aDe;
                if ("com.apple.iTunes".equals(iVar.JU) && "iTunSMPB".equals(iVar.oc) && D(iVar.JN)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public boolean ij() {
        return (this.dO == -1 || this.dP == -1) ? false : true;
    }
}
