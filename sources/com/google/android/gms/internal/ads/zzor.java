package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.gms.games.GamesStatusCodes;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@RequiresApi(31)
public final class zzor implements zzmm, zzos {
    private final Context zza;
    private final zzot zzb;
    private final PlaybackSession zzc;

    @Nullable
    private String zzi;

    @Nullable
    private PlaybackMetrics.Builder zzj;
    private int zzk;

    @Nullable
    private zzch zzn;

    @Nullable
    private zzoq zzo;

    @Nullable
    private zzoq zzp;

    @Nullable
    private zzoq zzq;

    @Nullable
    private zzam zzr;

    @Nullable
    private zzam zzs;

    @Nullable
    private zzam zzt;
    private boolean zzu;
    private boolean zzv;
    private int zzw;
    private int zzx;
    private int zzy;
    private boolean zzz;
    private final zzcz zze = new zzcz();
    private final zzcx zzf = new zzcx();
    private final HashMap zzh = new HashMap();
    private final HashMap zzg = new HashMap();
    private final long zzd = SystemClock.elapsedRealtime();
    private int zzl = 0;
    private int zzm = 0;

    private zzor(Context context, PlaybackSession playbackSession) {
        this.zza = context.getApplicationContext();
        this.zzc = playbackSession;
        zzop zzopVar = new zzop(zzop.zza);
        this.zzb = zzopVar;
        zzopVar.zzh(this);
    }

    @Nullable
    public static zzor zzb(Context context) {
        MediaMetricsManager mediaMetricsManager = (MediaMetricsManager) context.getSystemService("media_metrics");
        if (mediaMetricsManager == null) {
            return null;
        }
        return new zzor(context, mediaMetricsManager.createPlaybackSession());
    }

    @SuppressLint({"SwitchIntDef"})
    private static int zzr(int i) {
        switch (zzfs.zzi(i)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case GamesStatusCodes.STATUS_MULTIPLAYER_ERROR_INVALID_OPERATION /* 6004 */:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    private final void zzs() {
        PlaybackMetrics.Builder builder = this.zzj;
        if (builder != null && this.zzz) {
            builder.setAudioUnderrunCount(this.zzy);
            this.zzj.setVideoFramesDropped(this.zzw);
            this.zzj.setVideoFramesPlayed(this.zzx);
            Long l = (Long) this.zzg.get(this.zzi);
            this.zzj.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l2 = (Long) this.zzh.get(this.zzi);
            this.zzj.setNetworkBytesRead(l2 == null ? 0L : l2.longValue());
            this.zzj.setStreamSource((l2 == null || l2.longValue() <= 0) ? 0 : 1);
            this.zzc.reportPlaybackMetrics(this.zzj.build());
        }
        this.zzj = null;
        this.zzi = null;
        this.zzy = 0;
        this.zzw = 0;
        this.zzx = 0;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzz = false;
    }

    private final void zzt(long j, @Nullable zzam zzamVar, int i) {
        if (zzfs.zzF(this.zzs, zzamVar)) {
            return;
        }
        int i2 = this.zzs == null ? 1 : 0;
        this.zzs = zzamVar;
        zzx(0, j, zzamVar, i2);
    }

    private final void zzu(long j, @Nullable zzam zzamVar, int i) {
        if (zzfs.zzF(this.zzt, zzamVar)) {
            return;
        }
        int i2 = this.zzt == null ? 1 : 0;
        this.zzt = zzamVar;
        zzx(2, j, zzamVar, i2);
    }

    private final void zzv(zzda zzdaVar, @Nullable zzuk zzukVar) {
        int iZza;
        PlaybackMetrics.Builder builder = this.zzj;
        if (zzukVar == null || (iZza = zzdaVar.zza(zzukVar.zza)) == -1) {
            return;
        }
        int i = 0;
        zzdaVar.zzd(iZza, this.zzf, false);
        zzdaVar.zze(this.zzf.zzd, this.zze, 0L);
        zzbl zzblVar = this.zze.zze.zzd;
        if (zzblVar != null) {
            int iZzm = zzfs.zzm(zzblVar.zzb);
            i = iZzm != 0 ? iZzm != 1 ? iZzm != 2 ? 1 : 4 : 5 : 3;
        }
        builder.setStreamType(i);
        zzcz zzczVar = this.zze;
        if (zzczVar.zzo != C.TIME_UNSET && !zzczVar.zzm && !zzczVar.zzj && !zzczVar.zzb()) {
            builder.setMediaDurationMillis(zzfs.zzt(this.zze.zzo));
        }
        builder.setPlaybackType(true != this.zze.zzb() ? 1 : 2);
        this.zzz = true;
    }

    private final void zzw(long j, @Nullable zzam zzamVar, int i) {
        if (zzfs.zzF(this.zzr, zzamVar)) {
            return;
        }
        int i2 = this.zzr == null ? 1 : 0;
        this.zzr = zzamVar;
        zzx(1, j, zzamVar, i2);
    }

    private final void zzx(int i, long j, @Nullable zzam zzamVar, int i2) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = new TrackChangeEvent.Builder(i).setTimeSinceCreatedMillis(j - this.zzd);
        if (zzamVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(i2 != 1 ? 1 : 2);
            String str = zzamVar.zzl;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = zzamVar.zzm;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = zzamVar.zzj;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i3 = zzamVar.zzi;
            if (i3 != -1) {
                timeSinceCreatedMillis.setBitrate(i3);
            }
            int i4 = zzamVar.zzr;
            if (i4 != -1) {
                timeSinceCreatedMillis.setWidth(i4);
            }
            int i5 = zzamVar.zzs;
            if (i5 != -1) {
                timeSinceCreatedMillis.setHeight(i5);
            }
            int i6 = zzamVar.zzz;
            if (i6 != -1) {
                timeSinceCreatedMillis.setChannelCount(i6);
            }
            int i7 = zzamVar.zzA;
            if (i7 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i7);
            }
            String str4 = zzamVar.zzd;
            if (str4 != null) {
                int i8 = zzfs.zza;
                String[] strArrSplit = str4.split("-", -1);
                Pair pairCreate = Pair.create(strArrSplit[0], strArrSplit.length >= 2 ? strArrSplit[1] : null);
                timeSinceCreatedMillis.setLanguage((String) pairCreate.first);
                Object obj = pairCreate.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f2 = zzamVar.zzt;
            if (f2 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f2);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.zzz = true;
        this.zzc.reportTrackChangeEvent(timeSinceCreatedMillis.build());
    }

    private final boolean zzy(@Nullable zzoq zzoqVar) {
        if (zzoqVar != null) {
            return zzoqVar.zzc.equals(this.zzb.zze());
        }
        return false;
    }

    public final LogSessionId zza() {
        return this.zzc.getSessionId();
    }

    @Override // com.google.android.gms.internal.ads.zzos
    public final void zzc(zzmk zzmkVar, String str) {
        zzuk zzukVar = zzmkVar.zzd;
        if (zzukVar == null || !zzukVar.zzb()) {
            zzs();
            this.zzi = str;
            this.zzj = new PlaybackMetrics.Builder().setPlayerName("AndroidXMedia3").setPlayerVersion("1.2.0-beta01");
            zzv(zzmkVar.zzb, zzmkVar.zzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzos
    public final void zzd(zzmk zzmkVar, String str, boolean z) {
        zzuk zzukVar = zzmkVar.zzd;
        if ((zzukVar == null || !zzukVar.zzb()) && str.equals(this.zzi)) {
            zzs();
        }
        this.zzg.remove(str);
        this.zzh.remove(str);
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zze(zzmk zzmkVar, zzam zzamVar, zzim zzimVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzf(zzmk zzmkVar, int i, long j, long j2) {
        zzuk zzukVar = zzmkVar.zzd;
        if (zzukVar != null) {
            zzot zzotVar = this.zzb;
            zzda zzdaVar = zzmkVar.zzb;
            HashMap map = this.zzh;
            String strZzf = zzotVar.zzf(zzdaVar, zzukVar);
            Long l = (Long) map.get(strZzf);
            Long l2 = (Long) this.zzg.get(strZzf);
            this.zzh.put(strZzf, Long.valueOf((l == null ? 0L : l.longValue()) + j));
            this.zzg.put(strZzf, Long.valueOf((l2 != null ? l2.longValue() : 0L) + ((long) i)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzg(zzmk zzmkVar, zzug zzugVar) {
        zzuk zzukVar = zzmkVar.zzd;
        if (zzukVar == null) {
            return;
        }
        zzam zzamVar = zzugVar.zzb;
        Objects.requireNonNull(zzamVar);
        zzoq zzoqVar = new zzoq(zzamVar, 0, this.zzb.zzf(zzmkVar.zzb, zzukVar));
        int i = zzugVar.zza;
        if (i != 0) {
            if (i == 1) {
                this.zzp = zzoqVar;
                return;
            } else if (i != 2) {
                if (i != 3) {
                    return;
                }
                this.zzq = zzoqVar;
                return;
            }
        }
        this.zzo = zzoqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzh(zzmk zzmkVar, int i, long j) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:145:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x02e1  */
    @Override // com.google.android.gms.internal.ads.zzmm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzi(com.google.android.gms.internal.ads.zzcr r21, com.google.android.gms.internal.ads.zzml r22) {
        /*
            Method dump skipped, instruction units count: 1036
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzor.zzi(com.google.android.gms.internal.ads.zzcr, com.google.android.gms.internal.ads.zzml):void");
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzj(zzmk zzmkVar, zzub zzubVar, zzug zzugVar, IOException iOException, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzk(zzmk zzmkVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzl(zzmk zzmkVar, zzch zzchVar) {
        this.zzn = zzchVar;
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzm(zzmk zzmkVar, zzcq zzcqVar, zzcq zzcqVar2, int i) {
        if (i == 1) {
            this.zzu = true;
            i = 1;
        }
        this.zzk = i;
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzn(zzmk zzmkVar, Object obj, long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzo(zzmk zzmkVar, zzil zzilVar) {
        this.zzw += zzilVar.zzg;
        this.zzx += zzilVar.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzp(zzmk zzmkVar, zzam zzamVar, zzim zzimVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzq(zzmk zzmkVar, zzdu zzduVar) {
        zzoq zzoqVar = this.zzo;
        if (zzoqVar != null) {
            zzam zzamVar = zzoqVar.zza;
            if (zzamVar.zzs == -1) {
                zzak zzakVarZzb = zzamVar.zzb();
                zzakVarZzb.zzab(zzduVar.zzc);
                zzakVarZzb.zzH(zzduVar.zzd);
                this.zzo = new zzoq(zzakVarZzb.zzac(), 0, zzoqVar.zzc);
            }
        }
    }
}
