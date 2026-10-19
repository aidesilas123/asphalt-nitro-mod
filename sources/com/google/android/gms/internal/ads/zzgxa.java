package com.google.android.gms.internal.ads;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzb' uses external variables
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
public final class zzgxa {
    public static final zzgxa zza;
    public static final zzgxa zzb;
    public static final zzgxa zzc;
    public static final zzgxa zzd;
    public static final zzgxa zze;
    public static final zzgxa zzf;
    public static final zzgxa zzg;
    public static final zzgxa zzh;
    public static final zzgxa zzi;
    public static final zzgxa zzj;
    private static final /* synthetic */ zzgxa[] zzk;
    private final Class zzl;
    private final Class zzm;
    private final Object zzn;

    static {
        zzgxa zzgxaVar = new zzgxa("VOID", 0, Void.class, Void.class, null);
        zza = zzgxaVar;
        Class cls = Integer.TYPE;
        zzgxa zzgxaVar2 = new zzgxa("INT", 1, cls, Integer.class, 0);
        zzb = zzgxaVar2;
        zzgxa zzgxaVar3 = new zzgxa("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzgxaVar3;
        zzgxa zzgxaVar4 = new zzgxa("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzgxaVar4;
        zzgxa zzgxaVar5 = new zzgxa("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzgxaVar5;
        zzgxa zzgxaVar6 = new zzgxa("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzgxaVar6;
        zzgxa zzgxaVar7 = new zzgxa("STRING", 6, String.class, String.class, "");
        zzg = zzgxaVar7;
        zzgxa zzgxaVar8 = new zzgxa("BYTE_STRING", 7, zzgve.class, zzgve.class, zzgve.zzb);
        zzh = zzgxaVar8;
        zzgxa zzgxaVar9 = new zzgxa("ENUM", 8, cls, Integer.class, null);
        zzi = zzgxaVar9;
        zzgxa zzgxaVar10 = new zzgxa("MESSAGE", 9, Object.class, Object.class, null);
        zzj = zzgxaVar10;
        zzk = new zzgxa[]{zzgxaVar, zzgxaVar2, zzgxaVar3, zzgxaVar4, zzgxaVar5, zzgxaVar6, zzgxaVar7, zzgxaVar8, zzgxaVar9, zzgxaVar10};
    }

    private zzgxa(String str, int i, Class cls, Class cls2, Object obj) {
        this.zzl = cls;
        this.zzm = cls2;
        this.zzn = obj;
    }

    public static zzgxa[] values() {
        return (zzgxa[]) zzk.clone();
    }

    public final Class zza() {
        return this.zzm;
    }
}
