package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaig implements zzace {
    public static final zzacl zza = new zzacl() { // from class: com.google.android.gms.internal.ads.zzaic
        @Override // com.google.android.gms.internal.ads.zzacl
        public final /* synthetic */ zzace[] zza(Uri uri, Map map) {
            int i = zzack.zza;
            zzacl zzaclVar = zzaig.zza;
            return new zzace[]{new zzaig(0, null)};
        }
    };
    private static final byte[] zzb = {-94, 57, 79, 82, 90, -101, 79, Ascii.DC4, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final zzam zzc;
    private int zzA;
    private int zzB;
    private boolean zzC;
    private zzach zzD;
    private zzadk[] zzE;
    private zzadk[] zzF;
    private boolean zzG;
    private final List zzd;
    private final SparseArray zze;
    private final zzfj zzf;
    private final zzfj zzg;
    private final zzfj zzh;
    private final byte[] zzi;
    private final zzfj zzj;
    private final zzafe zzk;
    private final zzfj zzl;
    private final ArrayDeque zzm;
    private final ArrayDeque zzn;
    private int zzo;
    private int zzp;
    private long zzq;
    private int zzr;

    @Nullable
    private zzfj zzs;
    private long zzt;
    private int zzu;
    private long zzv;
    private long zzw;
    private long zzx;

    @Nullable
    private zzaif zzy;
    private int zzz;

    static {
        zzak zzakVar = new zzak();
        zzakVar.zzU(MimeTypes.APPLICATION_EMSG);
        zzc = zzakVar.zzac();
    }

    public zzaig() {
        this(0, null);
    }

    public zzaig(int i, @Nullable zzfq zzfqVar) {
        this.zzd = Collections.unmodifiableList(Collections.emptyList());
        this.zzk = new zzafe();
        this.zzl = new zzfj(16);
        this.zzf = new zzfj(zzgg.zza);
        this.zzg = new zzfj(5);
        this.zzh = new zzfj();
        byte[] bArr = new byte[16];
        this.zzi = bArr;
        this.zzj = new zzfj(bArr);
        this.zzm = new ArrayDeque();
        this.zzn = new ArrayDeque();
        this.zze = new SparseArray();
        this.zzw = C.TIME_UNSET;
        this.zzv = C.TIME_UNSET;
        this.zzx = C.TIME_UNSET;
        this.zzD = zzach.zza;
        this.zzE = new zzadk[0];
        this.zzF = new zzadk[0];
    }

    private static int zza(int i) throws zzcf {
        if (i >= 0) {
            return i;
        }
        throw zzcf.zza("Unexpected negative value: " + i, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ab  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.gms.internal.ads.zzad zzf(java.util.List r14) {
        /*
            int r0 = r14.size()
            r1 = 0
            r2 = 0
            r4 = r2
            r3 = 0
        L8:
            if (r3 >= r0) goto Lb9
            java.lang.Object r5 = r14.get(r3)
            com.google.android.gms.internal.ads.zzahr r5 = (com.google.android.gms.internal.ads.zzahr) r5
            int r6 = r5.zzd
            r7 = 1886614376(0x70737368, float:3.013775E29)
            if (r6 != r7) goto Lb5
            if (r4 != 0) goto L1e
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
        L1e:
            com.google.android.gms.internal.ads.zzfj r5 = r5.zza
            byte[] r5 = r5.zzI()
            com.google.android.gms.internal.ads.zzfj r6 = new com.google.android.gms.internal.ads.zzfj
            r6.<init>(r5)
            int r8 = r6.zzd()
            r9 = 32
            if (r8 >= r9) goto L33
        L31:
            r6 = r2
            goto L99
        L33:
            r6.zzG(r1)
            int r8 = r6.zzf()
            int r9 = r6.zza()
            int r9 = r9 + 4
            if (r8 == r9) goto L43
            goto L31
        L43:
            int r8 = r6.zzf()
            if (r8 == r7) goto L4a
            goto L31
        L4a:
            int r7 = r6.zzf()
            int r7 = com.google.android.gms.internal.ads.zzahs.zze(r7)
            r8 = 1
            if (r7 <= r8) goto L6c
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r8 = "Unsupported pssh version: "
            r6.append(r8)
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            java.lang.String r7 = "PsshAtomUtil"
            com.google.android.gms.internal.ads.zzez.zzf(r7, r6)
            goto L31
        L6c:
            java.util.UUID r9 = new java.util.UUID
            long r10 = r6.zzs()
            long r12 = r6.zzs()
            r9.<init>(r10, r12)
            if (r7 != r8) goto L84
            int r8 = r6.zzo()
            int r8 = r8 * 16
            r6.zzH(r8)
        L84:
            int r8 = r6.zzo()
            int r10 = r6.zza()
            if (r8 == r10) goto L8f
            goto L31
        L8f:
            byte[] r10 = new byte[r8]
            r6.zzC(r10, r1, r8)
            com.google.android.gms.internal.ads.zzaim r6 = new com.google.android.gms.internal.ads.zzaim
            r6.<init>(r9, r7, r10)
        L99:
            if (r6 != 0) goto L9d
            r6 = r2
            goto La1
        L9d:
            java.util.UUID r6 = com.google.android.gms.internal.ads.zzaim.zza(r6)
        La1:
            if (r6 != 0) goto Lab
            java.lang.String r5 = "FragmentedMp4Extractor"
            java.lang.String r6 = "Skipped pssh atom (failed to extract uuid)"
            com.google.android.gms.internal.ads.zzez.zzf(r5, r6)
            goto Lb5
        Lab:
            com.google.android.gms.internal.ads.zzac r7 = new com.google.android.gms.internal.ads.zzac
            java.lang.String r8 = "video/mp4"
            r7.<init>(r6, r2, r8, r5)
            r4.add(r7)
        Lb5:
            int r3 = r3 + 1
            goto L8
        Lb9:
            if (r4 != 0) goto Lbc
            return r2
        Lbc:
            com.google.android.gms.internal.ads.zzad r14 = new com.google.android.gms.internal.ads.zzad
            r14.<init>(r4)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaig.zzf(java.util.List):com.google.android.gms.internal.ads.zzad");
    }

    private final void zzg() {
        this.zzo = 0;
        this.zzr = 0;
    }

    private static void zzh(zzfj zzfjVar, int i, zzair zzairVar) throws zzcf {
        zzfjVar.zzG(i + 8);
        int iZzf = zzfjVar.zzf() & ViewCompat.MEASURED_SIZE_MASK;
        if ((iZzf & 1) != 0) {
            throw zzcf.zzc("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (iZzf & 2) != 0;
        int iZzo = zzfjVar.zzo();
        if (iZzo == 0) {
            Arrays.fill(zzairVar.zzl, 0, zzairVar.zze, false);
            return;
        }
        int i2 = zzairVar.zze;
        if (iZzo != i2) {
            throw zzcf.zza("Senc sample count " + iZzo + " is different from fragment sample count" + i2, null);
        }
        Arrays.fill(zzairVar.zzl, 0, iZzo, z);
        zzairVar.zza(zzfjVar.zza());
        zzfj zzfjVar2 = zzairVar.zzn;
        zzfjVar.zzC(zzfjVar2.zzI(), 0, zzfjVar2.zzd());
        zzairVar.zzn.zzG(0);
        zzairVar.zzo = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:255:0x063b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzi(long r47) throws com.google.android.gms.internal.ads.zzcf {
        /*
            Method dump skipped, instruction units count: 1804
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaig.zzi(long):void");
    }

    private static final zzaib zzj(SparseArray sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return (zzaib) sparseArray.valueAt(0);
        }
        zzaib zzaibVar = (zzaib) sparseArray.get(i);
        Objects.requireNonNull(zzaibVar);
        return zzaibVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0246, code lost:
    
        r5.zzt(r10, r20, r33.zzz, 0, r23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0259, code lost:
    
        if (r33.zzn.isEmpty() != false) goto L391;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x025b, code lost:
    
        r1 = (com.google.android.gms.internal.ads.zzaie) r33.zzn.removeFirst();
        r33.zzu -= r1.zzc;
        r3 = r1.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x026e, code lost:
    
        if (r1.zzb == false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0270, code lost:
    
        r3 = r3 + r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0271, code lost:
    
        r5 = r33.zzE;
        r6 = r5.length;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0275, code lost:
    
        if (r8 >= r6) goto L394;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0277, code lost:
    
        r5[r8].zzt(r3, 1, r1.zzc, r33.zzu, null);
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x028f, code lost:
    
        if (r2.zzk() != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0291, code lost:
    
        r33.zzy = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0295, code lost:
    
        r33.zzo = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0298, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0099, code lost:
    
        r4 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009c, code lost:
    
        if (r33.zzo != 3) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009e, code lost:
    
        r3 = r2.zzb();
        r33.zzz = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a8, code lost:
    
        if (r2.zzf >= r2.zzi) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00aa, code lost:
    
        ((com.google.android.gms.internal.ads.zzabu) r34).zzo(r3, false);
        r1 = r2.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b3, code lost:
    
        if (r1 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b6, code lost:
    
        r3 = r2.zzb.zzn;
        r1 = r1.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bc, code lost:
    
        if (r1 == 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00be, code lost:
    
        r3.zzH(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c9, code lost:
    
        if (r2.zzb.zzb(r2.zzf) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cb, code lost:
    
        r3.zzH(r3.zzp() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d8, code lost:
    
        if (r2.zzk() != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00da, code lost:
    
        r33.zzy = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e5, code lost:
    
        if (r2.zzd.zza.zzg != 1) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e7, code lost:
    
        r33.zzz = r3 - 8;
        ((com.google.android.gms.internal.ads.zzabu) r34).zzo(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0101, code lost:
    
        if ("audio/ac4".equals(r2.zzd.zza.zzf.zzm) == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0103, code lost:
    
        r33.zzA = r2.zzc(r33.zzz, 7);
        com.google.android.gms.internal.ads.zzabi.zzb(r33.zzz, r33.zzj);
        r2.zza.zzr(r33.zzj, 7);
        r3 = r33.zzA + 7;
        r33.zzA = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0120, code lost:
    
        r3 = r2.zzc(r33.zzz, 0);
        r33.zzA = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0128, code lost:
    
        r33.zzz += r3;
        r33.zzo = 4;
        r33.zzB = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0132, code lost:
    
        r3 = r2.zzd.zza;
        r5 = r2.zza;
        r10 = r2.zze();
        r6 = r3.zzj;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x013e, code lost:
    
        if (r6 != 0) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0140, code lost:
    
        r3 = r33.zzA;
        r4 = r33.zzz;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0144, code lost:
    
        if (r3 >= r4) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0146, code lost:
    
        r33.zzA += r5.zzf(r34, r4 - r3, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0151, code lost:
    
        r13 = r33.zzg.zzI();
        r13[0] = 0;
        r13[1] = 0;
        r13[2] = 0;
        r14 = r6 + 1;
        r6 = 4 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0167, code lost:
    
        if (r33.zzA >= r33.zzz) goto L395;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0169, code lost:
    
        r12 = r33.zzB;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x016d, code lost:
    
        if (r12 != 0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x016f, code lost:
    
        ((com.google.android.gms.internal.ads.zzabu) r34).zzn(r13, r6, r14, r9);
        r33.zzg.zzG(r9);
        r12 = r33.zzg.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0180, code lost:
    
        if (r12 <= 0) goto L396;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0182, code lost:
    
        r33.zzB = r12 - 1;
        r33.zzf.zzG(r9);
        r5.zzr(r33.zzf, 4);
        r5.zzr(r33.zzg, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0199, code lost:
    
        if (r33.zzF.length <= 0) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x019b, code lost:
    
        r12 = r3.zzf.zzm;
        r17 = r13[4];
        r9 = com.google.android.gms.internal.ads.zzgg.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01a9, code lost:
    
        if ("video/avc".equals(r12) == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01ad, code lost:
    
        if ((r17 & com.applovin.exoplayer2.common.base.Ascii.US) == r4) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01b0, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01b6, code lost:
    
        if ("video/hevc".equals(r12) == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01bd, code lost:
    
        if (((r17 & 126) >> r8) != 39) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01c0, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01c1, code lost:
    
        r33.zzC = r9;
        r33.zzA += 5;
        r33.zzz += r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01d5, code lost:
    
        throw com.google.android.gms.internal.ads.zzcf.zza("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01d8, code lost:
    
        if (r33.zzC == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01da, code lost:
    
        r33.zzh.zzD(r12);
        ((com.google.android.gms.internal.ads.zzabu) r34).zzn(r33.zzh.zzI(), 0, r33.zzB, false);
        r5.zzr(r33.zzh, r33.zzB);
        r4 = r33.zzB;
        r8 = r33.zzh;
        r8 = com.google.android.gms.internal.ads.zzgg.zzb(r8.zzI(), r8.zzd());
        r33.zzh.zzG("video/hevc".equals(r3.zzf.zzm) ? 1 : 0);
        r33.zzh.zzF(r8);
        com.google.android.gms.internal.ads.zzabr.zza(r10, r33.zzh, r33.zzF);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x021f, code lost:
    
        r4 = r5.zzf(r34, r12, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0225, code lost:
    
        r33.zzA += r4;
        r33.zzB -= r4;
        r4 = 6;
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0231, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0235, code lost:
    
        r20 = r2.zza();
        r1 = r2.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x023d, code lost:
    
        if (r1 == null) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x023f, code lost:
    
        r23 = r1.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0244, code lost:
    
        r23 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.zzace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zzb(com.google.android.gms.internal.ads.zzacf r34, com.google.android.gms.internal.ads.zzadb r35) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1878
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaig.zzb(com.google.android.gms.internal.ads.zzacf, com.google.android.gms.internal.ads.zzadb):int");
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzc(zzach zzachVar) {
        this.zzD = zzachVar;
        zzg();
        zzadk[] zzadkVarArr = new zzadk[2];
        this.zzE = zzadkVarArr;
        int i = 0;
        zzadk[] zzadkVarArr2 = (zzadk[]) zzfs.zzK(zzadkVarArr, 0);
        this.zzE = zzadkVarArr2;
        for (zzadk zzadkVar : zzadkVarArr2) {
            zzadkVar.zzl(zzc);
        }
        this.zzF = new zzadk[this.zzd.size()];
        int i2 = 100;
        while (i < this.zzF.length) {
            int i3 = i2 + 1;
            zzadk zzadkVarZzw = this.zzD.zzw(i2, 3);
            zzadkVarZzw.zzl((zzam) this.zzd.get(i));
            this.zzF[i] = zzadkVarZzw;
            i++;
            i2 = i3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zzd(long j, long j2) {
        int size = this.zze.size();
        for (int i = 0; i < size; i++) {
            ((zzaif) this.zze.valueAt(i)).zzi();
        }
        this.zzn.clear();
        this.zzu = 0;
        this.zzv = j2;
        this.zzm.clear();
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final boolean zze(zzacf zzacfVar) throws IOException {
        return zzaio.zza(zzacfVar);
    }
}
