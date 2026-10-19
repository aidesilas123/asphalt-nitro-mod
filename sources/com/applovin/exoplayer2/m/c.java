package com.applovin.exoplayer2.m;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public final int adm;
    public final int adn;
    public final String dw;

    private c(int i, int i2, String str) {
        this.adm = i;
        this.adn = i2;
        this.dw = str;
    }

    @Nullable
    public static c au(com.applovin.exoplayer2.l.y yVar) {
        String str;
        yVar.fz(2);
        int iPo = yVar.po();
        int i = iPo >> 1;
        int iPo2 = ((yVar.po() >> 3) & 31) | ((iPo & 1) << 5);
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else {
            if (i != 9) {
                return null;
            }
            str = "avc3";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(".0");
        sb.append(i);
        sb.append(iPo2 >= 10 ? "." : ".0");
        sb.append(iPo2);
        return new c(i, iPo2, sb.toString());
    }
}
