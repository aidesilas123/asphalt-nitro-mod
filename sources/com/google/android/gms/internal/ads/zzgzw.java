package com.google.android.gms.internal.ads;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzc' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgzw {
    public static final zzgzw zza;
    public static final zzgzw zzb;
    public static final zzgzw zzc;
    public static final zzgzw zzd;
    public static final zzgzw zze;
    public static final zzgzw zzf;
    public static final zzgzw zzg;
    public static final zzgzw zzh;
    public static final zzgzw zzi;
    public static final zzgzw zzj;
    public static final zzgzw zzk;
    public static final zzgzw zzl;
    public static final zzgzw zzm;
    public static final zzgzw zzn;
    public static final zzgzw zzo;
    public static final zzgzw zzp;
    public static final zzgzw zzq;
    public static final zzgzw zzr;
    private static final /* synthetic */ zzgzw[] zzs;
    private final zzgzx zzt;

    static {
        zzgzw zzgzwVar = new zzgzw("DOUBLE", 0, zzgzx.DOUBLE, 1);
        zza = zzgzwVar;
        zzgzw zzgzwVar2 = new zzgzw("FLOAT", 1, zzgzx.FLOAT, 5);
        zzb = zzgzwVar2;
        zzgzx zzgzxVar = zzgzx.LONG;
        zzgzw zzgzwVar3 = new zzgzw("INT64", 2, zzgzxVar, 0);
        zzc = zzgzwVar3;
        zzgzw zzgzwVar4 = new zzgzw("UINT64", 3, zzgzxVar, 0);
        zzd = zzgzwVar4;
        zzgzx zzgzxVar2 = zzgzx.INT;
        zzgzw zzgzwVar5 = new zzgzw("INT32", 4, zzgzxVar2, 0);
        zze = zzgzwVar5;
        zzgzw zzgzwVar6 = new zzgzw("FIXED64", 5, zzgzxVar, 1);
        zzf = zzgzwVar6;
        zzgzw zzgzwVar7 = new zzgzw("FIXED32", 6, zzgzxVar2, 5);
        zzg = zzgzwVar7;
        zzgzw zzgzwVar8 = new zzgzw("BOOL", 7, zzgzx.BOOLEAN, 0);
        zzh = zzgzwVar8;
        zzgzw zzgzwVar9 = new zzgzw("STRING", 8, zzgzx.STRING, 2);
        zzi = zzgzwVar9;
        zzgzx zzgzxVar3 = zzgzx.MESSAGE;
        zzgzw zzgzwVar10 = new zzgzw("GROUP", 9, zzgzxVar3, 3);
        zzj = zzgzwVar10;
        zzgzw zzgzwVar11 = new zzgzw("MESSAGE", 10, zzgzxVar3, 2);
        zzk = zzgzwVar11;
        zzgzw zzgzwVar12 = new zzgzw("BYTES", 11, zzgzx.BYTE_STRING, 2);
        zzl = zzgzwVar12;
        zzgzw zzgzwVar13 = new zzgzw("UINT32", 12, zzgzxVar2, 0);
        zzm = zzgzwVar13;
        zzgzw zzgzwVar14 = new zzgzw("ENUM", 13, zzgzx.ENUM, 0);
        zzn = zzgzwVar14;
        zzgzw zzgzwVar15 = new zzgzw("SFIXED32", 14, zzgzxVar2, 5);
        zzo = zzgzwVar15;
        zzgzw zzgzwVar16 = new zzgzw("SFIXED64", 15, zzgzxVar, 1);
        zzp = zzgzwVar16;
        zzgzw zzgzwVar17 = new zzgzw("SINT32", 16, zzgzxVar2, 0);
        zzq = zzgzwVar17;
        zzgzw zzgzwVar18 = new zzgzw("SINT64", 17, zzgzxVar, 0);
        zzr = zzgzwVar18;
        zzs = new zzgzw[]{zzgzwVar, zzgzwVar2, zzgzwVar3, zzgzwVar4, zzgzwVar5, zzgzwVar6, zzgzwVar7, zzgzwVar8, zzgzwVar9, zzgzwVar10, zzgzwVar11, zzgzwVar12, zzgzwVar13, zzgzwVar14, zzgzwVar15, zzgzwVar16, zzgzwVar17, zzgzwVar18};
    }

    private zzgzw(String str, int i, zzgzx zzgzxVar, int i2) {
        this.zzt = zzgzxVar;
    }

    public static zzgzw[] values() {
        return (zzgzw[]) zzs.clone();
    }

    public final zzgzx zza() {
        return this.zzt;
    }
}
