package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.gms.drive.DriveFile;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzahd implements zzace {
    public static final zzacl zza = new zzacl() { // from class: com.google.android.gms.internal.ads.zzagz
        @Override // com.google.android.gms.internal.ads.zzacl
        public final /* synthetic */ zzace[] zza(Uri uri, Map map) {
            int i = zzack.zza;
            zzacl zzaclVar = zzahd.zza;
            return new zzace[]{new zzahd(0)};
        }
    };
    private static final byte[] zzb = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] zzc;
    private static final byte[] zzd;
    private static final byte[] zze;
    private static final UUID zzf;
    private static final Map zzg;
    private long zzA;

    @Nullable
    private zzahc zzB;
    private boolean zzC;
    private int zzD;
    private long zzE;
    private boolean zzF;
    private long zzG;
    private long zzH;
    private long zzI;

    @Nullable
    private zzfa zzJ;

    @Nullable
    private zzfa zzK;
    private boolean zzL;
    private boolean zzM;
    private int zzN;
    private long zzO;
    private long zzP;
    private int zzQ;
    private int zzR;
    private int[] zzS;
    private int zzT;
    private int zzU;
    private int zzV;
    private int zzW;
    private boolean zzX;
    private long zzY;
    private int zzZ;
    private int zzaa;
    private int zzab;
    private boolean zzac;
    private boolean zzad;
    private boolean zzae;
    private int zzaf;
    private byte zzag;
    private boolean zzah;
    private zzach zzai;
    private final zzagy zzh;
    private final zzahf zzi;
    private final SparseArray zzj;
    private final boolean zzk;
    private final zzfj zzl;
    private final zzfj zzm;
    private final zzfj zzn;
    private final zzfj zzo;
    private final zzfj zzp;
    private final zzfj zzq;
    private final zzfj zzr;
    private final zzfj zzs;
    private final zzfj zzt;
    private final zzfj zzu;
    private ByteBuffer zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    static {
        int i = zzfs.zza;
        zzc = "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text".getBytes(zzftl.zzc);
        zzd = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        zze = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        zzf = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap map = new HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        zzg = Collections.unmodifiableMap(map);
    }

    public zzahd() {
        this(0);
    }

    public zzahd(int i) {
        zzagw zzagwVar = new zzagw();
        this.zzx = -1L;
        this.zzy = C.TIME_UNSET;
        this.zzz = C.TIME_UNSET;
        this.zzA = C.TIME_UNSET;
        this.zzG = -1L;
        this.zzH = -1L;
        this.zzI = C.TIME_UNSET;
        this.zzh = zzagwVar;
        zzagwVar.zza(new zzahb(this, null));
        this.zzk = true;
        this.zzi = new zzahf();
        this.zzj = new SparseArray();
        this.zzn = new zzfj(4);
        this.zzo = new zzfj(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzp = new zzfj(4);
        this.zzl = new zzfj(zzgg.zza);
        this.zzm = new zzfj(4);
        this.zzq = new zzfj();
        this.zzr = new zzfj();
        this.zzs = new zzfj(8);
        this.zzt = new zzfj();
        this.zzu = new zzfj();
        this.zzS = new int[1];
    }

    private final int zzn(zzacf zzacfVar, zzahc zzahcVar, int i, boolean z) throws IOException {
        int i2;
        if ("S_TEXT/UTF8".equals(zzahcVar.zzb)) {
            zzv(zzacfVar, zzb, i);
            int i3 = this.zzaa;
            zzu();
            return i3;
        }
        if ("S_TEXT/ASS".equals(zzahcVar.zzb)) {
            zzv(zzacfVar, zzd, i);
            int i4 = this.zzaa;
            zzu();
            return i4;
        }
        if ("S_TEXT/WEBVTT".equals(zzahcVar.zzb)) {
            zzv(zzacfVar, zze, i);
            int i5 = this.zzaa;
            zzu();
            return i5;
        }
        zzadk zzadkVar = zzahcVar.zzW;
        if (!this.zzac) {
            if (zzahcVar.zzg) {
                this.zzV &= -1073741825;
                if (!this.zzad) {
                    ((zzabu) zzacfVar).zzn(this.zzn.zzI(), 0, 1, false);
                    this.zzZ++;
                    if ((this.zzn.zzI()[0] & 128) == 128) {
                        throw zzcf.zza("Extension bit is set in signal byte", null);
                    }
                    this.zzag = this.zzn.zzI()[0];
                    this.zzad = true;
                }
                byte b = this.zzag;
                if ((b & 1) == 1) {
                    int i6 = b & 2;
                    this.zzV |= 1073741824;
                    if (!this.zzah) {
                        ((zzabu) zzacfVar).zzn(this.zzs.zzI(), 0, 8, false);
                        this.zzZ += 8;
                        this.zzah = true;
                        this.zzn.zzI()[0] = (byte) ((i6 != 2 ? 0 : 128) | 8);
                        this.zzn.zzG(0);
                        zzadkVar.zzs(this.zzn, 1, 1);
                        this.zzaa++;
                        this.zzs.zzG(0);
                        zzadkVar.zzs(this.zzs, 8, 1);
                        this.zzaa += 8;
                    }
                    if (i6 == 2) {
                        if (!this.zzae) {
                            ((zzabu) zzacfVar).zzn(this.zzn.zzI(), 0, 1, false);
                            this.zzZ++;
                            this.zzn.zzG(0);
                            this.zzaf = this.zzn.zzl();
                            this.zzae = true;
                        }
                        int i7 = this.zzaf * 4;
                        this.zzn.zzD(i7);
                        ((zzabu) zzacfVar).zzn(this.zzn.zzI(), 0, i7, false);
                        this.zzZ += i7;
                        int i8 = (this.zzaf >> 1) + 1;
                        int i9 = (i8 * 6) + 2;
                        ByteBuffer byteBuffer = this.zzv;
                        if (byteBuffer == null || byteBuffer.capacity() < i9) {
                            this.zzv = ByteBuffer.allocate(i9);
                        }
                        this.zzv.position(0);
                        this.zzv.putShort((short) i8);
                        int i10 = 0;
                        int i11 = 0;
                        while (true) {
                            i2 = this.zzaf;
                            if (i10 >= i2) {
                                break;
                            }
                            int iZzo = this.zzn.zzo();
                            int i12 = iZzo - i11;
                            if (i10 % 2 == 0) {
                                this.zzv.putShort((short) i12);
                            } else {
                                this.zzv.putInt(i12);
                            }
                            i10++;
                            i11 = iZzo;
                        }
                        int i13 = (i - this.zzZ) - i11;
                        if ((i2 & 1) == 1) {
                            this.zzv.putInt(i13);
                        } else {
                            this.zzv.putShort((short) i13);
                            this.zzv.putInt(0);
                        }
                        this.zzt.zzE(this.zzv.array(), i9);
                        zzadkVar.zzs(this.zzt, i9, 1);
                        this.zzaa += i9;
                    }
                }
            } else {
                byte[] bArr = zzahcVar.zzh;
                if (bArr != null) {
                    this.zzq.zzE(bArr, bArr.length);
                }
            }
            if (!"A_OPUS".equals(zzahcVar.zzb) ? zzahcVar.zzf > 0 : z) {
                this.zzV |= DriveFile.MODE_READ_ONLY;
                this.zzu.zzD(0);
                int iZzd = (this.zzq.zzd() + i) - this.zzZ;
                this.zzn.zzD(4);
                this.zzn.zzI()[0] = (byte) ((iZzd >> 24) & 255);
                this.zzn.zzI()[1] = (byte) ((iZzd >> 16) & 255);
                this.zzn.zzI()[2] = (byte) ((iZzd >> 8) & 255);
                this.zzn.zzI()[3] = (byte) (iZzd & 255);
                zzadkVar.zzs(this.zzn, 4, 2);
                this.zzaa += 4;
            }
            this.zzac = true;
        }
        int iZzd2 = i + this.zzq.zzd();
        if (!"V_MPEG4/ISO/AVC".equals(zzahcVar.zzb) && !"V_MPEGH/ISO/HEVC".equals(zzahcVar.zzb)) {
            if (zzahcVar.zzT != null) {
                zzef.zzf(this.zzq.zzd() == 0);
                zzahcVar.zzT.zzd(zzacfVar);
            }
            while (true) {
                int i14 = this.zzZ;
                if (i14 >= iZzd2) {
                    break;
                }
                int iZzo2 = zzo(zzacfVar, zzadkVar, iZzd2 - i14);
                this.zzZ += iZzo2;
                this.zzaa += iZzo2;
            }
        } else {
            byte[] bArrZzI = this.zzm.zzI();
            bArrZzI[0] = 0;
            bArrZzI[1] = 0;
            bArrZzI[2] = 0;
            int i15 = zzahcVar.zzX;
            int i16 = 4 - i15;
            while (this.zzZ < iZzd2) {
                int i17 = this.zzab;
                if (i17 == 0) {
                    int iMin = Math.min(i15, this.zzq.zza());
                    ((zzabu) zzacfVar).zzn(bArrZzI, i16 + iMin, i15 - iMin, false);
                    if (iMin > 0) {
                        this.zzq.zzC(bArrZzI, i16, iMin);
                    }
                    this.zzZ += i15;
                    this.zzm.zzG(0);
                    this.zzab = this.zzm.zzo();
                    this.zzl.zzG(0);
                    zzadi.zzb(zzadkVar, this.zzl, 4);
                    this.zzaa += 4;
                } else {
                    int iZzo3 = zzo(zzacfVar, zzadkVar, i17);
                    this.zzZ += iZzo3;
                    this.zzaa += iZzo3;
                    this.zzab -= iZzo3;
                }
            }
        }
        if ("A_VORBIS".equals(zzahcVar.zzb)) {
            this.zzo.zzG(0);
            zzadi.zzb(zzadkVar, this.zzo, 4);
            this.zzaa += 4;
        }
        int i18 = this.zzaa;
        zzu();
        return i18;
    }

    private final int zzo(zzacf zzacfVar, zzadk zzadkVar, int i) throws IOException {
        int iZza = this.zzq.zza();
        if (iZza <= 0) {
            return zzadi.zza(zzadkVar, zzacfVar, i, false);
        }
        int iMin = Math.min(i, iZza);
        zzadi.zzb(zzadkVar, this.zzq, iMin);
        return iMin;
    }

    private final long zzp(long j) throws zzcf {
        long j2 = this.zzy;
        if (j2 != C.TIME_UNSET) {
            return zzfs.zzs(j, j2, 1000L, RoundingMode.FLOOR);
        }
        throw zzcf.zza("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private final void zzq(int i) throws zzcf {
        if (this.zzJ == null || this.zzK == null) {
            throw zzcf.zza("Element " + i + " must be in a Cues", null);
        }
    }

    private final void zzr(int i) throws zzcf {
        if (this.zzB != null) {
            return;
        }
        throw zzcf.zza("Element " + i + " must be in a TrackEntry", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e0 A[EDGE_INSN: B:62:0x00e0->B:51:0x00e0 BREAK  A[LOOP:0: B:45:0x00c5->B:50:0x00dd], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzs(com.google.android.gms.internal.ads.zzahc r18, long r19, int r21, int r22, int r23) {
        /*
            Method dump skipped, instruction units count: 292
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahd.zzs(com.google.android.gms.internal.ads.zzahc, long, int, int, int):void");
    }

    private final void zzt(zzacf zzacfVar, int i) throws IOException {
        if (this.zzn.zzd() >= i) {
            return;
        }
        if (this.zzn.zzb() < i) {
            zzfj zzfjVar = this.zzn;
            int iZzb = zzfjVar.zzb();
            zzfjVar.zzA(Math.max(iZzb + iZzb, i));
        }
        zzfj zzfjVar2 = this.zzn;
        ((zzabu) zzacfVar).zzn(zzfjVar2.zzI(), zzfjVar2.zzd(), i - zzfjVar2.zzd(), false);
        this.zzn.zzF(i);
    }

    private final void zzu() {
        this.zzZ = 0;
        this.zzaa = 0;
        this.zzab = 0;
        this.zzac = false;
        this.zzad = false;
        this.zzae = false;
        this.zzaf = 0;
        this.zzag = (byte) 0;
        this.zzah = false;
        this.zzq.zzD(0);
    }

    private final void zzv(zzacf zzacfVar, byte[] bArr, int i) throws IOException {
        int length = bArr.length;
        int i2 = length + i;
        if (this.zzr.zzb() < i2) {
            zzfj zzfjVar = this.zzr;
            byte[] bArrCopyOf = Arrays.copyOf(bArr, i2 + i);
            zzfjVar.zzE(bArrCopyOf, bArrCopyOf.length);
        } else {
            System.arraycopy(bArr, 0, this.zzr.zzI(), 0, length);
        }
        ((zzabu) zzacfVar).zzn(this.zzr.zzI(), length, i, false);
        this.zzr.zzG(0);
        this.zzr.zzF(i2);
    }

    private static byte[] zzw(long j, String str, long j2) {
        zzef.zzd(j != C.TIME_UNSET);
        int i = (int) (j / 3600000000L);
        long j3 = j - (((long) i) * 3600000000L);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - (((long) i2) * 60000000);
        int i3 = (int) (j4 / 1000000);
        String str2 = String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (((long) i3) * 1000000)) / j2)));
        int i4 = zzfs.zza;
        return str2.getBytes(zzftl.zzc);
    }

    private static int[] zzx(@Nullable int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        int length = iArr.length;
        return length >= i ? iArr : new int[Math.max(length + length, i)];
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final int zzb(zzacf zzacfVar, zzadb zzadbVar) throws IOException {
        this.zzM = false;
        while (!this.zzM) {
            if (!this.zzh.zzc(zzacfVar)) {
                for (int i = 0; i < this.zzj.size(); i++) {
                    zzahc zzahcVar = (zzahc) this.zzj.valueAt(i);
                    Objects.requireNonNull(zzahcVar.zzW);
                    zzadl zzadlVar = zzahcVar.zzT;
                    if (zzadlVar != null) {
                        zzadlVar.zza(zzahcVar.zzW, zzahcVar.zzi);
                    }
                }
                return -1;
            }
            long jZzf = zzacfVar.zzf();
            if (this.zzF) {
                this.zzH = jZzf;
                zzadbVar.zza = this.zzG;
                this.zzF = false;
                return 1;
            }
            if (this.zzC) {
                long j = this.zzH;
                if (j != -1) {
                    zzadbVar.zza = j;
                    this.zzH = -1L;
                    return 1;
                }
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzc(zzach zzachVar) {
        this.zzai = zzachVar;
    }

    @Override // com.google.android.gms.internal.ads.zzace
    @CallSuper
    public final void zzd(long j, long j2) {
        this.zzI = C.TIME_UNSET;
        this.zzN = 0;
        this.zzh.zzb();
        this.zzi.zze();
        zzu();
        for (int i = 0; i < this.zzj.size(); i++) {
            zzadl zzadlVar = ((zzahc) this.zzj.valueAt(i)).zzT;
            if (zzadlVar != null) {
                zzadlVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final boolean zze(zzacf zzacfVar) throws IOException {
        return new zzahe().zza(zzacfVar);
    }

    @CallSuper
    protected final void zzg(int i, int i2, zzacf zzacfVar) throws IOException {
        long j;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = i;
        int i8 = 1;
        int i9 = 0;
        if (i7 != 161 && i7 != 163) {
            if (i7 == 165) {
                if (this.zzN != 2) {
                    return;
                }
                zzahc zzahcVar = (zzahc) this.zzj.get(this.zzT);
                if (this.zzW != 4 || !"V_VP9".equals(zzahcVar.zzb)) {
                    ((zzabu) zzacfVar).zzo(i2, false);
                    return;
                }
                this.zzu.zzD(i2);
                ((zzabu) zzacfVar).zzn(this.zzu.zzI(), 0, i2, false);
                return;
            }
            if (i7 == 16877) {
                zzr(i);
                zzahc zzahcVar2 = this.zzB;
                if (zzahcVar2.zzY != 1685485123 && zzahcVar2.zzY != 1685480259) {
                    ((zzabu) zzacfVar).zzo(i2, false);
                    return;
                }
                byte[] bArr = new byte[i2];
                zzahcVar2.zzN = bArr;
                ((zzabu) zzacfVar).zzn(bArr, 0, i2, false);
                return;
            }
            if (i7 == 16981) {
                zzr(i);
                byte[] bArr2 = new byte[i2];
                this.zzB.zzh = bArr2;
                ((zzabu) zzacfVar).zzn(bArr2, 0, i2, false);
                return;
            }
            if (i7 == 18402) {
                byte[] bArr3 = new byte[i2];
                ((zzabu) zzacfVar).zzn(bArr3, 0, i2, false);
                zzr(i);
                this.zzB.zzi = new zzadj(1, bArr3, 0, 0);
                return;
            }
            if (i7 == 21419) {
                Arrays.fill(this.zzp.zzI(), (byte) 0);
                ((zzabu) zzacfVar).zzn(this.zzp.zzI(), 4 - i2, i2, false);
                this.zzp.zzG(0);
                this.zzD = (int) this.zzp.zzt();
                return;
            }
            if (i7 == 25506) {
                zzr(i);
                byte[] bArr4 = new byte[i2];
                this.zzB.zzj = bArr4;
                ((zzabu) zzacfVar).zzn(bArr4, 0, i2, false);
                return;
            }
            if (i7 != 30322) {
                throw zzcf.zza("Unexpected id: " + i7, null);
            }
            zzr(i);
            byte[] bArr5 = new byte[i2];
            this.zzB.zzv = bArr5;
            ((zzabu) zzacfVar).zzn(bArr5, 0, i2, false);
            return;
        }
        int i10 = 8;
        if (this.zzN == 0) {
            this.zzT = (int) this.zzi.zzd(zzacfVar, false, true, 8);
            this.zzU = this.zzi.zza();
            this.zzP = C.TIME_UNSET;
            this.zzN = 1;
            this.zzn.zzD(0);
        }
        zzahc zzahcVar3 = (zzahc) this.zzj.get(this.zzT);
        if (zzahcVar3 == null) {
            ((zzabu) zzacfVar).zzo(i2 - this.zzU, false);
            this.zzN = 0;
            return;
        }
        Objects.requireNonNull(zzahcVar3.zzW);
        if (this.zzN == 1) {
            zzt(zzacfVar, 3);
            int i11 = (this.zzn.zzI()[2] & 6) >> 1;
            if (i11 == 0) {
                this.zzR = 1;
                int[] iArrZzx = zzx(this.zzS, 1);
                this.zzS = iArrZzx;
                iArrZzx[0] = (i2 - this.zzU) - 3;
            } else {
                zzt(zzacfVar, 4);
                int i12 = (this.zzn.zzI()[3] & 255) + 1;
                this.zzR = i12;
                int[] iArrZzx2 = zzx(this.zzS, i12);
                this.zzS = iArrZzx2;
                if (i11 == 2) {
                    int i13 = (i2 - this.zzU) - 4;
                    int i14 = this.zzR;
                    Arrays.fill(iArrZzx2, 0, i14, i13 / i14);
                } else {
                    if (i11 != 1) {
                        if (i11 != 3) {
                            throw zzcf.zza("Unexpected lacing value: 2", null);
                        }
                        int i15 = 0;
                        int i16 = 4;
                        int i17 = 0;
                        while (true) {
                            int i18 = this.zzR - 1;
                            if (i15 >= i18) {
                                this.zzS[i18] = ((i2 - this.zzU) - i16) - i17;
                                break;
                            }
                            this.zzS[i15] = i9;
                            i16++;
                            zzt(zzacfVar, i16);
                            int i19 = i16 - 1;
                            if (this.zzn.zzI()[i19] == 0) {
                                throw zzcf.zza("No valid varint length mask found", null);
                            }
                            int i20 = 0;
                            while (true) {
                                if (i20 >= i10) {
                                    j = 0;
                                    break;
                                }
                                int i21 = i8 << (7 - i20);
                                if ((this.zzn.zzI()[i19] & i21) != 0) {
                                    i16 += i20;
                                    zzt(zzacfVar, i16);
                                    j = (~i21) & this.zzn.zzI()[i19] & 255;
                                    int i22 = i19 + 1;
                                    while (i22 < i16) {
                                        j = (j << i10) | ((long) (this.zzn.zzI()[i22] & 255));
                                        i22++;
                                        i10 = 8;
                                    }
                                    if (i15 > 0) {
                                        j -= (1 << ((i20 * 7) + 6)) - 1;
                                    }
                                } else {
                                    i20++;
                                    i8 = 1;
                                    i10 = 8;
                                }
                            }
                            if (j < -2147483648L || j > 2147483647L) {
                                break;
                            }
                            int[] iArr = this.zzS;
                            int i23 = (int) j;
                            if (i15 != 0) {
                                i23 += iArr[i15 - 1];
                            }
                            iArr[i15] = i23;
                            i17 += i23;
                            i15++;
                            i8 = 1;
                            i9 = 0;
                            i10 = 8;
                        }
                        throw zzcf.zza("EBML lacing sample size out of range.", null);
                    }
                    int i24 = 0;
                    int i25 = 0;
                    int i26 = 4;
                    while (true) {
                        i3 = this.zzR - 1;
                        if (i24 >= i3) {
                            break;
                        }
                        this.zzS[i24] = 0;
                        do {
                            i26++;
                            zzt(zzacfVar, i26);
                            i4 = this.zzn.zzI()[i26 - 1] & 255;
                            int[] iArr2 = this.zzS;
                            i5 = iArr2[i24] + i4;
                            iArr2[i24] = i5;
                        } while (i4 == 255);
                        i25 += i5;
                        i24++;
                    }
                    this.zzS[i3] = ((i2 - this.zzU) - i26) - i25;
                }
            }
            this.zzO = this.zzI + zzp((this.zzn.zzI()[0] << 8) | (this.zzn.zzI()[1] & 255));
            if (zzahcVar3.zzd == 2) {
                i6 = 1;
                this.zzV = i6;
                this.zzN = 2;
                this.zzQ = 0;
            } else {
                if (i7 == 163) {
                    if ((this.zzn.zzI()[2] & 128) == 128) {
                        i7 = 163;
                        i6 = 1;
                        this.zzV = i6;
                        this.zzN = 2;
                        this.zzQ = 0;
                    } else {
                        i7 = 163;
                    }
                }
                i6 = 0;
                this.zzV = i6;
                this.zzN = 2;
                this.zzQ = 0;
            }
        }
        if (i7 == 163) {
            while (true) {
                int i27 = this.zzQ;
                if (i27 >= this.zzR) {
                    this.zzN = 0;
                    return;
                }
                zzs(zzahcVar3, ((long) ((this.zzQ * zzahcVar3.zze) / 1000)) + this.zzO, this.zzV, zzn(zzacfVar, zzahcVar3, this.zzS[i27], false), 0);
                this.zzQ++;
            }
        } else {
            while (true) {
                int i28 = this.zzQ;
                if (i28 >= this.zzR) {
                    return;
                }
                int[] iArr3 = this.zzS;
                iArr3[i28] = zzn(zzacfVar, zzahcVar3, iArr3[i28], true);
                this.zzQ++;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0315  */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void zzh(int r22) throws com.google.android.gms.internal.ads.zzcf {
        /*
            Method dump skipped, instruction units count: 1150
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahd.zzh(int):void");
    }

    @CallSuper
    protected final void zzi(int i, double d2) throws zzcf {
        if (i == 181) {
            zzr(i);
            this.zzB.zzQ = (int) d2;
            return;
        }
        if (i == 17545) {
            this.zzz = (long) d2;
            return;
        }
        switch (i) {
            case 21969:
                zzr(i);
                this.zzB.zzD = (float) d2;
                break;
            case 21970:
                zzr(i);
                this.zzB.zzE = (float) d2;
                break;
            case 21971:
                zzr(i);
                this.zzB.zzF = (float) d2;
                break;
            case 21972:
                zzr(i);
                this.zzB.zzG = (float) d2;
                break;
            case 21973:
                zzr(i);
                this.zzB.zzH = (float) d2;
                break;
            case 21974:
                zzr(i);
                this.zzB.zzI = (float) d2;
                break;
            case 21975:
                zzr(i);
                this.zzB.zzJ = (float) d2;
                break;
            case 21976:
                zzr(i);
                this.zzB.zzK = (float) d2;
                break;
            case 21977:
                zzr(i);
                this.zzB.zzL = (float) d2;
                break;
            case 21978:
                zzr(i);
                this.zzB.zzM = (float) d2;
                break;
            default:
                switch (i) {
                    case 30323:
                        zzr(i);
                        this.zzB.zzs = (float) d2;
                        break;
                    case 30324:
                        zzr(i);
                        this.zzB.zzt = (float) d2;
                        break;
                    case 30325:
                        zzr(i);
                        this.zzB.zzu = (float) d2;
                        break;
                }
                break;
        }
    }

    @CallSuper
    protected final void zzj(int i, long j) throws zzcf {
        boolean z;
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            throw zzcf.zza("ContentEncodingOrder " + j + " not supported", null);
        }
        if (i == 20530) {
            if (j == 1) {
                return;
            }
            throw zzcf.zza("ContentEncodingScope " + j + " not supported", null);
        }
        switch (i) {
            case 131:
                zzr(i);
                this.zzB.zzd = (int) j;
                return;
            case 136:
                z = j == 1;
                zzr(i);
                this.zzB.zzV = z;
                return;
            case 155:
                this.zzP = zzp(j);
                return;
            case 159:
                zzr(i);
                this.zzB.zzO = (int) j;
                return;
            case 176:
                zzr(i);
                this.zzB.zzl = (int) j;
                return;
            case 179:
                zzq(i);
                this.zzJ.zzc(zzp(j));
                return;
            case 186:
                zzr(i);
                this.zzB.zzm = (int) j;
                return;
            case 215:
                zzr(i);
                this.zzB.zzc = (int) j;
                return;
            case 231:
                this.zzI = zzp(j);
                return;
            case 238:
                this.zzW = (int) j;
                return;
            case 241:
                if (this.zzL) {
                    return;
                }
                zzq(i);
                this.zzK.zzc(j);
                this.zzL = true;
                return;
            case 251:
                this.zzX = true;
                return;
            case 16871:
                zzr(i);
                this.zzB.zzY = (int) j;
                return;
            case 16980:
                if (j == 3) {
                    return;
                }
                throw zzcf.zza("ContentCompAlgo " + j + " not supported", null);
            case 17029:
                if (j < 1 || j > 2) {
                    throw zzcf.zza("DocTypeReadVersion " + j + " not supported", null);
                }
                return;
            case 17143:
                if (j == 1) {
                    return;
                }
                throw zzcf.zza("EBMLReadVersion " + j + " not supported", null);
            case 18401:
                if (j == 5) {
                    return;
                }
                throw zzcf.zza("ContentEncAlgo " + j + " not supported", null);
            case 18408:
                if (j == 1) {
                    return;
                }
                throw zzcf.zza("AESSettingsCipherMode " + j + " not supported", null);
            case 21420:
                this.zzE = j + this.zzx;
                return;
            case 21432:
                int i2 = (int) j;
                zzr(i);
                if (i2 == 0) {
                    this.zzB.zzw = 0;
                    return;
                }
                if (i2 == 1) {
                    this.zzB.zzw = 2;
                    return;
                } else if (i2 == 3) {
                    this.zzB.zzw = 1;
                    return;
                } else {
                    if (i2 != 15) {
                        return;
                    }
                    this.zzB.zzw = 3;
                    return;
                }
            case 21680:
                zzr(i);
                this.zzB.zzo = (int) j;
                return;
            case 21682:
                zzr(i);
                this.zzB.zzq = (int) j;
                return;
            case 21690:
                zzr(i);
                this.zzB.zzp = (int) j;
                return;
            case 21930:
                z = j == 1;
                zzr(i);
                this.zzB.zzU = z;
                return;
            case 21938:
                zzr(i);
                zzahc zzahcVar = this.zzB;
                zzahcVar.zzx = true;
                zzahcVar.zzn = (int) j;
                return;
            case 21998:
                zzr(i);
                this.zzB.zzf = (int) j;
                return;
            case 22186:
                zzr(i);
                this.zzB.zzR = j;
                return;
            case 22203:
                zzr(i);
                this.zzB.zzS = j;
                return;
            case 25188:
                zzr(i);
                this.zzB.zzP = (int) j;
                return;
            case 30114:
                this.zzY = j;
                return;
            case 30321:
                int i3 = (int) j;
                zzr(i);
                if (i3 == 0) {
                    this.zzB.zzr = 0;
                    return;
                }
                if (i3 == 1) {
                    this.zzB.zzr = 1;
                    return;
                } else if (i3 == 2) {
                    this.zzB.zzr = 2;
                    return;
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    this.zzB.zzr = 3;
                    return;
                }
            case 2352003:
                zzr(i);
                this.zzB.zze = (int) j;
                return;
            case 2807729:
                this.zzy = j;
                return;
            default:
                switch (i) {
                    case 21945:
                        int i4 = (int) j;
                        zzr(i);
                        if (i4 == 1) {
                            this.zzB.zzA = 2;
                            return;
                        } else {
                            if (i4 != 2) {
                                return;
                            }
                            this.zzB.zzA = 1;
                            return;
                        }
                    case 21946:
                        zzr(i);
                        int iZzb = zzs.zzb((int) j);
                        if (iZzb != -1) {
                            this.zzB.zzz = iZzb;
                            return;
                        }
                        return;
                    case 21947:
                        zzr(i);
                        this.zzB.zzx = true;
                        int iZza = zzs.zza((int) j);
                        if (iZza != -1) {
                            this.zzB.zzy = iZza;
                            return;
                        }
                        return;
                    case 21948:
                        zzr(i);
                        this.zzB.zzB = (int) j;
                        return;
                    case 21949:
                        zzr(i);
                        this.zzB.zzC = (int) j;
                        return;
                    default:
                        return;
                }
        }
    }

    @CallSuper
    protected final void zzk(int i, long j, long j2) throws zzcf {
        zzef.zzb(this.zzai);
        if (i == 160) {
            this.zzX = false;
            this.zzY = 0L;
            return;
        }
        if (i == 174) {
            this.zzB = new zzahc();
            return;
        }
        if (i == 187) {
            this.zzL = false;
            return;
        }
        if (i == 19899) {
            this.zzD = -1;
            this.zzE = -1L;
            return;
        }
        if (i == 20533) {
            zzr(i);
            this.zzB.zzg = true;
            return;
        }
        if (i == 21968) {
            zzr(i);
            this.zzB.zzx = true;
            return;
        }
        if (i == 408125543) {
            long j3 = this.zzx;
            if (j3 != -1 && j3 != j) {
                throw zzcf.zza("Multiple Segment elements not supported", null);
            }
            this.zzx = j;
            this.zzw = j2;
            return;
        }
        if (i == 475249515) {
            this.zzJ = new zzfa(32);
            this.zzK = new zzfa(32);
        } else if (i == 524531317 && !this.zzC) {
            if (this.zzk && this.zzG != -1) {
                this.zzF = true;
            } else {
                this.zzai.zzO(new zzadd(this.zzA, 0L));
                this.zzC = true;
            }
        }
    }

    @CallSuper
    protected final void zzl(int i, String str) throws zzcf {
        if (i == 134) {
            zzr(i);
            this.zzB.zzb = str;
            return;
        }
        if (i == 17026) {
            if ("webm".equals(str) || "matroska".equals(str)) {
                return;
            }
            throw zzcf.zza("DocType " + str + " not supported", null);
        }
        if (i == 21358) {
            zzr(i);
            this.zzB.zza = str;
        } else {
            if (i != 2274716) {
                return;
            }
            zzr(i);
            this.zzB.zzZ = str;
        }
    }
}
