package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.annotation.Nullable;
import com.json.o2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzadq {
    public static int zza(int i) {
        int i2 = 0;
        while (i > 0) {
            i >>>= 1;
            i2++;
        }
        return i2;
    }

    @Nullable
    public static zzcb zzb(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = (String) list.get(i);
            int i2 = zzfs.zza;
            String[] strArrSplit = str.split(o2.i.b, 2);
            if (strArrSplit.length != 2) {
                zzez.zzf("VorbisUtil", "Failed to parse Vorbis comment: ".concat(str));
            } else if (strArrSplit[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(zzafg.zzb(new zzfj(Base64.decode(strArrSplit[1], 0))));
                } catch (RuntimeException e2) {
                    zzez.zzg("VorbisUtil", "Failed to parse vorbis picture", e2);
                }
            } else {
                arrayList.add(new zzagt(strArrSplit[0], strArrSplit[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzcb(arrayList);
    }

    public static zzadn zzc(zzfj zzfjVar, boolean z, boolean z2) throws zzcf {
        if (z) {
            zzd(3, zzfjVar, false);
        }
        String strZzy = zzfjVar.zzy((int) zzfjVar.zzr(), zzftl.zzc);
        int length = strZzy.length();
        long jZzr = zzfjVar.zzr();
        String[] strArr = new String[(int) jZzr];
        int length2 = length + 15;
        for (int i = 0; i < jZzr; i++) {
            String strZzy2 = zzfjVar.zzy((int) zzfjVar.zzr(), zzftl.zzc);
            strArr[i] = strZzy2;
            length2 = length2 + 4 + strZzy2.length();
        }
        if (z2 && (zzfjVar.zzl() & 1) == 0) {
            throw zzcf.zza("framing bit expected to be set", null);
        }
        return new zzadn(strZzy, strArr, length2 + 1);
    }

    public static boolean zzd(int i, zzfj zzfjVar, boolean z) throws zzcf {
        if (zzfjVar.zza() < 7) {
            if (z) {
                return false;
            }
            throw zzcf.zza("too short header: " + zzfjVar.zza(), null);
        }
        if (zzfjVar.zzl() != i) {
            if (z) {
                return false;
            }
            throw zzcf.zza("expected header type ".concat(String.valueOf(Integer.toHexString(i))), null);
        }
        if (zzfjVar.zzl() == 118 && zzfjVar.zzl() == 111 && zzfjVar.zzl() == 114 && zzfjVar.zzl() == 98 && zzfjVar.zzl() == 105 && zzfjVar.zzl() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw zzcf.zza("expected characters 'vorbis'", null);
    }
}
