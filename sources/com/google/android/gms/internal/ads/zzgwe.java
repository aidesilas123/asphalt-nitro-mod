package com.google.android.gms.internal.ads;

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
/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgwe {
    public static final zzgwe zzA;
    public static final zzgwe zzB;
    public static final zzgwe zzC;
    public static final zzgwe zzD;
    public static final zzgwe zzE;
    public static final zzgwe zzF;
    public static final zzgwe zzG;
    public static final zzgwe zzH;
    public static final zzgwe zzI;
    public static final zzgwe zzJ;
    public static final zzgwe zzK;
    public static final zzgwe zzL;
    public static final zzgwe zzM;
    public static final zzgwe zzN;
    public static final zzgwe zzO;
    public static final zzgwe zzP;
    public static final zzgwe zzQ;
    public static final zzgwe zzR;
    public static final zzgwe zzS;
    public static final zzgwe zzT;
    public static final zzgwe zzU;
    public static final zzgwe zzV;
    public static final zzgwe zzW;
    public static final zzgwe zzX;
    public static final zzgwe zzY;
    private static final zzgwe[] zzZ;
    public static final zzgwe zza;
    private static final /* synthetic */ zzgwe[] zzaa;
    public static final zzgwe zzb;
    public static final zzgwe zzc;
    public static final zzgwe zzd;
    public static final zzgwe zze;
    public static final zzgwe zzf;
    public static final zzgwe zzg;
    public static final zzgwe zzh;
    public static final zzgwe zzi;
    public static final zzgwe zzj;
    public static final zzgwe zzk;
    public static final zzgwe zzl;
    public static final zzgwe zzm;
    public static final zzgwe zzn;
    public static final zzgwe zzo;
    public static final zzgwe zzp;
    public static final zzgwe zzq;
    public static final zzgwe zzr;
    public static final zzgwe zzs;
    public static final zzgwe zzt;
    public static final zzgwe zzu;
    public static final zzgwe zzv;
    public static final zzgwe zzw;
    public static final zzgwe zzx;
    public static final zzgwe zzy;
    public static final zzgwe zzz;
    private final zzgxa zzab;
    private final int zzac;
    private final Class zzad;

    static {
        zzgxa zzgxaVar = zzgxa.zze;
        zza = new zzgwe("DOUBLE", 0, 0, 1, zzgxaVar);
        zzgxa zzgxaVar2 = zzgxa.zzd;
        zzb = new zzgwe("FLOAT", 1, 1, 1, zzgxaVar2);
        zzgxa zzgxaVar3 = zzgxa.zzc;
        zzc = new zzgwe("INT64", 2, 2, 1, zzgxaVar3);
        zzd = new zzgwe("UINT64", 3, 3, 1, zzgxaVar3);
        zzgxa zzgxaVar4 = zzgxa.zzb;
        zze = new zzgwe("INT32", 4, 4, 1, zzgxaVar4);
        zzf = new zzgwe("FIXED64", 5, 5, 1, zzgxaVar3);
        zzg = new zzgwe("FIXED32", 6, 6, 1, zzgxaVar4);
        zzgxa zzgxaVar5 = zzgxa.zzf;
        zzh = new zzgwe("BOOL", 7, 7, 1, zzgxaVar5);
        zzgxa zzgxaVar6 = zzgxa.zzg;
        zzi = new zzgwe("STRING", 8, 8, 1, zzgxaVar6);
        zzgxa zzgxaVar7 = zzgxa.zzj;
        zzj = new zzgwe("MESSAGE", 9, 9, 1, zzgxaVar7);
        zzgxa zzgxaVar8 = zzgxa.zzh;
        zzk = new zzgwe("BYTES", 10, 10, 1, zzgxaVar8);
        zzl = new zzgwe("UINT32", 11, 11, 1, zzgxaVar4);
        zzgxa zzgxaVar9 = zzgxa.zzi;
        zzm = new zzgwe("ENUM", 12, 12, 1, zzgxaVar9);
        zzn = new zzgwe("SFIXED32", 13, 13, 1, zzgxaVar4);
        zzo = new zzgwe("SFIXED64", 14, 14, 1, zzgxaVar3);
        zzp = new zzgwe("SINT32", 15, 15, 1, zzgxaVar4);
        zzq = new zzgwe("SINT64", 16, 16, 1, zzgxaVar3);
        zzr = new zzgwe("GROUP", 17, 17, 1, zzgxaVar7);
        zzs = new zzgwe("DOUBLE_LIST", 18, 18, 2, zzgxaVar);
        zzt = new zzgwe("FLOAT_LIST", 19, 19, 2, zzgxaVar2);
        zzu = new zzgwe("INT64_LIST", 20, 20, 2, zzgxaVar3);
        zzv = new zzgwe("UINT64_LIST", 21, 21, 2, zzgxaVar3);
        zzw = new zzgwe("INT32_LIST", 22, 22, 2, zzgxaVar4);
        zzx = new zzgwe("FIXED64_LIST", 23, 23, 2, zzgxaVar3);
        zzy = new zzgwe("FIXED32_LIST", 24, 24, 2, zzgxaVar4);
        zzz = new zzgwe("BOOL_LIST", 25, 25, 2, zzgxaVar5);
        zzA = new zzgwe("STRING_LIST", 26, 26, 2, zzgxaVar6);
        zzB = new zzgwe("MESSAGE_LIST", 27, 27, 2, zzgxaVar7);
        zzC = new zzgwe("BYTES_LIST", 28, 28, 2, zzgxaVar8);
        zzD = new zzgwe("UINT32_LIST", 29, 29, 2, zzgxaVar4);
        zzE = new zzgwe("ENUM_LIST", 30, 30, 2, zzgxaVar9);
        zzF = new zzgwe("SFIXED32_LIST", 31, 31, 2, zzgxaVar4);
        zzG = new zzgwe("SFIXED64_LIST", 32, 32, 2, zzgxaVar3);
        zzH = new zzgwe("SINT32_LIST", 33, 33, 2, zzgxaVar4);
        zzI = new zzgwe("SINT64_LIST", 34, 34, 2, zzgxaVar3);
        zzJ = new zzgwe("DOUBLE_LIST_PACKED", 35, 35, 3, zzgxaVar);
        zzK = new zzgwe("FLOAT_LIST_PACKED", 36, 36, 3, zzgxaVar2);
        zzL = new zzgwe("INT64_LIST_PACKED", 37, 37, 3, zzgxaVar3);
        zzM = new zzgwe("UINT64_LIST_PACKED", 38, 38, 3, zzgxaVar3);
        zzN = new zzgwe("INT32_LIST_PACKED", 39, 39, 3, zzgxaVar4);
        zzO = new zzgwe("FIXED64_LIST_PACKED", 40, 40, 3, zzgxaVar3);
        zzP = new zzgwe("FIXED32_LIST_PACKED", 41, 41, 3, zzgxaVar4);
        zzQ = new zzgwe("BOOL_LIST_PACKED", 42, 42, 3, zzgxaVar5);
        zzR = new zzgwe("UINT32_LIST_PACKED", 43, 43, 3, zzgxaVar4);
        zzS = new zzgwe("ENUM_LIST_PACKED", 44, 44, 3, zzgxaVar9);
        zzT = new zzgwe("SFIXED32_LIST_PACKED", 45, 45, 3, zzgxaVar4);
        zzgxa zzgxaVar10 = zzgxa.zzc;
        zzU = new zzgwe("SFIXED64_LIST_PACKED", 46, 46, 3, zzgxaVar10);
        zzV = new zzgwe("SINT32_LIST_PACKED", 47, 47, 3, zzgxaVar4);
        zzW = new zzgwe("SINT64_LIST_PACKED", 48, 48, 3, zzgxaVar10);
        zzX = new zzgwe("GROUP_LIST", 49, 49, 2, zzgxaVar7);
        zzY = new zzgwe("MAP", 50, 50, 4, zzgxa.zza);
        zzaa = new zzgwe[]{zza, zzb, zzc, zzd, zze, zzf, zzg, zzh, zzi, zzj, zzk, zzl, zzm, zzn, zzo, zzp, zzq, zzr, zzs, zzt, zzu, zzv, zzw, zzx, zzy, zzz, zzA, zzB, zzC, zzD, zzE, zzF, zzG, zzH, zzI, zzJ, zzK, zzL, zzM, zzN, zzO, zzP, zzQ, zzR, zzS, zzT, zzU, zzV, zzW, zzX, zzY};
        zzgwe[] zzgweVarArrValues = values();
        zzZ = new zzgwe[zzgweVarArrValues.length];
        for (zzgwe zzgweVar : zzgweVarArrValues) {
            zzZ[zzgweVar.zzac] = zzgweVar;
        }
    }

    private zzgwe(String str, int i, int i2, int i3, zzgxa zzgxaVar) {
        this.zzac = i2;
        this.zzab = zzgxaVar;
        int i4 = i3 - 1;
        if (i4 == 1 || i4 == 3) {
            this.zzad = zzgxaVar.zza();
        } else {
            this.zzad = null;
        }
        if (i3 == 1) {
            zzgxa zzgxaVar2 = zzgxa.zza;
            zzgxaVar.ordinal();
        }
    }

    public static zzgwe[] values() {
        return (zzgwe[]) zzaa.clone();
    }

    public final int zza() {
        return this.zzac;
    }
}
