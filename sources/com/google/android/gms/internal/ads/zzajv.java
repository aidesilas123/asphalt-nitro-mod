package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzajv implements zzalj {
    private final List zza;

    public zzajv() {
        this(0);
    }

    public zzajv(int i) {
        this.zza = zzfwu.zzl();
    }

    public zzajv(int i, List list) {
        this.zza = list;
    }

    private final zzakz zzb(zzali zzaliVar) {
        return new zzakz(zzd(zzaliVar));
    }

    private final zzaln zzc(zzali zzaliVar) {
        return new zzaln(zzd(zzaliVar));
    }

    private final List zzd(zzali zzaliVar) {
        String str;
        int i;
        List listSingletonList;
        zzfj zzfjVar = new zzfj(zzaliVar.zzd);
        List arrayList = this.zza;
        while (zzfjVar.zza() > 0) {
            int iZzl = zzfjVar.zzl();
            int iZzc = zzfjVar.zzc() + zzfjVar.zzl();
            if (iZzl == 134) {
                arrayList = new ArrayList();
                int iZzl2 = zzfjVar.zzl() & 31;
                for (int i2 = 0; i2 < iZzl2; i2++) {
                    String strZzy = zzfjVar.zzy(3, zzftl.zzc);
                    int iZzl3 = zzfjVar.zzl();
                    boolean z = (iZzl3 & 128) != 0;
                    if (z) {
                        i = iZzl3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i = 1;
                    }
                    byte bZzl = (byte) zzfjVar.zzl();
                    zzfjVar.zzH(1);
                    if (z) {
                        int i3 = bZzl & 64;
                        int i4 = zzeh.zza;
                        listSingletonList = Collections.singletonList(i3 != 0 ? new byte[]{1} : new byte[]{0});
                    } else {
                        listSingletonList = null;
                    }
                    zzak zzakVar = new zzak();
                    zzakVar.zzU(str);
                    zzakVar.zzM(strZzy);
                    zzakVar.zzw(i);
                    zzakVar.zzK(listSingletonList);
                    arrayList.add(zzakVar.zzac());
                }
            }
            zzfjVar.zzG(iZzc);
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    @Nullable
    public final zzall zza(int i, zzali zzaliVar) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new zzakp(new zzakm(zzaliVar.zzb));
            }
            if (i == 21) {
                return new zzakp(new zzakk());
            }
            if (i == 27) {
                return new zzakp(new zzakh(zzb(zzaliVar), false, false));
            }
            if (i == 36) {
                return new zzakp(new zzakj(zzb(zzaliVar)));
            }
            if (i == 89) {
                return new zzakp(new zzajx(zzaliVar.zzc));
            }
            if (i == 138) {
                return new zzakp(new zzajw(zzaliVar.zzb));
            }
            if (i == 172) {
                return new zzakp(new zzajr(zzaliVar.zzb));
            }
            if (i == 257) {
                return new zzaky(new zzako("application/vnd.dvb.ait"));
            }
            if (i != 128) {
                if (i != 129) {
                    if (i == 134) {
                        return new zzaky(new zzako(MimeTypes.APPLICATION_SCTE35));
                    }
                    if (i != 135) {
                        switch (i) {
                            case 15:
                                return new zzakp(new zzaju(false, zzaliVar.zzb));
                            case 16:
                                return new zzakp(new zzakd(zzc(zzaliVar)));
                            case 17:
                                return new zzakp(new zzakl(zzaliVar.zzb));
                            default:
                                return null;
                        }
                    }
                }
                return new zzakp(new zzajo(zzaliVar.zzb));
            }
        }
        return new zzakp(new zzaka(zzc(zzaliVar)));
    }
}
