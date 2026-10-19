package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaeb implements zzadt {
    public final zzfwu zza;
    private final int zzb;

    private zzaeb(int i, zzfwu zzfwuVar) {
        this.zzb = i;
        this.zza = zzfwuVar;
    }

    public static zzaeb zzc(int i, zzfj zzfjVar) {
        String str;
        zzfwr zzfwrVar = new zzfwr();
        int iZzd = zzfjVar.zzd();
        int i2 = -2;
        while (zzfjVar.zza() > 8) {
            int iZzh = zzfjVar.zzh();
            int iZzc = zzfjVar.zzc() + zzfjVar.zzh();
            zzfjVar.zzF(iZzc);
            zzadt zzaecVar = null;
            if (iZzh != 1414744396) {
                switch (iZzh) {
                    case 1718776947:
                        if (i2 == 2) {
                            zzfjVar.zzH(4);
                            int iZzh2 = zzfjVar.zzh();
                            int iZzh3 = zzfjVar.zzh();
                            zzfjVar.zzH(4);
                            int iZzh4 = zzfjVar.zzh();
                            switch (iZzh4) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str = MimeTypes.VIDEO_MP4V;
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str = "video/avc";
                                    break;
                                case 842289229:
                                    str = "video/mp42";
                                    break;
                                case 859066445:
                                    str = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str = "video/mjpeg";
                                    break;
                                default:
                                    str = null;
                                    break;
                            }
                            if (str != null) {
                                zzak zzakVar = new zzak();
                                zzakVar.zzab(iZzh2);
                                zzakVar.zzH(iZzh3);
                                zzakVar.zzU(str);
                                zzaecVar = new zzaec(zzakVar.zzac());
                            } else {
                                zzez.zzf("StreamFormatChunk", "Ignoring track with unsupported compression " + iZzh4);
                            }
                        } else if (i2 != 1) {
                            zzez.zzf("StreamFormatChunk", "Ignoring strf box for unsupported track type: ".concat(zzfs.zzB(i2)));
                        } else {
                            int iZzj = zzfjVar.zzj();
                            String str2 = iZzj != 1 ? iZzj != 85 ? iZzj != 255 ? iZzj != 8192 ? iZzj != 8193 ? null : MimeTypes.AUDIO_DTS : MimeTypes.AUDIO_AC3 : MimeTypes.AUDIO_AAC : MimeTypes.AUDIO_MPEG : MimeTypes.AUDIO_RAW;
                            if (str2 != null) {
                                int iZzj2 = zzfjVar.zzj();
                                int iZzh5 = zzfjVar.zzh();
                                zzfjVar.zzH(6);
                                int iZzk = zzfs.zzk(zzfjVar.zzp());
                                int iZzj3 = zzfjVar.zzj();
                                byte[] bArr = new byte[iZzj3];
                                zzfjVar.zzC(bArr, 0, iZzj3);
                                zzak zzakVar2 = new zzak();
                                zzakVar2.zzU(str2);
                                zzakVar2.zzy(iZzj2);
                                zzakVar2.zzV(iZzh5);
                                if (MimeTypes.AUDIO_RAW.equals(str2) && iZzk != 0) {
                                    zzakVar2.zzP(iZzk);
                                }
                                if (MimeTypes.AUDIO_AAC.equals(str2) && iZzj3 > 0) {
                                    zzakVar2.zzK(zzfwu.zzm(bArr));
                                }
                                zzaecVar = new zzaec(zzakVar2.zzac());
                            } else {
                                zzez.zzf("StreamFormatChunk", "Ignoring track with unsupported format tag " + iZzj);
                            }
                        }
                        break;
                    case 1751742049:
                        zzaecVar = zzady.zzb(zzfjVar);
                        break;
                    case 1752331379:
                        zzaecVar = zzadz.zzb(zzfjVar);
                        break;
                    case 1852994675:
                        zzaecVar = zzaed.zzb(zzfjVar);
                        break;
                }
            } else {
                zzaecVar = zzc(zzfjVar.zzh(), zzfjVar);
            }
            if (zzaecVar != null) {
                if (zzaecVar.zza() == 1752331379) {
                    int i3 = ((zzadz) zzaecVar).zza;
                    if (i3 == 1935960438) {
                        i2 = 2;
                    } else if (i3 == 1935963489) {
                        i2 = 1;
                    } else if (i3 != 1937012852) {
                        zzez.zzf("AviStreamHeaderChunk", "Found unsupported streamType fourCC: ".concat(String.valueOf(Integer.toHexString(i3))));
                        i2 = -1;
                    } else {
                        i2 = 3;
                    }
                }
                zzfwrVar.zzf(zzaecVar);
            }
            zzfjVar.zzG(iZzc);
            zzfjVar.zzF(iZzd);
        }
        return new zzaeb(i, zzfwrVar.zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzadt
    public final int zza() {
        return this.zzb;
    }

    @Nullable
    public final zzadt zzb(Class cls) {
        zzfwu zzfwuVar = this.zza;
        int size = zzfwuVar.size();
        int i = 0;
        while (i < size) {
            zzadt zzadtVar = (zzadt) zzfwuVar.get(i);
            i++;
            if (zzadtVar.getClass() == cls) {
                return zzadtVar;
            }
        }
        return null;
    }
}
