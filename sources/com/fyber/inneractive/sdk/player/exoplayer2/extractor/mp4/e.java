package com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4;

import android.util.Log;
import androidx.core.view.ViewCompat;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.json.mediationsdk.IronSourceSegment;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.InternalFrame;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    public static final int a = u.a("nam");
    public static final int b = u.a("trk");
    public static final int c = u.a("cmt");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f2337d = u.a("day");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f2338e = u.a("ART");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f2339f = u.a("too");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f2340g = u.a("alb");
    public static final int h = u.a("com");
    public static final int i = u.a("wrt");
    public static final int j = u.a("lyr");
    public static final int k = u.a(IronSourceSegment.GENDER);
    public static final int l = u.a("covr");
    public static final int m = u.a("gnre");
    public static final int n = u.a("grp");
    public static final int o = u.a("disk");
    public static final int p = u.a("trkn");
    public static final int q = u.a("tmpo");
    public static final int r = u.a("cpil");
    public static final int s = u.a("aART");
    public static final int t = u.a("sonm");
    public static final int u = u.a("soal");
    public static final int v = u.a("soar");
    public static final int w = u.a("soaa");
    public static final int x = u.a("soco");
    public static final int y = u.a("rtng");
    public static final int z = u.a("pgap");
    public static final int A = u.a("sosn");
    public static final int B = u.a("tvsh");
    public static final int C = u.a(InternalFrame.ID);
    public static final String[] D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    public static com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.a a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        int iC = kVar.c();
        if (kVar.c() != a.F0) {
            Log.w("MetadataUtil", "Failed to parse cover art attribute");
            return null;
        }
        int iC2 = kVar.c() & ViewCompat.MEASURED_SIZE_MASK;
        String str = iC2 == 13 ? "image/jpeg" : iC2 == 14 ? "image/png" : null;
        if (str == null) {
            Log.w("MetadataUtil", "Unrecognized cover art flags: " + iC2);
            return null;
        }
        kVar.f(4);
        int i2 = iC - 16;
        byte[] bArr = new byte[i2];
        System.arraycopy(kVar.a, kVar.b, bArr, 0, i2);
        kVar.b += i2;
        return new com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.a(str, null, 3, bArr);
    }

    public static com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.e a(int i2, com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        int iC = kVar.c();
        if (kVar.c() == a.F0) {
            kVar.f(8);
            String strA = kVar.a(iC - 16);
            return new com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.e(C.LANGUAGE_UNDETERMINED, strA, strA);
        }
        Log.w("MetadataUtil", "Failed to parse comment attribute: " + a.a(i2));
        return null;
    }

    public static com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.h a(int i2, String str, com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, boolean z2, boolean z3) {
        int iB = b(kVar);
        if (z3) {
            iB = Math.min(1, iB);
        }
        if (iB >= 0) {
            return z2 ? new com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.j(str, null, Integer.toString(iB)) : new com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.e(C.LANGUAGE_UNDETERMINED, str, Integer.toString(iB));
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute: " + a.a(i2));
        return null;
    }

    public static com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.h a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i2) {
        String strA = null;
        String strA2 = null;
        int i3 = -1;
        int i4 = -1;
        while (true) {
            int i5 = kVar.b;
            if (i5 >= i2) {
                break;
            }
            int iC = kVar.c();
            int iC2 = kVar.c();
            kVar.f(4);
            if (iC2 == a.D0) {
                strA = kVar.a(iC - 12);
            } else if (iC2 == a.E0) {
                strA2 = kVar.a(iC - 12);
            } else {
                if (iC2 == a.F0) {
                    i3 = i5;
                    i4 = iC;
                }
                kVar.f(iC - 12);
            }
        }
        if (!"com.apple.iTunes".equals(strA) || !"iTunSMPB".equals(strA2) || i3 == -1) {
            return null;
        }
        kVar.e(i3);
        kVar.f(16);
        return new com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.e(C.LANGUAGE_UNDETERMINED, strA2, kVar.a(i4 - 16));
    }

    public static com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.j a(int i2, String str, com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        int iC = kVar.c();
        if (kVar.c() == a.F0 && iC >= 22) {
            kVar.f(10);
            int iQ = kVar.q();
            if (iQ > 0) {
                String str2 = "" + iQ;
                int iQ2 = kVar.q();
                if (iQ2 > 0) {
                    str2 = str2 + "/" + iQ2;
                }
                return new com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.j(str, null, str2);
            }
        }
        Log.w("MetadataUtil", "Failed to parse index/count attribute: " + a.a(i2));
        return null;
    }

    public static int b(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        kVar.f(4);
        if (kVar.c() == a.F0) {
            kVar.f(8);
            return kVar.l();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    public static com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.j b(int i2, String str, com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        int iC = kVar.c();
        if (kVar.c() == a.F0) {
            kVar.f(8);
            return new com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.j(str, null, kVar.a(iC - 16));
        }
        Log.w("MetadataUtil", "Failed to parse text attribute: " + a.a(i2));
        return null;
    }
}
