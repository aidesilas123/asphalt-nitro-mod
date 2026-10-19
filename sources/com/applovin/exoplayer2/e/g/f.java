package com.applovin.exoplayer2.e.g;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
final class f {

    @VisibleForTesting
    static final String[] Ay = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    /* JADX WARN: Removed duplicated region for block: B:7:0x0011  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.applovin.exoplayer2.g.e.l A(com.applovin.exoplayer2.l.y r3) {
        /*
            int r3 = C(r3)
            r0 = 0
            if (r3 <= 0) goto L11
            java.lang.String[] r1 = com.applovin.exoplayer2.e.g.f.Ay
            int r2 = r1.length
            if (r3 > r2) goto L11
            int r3 = r3 + (-1)
            r3 = r1[r3]
            goto L12
        L11:
            r3 = r0
        L12:
            if (r3 == 0) goto L1c
            com.applovin.exoplayer2.g.e.l r1 = new com.applovin.exoplayer2.g.e.l
            java.lang.String r2 = "TCON"
            r1.<init>(r2, r0, r3)
            return r1
        L1c:
            java.lang.String r3 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            com.applovin.exoplayer2.l.q.h(r3, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.g.f.A(com.applovin.exoplayer2.l.y):com.applovin.exoplayer2.g.e.l");
    }

    @Nullable
    private static com.applovin.exoplayer2.g.e.a B(y yVar) {
        int iPx = yVar.px();
        if (yVar.px() != 1684108385) {
            com.applovin.exoplayer2.l.q.h("MetadataUtil", "Failed to parse cover art attribute");
            return null;
        }
        int iCg = a.cg(yVar.px());
        String str = iCg == 13 ? "image/jpeg" : iCg == 14 ? "image/png" : null;
        if (str == null) {
            com.applovin.exoplayer2.l.q.h("MetadataUtil", "Unrecognized cover art flags: " + iCg);
            return null;
        }
        yVar.fz(4);
        int i = iPx - 16;
        byte[] bArr = new byte[i];
        yVar.r(bArr, 0, i);
        return new com.applovin.exoplayer2.g.e.a(str, null, 3, bArr);
    }

    private static int C(y yVar) {
        yVar.fz(4);
        if (yVar.px() == 1684108385) {
            yVar.fz(8);
            return yVar.po();
        }
        com.applovin.exoplayer2.l.q.h("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    @Nullable
    private static com.applovin.exoplayer2.g.e.h a(int i, String str, y yVar, boolean z, boolean z2) {
        int iC = C(yVar);
        if (z2) {
            iC = Math.min(1, iC);
        }
        if (iC >= 0) {
            return z ? new com.applovin.exoplayer2.g.e.l(str, null, Integer.toString(iC)) : new com.applovin.exoplayer2.g.e.e(C.LANGUAGE_UNDETERMINED, str, Integer.toString(iC));
        }
        com.applovin.exoplayer2.l.q.h("MetadataUtil", "Failed to parse uint8 attribute: " + a.ch(i));
        return null;
    }

    @Nullable
    private static com.applovin.exoplayer2.g.e.l a(int i, String str, y yVar) {
        int iPx = yVar.px();
        if (yVar.px() == 1684108385) {
            yVar.fz(8);
            return new com.applovin.exoplayer2.g.e.l(str, null, yVar.fC(iPx - 16));
        }
        com.applovin.exoplayer2.l.q.h("MetadataUtil", "Failed to parse text attribute: " + a.ch(i));
        return null;
    }

    @Nullable
    public static com.applovin.exoplayer2.g.f.a a(y yVar, int i, String str) {
        while (true) {
            int iIl = yVar.il();
            if (iIl >= i) {
                return null;
            }
            int iPx = yVar.px();
            if (yVar.px() == 1684108385) {
                int iPx2 = yVar.px();
                int iPx3 = yVar.px();
                int i2 = iPx - 16;
                byte[] bArr = new byte[i2];
                yVar.r(bArr, 0, i2);
                return new com.applovin.exoplayer2.g.f.a(str, bArr, iPx3, iPx2);
            }
            yVar.fx(iIl + iPx);
        }
    }

    public static void a(int i, com.applovin.exoplayer2.e.r rVar, v.a aVar) {
        if (i == 1 && rVar.ij()) {
            aVar.Q(rVar.dO).R(rVar.dP);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(int r5, @androidx.annotation.Nullable com.applovin.exoplayer2.g.a r6, @androidx.annotation.Nullable com.applovin.exoplayer2.g.a r7, com.applovin.exoplayer2.v.a r8, com.applovin.exoplayer2.g.a... r9) {
        /*
            com.applovin.exoplayer2.g.a r0 = new com.applovin.exoplayer2.g.a
            r1 = 0
            com.applovin.exoplayer2.g.a$a[] r2 = new com.applovin.exoplayer2.g.a.InterfaceC0038a[r1]
            r0.<init>(r2)
            r2 = 1
            if (r5 != r2) goto Le
            if (r6 == 0) goto L3c
            goto L3d
        Le:
            r6 = 2
            if (r5 != r6) goto L3c
            if (r7 == 0) goto L3c
            r5 = 0
        L14:
            int r6 = r7.kD()
            if (r5 >= r6) goto L3c
            com.applovin.exoplayer2.g.a$a r6 = r7.de(r5)
            boolean r3 = r6 instanceof com.applovin.exoplayer2.g.f.a
            if (r3 == 0) goto L39
            com.applovin.exoplayer2.g.f.a r6 = (com.applovin.exoplayer2.g.f.a) r6
            java.lang.String r3 = r6.Jx
            java.lang.String r4 = "com.android.capture.fps"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L39
            com.applovin.exoplayer2.g.a r5 = new com.applovin.exoplayer2.g.a
            com.applovin.exoplayer2.g.a$a[] r7 = new com.applovin.exoplayer2.g.a.InterfaceC0038a[r2]
            r7[r1] = r6
            r5.<init>(r7)
            r6 = r5
            goto L3d
        L39:
            int r5 = r5 + 1
            goto L14
        L3c:
            r6 = r0
        L3d:
            int r5 = r9.length
        L3e:
            if (r1 >= r5) goto L49
            r7 = r9[r1]
            com.applovin.exoplayer2.g.a r6 = r6.g(r7)
            int r1 = r1 + 1
            goto L3e
        L49:
            int r5 = r6.kD()
            if (r5 <= 0) goto L52
            r8.b(r6)
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.g.f.a(int, com.applovin.exoplayer2.g.a, com.applovin.exoplayer2.g.a, com.applovin.exoplayer2.v$a, com.applovin.exoplayer2.g.a[]):void");
    }

    @Nullable
    private static com.applovin.exoplayer2.g.e.e b(int i, y yVar) {
        int iPx = yVar.px();
        if (yVar.px() == 1684108385) {
            yVar.fz(8);
            String strFC = yVar.fC(iPx - 16);
            return new com.applovin.exoplayer2.g.e.e(C.LANGUAGE_UNDETERMINED, strFC, strFC);
        }
        com.applovin.exoplayer2.l.q.h("MetadataUtil", "Failed to parse comment attribute: " + a.ch(i));
        return null;
    }

    @Nullable
    private static com.applovin.exoplayer2.g.e.l b(int i, String str, y yVar) {
        int iPx = yVar.px();
        if (yVar.px() == 1684108385 && iPx >= 22) {
            yVar.fz(10);
            int iPp = yVar.pp();
            if (iPp > 0) {
                String str2 = "" + iPp;
                int iPp2 = yVar.pp();
                if (iPp2 > 0) {
                    str2 = str2 + "/" + iPp2;
                }
                return new com.applovin.exoplayer2.g.e.l(str, null, str2);
            }
        }
        com.applovin.exoplayer2.l.q.h("MetadataUtil", "Failed to parse index/count attribute: " + a.ch(i));
        return null;
    }

    @Nullable
    private static com.applovin.exoplayer2.g.e.h l(y yVar, int i) {
        String strFC = null;
        String strFC2 = null;
        int i2 = -1;
        int i3 = -1;
        while (yVar.il() < i) {
            int iIl = yVar.il();
            int iPx = yVar.px();
            int iPx2 = yVar.px();
            yVar.fz(4);
            if (iPx2 == 1835360622) {
                strFC = yVar.fC(iPx - 12);
            } else if (iPx2 == 1851878757) {
                strFC2 = yVar.fC(iPx - 12);
            } else {
                if (iPx2 == 1684108385) {
                    i2 = iIl;
                    i3 = iPx;
                }
                yVar.fz(iPx - 12);
            }
        }
        if (strFC == null || strFC2 == null || i2 == -1) {
            return null;
        }
        yVar.fx(i2);
        yVar.fz(16);
        return new com.applovin.exoplayer2.g.e.i(strFC, strFC2, yVar.fC(i3 - 16));
    }

    @Nullable
    public static a.InterfaceC0038a z(y yVar) {
        int iIl = yVar.il() + yVar.px();
        int iPx = yVar.px();
        int i = (iPx >> 24) & 255;
        try {
            if (i == 169 || i == 253) {
                int i2 = 16777215 & iPx;
                if (i2 == 6516084) {
                    return b(iPx, yVar);
                }
                if (i2 == 7233901 || i2 == 7631467) {
                    return a(iPx, "TIT2", yVar);
                }
                if (i2 == 6516589 || i2 == 7828084) {
                    return a(iPx, "TCOM", yVar);
                }
                if (i2 == 6578553) {
                    return a(iPx, "TDRC", yVar);
                }
                if (i2 == 4280916) {
                    return a(iPx, "TPE1", yVar);
                }
                if (i2 == 7630703) {
                    return a(iPx, "TSSE", yVar);
                }
                if (i2 == 6384738) {
                    return a(iPx, "TALB", yVar);
                }
                if (i2 == 7108978) {
                    return a(iPx, "USLT", yVar);
                }
                if (i2 == 6776174) {
                    return a(iPx, "TCON", yVar);
                }
                if (i2 == 6779504) {
                    return a(iPx, "TIT1", yVar);
                }
            } else {
                if (iPx == 1735291493) {
                    return A(yVar);
                }
                if (iPx == 1684632427) {
                    return b(iPx, "TPOS", yVar);
                }
                if (iPx == 1953655662) {
                    return b(iPx, "TRCK", yVar);
                }
                if (iPx == 1953329263) {
                    return a(iPx, "TBPM", yVar, true, false);
                }
                if (iPx == 1668311404) {
                    return a(iPx, "TCMP", yVar, true, true);
                }
                if (iPx == 1668249202) {
                    return B(yVar);
                }
                if (iPx == 1631670868) {
                    return a(iPx, "TPE2", yVar);
                }
                if (iPx == 1936682605) {
                    return a(iPx, "TSOT", yVar);
                }
                if (iPx == 1936679276) {
                    return a(iPx, "TSO2", yVar);
                }
                if (iPx == 1936679282) {
                    return a(iPx, "TSOA", yVar);
                }
                if (iPx == 1936679265) {
                    return a(iPx, "TSOP", yVar);
                }
                if (iPx == 1936679791) {
                    return a(iPx, "TSOC", yVar);
                }
                if (iPx == 1920233063) {
                    return a(iPx, "ITUNESADVISORY", yVar, false, false);
                }
                if (iPx == 1885823344) {
                    return a(iPx, "ITUNESGAPLESS", yVar, false, true);
                }
                if (iPx == 1936683886) {
                    return a(iPx, "TVSHOWSORT", yVar);
                }
                if (iPx == 1953919848) {
                    return a(iPx, "TVSHOW", yVar);
                }
                if (iPx == 757935405) {
                    return l(yVar, iIl);
                }
            }
            com.applovin.exoplayer2.l.q.f("MetadataUtil", "Skipped unknown metadata entry: " + a.ch(iPx));
            return null;
        } finally {
            yVar.fx(iIl);
        }
    }
}
