package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaih {

    @VisibleForTesting
    static final String[] zza = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};
    public static final /* synthetic */ int zzb = 0;

    /* JADX WARN: Removed duplicated region for block: B:134:0x0268 A[Catch: all -> 0x01fa, TryCatch #0 {all -> 0x01fa, blocks: (B:9:0x002c, B:13:0x0036, B:16:0x003f, B:17:0x004b, B:20:0x0057, B:23:0x0064, B:26:0x0073, B:29:0x0080, B:32:0x008d, B:34:0x0097, B:41:0x00af, B:42:0x00c5, B:43:0x00d9, B:46:0x00e5, B:49:0x00f2, B:52:0x00ff, B:55:0x010c, B:58:0x0119, B:61:0x0126, B:64:0x0133, B:67:0x0140, B:70:0x014d, B:73:0x015d, B:77:0x0171, B:79:0x0177, B:81:0x018c, B:82:0x0193, B:84:0x019a, B:89:0x01a5, B:94:0x01b1, B:134:0x0268, B:95:0x01c6, B:97:0x01cd, B:99:0x01d7, B:100:0x01eb, B:115:0x021a, B:118:0x0227, B:121:0x0233, B:124:0x023f, B:127:0x024b, B:130:0x0257, B:133:0x0261, B:135:0x0281, B:136:0x0288), top: B:141:0x001e }] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.ads.zzca zza(com.google.android.gms.internal.ads.zzfj r13) {
        /*
            Method dump skipped, instruction units count: 662
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaih.zza(com.google.android.gms.internal.ads.zzfj):com.google.android.gms.internal.ads.zzca");
    }

    private static int zzb(zzfj zzfjVar) {
        zzfjVar.zzH(4);
        if (zzfjVar.zzf() == 1684108385) {
            zzfjVar.zzH(8);
            return zzfjVar.zzl();
        }
        zzez.zzf("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    @Nullable
    private static zzagb zzc(int i, String str, zzfj zzfjVar, boolean z, boolean z2) {
        int iZzb = zzb(zzfjVar);
        if (z2) {
            iZzb = Math.min(1, iZzb);
        }
        if (iZzb >= 0) {
            return z ? new zzagj(str, null, zzfwu.zzm(Integer.toString(iZzb))) : new zzafu(C.LANGUAGE_UNDETERMINED, str, Integer.toString(iZzb));
        }
        zzez.zzf("MetadataUtil", "Failed to parse uint8 attribute: ".concat(zzahs.zzf(i)));
        return null;
    }

    @Nullable
    private static zzagj zzd(int i, String str, zzfj zzfjVar) {
        int iZzf = zzfjVar.zzf();
        if (zzfjVar.zzf() == 1684108385 && iZzf >= 22) {
            zzfjVar.zzH(10);
            int iZzp = zzfjVar.zzp();
            if (iZzp > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(iZzp);
                String string = sb.toString();
                int iZzp2 = zzfjVar.zzp();
                if (iZzp2 > 0) {
                    string = string + "/" + iZzp2;
                }
                return new zzagj(str, null, zzfwu.zzm(string));
            }
        }
        zzez.zzf("MetadataUtil", "Failed to parse index/count attribute: ".concat(zzahs.zzf(i)));
        return null;
    }

    @Nullable
    private static zzagj zze(int i, String str, zzfj zzfjVar) {
        int iZzf = zzfjVar.zzf();
        if (zzfjVar.zzf() == 1684108385) {
            zzfjVar.zzH(8);
            return new zzagj(str, null, zzfwu.zzm(zzfjVar.zzx(iZzf - 16)));
        }
        zzez.zzf("MetadataUtil", "Failed to parse text attribute: ".concat(zzahs.zzf(i)));
        return null;
    }
}
