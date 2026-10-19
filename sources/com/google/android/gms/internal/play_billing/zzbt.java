package com.google.android.gms.internal.play_billing;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zza' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbt {
    public static final zzbt zzA;
    public static final zzbt zzB;
    public static final zzbt zzC;
    public static final zzbt zzD;
    public static final zzbt zzE;
    public static final zzbt zzF;
    public static final zzbt zzG;
    public static final zzbt zzH;
    public static final zzbt zzI;
    public static final zzbt zzJ;
    public static final zzbt zzK;
    public static final zzbt zzL;
    public static final zzbt zzM;
    public static final zzbt zzN;
    public static final zzbt zzO;
    public static final zzbt zzP;
    public static final zzbt zzQ;
    public static final zzbt zzR;
    public static final zzbt zzS;
    public static final zzbt zzT;
    public static final zzbt zzU;
    public static final zzbt zzV;
    public static final zzbt zzW;
    public static final zzbt zzX;
    public static final zzbt zzY;
    private static final zzbt[] zzZ;
    public static final zzbt zza;
    private static final /* synthetic */ zzbt[] zzaa;
    public static final zzbt zzb;
    public static final zzbt zzc;
    public static final zzbt zzd;
    public static final zzbt zze;
    public static final zzbt zzf;
    public static final zzbt zzg;
    public static final zzbt zzh;
    public static final zzbt zzi;
    public static final zzbt zzj;
    public static final zzbt zzk;
    public static final zzbt zzl;
    public static final zzbt zzm;
    public static final zzbt zzn;
    public static final zzbt zzo;
    public static final zzbt zzp;
    public static final zzbt zzq;
    public static final zzbt zzr;
    public static final zzbt zzs;
    public static final zzbt zzt;
    public static final zzbt zzu;
    public static final zzbt zzv;
    public static final zzbt zzw;
    public static final zzbt zzx;
    public static final zzbt zzy;
    public static final zzbt zzz;
    private final zzcj zzab;
    private final int zzac;
    private final Class zzad;

    static {
        zzcj zzcjVar = zzcj.zze;
        zza = new zzbt("DOUBLE", 0, 0, 1, zzcjVar);
        zzcj zzcjVar2 = zzcj.zzd;
        zzb = new zzbt("FLOAT", 1, 1, 1, zzcjVar2);
        zzcj zzcjVar3 = zzcj.zzc;
        zzc = new zzbt("INT64", 2, 2, 1, zzcjVar3);
        zzd = new zzbt("UINT64", 3, 3, 1, zzcjVar3);
        zzcj zzcjVar4 = zzcj.zzb;
        zze = new zzbt("INT32", 4, 4, 1, zzcjVar4);
        zzf = new zzbt("FIXED64", 5, 5, 1, zzcjVar3);
        zzg = new zzbt("FIXED32", 6, 6, 1, zzcjVar4);
        zzcj zzcjVar5 = zzcj.zzf;
        zzh = new zzbt("BOOL", 7, 7, 1, zzcjVar5);
        zzcj zzcjVar6 = zzcj.zzg;
        zzi = new zzbt("STRING", 8, 8, 1, zzcjVar6);
        zzcj zzcjVar7 = zzcj.zzj;
        zzj = new zzbt("MESSAGE", 9, 9, 1, zzcjVar7);
        zzcj zzcjVar8 = zzcj.zzh;
        zzk = new zzbt("BYTES", 10, 10, 1, zzcjVar8);
        zzl = new zzbt("UINT32", 11, 11, 1, zzcjVar4);
        zzcj zzcjVar9 = zzcj.zzi;
        zzm = new zzbt("ENUM", 12, 12, 1, zzcjVar9);
        zzn = new zzbt("SFIXED32", 13, 13, 1, zzcjVar4);
        zzo = new zzbt("SFIXED64", 14, 14, 1, zzcjVar3);
        zzp = new zzbt("SINT32", 15, 15, 1, zzcjVar4);
        zzq = new zzbt("SINT64", 16, 16, 1, zzcjVar3);
        zzr = new zzbt("GROUP", 17, 17, 1, zzcjVar7);
        zzs = new zzbt("DOUBLE_LIST", 18, 18, 2, zzcjVar);
        zzt = new zzbt("FLOAT_LIST", 19, 19, 2, zzcjVar2);
        zzu = new zzbt("INT64_LIST", 20, 20, 2, zzcjVar3);
        zzv = new zzbt("UINT64_LIST", 21, 21, 2, zzcjVar3);
        zzw = new zzbt("INT32_LIST", 22, 22, 2, zzcjVar4);
        zzx = new zzbt("FIXED64_LIST", 23, 23, 2, zzcjVar3);
        zzy = new zzbt("FIXED32_LIST", 24, 24, 2, zzcjVar4);
        zzz = new zzbt("BOOL_LIST", 25, 25, 2, zzcjVar5);
        zzA = new zzbt("STRING_LIST", 26, 26, 2, zzcjVar6);
        zzB = new zzbt("MESSAGE_LIST", 27, 27, 2, zzcjVar7);
        zzC = new zzbt("BYTES_LIST", 28, 28, 2, zzcjVar8);
        zzD = new zzbt("UINT32_LIST", 29, 29, 2, zzcjVar4);
        zzE = new zzbt("ENUM_LIST", 30, 30, 2, zzcjVar9);
        zzF = new zzbt("SFIXED32_LIST", 31, 31, 2, zzcjVar4);
        zzG = new zzbt("SFIXED64_LIST", 32, 32, 2, zzcjVar3);
        zzH = new zzbt("SINT32_LIST", 33, 33, 2, zzcjVar4);
        zzI = new zzbt("SINT64_LIST", 34, 34, 2, zzcjVar3);
        zzJ = new zzbt("DOUBLE_LIST_PACKED", 35, 35, 3, zzcjVar);
        zzK = new zzbt("FLOAT_LIST_PACKED", 36, 36, 3, zzcjVar2);
        zzL = new zzbt("INT64_LIST_PACKED", 37, 37, 3, zzcjVar3);
        zzM = new zzbt("UINT64_LIST_PACKED", 38, 38, 3, zzcjVar3);
        zzN = new zzbt("INT32_LIST_PACKED", 39, 39, 3, zzcjVar4);
        zzO = new zzbt("FIXED64_LIST_PACKED", 40, 40, 3, zzcjVar3);
        zzP = new zzbt("FIXED32_LIST_PACKED", 41, 41, 3, zzcjVar4);
        zzQ = new zzbt("BOOL_LIST_PACKED", 42, 42, 3, zzcjVar5);
        zzR = new zzbt("UINT32_LIST_PACKED", 43, 43, 3, zzcjVar4);
        zzS = new zzbt("ENUM_LIST_PACKED", 44, 44, 3, zzcjVar9);
        zzT = new zzbt("SFIXED32_LIST_PACKED", 45, 45, 3, zzcjVar4);
        zzcj zzcjVar10 = zzcj.zzc;
        zzU = new zzbt("SFIXED64_LIST_PACKED", 46, 46, 3, zzcjVar10);
        zzV = new zzbt("SINT32_LIST_PACKED", 47, 47, 3, zzcjVar4);
        zzW = new zzbt("SINT64_LIST_PACKED", 48, 48, 3, zzcjVar10);
        zzX = new zzbt("GROUP_LIST", 49, 49, 2, zzcjVar7);
        zzY = new zzbt("MAP", 50, 50, 4, zzcj.zza);
        zzaa = new zzbt[]{zza, zzb, zzc, zzd, zze, zzf, zzg, zzh, zzi, zzj, zzk, zzl, zzm, zzn, zzo, zzp, zzq, zzr, zzs, zzt, zzu, zzv, zzw, zzx, zzy, zzz, zzA, zzB, zzC, zzD, zzE, zzF, zzG, zzH, zzI, zzJ, zzK, zzL, zzM, zzN, zzO, zzP, zzQ, zzR, zzS, zzT, zzU, zzV, zzW, zzX, zzY};
        zzbt[] zzbtVarArrValues = values();
        zzZ = new zzbt[zzbtVarArrValues.length];
        for (zzbt zzbtVar : zzbtVarArrValues) {
            zzZ[zzbtVar.zzac] = zzbtVar;
        }
    }

    private zzbt(String str, int i, int i2, int i3, zzcj zzcjVar) {
        this.zzac = i2;
        this.zzab = zzcjVar;
        int i4 = i3 - 1;
        if (i4 == 1 || i4 == 3) {
            this.zzad = zzcjVar.zza();
        } else {
            this.zzad = null;
        }
        if (i3 == 1) {
            zzcj zzcjVar2 = zzcj.zza;
            zzcjVar.ordinal();
        }
    }

    public static zzbt[] values() {
        return (zzbt[]) zzaa.clone();
    }

    public final int zza() {
        return this.zzac;
    }
}
