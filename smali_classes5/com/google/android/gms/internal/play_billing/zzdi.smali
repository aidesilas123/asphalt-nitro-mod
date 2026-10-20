###### Class com.google.android.gms.internal.play_billing.zzdi (com.google.android.gms.internal.play_billing.zzdi)
.class final Lcom/google/android/gms/internal/play_billing/zzdi;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/play_billing/zzdp<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/play_billing/zzdf;

.field private final zzh:Z

.field private final zzi:[I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:Lcom/google/android/gms/internal/play_billing/zzct;

.field private final zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

.field private final zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

.field private final zzo:I

.field private final zzp:Lcom/google/android/gms/internal/play_billing/zzdk;

.field private final zzq:Lcom/google/android/gms/internal/play_billing/zzda;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzdf;IZ[IIILcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzct;Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzda;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzf:I

    iput p6, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzo:I

    const/4 p1, 0x0

    if-eqz p14, :cond_17

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/play_billing/zzbo;->zzc(Lcom/google/android/gms/internal/play_billing/zzdf;)Z

    move-result p2

    if-eqz p2, :cond_17

    const/4 p1, 0x1

    :cond_17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzi:[I

    iput p9, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzj:I

    iput p10, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzk:I

    iput-object p11, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp:Lcom/google/android/gms/internal/play_billing/zzdk;

    iput-object p12, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzl:Lcom/google/android/gms/internal/play_billing/zzct;

    iput-object p13, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    iput-object p14, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzg:Lcom/google/android/gms/internal/play_billing/zzdf;

    iput-object p15, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzq:Lcom/google/android/gms/internal/play_billing/zzda;

    return-void
.end method

.method private final zzA(I)Lcom/google/android/gms/internal/play_billing/zzce;
    .registers 3

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzce;

    return-object p1
.end method

.method private final zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdp;

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdn;->zza()Lcom/google/android/gms/internal/play_billing/zzdn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzdn;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzC(I)Ljava/lang/Object;
    .registers 3

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzD(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_17

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_17
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    return-object p1

    :cond_25
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2e

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    return-object p2
.end method

.method private final zzE(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 7

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_f

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    return-object p1

    :cond_25
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2e

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    return-object p2
.end method

.method private static zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zzG(Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzH(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_36

    :cond_2c
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_36
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    return-void

    :cond_3a
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    :cond_4f
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_53
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget p3, v0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzI(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v0, v0, p3

    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object p2

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3a

    :cond_30
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_3a
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzK(Ljava/lang/Object;II)V

    return-void

    :cond_3e
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzdp;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    :cond_53
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_57
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget p3, v0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzJ(Ljava/lang/Object;I)V
    .registers 8

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzv(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    return-void

    :cond_11
    ushr-int/lit8 p2, p2, 0x14

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzK(Ljava/lang/Object;II)V
    .registers 6

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzv(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzL(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 7

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzM(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 8

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzK(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzN(Lcom/google/android/gms/internal/play_billing/zzey;ILjava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzC(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzcy;

    const/4 p1, 0x0

    throw p1
.end method

.method private final zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private final zzP(Ljava/lang/Object;I)Z
    .registers 12

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzv(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_ee

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_fc

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_29
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_30

    return v5

    :cond_30
    return v4

    :pswitch_31
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3a

    return v5

    :cond_3a
    return v4

    :pswitch_3b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_42

    return v5

    :cond_42
    return v4

    :pswitch_43
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4c

    return v5

    :cond_4c
    return v4

    :pswitch_4d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_54

    return v5

    :cond_54
    return v4

    :pswitch_55
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5c

    return v5

    :cond_5c
    return v4

    :pswitch_5d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_64

    return v5

    :cond_64
    return v4

    :pswitch_65
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzba;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzba;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    return v5

    :cond_72
    return v4

    :pswitch_73
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7a

    return v5

    :cond_7a
    return v4

    :pswitch_7b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8d

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8c

    return v5

    :cond_8c
    return v4

    :cond_8d
    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz p2, :cond_9b

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzba;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzba;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9a

    return v5

    :cond_9a
    return v4

    :cond_9b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_a6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_ad

    return v5

    :cond_ad
    return v4

    :pswitch_ae
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_b7

    return v5

    :cond_b7
    return v4

    :pswitch_b8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_bf

    return v5

    :cond_bf
    return v4

    :pswitch_c0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_c9

    return v5

    :cond_c9
    return v4

    :pswitch_ca
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_d3

    return v5

    :cond_d3
    return v4

    :pswitch_d4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_df

    return v5

    :cond_df
    return v4

    :pswitch_e0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_ed

    return v5

    :cond_ed
    return v4

    :cond_ee
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_fa

    return v5

    :cond_fa
    return v4

    nop

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_d4
        :pswitch_ca
        :pswitch_c0
        :pswitch_b8
        :pswitch_ae
        :pswitch_a6
        :pswitch_a1
        :pswitch_7b
        :pswitch_73
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_43
        :pswitch_3b
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method

.method private final zzQ(Ljava/lang/Object;IIII)Z
    .registers 7

    const v0, 0xfffff

    if-ne p3, v0, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_a
    and-int p1, p4, p5

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private static zzR(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzdp;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzk(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzS(Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzcb;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzcb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzt()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method private final zzT(Ljava/lang/Object;II)Z
    .registers 6

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzv(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private static zzU(Ljava/lang/Object;J)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzey;->zzF(ILjava/lang/String;)V

    return-void

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzey;->zzd(ILcom/google/android/gms/internal/play_billing/zzba;)V

    return-void
.end method

.method static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeh;
    .registers 3

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzcb;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcb;->zzc:Lcom/google/android/gms/internal/play_billing/zzeh;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzc()Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzf()Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcb;->zzc:Lcom/google/android/gms/internal/play_billing/zzeh;

    :cond_10
    return-object v0
.end method

.method static zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzdc;Lcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzct;Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzda;)Lcom/google/android/gms/internal/play_billing/zzdi;
    .registers 37

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzdo;

    if-eqz v1, :cond_3df

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_25

    const/4 v4, 0x1

    :goto_1b
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_26

    move v4, v7

    goto :goto_1b

    :cond_25
    const/4 v7, 0x1

    :cond_26
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_45

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_32
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_42

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_32

    :cond_42
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_45
    if-nez v7, :cond_56

    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzdi;->zza:[I

    move-object/from16 v17, v7

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    goto/16 :goto_166

    :cond_56
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_75

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_62
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_72

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_62

    :cond_72
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_75
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_94

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_81
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_91

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_81

    :cond_91
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_94
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_b3

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_a0
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_b0

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_a0

    :cond_b0
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_b3
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_d2

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_bf
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_cf

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_bf

    :cond_cf
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_d2
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f1

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_de
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_ee

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_de

    :cond_ee
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f1
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_110

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_fd
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10d

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_fd

    :cond_10d
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_110
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_131

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_11c
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12d

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_11c

    :cond_12d
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_131
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_154

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_13d
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_14f

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_13d

    :cond_14f
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_154
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    new-array v7, v13, [I

    move-object/from16 v17, v7

    move v13, v9

    move/from16 v18, v14

    move v7, v4

    move v14, v10

    move v4, v15

    :goto_166
    sget-object v9, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zze()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zza()Lcom/google/android/gms/internal/play_billing/zzdf;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    add-int v19, v18, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v22, v18

    move/from16 v23, v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_186
    if-ge v4, v2, :cond_3ba

    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1ae

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_196
    add-int/lit8 v25, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_1a8

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v4, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v25

    goto :goto_196

    :cond_1a8
    shl-int v3, v3, v24

    or-int/2addr v4, v3

    move/from16 v3, v25

    goto :goto_1b0

    :cond_1ae
    move/from16 v3, v24

    :goto_1b0
    add-int/lit8 v24, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_1d6

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v8, v24

    const/16 v24, 0xd

    :goto_1be
    add-int/lit8 v25, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_1d0

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v24

    or-int/2addr v3, v8

    add-int/lit8 v24, v24, 0xd

    move/from16 v8, v25

    goto :goto_1be

    :cond_1d0
    shl-int v8, v8, v24

    or-int/2addr v3, v8

    move/from16 v8, v25

    goto :goto_1d8

    :cond_1d6
    move/from16 v8, v24

    :goto_1d8
    and-int/lit16 v6, v3, 0x400

    if-eqz v6, :cond_1e2

    add-int/lit8 v6, v20, 0x1

    aput v21, v17, v20

    move/from16 v20, v6

    :cond_1e2
    and-int/lit16 v6, v3, 0xff

    const/16 v5, 0x33

    if-lt v6, v5, :cond_284

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v8, v2, :cond_213

    and-int/lit16 v8, v8, 0x1fff

    const/16 v28, 0xd

    :goto_1f9
    add-int/lit8 v29, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v2, :cond_20e

    and-int/lit16 v2, v5, 0x1fff

    shl-int v2, v2, v28

    or-int/2addr v8, v2

    add-int/lit8 v28, v28, 0xd

    move/from16 v5, v29

    const v2, 0xd800

    goto :goto_1f9

    :cond_20e
    shl-int v2, v5, v28

    or-int/2addr v8, v2

    move/from16 v5, v29

    :cond_213
    add-int/lit8 v2, v6, -0x33

    move/from16 v28, v5

    const/16 v5, 0x9

    if-eq v2, v5, :cond_23a

    const/16 v5, 0x11

    if-ne v2, v5, :cond_220

    goto :goto_23a

    :cond_220
    const/16 v5, 0xc

    if-ne v2, v5, :cond_247

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zzc()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_22f

    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_247

    :cond_22f
    div-int/lit8 v2, v21, 0x3

    add-int/2addr v2, v2

    add-int/2addr v2, v5

    add-int/lit8 v5, v16, 0x1

    aget-object v16, v10, v16

    aput-object v16, v12, v2

    goto :goto_245

    :cond_23a
    :goto_23a
    div-int/lit8 v2, v21, 0x3

    add-int/2addr v2, v2

    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/lit8 v5, v16, 0x1

    aget-object v16, v10, v16

    aput-object v16, v12, v2

    :goto_245
    move/from16 v16, v5

    :cond_247
    add-int/2addr v8, v8

    aget-object v2, v10, v8

    instance-of v5, v2, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_251

    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_259

    :cond_251
    check-cast v2, Ljava/lang/String;

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v10, v8

    :goto_259
    move v5, v13

    move/from16 v29, v14

    invoke-virtual {v9, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    add-int/lit8 v8, v8, 0x1

    aget-object v13, v10, v8

    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_26c

    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_274

    :cond_26c
    check-cast v13, Ljava/lang/String;

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    aput-object v13, v10, v8

    :goto_274
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v8, v13

    move/from16 v27, v5

    move/from16 v24, v8

    move/from16 v25, v28

    const/4 v8, 0x0

    move-object/from16 v28, v1

    goto/16 :goto_385

    :cond_284
    move/from16 v26, v2

    move v5, v13

    move/from16 v29, v14

    add-int/lit8 v2, v16, 0x1

    aget-object v13, v10, v16

    check-cast v13, Ljava/lang/String;

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/16 v14, 0x9

    if-eq v6, v14, :cond_306

    const/16 v14, 0x11

    if-ne v6, v14, :cond_29d

    goto/16 :goto_306

    :cond_29d
    const/16 v14, 0x1b

    if-eq v6, v14, :cond_2f6

    const/16 v14, 0x31

    if-ne v6, v14, :cond_2a6

    goto :goto_2f6

    :cond_2a6
    const/16 v14, 0xc

    if-eq v6, v14, :cond_2de

    const/16 v14, 0x1e

    if-eq v6, v14, :cond_2de

    const/16 v14, 0x2c

    if-ne v6, v14, :cond_2b3

    goto :goto_2de

    :cond_2b3
    const/16 v14, 0x32

    if-ne v6, v14, :cond_2da

    add-int/lit8 v14, v22, 0x1

    aput v21, v17, v22

    div-int/lit8 v22, v21, 0x3

    add-int/lit8 v27, v2, 0x1

    aget-object v2, v10, v2

    add-int v22, v22, v22

    aput-object v2, v12, v22

    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_2d6

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v2, v27, 0x1

    aget-object v27, v10, v27

    aput-object v27, v12, v22

    move/from16 v27, v5

    move/from16 v22, v14

    goto :goto_2dc

    :cond_2d6
    move/from16 v22, v14

    move/from16 v2, v27

    :cond_2da
    move/from16 v27, v5

    :goto_2dc
    const/4 v5, 0x1

    goto :goto_313

    :cond_2de
    :goto_2de
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zzc()I

    move-result v14

    move/from16 v27, v5

    const/4 v5, 0x1

    if-eq v14, v5, :cond_2eb

    and-int/lit16 v14, v3, 0x800

    if-eqz v14, :cond_313

    :cond_2eb
    div-int/lit8 v14, v21, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v5

    add-int/lit8 v24, v2, 0x1

    aget-object v2, v10, v2

    aput-object v2, v12, v14

    goto :goto_303

    :cond_2f6
    :goto_2f6
    move/from16 v27, v5

    const/4 v5, 0x1

    div-int/lit8 v14, v21, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v5

    add-int/lit8 v24, v2, 0x1

    aget-object v2, v10, v2

    aput-object v2, v12, v14

    :goto_303
    move/from16 v2, v24

    goto :goto_313

    :cond_306
    :goto_306
    move/from16 v27, v5

    const/4 v5, 0x1

    div-int/lit8 v14, v21, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v5

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v12, v14

    :cond_313
    :goto_313
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v14, v13

    and-int/lit16 v13, v3, 0x1000

    const v24, 0xfffff

    if-eqz v13, :cond_36e

    const/16 v13, 0x11

    if-gt v6, v13, :cond_36e

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v5, 0xd800

    if-lt v8, v5, :cond_348

    and-int/lit16 v8, v8, 0x1fff

    const/16 v24, 0xd

    :goto_332
    add-int/lit8 v25, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_344

    and-int/lit16 v13, v13, 0x1fff

    shl-int v13, v13, v24

    or-int/2addr v8, v13

    add-int/lit8 v24, v24, 0xd

    move/from16 v13, v25

    goto :goto_332

    :cond_344
    shl-int v13, v13, v24

    or-int/2addr v8, v13

    goto :goto_34a

    :cond_348
    move/from16 v25, v13

    :goto_34a
    add-int v13, v7, v7

    div-int/lit8 v24, v8, 0x20

    add-int v13, v13, v24

    aget-object v5, v10, v13

    move-object/from16 v28, v1

    instance-of v1, v5, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_35b

    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_363

    :cond_35b
    check-cast v5, Ljava/lang/String;

    invoke-static {v15, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    aput-object v5, v10, v13

    :goto_363
    move v13, v2

    invoke-virtual {v9, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v2, v1

    rem-int/lit8 v8, v8, 0x20

    move/from16 v24, v2

    goto :goto_374

    :cond_36e
    move-object/from16 v28, v1

    move v13, v2

    move/from16 v25, v8

    const/4 v8, 0x0

    :goto_374
    const/16 v1, 0x12

    if-lt v6, v1, :cond_382

    const/16 v1, 0x31

    if-gt v6, v1, :cond_382

    add-int/lit8 v1, v23, 0x1

    aput v14, v17, v23

    move/from16 v23, v1

    :cond_382
    move/from16 v16, v13

    move v2, v14

    :goto_385
    add-int/lit8 v1, v21, 0x1

    aput v4, v11, v21

    add-int/lit8 v4, v1, 0x1

    and-int/lit16 v5, v3, 0x200

    if-eqz v5, :cond_392

    const/high16 v5, 0x20000000

    goto :goto_393

    :cond_392
    const/4 v5, 0x0

    :goto_393
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_39a

    const/high16 v3, 0x10000000

    goto :goto_39b

    :cond_39a
    const/4 v3, 0x0

    :goto_39b
    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v3, v5

    or-int/2addr v3, v6

    or-int/2addr v2, v3

    aput v2, v11, v1

    add-int/lit8 v21, v4, 0x1

    shl-int/lit8 v1, v8, 0x14

    or-int v1, v1, v24

    aput v1, v11, v4

    move/from16 v4, v25

    move/from16 v2, v26

    move/from16 v13, v27

    move-object/from16 v1, v28

    move/from16 v14, v29

    const/4 v3, 0x0

    const v5, 0xd800

    goto/16 :goto_186

    :cond_3ba
    move/from16 v27, v13

    move/from16 v29, v14

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zza()Lcom/google/android/gms/internal/play_billing/zzdf;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdo;->zzc()I

    move-result v15

    const/16 v16, 0x0

    move-object v9, v1

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v27

    move/from16 v13, v29

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v24, p6

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/play_billing/zzdi;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzdf;IZ[IIILcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzct;Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzda;)V

    return-object v1

    :cond_3df
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzed;

    const/4 v0, 0x0

    throw v0
.end method

.method private static zzm(Ljava/lang/Object;J)D
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzn(Ljava/lang/Object;J)F
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final zzo(Ljava/lang/Object;)I
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    const v3, 0xfffff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    const/4 v8, 0x0

    :goto_f
    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v9, v9

    if-ge v5, v9, :cond_57b

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v10, v5

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v12

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v12, v13, :cond_38

    add-int/lit8 v13, v5, 0x2

    aget v10, v10, v13

    and-int v13, v10, v3

    ushr-int/lit8 v10, v10, 0x14

    if-eq v13, v7, :cond_35

    int-to-long v7, v13

    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v7, v13

    :cond_35
    shl-int v10, v14, v10

    goto :goto_39

    :cond_38
    const/4 v10, 0x0

    :goto_39
    and-int/2addr v9, v3

    int-to-long v3, v9

    const/16 v9, 0x3f

    packed-switch v12, :pswitch_data_592

    goto/16 :goto_3a1

    :pswitch_42
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3a1

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzdf;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzt(ILcom/google/android/gms/internal/play_billing/zzdf;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v3

    goto/16 :goto_3a0

    :pswitch_58
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3a1

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v10, v11, 0x3

    add-long v11, v3, v3

    shr-long/2addr v3, v9

    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    xor-long/2addr v3, v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v6, v9

    goto/16 :goto_3a1

    :pswitch_74
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3a1

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    xor-int/2addr v3, v9

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto/16 :goto_330

    :pswitch_8f
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3a1

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto/16 :goto_1c2

    :pswitch_9d
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3a1

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto/16 :goto_1b2

    :pswitch_ab
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3a1

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzu(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_330

    :pswitch_c1
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3a1

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_330

    :pswitch_d7
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3a1

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzba;

    shl-int/lit8 v4, v11, 0x3

    sget v9, Lcom/google/android/gms/internal/play_billing/zzbi;->zzb:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzba;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    :goto_f4
    add-int/2addr v3, v9

    goto/16 :goto_3a0

    :pswitch_f7
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3a1

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzn(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v3

    goto/16 :goto_3a0

    :pswitch_10b
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3a1

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz v4, :cond_12d

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzba;

    shl-int/lit8 v4, v11, 0x3

    sget v9, Lcom/google/android/gms/internal/play_billing/zzbi;->zzb:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzba;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto :goto_f4

    :cond_12d
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzw(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_330

    :pswitch_13b
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3a1

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    add-int/2addr v3, v14

    goto/16 :goto_3a0

    :pswitch_14a
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3a1

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto :goto_1b2

    :pswitch_157
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3a1

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto :goto_1c2

    :pswitch_164
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3a1

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzu(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_330

    :pswitch_17a
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3a1

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_330

    :pswitch_190
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3a1

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_330

    :pswitch_1a6
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3a1

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    :goto_1b2
    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_3a0

    :pswitch_1b6
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3a1

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    :goto_1c2
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_3a0

    :pswitch_1c6
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzC(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzda;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_3a1

    :pswitch_1d3
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v3

    goto/16 :goto_3a0

    :pswitch_1e3
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzs(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_32f

    :pswitch_1fb
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzq(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_32f

    :pswitch_213
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzh(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_32f

    :pswitch_22b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzf(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_32f

    :pswitch_243
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzd(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_32f

    :pswitch_25b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzv(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_32f

    :pswitch_273
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget v4, Lcom/google/android/gms/internal/play_billing/zzdr;->zza:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_32f

    :pswitch_28d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzf(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_32f

    :pswitch_2a5
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzh(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_32f

    :pswitch_2bd
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzk(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto :goto_32f

    :pswitch_2d4
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzx(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto :goto_32f

    :pswitch_2eb
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzm(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto :goto_32f

    :pswitch_302
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzf(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto :goto_32f

    :pswitch_319
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzh(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3a1

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    :goto_32f
    add-int/2addr v4, v9

    :goto_330
    add-int/2addr v4, v3

    add-int/2addr v6, v4

    goto/16 :goto_3a1

    :pswitch_334
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v9, 0x0

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzr(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3a0

    :pswitch_340
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzp(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3a0

    :pswitch_34c
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzg(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3a0

    :pswitch_358
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzdr;->zze(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3a0

    :pswitch_364
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzc(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3a0

    :pswitch_370
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzu(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3a0

    :pswitch_37c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzb(ILjava/util/List;)I

    move-result v3

    goto :goto_3a0

    :pswitch_387
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzo(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v3

    goto :goto_3a0

    :pswitch_396
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzt(ILjava/util/List;)I

    move-result v3

    :goto_3a0
    add-int/2addr v6, v3

    :cond_3a1
    :goto_3a1
    const/4 v12, 0x0

    goto/16 :goto_574

    :pswitch_3a4
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zza(ILjava/util/List;Z)I

    move-result v3

    goto :goto_403

    :pswitch_3b0
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zze(ILjava/util/List;Z)I

    move-result v3

    goto :goto_403

    :pswitch_3bc
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzg(ILjava/util/List;Z)I

    move-result v3

    goto :goto_403

    :pswitch_3c8
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzj(ILjava/util/List;Z)I

    move-result v3

    goto :goto_403

    :pswitch_3d4
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto :goto_403

    :pswitch_3e0
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzl(ILjava/util/List;Z)I

    move-result v3

    goto :goto_403

    :pswitch_3ec
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zze(ILjava/util/List;Z)I

    move-result v3

    goto :goto_403

    :pswitch_3f8
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzg(ILjava/util/List;Z)I

    move-result v3

    :goto_403
    add-int/2addr v6, v3

    goto/16 :goto_574

    :pswitch_406
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_574

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzdf;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzt(ILcom/google/android/gms/internal/play_billing/zzdf;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v3

    goto :goto_403

    :pswitch_41a
    const/4 v12, 0x0

    and-int/2addr v10, v8

    if-eqz v10, :cond_574

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v10, v11, 0x3

    add-long v14, v3, v3

    shr-long/2addr v3, v9

    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    xor-long/2addr v3, v14

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v6, v9

    goto/16 :goto_574

    :pswitch_434
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_574

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    xor-int/2addr v3, v9

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto/16 :goto_553

    :pswitch_44e
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_574

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto/16 :goto_570

    :pswitch_45b
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_574

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto/16 :goto_561

    :pswitch_468
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_574

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzu(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_553

    :pswitch_47d
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_574

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_553

    :pswitch_492
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_574

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzba;

    shl-int/lit8 v4, v11, 0x3

    sget v9, Lcom/google/android/gms/internal/play_billing/zzbi;->zzb:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzba;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    :goto_4ae
    add-int/2addr v3, v9

    goto/16 :goto_403

    :pswitch_4b1
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_574

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzn(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v3

    goto/16 :goto_403

    :pswitch_4c4
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_574

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz v4, :cond_4e5

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzba;

    shl-int/lit8 v4, v11, 0x3

    sget v9, Lcom/google/android/gms/internal/play_billing/zzbi;->zzb:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzba;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto :goto_4ae

    :cond_4e5
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzw(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto :goto_553

    :pswitch_4f2
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_574

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    add-int/2addr v3, v14

    goto/16 :goto_403

    :pswitch_500
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_574

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto :goto_561

    :pswitch_50c
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_574

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    goto :goto_570

    :pswitch_518
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_574

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzu(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto :goto_553

    :pswitch_52c
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_574

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto :goto_553

    :pswitch_540
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_574

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    :goto_553
    add-int/2addr v4, v3

    add-int/2addr v6, v4

    goto :goto_574

    :pswitch_556
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_574

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    :goto_561
    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_403

    :pswitch_565
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_574

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v3

    :goto_570
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_403

    :cond_574
    :goto_574
    add-int/lit8 v5, v5, 0x3

    const v3, 0xfffff

    goto/16 :goto_f

    :cond_57b
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzeg;->zza(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v6, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez v2, :cond_58b

    return v6

    :cond_58b
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 v1, 0x0

    throw v1

    :pswitch_data_592
    .packed-switch 0x0
        :pswitch_565
        :pswitch_556
        :pswitch_540
        :pswitch_52c
        :pswitch_518
        :pswitch_50c
        :pswitch_500
        :pswitch_4f2
        :pswitch_4c4
        :pswitch_4b1
        :pswitch_492
        :pswitch_47d
        :pswitch_468
        :pswitch_45b
        :pswitch_44e
        :pswitch_434
        :pswitch_41a
        :pswitch_406
        :pswitch_3f8
        :pswitch_3ec
        :pswitch_3e0
        :pswitch_3d4
        :pswitch_3c8
        :pswitch_3bc
        :pswitch_3b0
        :pswitch_3a4
        :pswitch_396
        :pswitch_387
        :pswitch_37c
        :pswitch_370
        :pswitch_364
        :pswitch_358
        :pswitch_34c
        :pswitch_340
        :pswitch_334
        :pswitch_319
        :pswitch_302
        :pswitch_2eb
        :pswitch_2d4
        :pswitch_2bd
        :pswitch_2a5
        :pswitch_28d
        :pswitch_273
        :pswitch_25b
        :pswitch_243
        :pswitch_22b
        :pswitch_213
        :pswitch_1fb
        :pswitch_1e3
        :pswitch_1d3
        :pswitch_1c6
        :pswitch_1b6
        :pswitch_1a6
        :pswitch_190
        :pswitch_17a
        :pswitch_164
        :pswitch_157
        :pswitch_14a
        :pswitch_13b
        :pswitch_10b
        :pswitch_f7
        :pswitch_d7
        :pswitch_c1
        :pswitch_ab
        :pswitch_9d
        :pswitch_8f
        :pswitch_74
        :pswitch_58
        :pswitch_42
    .end packed-switch
.end method

.method private static zzp(Ljava/lang/Object;J)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzq(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/play_billing/zzan;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzC(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p4

    move-object p5, p4

    check-cast p5, Lcom/google/android/gms/internal/play_billing/zzcz;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/play_billing/zzcz;->zze()Z

    move-result p5

    if-eqz p5, :cond_14

    goto :goto_22

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzcz;->zza()Lcom/google/android/gms/internal/play_billing/zzcz;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/internal/play_billing/zzcz;->zzb()Lcom/google/android/gms/internal/play_billing/zzcz;

    move-result-object p5

    invoke-static {p5, p4}, Lcom/google/android/gms/internal/play_billing/zzda;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1, p6, p7, p5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_22
    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzcy;

    const/4 p1, 0x0

    throw p1
.end method

.method private final zzr(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/play_billing/zzan;)I
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p5

    move/from16 v9, p6

    move/from16 v3, p7

    move-wide/from16 v6, p10

    move/from16 v10, p12

    move-object/from16 v8, p13

    sget-object v11, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    iget-object v12, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 v13, v10, 0x2

    aget v12, v12, v13

    const v13, 0xfffff

    and-int/2addr v12, v13

    int-to-long v12, v12

    const/4 v14, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_19e

    goto/16 :goto_19b

    :pswitch_28
    const/4 v6, 0x3

    if-ne v3, v6, :cond_19b

    invoke-direct {v0, v1, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzE(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzM(Ljava/lang/Object;IILjava/lang/Object;)V

    return v2

    :pswitch_48
    if-nez v3, :cond_19b

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget-wide v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_5f
    if-nez v3, :cond_19b

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzb(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_76
    if-nez v3, :cond_19b

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v3

    iget v4, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzA(I)Lcom/google/android/gms/internal/play_billing/zzce;

    move-result-object v5

    if-eqz v5, :cond_98

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/play_billing/zzce;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_8b

    goto :goto_98

    :cond_8b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzj(ILjava/lang/Object;)V

    goto :goto_a2

    :cond_98
    :goto_98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_a2
    move v2, v3

    goto/16 :goto_19c

    :pswitch_a5
    if-ne v3, v15, :cond_19b

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zza([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget-object v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_b4
    if-ne v3, v15, :cond_19b

    invoke-direct {v0, v1, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzE(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzM(Ljava/lang/Object;IILjava/lang/Object;)V

    return v2

    :pswitch_cf
    if-ne v3, v15, :cond_19b

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-nez v3, :cond_df

    const-string v3, ""

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_fe

    :cond_df
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_f3

    add-int v5, v2, v3

    invoke-static {v4, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzev;->zze([BII)Z

    move-result v5

    if-eqz v5, :cond_ee

    goto :goto_f3

    :cond_ee
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzc()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_f3
    :goto_f3
    new-instance v5, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v2, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v11, v1, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v3

    :goto_fe
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_19c

    :pswitch_103
    if-nez v3, :cond_19b

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget-wide v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    const-wide/16 v14, 0x0

    cmp-long v5, v3, v14

    if-eqz v5, :cond_113

    const/4 v15, 0x1

    goto :goto_114

    :cond_113
    const/4 v15, 0x0

    :goto_114
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_11f
    if-ne v3, v14, :cond_19b

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_132
    const/4 v2, 0x1

    if-ne v3, v2, :cond_19b

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_146
    if-nez v3, :cond_19b

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_159
    if-nez v3, :cond_19b

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    iget-wide v3, v8, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_16c
    if-ne v3, v14, :cond_19b

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_183
    const/4 v2, 0x1

    if-ne v3, v2, :cond_19b

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :cond_19b
    :goto_19b
    move v2, v5

    :goto_19c
    return v2

    nop

    :pswitch_data_19e
    .packed-switch 0x33
        :pswitch_183
        :pswitch_16c
        :pswitch_159
        :pswitch_159
        :pswitch_146
        :pswitch_132
        :pswitch_11f
        :pswitch_103
        :pswitch_cf
        :pswitch_b4
        :pswitch_a5
        :pswitch_146
        :pswitch_76
        :pswitch_11f
        :pswitch_132
        :pswitch_5f
        :pswitch_48
        :pswitch_28
    .end packed-switch
.end method

.method private final zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/play_billing/zzan;)I
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v6, p7

    move/from16 v9, p8

    move-wide/from16 v10, p12

    move-object/from16 v7, p14

    sget-object v12, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcf;

    invoke-interface {v13}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzc()Z

    move-result v14

    if-nez v14, :cond_35

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_2d

    const/16 v14, 0xa

    goto :goto_2e

    :cond_2d
    add-int/2addr v14, v14

    :goto_2e
    invoke-interface {v13, v14}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v13

    invoke-virtual {v12, v1, v10, v11, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_35
    const/4 v10, 0x5

    const-wide/16 v11, 0x0

    const/4 v15, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_498

    const/4 v1, 0x3

    if-ne v6, v1, :cond_495

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzc(Lcom/google/android/gms/internal/play_billing/zzdp;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_473

    :pswitch_5f
    if-ne v6, v14, :cond_83

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcu;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    :goto_6a
    if-ge v1, v2, :cond_7a

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(J)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzf(J)V

    goto :goto_6a

    :cond_7a
    if-ne v1, v2, :cond_7e

    goto/16 :goto_496

    :cond_7e
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_83
    if-nez v6, :cond_495

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcu;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(J)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzf(J)V

    :goto_94
    if-ge v1, v5, :cond_ad

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-eq v2, v6, :cond_9f

    goto :goto_ad

    :cond_9f
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(J)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzf(J)V

    goto :goto_94

    :cond_ad
    :goto_ad
    return v1

    :pswitch_ae
    if-ne v6, v14, :cond_d2

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcc;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    :goto_b9
    if-ge v1, v2, :cond_c9

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzb(I)I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzf(I)V

    goto :goto_b9

    :cond_c9
    if-ne v1, v2, :cond_cd

    goto/16 :goto_496

    :cond_cd
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_d2
    if-nez v6, :cond_495

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcc;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzb(I)I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzf(I)V

    :goto_e3
    if-ge v1, v5, :cond_fc

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-eq v2, v6, :cond_ee

    goto :goto_fc

    :cond_ee
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzb(I)I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzf(I)V

    goto :goto_e3

    :cond_fc
    :goto_fc
    return v1

    :pswitch_fd
    if-ne v6, v14, :cond_104

    invoke-static {v3, v4, v13, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzf([BILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    goto :goto_115

    :cond_104
    if-nez v6, :cond_495

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzl(I[BIILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v2

    :goto_115
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzA(I)Lcom/google/android/gms/internal/play_billing/zzce;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    sget v5, Lcom/google/android/gms/internal/play_billing/zzdr;->zza:I

    if-eqz v3, :cond_17b

    instance-of v5, v13, Ljava/util/RandomAccess;

    const/4 v6, 0x0

    if-eqz v5, :cond_159

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_12a
    if-ge v14, v5, :cond_14f

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v3, v9}, Lcom/google/android/gms/internal/play_billing/zzce;->zza(I)Z

    move-result v10

    if-eqz v10, :cond_148

    if-eq v14, v7, :cond_145

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v7, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_145
    add-int/lit8 v7, v7, 0x1

    goto :goto_14c

    :cond_148
    invoke-static {v1, v8, v9, v6, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzA(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzeg;)Ljava/lang/Object;

    move-result-object v6

    :goto_14c
    add-int/lit8 v14, v14, 0x1

    goto :goto_12a

    :cond_14f
    if-eq v7, v5, :cond_17b

    invoke-interface {v13, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return v2

    :cond_159
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15d
    :goto_15d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v7}, Lcom/google/android/gms/internal/play_billing/zzce;->zza(I)Z

    move-result v9

    if-nez v9, :cond_15d

    invoke-static {v1, v8, v7, v6, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzA(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzeg;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_15d

    :cond_17b
    move v1, v2

    goto/16 :goto_496

    :pswitch_17e
    if-ne v6, v14, :cond_495

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v4, :cond_1d3

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_1ce

    if-nez v4, :cond_194

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzba;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19c

    :cond_194
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzba;->zzl([BII)Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_19b
    add-int/2addr v1, v4

    :goto_19c
    if-ge v1, v5, :cond_1cd

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-eq v2, v6, :cond_1a7

    goto :goto_1cd

    :cond_1a7
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v4, :cond_1c8

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_1c3

    if-nez v4, :cond_1bb

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzba;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19c

    :cond_1bb
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzba;->zzl([BII)Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19b

    :cond_1c3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_1c8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_1cd
    :goto_1cd
    return v1

    :cond_1ce
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_1d3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :pswitch_1d8
    if-ne v6, v14, :cond_495

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v13

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/play_billing/zzao;->zze(Lcom/google/android/gms/internal/play_billing/zzdp;I[BIILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    return v1

    :pswitch_1f1
    if-ne v6, v14, :cond_495

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v11

    if-nez v6, :cond_244

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v6, :cond_23f

    if-nez v6, :cond_20c

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_217

    :cond_20c
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_216
    add-int/2addr v4, v6

    :goto_217
    if-ge v4, v5, :cond_495

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ne v2, v8, :cond_495

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v6, :cond_23a

    if-nez v6, :cond_22f

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_217

    :cond_22f
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_216

    :cond_23a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_23f
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_244
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v6, :cond_29f

    if-nez v6, :cond_252

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_265

    :cond_252
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/play_billing/zzev;->zze([BII)Z

    move-result v9

    if-eqz v9, :cond_29a

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_264
    move v4, v8

    :goto_265
    if-ge v4, v5, :cond_495

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ne v2, v8, :cond_495

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-ltz v6, :cond_295

    if-nez v6, :cond_27d

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_265

    :cond_27d
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/play_billing/zzev;->zze([BII)Z

    move-result v9

    if-eqz v9, :cond_290

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/play_billing/zzcg;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_264

    :cond_290
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzc()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_295
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_29a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzc()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_29f
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzd()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :pswitch_2a4
    if-ne v6, v14, :cond_2cb

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzap;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    :goto_2af
    if-ge v1, v2, :cond_2c2

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    cmp-long v6, v4, v11

    if-eqz v6, :cond_2bd

    const/4 v4, 0x1

    goto :goto_2be

    :cond_2bd
    const/4 v4, 0x0

    :goto_2be
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/play_billing/zzap;->zze(Z)V

    goto :goto_2af

    :cond_2c2
    if-ne v1, v2, :cond_2c6

    goto/16 :goto_496

    :cond_2c6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_2cb
    if-nez v6, :cond_495

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzap;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    cmp-long v4, v8, v11

    if-eqz v4, :cond_2db

    const/4 v4, 0x1

    goto :goto_2dc

    :cond_2db
    const/4 v4, 0x0

    :goto_2dc
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/play_billing/zzap;->zze(Z)V

    :goto_2df
    if-ge v1, v5, :cond_2fb

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-eq v2, v6, :cond_2ea

    goto :goto_2fb

    :cond_2ea
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    cmp-long v4, v8, v11

    if-eqz v4, :cond_2f6

    const/4 v4, 0x1

    goto :goto_2f7

    :cond_2f6
    const/4 v4, 0x0

    :goto_2f7
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/play_billing/zzap;->zze(Z)V

    goto :goto_2df

    :cond_2fb
    :goto_2fb
    return v1

    :pswitch_2fc
    if-ne v6, v14, :cond_31c

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcc;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    :goto_307
    if-ge v1, v2, :cond_313

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzf(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_307

    :cond_313
    if-ne v1, v2, :cond_317

    goto/16 :goto_496

    :cond_317
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_31c
    if-ne v6, v10, :cond_495

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcc;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzf(I)V

    :goto_327
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_33c

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-eq v2, v6, :cond_334

    goto :goto_33c

    :cond_334
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzf(I)V

    goto :goto_327

    :cond_33c
    :goto_33c
    return v1

    :pswitch_33d
    if-ne v6, v14, :cond_35d

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcu;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    :goto_348
    if-ge v1, v2, :cond_354

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzf(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_348

    :cond_354
    if-ne v1, v2, :cond_358

    goto/16 :goto_496

    :cond_358
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_35d
    if-ne v6, v15, :cond_495

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcu;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzf(J)V

    :goto_368
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_37d

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-eq v2, v6, :cond_375

    goto :goto_37d

    :cond_375
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzf(J)V

    goto :goto_368

    :cond_37d
    :goto_37d
    return v1

    :pswitch_37e
    if-ne v6, v14, :cond_386

    invoke-static {v3, v4, v13, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzf([BILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    goto/16 :goto_496

    :cond_386
    if-nez v6, :cond_495

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v13

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/play_billing/zzao;->zzl(I[BIILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    return v1

    :pswitch_397
    if-ne v6, v14, :cond_3b7

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcu;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    :goto_3a2
    if-ge v1, v2, :cond_3ae

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-virtual {v13, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzf(J)V

    goto :goto_3a2

    :cond_3ae
    if-ne v1, v2, :cond_3b2

    goto/16 :goto_496

    :cond_3b2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_3b7
    if-nez v6, :cond_495

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzcu;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzf(J)V

    :goto_3c4
    if-ge v1, v5, :cond_3d9

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-eq v2, v6, :cond_3cf

    goto :goto_3d9

    :cond_3cf
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzf(J)V

    goto :goto_3c4

    :cond_3d9
    :goto_3d9
    return v1

    :pswitch_3da
    if-ne v6, v14, :cond_3fe

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzbu;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    :goto_3e5
    if-ge v1, v2, :cond_3f5

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/play_billing/zzbu;->zze(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_3e5

    :cond_3f5
    if-ne v1, v2, :cond_3f9

    goto/16 :goto_496

    :cond_3f9
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_3fe
    if-ne v6, v10, :cond_495

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzbu;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/play_billing/zzbu;->zze(F)V

    :goto_40d
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_426

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-eq v2, v6, :cond_41a

    goto :goto_426

    :cond_41a
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/play_billing/zzbu;->zze(F)V

    goto :goto_40d

    :cond_426
    :goto_426
    return v1

    :pswitch_427
    if-ne v6, v14, :cond_44a

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzbk;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    add-int/2addr v2, v1

    :goto_432
    if-ge v1, v2, :cond_442

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbk;->zze(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_432

    :cond_442
    if-ne v1, v2, :cond_445

    goto :goto_496

    :cond_445
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zzg()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v1

    throw v1

    :cond_44a
    if-ne v6, v15, :cond_495

    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzbk;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzbk;->zze(D)V

    :goto_459
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_472

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-eq v2, v6, :cond_466

    goto :goto_472

    :cond_466
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzbk;->zze(D)V

    goto :goto_459

    :cond_472
    :goto_472
    return v1

    :goto_473
    if-ge v4, v5, :cond_494

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v8

    iget v9, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    if-eq v2, v9, :cond_47e

    goto :goto_494

    :cond_47e
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzc(Lcom/google/android/gms/internal/play_billing/zzdp;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_473

    :cond_494
    :goto_494
    return v4

    :cond_495
    move v1, v4

    :goto_496
    return v1

    nop

    :pswitch_data_498
    .packed-switch 0x12
        :pswitch_427
        :pswitch_3da
        :pswitch_397
        :pswitch_397
        :pswitch_37e
        :pswitch_33d
        :pswitch_2fc
        :pswitch_2a4
        :pswitch_1f1
        :pswitch_1d8
        :pswitch_17e
        :pswitch_37e
        :pswitch_fd
        :pswitch_2fc
        :pswitch_33d
        :pswitch_ae
        :pswitch_5f
        :pswitch_427
        :pswitch_3da
        :pswitch_397
        :pswitch_397
        :pswitch_37e
        :pswitch_33d
        :pswitch_2fc
        :pswitch_2a4
        :pswitch_37e
        :pswitch_fd
        :pswitch_2fc
        :pswitch_33d
        :pswitch_ae
        :pswitch_5f
    .end packed-switch
.end method

.method private final zzt(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zze:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzf:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzw(II)I

    move-result p1

    return p1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method private final zzu(II)I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zze:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzf:I

    if-gt p1, v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzw(II)I

    move-result p1

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method private final zzv(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final zzw(II)I
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_7
    if-gt p2, v0, :cond_1e

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v4, v4, v3

    if-ne p1, v4, :cond_16

    return v3

    :cond_16
    if-ge p1, v4, :cond_1b

    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    :cond_1b
    add-int/lit8 p2, v2, 0x1

    goto :goto_7

    :cond_1e
    return v1
.end method

.method private static zzx(I)I
    .registers 1

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzy(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzz(Ljava/lang/Object;J)J
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .registers 13

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzew;->zza:Lcom/google/android/gms/internal/play_billing/zzew;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzo:I

    add-int/lit8 v0, v0, -0x1

    if-eqz v0, :cond_587

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v4, v4

    if-ge v2, v4, :cond_57b

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v6, v6, v2

    const v7, 0xfffff

    and-int/2addr v4, v7

    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzbt;->zzJ:Lcom/google/android/gms/internal/play_billing/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/zzbt;->zza()I

    move-result v7

    if-lt v5, v7, :cond_38

    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzbt;->zzW:Lcom/google/android/gms/internal/play_billing/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/zzbt;->zza()I

    move-result v7

    if-gt v5, v7, :cond_38

    iget-object v7, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    :cond_38
    int-to-long v7, v4

    const/16 v4, 0x3f

    packed-switch v5, :pswitch_data_58c

    goto/16 :goto_577

    :pswitch_40
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzdf;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzt(ILcom/google/android/gms/internal/play_billing/zzdf;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v4

    goto/16 :goto_3f2

    :pswitch_56
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    add-long v9, v7, v7

    shr-long v6, v7, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    xor-long v5, v9, v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v5

    goto/16 :goto_424

    :pswitch_72
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_554

    :pswitch_8d
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_573

    :pswitch_9b
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_563

    :pswitch_a9
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzu(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_554

    :pswitch_bf
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_554

    :pswitch_d5
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzba;

    shl-int/lit8 v5, v6, 0x3

    sget v6, Lcom/google/android/gms/internal/play_billing/zzbi;->zzb:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzba;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_4a6

    :pswitch_f4
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzn(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v4

    goto/16 :goto_3f2

    :pswitch_108
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz v5, :cond_12b

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzba;

    shl-int/lit8 v5, v6, 0x3

    sget v6, Lcom/google/android/gms/internal/play_billing/zzbi;->zzb:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzba;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_4a6

    :cond_12b
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzw(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_554

    :pswitch_139
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_4f8

    :pswitch_147
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_563

    :pswitch_155
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_573

    :pswitch_163
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzu(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_554

    :pswitch_179
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v4

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_554

    :pswitch_18f
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v4

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_554

    :pswitch_1a5
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_563

    :pswitch_1b3
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_573

    :pswitch_1c1
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzC(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzda;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_577

    :pswitch_1ce
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v4

    goto/16 :goto_3f2

    :pswitch_1de
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzs(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_32a

    :pswitch_1f6
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzq(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_32a

    :pswitch_20e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_32a

    :pswitch_226
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_32a

    :pswitch_23e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzd(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_32a

    :pswitch_256
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzv(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_32a

    :pswitch_26e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget v5, Lcom/google/android/gms/internal/play_billing/zzdr;->zza:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_32a

    :pswitch_288
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_32a

    :pswitch_2a0
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_32a

    :pswitch_2b8
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzk(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto :goto_32a

    :pswitch_2cf
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzx(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto :goto_32a

    :pswitch_2e6
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzm(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto :goto_32a

    :pswitch_2fd
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto :goto_32a

    :pswitch_314
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_577

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    :goto_32a
    add-int/2addr v5, v6

    goto/16 :goto_554

    :pswitch_32d
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzr(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3f2

    :pswitch_339
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzp(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3f2

    :pswitch_345
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzg(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3f2

    :pswitch_351
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zze(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3f2

    :pswitch_35d
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzc(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3f2

    :pswitch_369
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzu(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3f2

    :pswitch_375
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzb(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_3f2

    :pswitch_381
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzo(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v4

    goto :goto_3f2

    :pswitch_390
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzt(ILjava/util/List;)I

    move-result v4

    goto :goto_3f2

    :pswitch_39b
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zza(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3f2

    :pswitch_3a6
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zze(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3f2

    :pswitch_3b1
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzg(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3f2

    :pswitch_3bc
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzj(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3f2

    :pswitch_3c7
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3f2

    :pswitch_3d2
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzl(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3f2

    :pswitch_3dd
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zze(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3f2

    :pswitch_3e8
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzg(ILjava/util/List;Z)I

    move-result v4

    :goto_3f2
    add-int/2addr v3, v4

    goto/16 :goto_577

    :pswitch_3f5
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzdf;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzt(ILcom/google/android/gms/internal/play_billing/zzdf;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v4

    goto :goto_3f2

    :pswitch_40a
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    add-long v9, v7, v7

    shr-long v6, v7, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    xor-long v5, v9, v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v5

    :goto_424
    add-int/2addr v4, v5

    goto :goto_3f2

    :pswitch_426
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_554

    :pswitch_441
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_573

    :pswitch_44f
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto/16 :goto_563

    :pswitch_45d
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzu(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_554

    :pswitch_473
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto/16 :goto_554

    :pswitch_489
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzba;

    shl-int/lit8 v5, v6, 0x3

    sget v6, Lcom/google/android/gms/internal/play_billing/zzbi;->zzb:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzba;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    :goto_4a6
    add-int/2addr v4, v6

    goto/16 :goto_3f2

    :pswitch_4a9
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzn(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)I

    move-result v4

    goto/16 :goto_3f2

    :pswitch_4bd
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz v5, :cond_4df

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzba;

    shl-int/lit8 v5, v6, 0x3

    sget v6, Lcom/google/android/gms/internal/play_billing/zzbi;->zzb:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzba;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto :goto_4a6

    :cond_4df
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzw(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto :goto_554

    :pswitch_4ec
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    :goto_4f8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3f2

    :pswitch_4fc
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto :goto_563

    :pswitch_509
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    goto :goto_573

    :pswitch_516
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzu(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto :goto_554

    :pswitch_52b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v4

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    goto :goto_554

    :pswitch_540
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzy(J)I

    move-result v4

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v5

    :goto_554
    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto :goto_577

    :pswitch_557
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    :goto_563
    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_3f2

    :pswitch_567
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_577

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzx(I)I

    move-result v4

    :goto_573
    add-int/lit8 v4, v4, 0x8

    goto/16 :goto_3f2

    :cond_577
    :goto_577
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_d

    :cond_57b
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zza(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v3, p1

    return v3

    :cond_587
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_data_58c
    .packed-switch 0x0
        :pswitch_567
        :pswitch_557
        :pswitch_540
        :pswitch_52b
        :pswitch_516
        :pswitch_509
        :pswitch_4fc
        :pswitch_4ec
        :pswitch_4bd
        :pswitch_4a9
        :pswitch_489
        :pswitch_473
        :pswitch_45d
        :pswitch_44f
        :pswitch_441
        :pswitch_426
        :pswitch_40a
        :pswitch_3f5
        :pswitch_3e8
        :pswitch_3dd
        :pswitch_3d2
        :pswitch_3c7
        :pswitch_3bc
        :pswitch_3b1
        :pswitch_3a6
        :pswitch_39b
        :pswitch_390
        :pswitch_381
        :pswitch_375
        :pswitch_369
        :pswitch_35d
        :pswitch_351
        :pswitch_345
        :pswitch_339
        :pswitch_32d
        :pswitch_314
        :pswitch_2fd
        :pswitch_2e6
        :pswitch_2cf
        :pswitch_2b8
        :pswitch_2a0
        :pswitch_288
        :pswitch_26e
        :pswitch_256
        :pswitch_23e
        :pswitch_226
        :pswitch_20e
        :pswitch_1f6
        :pswitch_1de
        :pswitch_1ce
        :pswitch_1c1
        :pswitch_1b3
        :pswitch_1a5
        :pswitch_18f
        :pswitch_179
        :pswitch_163
        :pswitch_155
        :pswitch_147
        :pswitch_139
        :pswitch_108
        :pswitch_f4
        :pswitch_d5
        :pswitch_bf
        :pswitch_a9
        :pswitch_9b
        :pswitch_8d
        :pswitch_72
        :pswitch_56
        :pswitch_40
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_218

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v3

    int-to-long v5, v5

    const/16 v7, 0x25

    const/16 v8, 0x20

    packed-switch v3, :pswitch_data_232

    goto/16 :goto_214

    :pswitch_21
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_201

    :pswitch_33
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    goto/16 :goto_20f

    :pswitch_43
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_201

    :pswitch_51
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    goto/16 :goto_20f

    :pswitch_61
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_201

    :pswitch_6f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_201

    :pswitch_7d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_201

    :pswitch_8b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_201

    :pswitch_9d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_201

    :pswitch_af
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_201

    :pswitch_c3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzU(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzcg;->zza(Z)I

    move-result v3

    goto/16 :goto_201

    :pswitch_d5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_201

    :pswitch_e3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    goto/16 :goto_20f

    :pswitch_f3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_201

    :pswitch_101
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    goto/16 :goto_20f

    :pswitch_111
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    goto/16 :goto_20f

    :pswitch_121
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_201

    :pswitch_133
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_214

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    goto/16 :goto_20f

    :pswitch_147
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_201

    :pswitch_153
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_201

    :pswitch_15f
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1b2

    :pswitch_16a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    goto/16 :goto_20f

    :pswitch_174
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_201

    :pswitch_17c
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    goto/16 :goto_20f

    :pswitch_186
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_201

    :pswitch_18e
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_201

    :pswitch_196
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_201

    :pswitch_19d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_201

    :pswitch_1a8
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1b2
    :goto_1b2
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_214

    :pswitch_1b6
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_201

    :pswitch_1c3
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzcg;->zza(Z)I

    move-result v3

    goto :goto_201

    :pswitch_1ce
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_201

    :pswitch_1d5
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    goto :goto_20f

    :pswitch_1de
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_201

    :pswitch_1e5
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    goto :goto_20f

    :pswitch_1ee
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    goto :goto_20f

    :pswitch_1f7
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :goto_201
    add-int/2addr v2, v3

    goto :goto_214

    :pswitch_203
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    :goto_20f
    ushr-long v5, v3, v8

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v2, v4

    :cond_214
    :goto_214
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_218
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez v0, :cond_22a

    return v2

    :cond_22a
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_203
        :pswitch_1f7
        :pswitch_1ee
        :pswitch_1e5
        :pswitch_1de
        :pswitch_1d5
        :pswitch_1ce
        :pswitch_1c3
        :pswitch_1b6
        :pswitch_1a8
        :pswitch_19d
        :pswitch_196
        :pswitch_18e
        :pswitch_186
        :pswitch_17c
        :pswitch_174
        :pswitch_16a
        :pswitch_15f
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_147
        :pswitch_133
        :pswitch_121
        :pswitch_111
        :pswitch_101
        :pswitch_f3
        :pswitch_e3
        :pswitch_d5
        :pswitch_c3
        :pswitch_af
        :pswitch_9d
        :pswitch_8b
        :pswitch_7d
        :pswitch_6f
        :pswitch_61
        :pswitch_51
        :pswitch_43
        :pswitch_33
        :pswitch_21
    .end packed-switch
.end method

.method final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzG(Ljava/lang/Object;)V

    sget-object v10, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    const/4 v8, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_1d
    const/16 v17, 0x0

    if-ge v0, v13, :cond_3f5

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_30

    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzk(I[BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v3, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    move v4, v3

    move v3, v0

    goto :goto_31

    :cond_30
    move v4, v0

    :goto_31
    ushr-int/lit8 v0, v4, 0x3

    const/4 v7, 0x3

    if-le v0, v1, :cond_3c

    div-int/2addr v2, v7

    invoke-direct {v15, v0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzu(II)I

    move-result v1

    goto :goto_40

    :cond_3c
    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzt(I)I

    move-result v1

    :goto_40
    move v2, v1

    if-ne v2, v8, :cond_52

    move/from16 p3, v0

    move v2, v3

    move v7, v4

    move/from16 v20, v5

    move-object/from16 v27, v10

    move v0, v11

    const/16 v19, -0x1

    const/16 v22, 0x0

    goto/16 :goto_388

    :cond_52
    and-int/lit8 v1, v4, 0x7

    iget-object v8, v15, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 v20, v2, 0x1

    aget v7, v8, v20

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v11

    move/from16 v20, v0

    const v18, 0xfffff

    and-int v0, v7, v18

    move/from16 v22, v3

    move/from16 v21, v4

    int-to-long v3, v0

    const/16 v0, 0x11

    if-gt v11, v0, :cond_274

    add-int/lit8 v0, v2, 0x2

    aget v0, v8, v0

    ushr-int/lit8 v8, v0, 0x14

    const/4 v13, 0x1

    shl-int v8, v13, v8

    const v13, 0xfffff

    and-int/2addr v0, v13

    move/from16 v18, v7

    if-eq v0, v6, :cond_8e

    if-eq v6, v13, :cond_85

    int-to-long v6, v6

    invoke-virtual {v10, v14, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_85
    int-to-long v5, v0

    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move/from16 v24, v0

    move v7, v5

    goto :goto_91

    :cond_8e
    move v7, v5

    move/from16 v24, v6

    :goto_91
    const/4 v0, 0x5

    packed-switch v11, :pswitch_data_44e

    move v6, v2

    move/from16 v11, v20

    move/from16 v13, v22

    const/4 v0, 0x3

    if-ne v1, v0, :cond_260

    invoke-direct {v15, v14, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzD(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    shl-int/lit8 v0, v11, 0x3

    or-int/lit8 v17, v0, 0x4

    invoke-direct {v15, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v1

    move-object v0, v5

    move-object/from16 v2, p2

    move v3, v13

    move/from16 v4, p4

    move-object v13, v5

    move/from16 v5, v17

    move v12, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzao;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    invoke-direct {v15, v14, v12, v13}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzL(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v5, v7, v8

    move/from16 v13, p4

    move v1, v11

    move v2, v12

    move/from16 v3, v21

    move/from16 v6, v24

    const/4 v8, -0x1

    move-object/from16 v12, p2

    goto/16 :goto_25c

    :pswitch_cb
    if-nez v1, :cond_f3

    move/from16 v5, v22

    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v6

    iget-wide v0, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(J)J

    move-result-wide v17

    move/from16 v11, v20

    move-object v0, v10

    move-object/from16 v1, p1

    move v5, v2

    move-wide v2, v3

    move/from16 v20, v6

    move/from16 v13, v21

    move v6, v5

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v7, v8

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v0, v20

    goto/16 :goto_221

    :cond_f3
    move/from16 v11, v20

    move v12, v2

    move/from16 v13, v22

    goto/16 :goto_261

    :pswitch_fa
    move v6, v2

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v5, v22

    if-nez v1, :cond_15a

    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzb(I)I

    move-result v1

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_153

    :pswitch_111
    move v6, v2

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v5, v22

    if-nez v1, :cond_15a

    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-direct {v15, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzA(I)Lcom/google/android/gms/internal/play_billing/zzce;

    move-result-object v2

    if-eqz v2, :cond_13c

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzce;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_12d

    goto :goto_13c

    :cond_12d
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzj(ILjava/lang/Object;)V

    move v2, v6

    move v5, v7

    goto :goto_156

    :cond_13c
    :goto_13c
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_153

    :pswitch_140
    move v6, v2

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v5, v22

    const/4 v0, 0x2

    if-ne v1, v0, :cond_15a

    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zza([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget-object v1, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_153
    or-int v5, v7, v8

    move v2, v6

    :goto_156
    move v1, v11

    move v3, v13

    goto/16 :goto_221

    :cond_15a
    move v12, v6

    move/from16 v21, v13

    move v13, v5

    goto/16 :goto_261

    :pswitch_160
    move v6, v2

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v5, v22

    const/4 v0, 0x2

    if-ne v1, v0, :cond_187

    invoke-direct {v15, v14, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzD(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v15, v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v1

    move-object v0, v4

    move-object/from16 v2, p2

    move v3, v5

    move-object v5, v4

    move/from16 v4, p4

    move/from16 v21, v13

    move-object v13, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    invoke-direct {v15, v14, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzL(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_251

    :cond_187
    move/from16 v21, v13

    goto/16 :goto_1ee

    :pswitch_18b
    move v6, v2

    move/from16 v11, v20

    move/from16 v5, v22

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1ee

    const/high16 v0, 0x20000000

    and-int v0, v18, v0

    if-nez v0, :cond_19e

    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzg([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    goto :goto_1a2

    :cond_19e
    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzh([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    :goto_1a2
    iget-object v1, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_251

    :pswitch_1a9
    move v6, v2

    move/from16 v11, v20

    move/from16 v5, v22

    if-nez v1, :cond_1ee

    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    const-wide/16 v17, 0x0

    cmp-long v5, v1, v17

    if-eqz v5, :cond_1be

    const/4 v13, 0x1

    goto :goto_1bf

    :cond_1be
    const/4 v13, 0x0

    :goto_1bf
    invoke-static {v14, v3, v4, v13}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzm(Ljava/lang/Object;JZ)V

    goto/16 :goto_251

    :pswitch_1c4
    move v6, v2

    move/from16 v11, v20

    move/from16 v5, v22

    if-ne v1, v0, :cond_1ee

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v0

    invoke-virtual {v10, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v5, 0x4

    goto/16 :goto_251

    :pswitch_1d6
    move v6, v2

    move/from16 v11, v20

    move/from16 v5, v22

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1ee

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move v13, v5

    move-wide v2, v3

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_24f

    :cond_1ee
    :goto_1ee
    move v13, v5

    goto/16 :goto_260

    :pswitch_1f1
    move v6, v2

    move/from16 v11, v20

    move/from16 v13, v22

    if-nez v1, :cond_260

    invoke-static {v12, v13, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_251

    :pswitch_202
    move v6, v2

    move/from16 v11, v20

    move/from16 v13, v22

    if-nez v1, :cond_260

    invoke-static {v12, v13, v9}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v13

    iget-wide v1, v9, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    move-object v0, v10

    move-wide/from16 v17, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v7, v8

    move v2, v6

    move v1, v11

    move v0, v13

    move/from16 v3, v21

    :goto_221
    move/from16 v6, v24

    const/4 v8, -0x1

    move/from16 v13, p4

    goto :goto_25c

    :pswitch_227
    move v6, v2

    move/from16 v11, v20

    move/from16 v13, v22

    if-ne v1, v0, :cond_260

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v3, v4, v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzp(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v13, 0x4

    goto :goto_251

    :pswitch_23c
    move v6, v2

    move/from16 v11, v20

    move/from16 v13, v22

    const/4 v0, 0x1

    if-ne v1, v0, :cond_260

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v3, v4, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzo(Ljava/lang/Object;JD)V

    :goto_24f
    add-int/lit8 v0, v13, 0x8

    :goto_251
    or-int v5, v7, v8

    move/from16 v13, p4

    move v2, v6

    move v1, v11

    move/from16 v3, v21

    move/from16 v6, v24

    const/4 v8, -0x1

    :goto_25c
    move/from16 v11, p5

    goto/16 :goto_1d

    :cond_260
    :goto_260
    move v12, v6

    :goto_261
    move/from16 v0, p5

    move/from16 v20, v7

    move-object/from16 v27, v10

    move/from16 p3, v11

    move/from16 v22, v12

    move v2, v13

    move/from16 v7, v21

    move/from16 v6, v24

    const/16 v19, -0x1

    goto/16 :goto_388

    :cond_274
    move v12, v2

    move/from16 v18, v7

    move/from16 v8, v20

    move/from16 v13, v22

    const/16 v0, 0x1b

    if-ne v11, v0, :cond_2d6

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2c7

    invoke-virtual {v10, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzc()Z

    move-result v1

    if-nez v1, :cond_29f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_297

    const/16 v1, 0xa

    goto :goto_298

    :cond_297
    add-int/2addr v1, v1

    :goto_298
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v0

    invoke-virtual {v10, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_29f
    move-object v7, v0

    invoke-direct {v15, v12}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    move/from16 v1, v21

    move-object/from16 v2, p2

    move v3, v13

    move/from16 v4, p4

    move/from16 v20, v5

    move-object v5, v7

    move/from16 v24, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzao;->zze(Lcom/google/android/gms/internal/play_billing/zzdp;I[BIILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    move/from16 v13, p4

    move/from16 v11, p5

    move v1, v8

    move v2, v12

    move/from16 v5, v20

    move/from16 v3, v21

    move/from16 v6, v24

    const/4 v8, -0x1

    move-object/from16 v12, p2

    goto/16 :goto_1d

    :cond_2c7
    move/from16 v20, v5

    move/from16 v24, v6

    move/from16 p3, v8

    move-object/from16 v27, v10

    move/from16 v22, v12

    move v15, v13

    const/16 v19, -0x1

    goto/16 :goto_360

    :cond_2d6
    move/from16 v20, v5

    move/from16 v24, v6

    const/16 v0, 0x31

    if-gt v11, v0, :cond_332

    move/from16 v7, v18

    int-to-long v6, v7

    move-object/from16 v0, p0

    move v5, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v25, v3

    move v3, v13

    move/from16 v4, p4

    move/from16 v18, v5

    move/from16 v5, v21

    move-wide/from16 v22, v6

    move v6, v8

    move/from16 v7, v18

    move/from16 p3, v8

    const/16 v19, -0x1

    move v8, v12

    move-object/from16 v27, v10

    move-wide/from16 v9, v22

    move/from16 v15, p5

    move/from16 v22, v12

    move v15, v13

    move-wide/from16 v12, v25

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    if-eq v0, v15, :cond_329

    :goto_30e
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v5, v20

    move/from16 v3, v21

    move/from16 v2, v22

    move/from16 v6, v24

    move-object/from16 v10, v27

    const/4 v8, -0x1

    goto/16 :goto_1d

    :cond_329
    move v2, v0

    move/from16 v7, v21

    move/from16 v6, v24

    move/from16 v0, p5

    goto/16 :goto_388

    :cond_332
    move-wide/from16 v25, v3

    move/from16 p3, v8

    move-object/from16 v27, v10

    move/from16 v22, v12

    move v15, v13

    move/from16 v7, v18

    const/16 v19, -0x1

    move/from16 v18, v1

    const/16 v0, 0x32

    if-ne v11, v0, :cond_368

    move/from16 v8, v18

    const/4 v0, 0x2

    if-ne v8, v0, :cond_360

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v22

    move-wide/from16 v6, v25

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzq(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    if-eq v0, v15, :cond_329

    goto :goto_30e

    :cond_360
    :goto_360
    move/from16 v0, p5

    move v2, v15

    move/from16 v7, v21

    move/from16 v6, v24

    goto :goto_388

    :cond_368
    move/from16 v8, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v21

    move/from16 v6, p3

    move v9, v7

    move v7, v8

    move v8, v9

    move v9, v11

    move-wide/from16 v10, v25

    move/from16 v12, v22

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzr(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    if-eq v0, v15, :cond_329

    goto :goto_30e

    :goto_388
    if-ne v7, v0, :cond_397

    if-eqz v0, :cond_397

    move-object/from16 v8, p0

    move-object/from16 v12, p1

    move v9, v0

    move v0, v2

    move v3, v7

    move/from16 v5, v20

    goto/16 :goto_3fe

    :cond_397
    move-object/from16 v8, p0

    move v9, v0

    iget-boolean v0, v8, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-eqz v0, :cond_3cd

    move-object/from16 v10, p6

    iget-object v0, v10, Lcom/google/android/gms/internal/play_billing/zzan;->zzd:Lcom/google/android/gms/internal/play_billing/zzbn;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzbn;->zza:Lcom/google/android/gms/internal/play_billing/zzbn;

    if-eq v0, v1, :cond_3c8

    iget-object v1, v8, Lcom/google/android/gms/internal/play_billing/zzdi;->zzg:Lcom/google/android/gms/internal/play_billing/zzdf;

    move/from16 v11, p3

    invoke-virtual {v0, v1, v11}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzb(Lcom/google/android/gms/internal/play_billing/zzdf;I)Lcom/google/android/gms/internal/play_billing/zzbz;

    move-result-object v0

    if-nez v0, :cond_3c2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzi(I[BIILcom/google/android/gms/internal/play_billing/zzeh;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    move-object/from16 v12, p1

    goto :goto_3e2

    :cond_3c2
    move-object/from16 v12, p1

    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzby;

    throw v17

    :cond_3c8
    move-object/from16 v12, p1

    move/from16 v11, p3

    goto :goto_3d3

    :cond_3cd
    move-object/from16 v12, p1

    move/from16 v11, p3

    move-object/from16 v10, p6

    :goto_3d3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzi(I[BIILcom/google/android/gms/internal/play_billing/zzeh;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    :goto_3e2
    move/from16 v13, p4

    move v3, v7

    move-object v15, v8

    move v1, v11

    move-object v14, v12

    move/from16 v5, v20

    move/from16 v2, v22

    const/4 v8, -0x1

    move-object/from16 v12, p2

    move v11, v9

    move-object v9, v10

    move-object/from16 v10, v27

    goto/16 :goto_1d

    :cond_3f5
    move/from16 v20, v5

    move/from16 v24, v6

    move-object/from16 v27, v10

    move v9, v11

    move-object v12, v14

    move-object v8, v15

    :goto_3fe
    const v1, 0xfffff

    if-eq v6, v1, :cond_409

    int-to-long v6, v6

    move-object/from16 v2, v27

    invoke-virtual {v2, v12, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_409
    iget v2, v8, Lcom/google/android/gms/internal/play_billing/zzdi;->zzj:I

    :goto_40b
    iget v4, v8, Lcom/google/android/gms/internal/play_billing/zzdi;->zzk:I

    if-ge v2, v4, :cond_436

    iget-object v4, v8, Lcom/google/android/gms/internal/play_billing/zzdi;->zzi:[I

    aget v4, v4, v2

    iget-object v5, v8, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v5, v5, v4

    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v5

    and-int/2addr v5, v1

    int-to-long v5, v5

    invoke-static {v12, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_424

    goto :goto_42a

    :cond_424
    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzA(I)Lcom/google/android/gms/internal/play_billing/zzce;

    move-result-object v6

    if-nez v6, :cond_42d

    :goto_42a
    add-int/lit8 v2, v2, 0x1

    goto :goto_40b

    :cond_42d
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzcz;

    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzC(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcy;

    throw v17

    :cond_436
    if-nez v9, :cond_442

    move/from16 v1, p4

    if-ne v0, v1, :cond_43d

    goto :goto_448

    :cond_43d
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zze()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v0

    throw v0

    :cond_442
    move/from16 v1, p4

    if-gt v0, v1, :cond_449

    if-ne v3, v9, :cond_449

    :goto_448
    return v0

    :cond_449
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zze()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v0

    throw v0

    :pswitch_data_44e
    .packed-switch 0x0
        :pswitch_23c
        :pswitch_227
        :pswitch_202
        :pswitch_202
        :pswitch_1f1
        :pswitch_1d6
        :pswitch_1c4
        :pswitch_1a9
        :pswitch_18b
        :pswitch_160
        :pswitch_140
        :pswitch_1f1
        :pswitch_111
        :pswitch_1c4
        :pswitch_1d6
        :pswitch_fa
        :pswitch_cb
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzg:Lcom/google/android/gms/internal/play_billing/zzdf;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzi()Lcom/google/android/gms/internal/play_billing/zzcb;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzcb;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcb;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzq(I)V

    iput v1, v0, Lcom/google/android/gms/internal/play_billing/zzak;->zza:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzo()V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v0, v0

    :goto_1d
    if-ge v1, v0, :cond_82

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_6c

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_54

    const/16 v5, 0x44

    if-eq v2, v5, :cond_54

    packed-switch v2, :pswitch_data_92

    goto :goto_7f

    :pswitch_3c
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7f

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzcz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/zzcz;->zzc()V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7f

    :pswitch_4e
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzl:Lcom/google/android/gms/internal/play_billing/zzct;

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzct;->zza(Ljava/lang/Object;J)V

    goto :goto_7f

    :cond_54
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v2, v2, v1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzf(Ljava/lang/Object;)V

    goto :goto_7f

    :cond_6c
    :pswitch_6c
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzf(Ljava/lang/Object;)V

    :cond_7f
    :goto_7f
    add-int/lit8 v1, v1, 0x3

    goto :goto_1d

    :cond_82
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzg(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zzb(Ljava/lang/Object;)V

    :cond_90
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x11
        :pswitch_6c
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_3c
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzG(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_190

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v3, v3, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v1

    int-to-long v4, v2

    packed-switch v1, :pswitch_data_1a2

    goto/16 :goto_18c

    :pswitch_22
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_18c

    :pswitch_27
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzK(Ljava/lang/Object;II)V

    goto/16 :goto_18c

    :pswitch_39
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_18c

    :pswitch_3e
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzK(Ljava/lang/Object;II)V

    goto/16 :goto_18c

    :pswitch_50
    sget v1, Lcom/google/android/gms/internal/play_billing/zzdr;->zza:I

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzda;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_18c

    :pswitch_63
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzl:Lcom/google/android/gms/internal/play_billing/zzct;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzct;->zzb(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_18c

    :pswitch_6a
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_18c

    :pswitch_6f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    :pswitch_81
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    :pswitch_93
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    :pswitch_a5
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    :pswitch_b7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    :pswitch_c9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    :pswitch_db
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    :pswitch_ed
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_18c

    :pswitch_f2
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    :pswitch_104
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzm(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    :pswitch_116
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto :goto_18c

    :pswitch_127
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto :goto_18c

    :pswitch_138
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto :goto_18c

    :pswitch_149
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto :goto_18c

    :pswitch_15a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto :goto_18c

    :pswitch_16b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzp(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    goto :goto_18c

    :pswitch_17c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzo(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzJ(Ljava/lang/Object;I)V

    :cond_18c
    :goto_18c
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_7

    :cond_190
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzB(Lcom/google/android/gms/internal/play_billing/zzeg;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez p1, :cond_19a

    return-void

    :cond_19a
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_17c
        :pswitch_16b
        :pswitch_15a
        :pswitch_149
        :pswitch_138
        :pswitch_127
        :pswitch_116
        :pswitch_104
        :pswitch_f2
        :pswitch_ed
        :pswitch_db
        :pswitch_c9
        :pswitch_b7
        :pswitch_a5
        :pswitch_93
        :pswitch_81
        :pswitch_6f
        :pswitch_6a
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_50
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_39
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_22
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzan;)V
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzew;->zza:Lcom/google/android/gms/internal/play_billing/zzew;

    iget v0, v15, Lcom/google/android/gms/internal/play_billing/zzdi;->zzo:I

    const/4 v9, -0x1

    add-int/2addr v0, v9

    if-eqz v0, :cond_350

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzG(Ljava/lang/Object;)V

    sget-object v10, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const v8, 0xfffff

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_24
    if-ge v0, v13, :cond_333

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_36

    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzk(I[BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_39

    :cond_36
    move/from16 v17, v0

    move v4, v3

    :goto_39
    ushr-int/lit8 v5, v17, 0x3

    if-le v5, v1, :cond_44

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v5, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzu(II)I

    move-result v0

    goto :goto_48

    :cond_44
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzt(I)I

    move-result v0

    :goto_48
    move v2, v0

    if-ne v2, v9, :cond_56

    move v2, v4

    move/from16 v19, v5

    move-object/from16 v27, v10

    const/16 v18, -0x1

    const/16 v22, 0x0

    goto/16 :goto_30d

    :cond_56
    and-int/lit8 v3, v17, 0x7

    iget-object v0, v15, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v13

    and-int v9, v1, v8

    int-to-long v8, v9

    move/from16 p3, v5

    const/16 v5, 0x11

    move/from16 v20, v1

    if-gt v13, v5, :cond_214

    add-int/lit8 v5, v2, 0x2

    aget v0, v0, v5

    ushr-int/lit8 v5, v0, 0x14

    const/4 v1, 0x1

    shl-int v22, v1, v5

    const v5, 0xfffff

    and-int/2addr v0, v5

    move/from16 v19, v2

    if-eq v0, v7, :cond_8d

    if-eq v7, v5, :cond_84

    int-to-long v1, v7

    invoke-virtual {v10, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_84
    if-eq v0, v5, :cond_8c

    int-to-long v1, v0

    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v6, v1

    :cond_8c
    move v7, v0

    :cond_8d
    const/4 v0, 0x5

    packed-switch v13, :pswitch_data_364

    move v5, v4

    move/from16 v13, v19

    const v24, 0xfffff

    move/from16 v19, p3

    goto/16 :goto_20b

    :pswitch_9b
    if-nez v3, :cond_be

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v13

    iget-wide v0, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(J)J

    move-result-wide v20

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v4, v19

    move-wide v2, v8

    move/from16 v19, p3

    move v8, v4

    const v24, 0xfffff

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v22

    move v2, v8

    move v0, v13

    goto/16 :goto_201

    :cond_be
    move/from16 v8, v19

    const v24, 0xfffff

    move/from16 v19, p3

    move v5, v4

    move v13, v8

    goto/16 :goto_20b

    :pswitch_c9
    move/from16 v13, v19

    const v24, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_19a

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzb(I)I

    move-result v1

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1fe

    :pswitch_e1
    move/from16 v13, v19

    const v24, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_19a

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1fe

    :pswitch_f5
    move/from16 v13, v19

    const/4 v0, 0x2

    const v24, 0xfffff

    move/from16 v19, p3

    if-ne v3, v0, :cond_19a

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zza([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1fe

    :pswitch_10a
    move/from16 v13, v19

    const/4 v0, 0x2

    const v24, 0xfffff

    move/from16 v19, p3

    if-ne v3, v0, :cond_19a

    invoke-direct {v15, v14, v13}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzD(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;[BIILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    invoke-direct {v15, v14, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzL(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1fe

    :pswitch_12d
    move/from16 v13, v19

    const/4 v0, 0x2

    const v24, 0xfffff

    move/from16 v19, p3

    if-ne v3, v0, :cond_19a

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_142

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzg([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    goto :goto_146

    :cond_142
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzh([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    :goto_146
    iget-object v1, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1fe

    :pswitch_14d
    move/from16 v13, v19

    const v24, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_19a

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget-wide v1, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_164

    const/4 v1, 0x1

    goto :goto_165

    :cond_164
    const/4 v1, 0x0

    :goto_165
    invoke-static {v14, v8, v9, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzm(Ljava/lang/Object;JZ)V

    goto/16 :goto_1fe

    :pswitch_16a
    move/from16 v13, v19

    const v24, 0xfffff

    move/from16 v19, p3

    if-ne v3, v0, :cond_19a

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    goto/16 :goto_1fe

    :pswitch_17e
    move/from16 v13, v19

    const/4 v0, 0x1

    const v24, 0xfffff

    move/from16 v19, p3

    if-ne v3, v0, :cond_19a

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v20

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_1fe

    :cond_19a
    move v5, v4

    goto/16 :goto_20b

    :pswitch_19d
    move v5, v4

    move/from16 v13, v19

    const v24, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_20b

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzj([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zza:I

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1fe

    :pswitch_1b1
    move v5, v4

    move/from16 v13, v19

    const v24, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_20b

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/play_billing/zzao;->zzm([BILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v17

    iget-wide v4, v11, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v22

    move v2, v13

    move/from16 v0, v17

    goto :goto_201

    :pswitch_1ce
    move v5, v4

    move/from16 v13, v19

    const v24, 0xfffff

    move/from16 v19, p3

    if-ne v3, v0, :cond_20b

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzp(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v5, 0x4

    goto :goto_1fe

    :pswitch_1e6
    move v5, v4

    move/from16 v13, v19

    const/4 v0, 0x1

    const v24, 0xfffff

    move/from16 v19, p3

    if-ne v3, v0, :cond_20b

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzp([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzo(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v5, 0x8

    :goto_1fe
    or-int v6, v6, v22

    move v2, v13

    :goto_201
    move/from16 v1, v19

    const v8, 0xfffff

    const/4 v9, -0x1

    move/from16 v13, p4

    goto/16 :goto_24

    :cond_20b
    :goto_20b
    move v2, v5

    move-object/from16 v27, v10

    move/from16 v22, v13

    const/16 v18, -0x1

    goto/16 :goto_30d

    :cond_214
    move/from16 v19, p3

    move v5, v4

    const v24, 0xfffff

    move v4, v2

    const/16 v0, 0x1b

    if-ne v13, v0, :cond_26b

    const/4 v0, 0x2

    if-ne v3, v0, :cond_25e

    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzc()Z

    move-result v1

    if-nez v1, :cond_23f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_237

    const/16 v1, 0xa

    goto :goto_238

    :cond_237
    add-int/2addr v1, v1

    :goto_238
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_23f
    move-object v8, v0

    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v5

    move/from16 v22, v4

    move/from16 v4, p4

    move-object v5, v8

    move v8, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzao;->zze(Lcom/google/android/gms/internal/play_billing/zzdp;I[BIILcom/google/android/gms/internal/play_billing/zzcf;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    move/from16 v13, p4

    move v6, v8

    move/from16 v1, v19

    move/from16 v2, v22

    goto/16 :goto_32d

    :cond_25e
    move/from16 v22, v4

    move v15, v5

    move/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v10

    const/16 v18, -0x1

    goto/16 :goto_2e9

    :cond_26b
    move/from16 v22, v4

    const/16 v0, 0x31

    if-gt v13, v0, :cond_2bb

    move/from16 v1, v20

    int-to-long v1, v1

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v3, v5

    move/from16 p3, v4

    move/from16 v4, p4

    move v15, v5

    move/from16 v5, v17

    move/from16 v25, v6

    move/from16 v6, v19

    move/from16 v26, v7

    move/from16 v7, p3

    move-wide/from16 v23, v8

    const v9, 0xfffff

    move/from16 v8, v22

    move-object/from16 v27, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v20

    move v11, v13

    move-wide/from16 v12, v23

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    if-eq v0, v15, :cond_2b9

    :goto_2a5
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v6, v25

    move/from16 v7, v26

    goto/16 :goto_32b

    :cond_2b9
    move v2, v0

    goto :goto_2ea

    :cond_2bb
    move/from16 p3, v3

    move v15, v5

    move/from16 v25, v6

    move/from16 v26, v7

    move-wide/from16 v23, v8

    move-object/from16 v27, v10

    move/from16 v1, v20

    const/16 v18, -0x1

    const/16 v0, 0x32

    if-ne v13, v0, :cond_2ef

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_2e9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v22

    move-wide/from16 v6, v23

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzq(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    if-eq v0, v15, :cond_2b9

    goto :goto_2a5

    :cond_2e9
    :goto_2e9
    move v2, v15

    :goto_2ea
    move/from16 v6, v25

    move/from16 v7, v26

    goto :goto_30d

    :cond_2ef
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v19

    move v9, v13

    move-wide/from16 v10, v23

    move/from16 v12, v22

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzr(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    if-eq v0, v15, :cond_2b9

    goto :goto_2a5

    :goto_30d
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzao;->zzi(I[BIILcom/google/android/gms/internal/play_billing/zzeh;Lcom/google/android/gms/internal/play_billing/zzan;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v19

    move/from16 v2, v22

    :goto_32b
    move-object/from16 v10, v27

    :goto_32d
    const v8, 0xfffff

    const/4 v9, -0x1

    goto/16 :goto_24

    :cond_333
    move/from16 v25, v6

    move-object/from16 v27, v10

    const v1, 0xfffff

    if-eq v7, v1, :cond_346

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v25

    move-object/from16 v4, v27

    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_346
    move/from16 v4, p4

    if-ne v0, v4, :cond_34b

    return-void

    :cond_34b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzci;->zze()Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v0

    throw v0

    :cond_350
    move v4, v13

    move-object v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/zzan;)I

    return-void

    nop

    :pswitch_data_364
    .packed-switch 0x0
        :pswitch_1e6
        :pswitch_1ce
        :pswitch_1b1
        :pswitch_1b1
        :pswitch_19d
        :pswitch_17e
        :pswitch_16a
        :pswitch_14d
        :pswitch_12d
        :pswitch_10a
        :pswitch_f5
        :pswitch_19d
        :pswitch_e1
        :pswitch_16a
        :pswitch_17e
        :pswitch_c9
        :pswitch_9b
    .end packed-switch
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzew;->zza:Lcom/google/android/gms/internal/play_billing/zzew;

    iget v3, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzo:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0xfffff

    if-eqz v3, :cond_466

    iget-boolean v3, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez v3, :cond_460

    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v3, v3

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_456

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v8

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v9, v9, v4

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v10

    packed-switch v10, :pswitch_data_8c6

    goto/16 :goto_452

    :pswitch_2f
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v10

    invoke-interface {v2, v9, v8, v10}, Lcom/google/android/gms/internal/play_billing/zzey;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_452

    :pswitch_44
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzC(IJ)V

    goto/16 :goto_452

    :pswitch_55
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzA(II)V

    goto/16 :goto_452

    :pswitch_66
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzy(IJ)V

    goto/16 :goto_452

    :pswitch_77
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzw(II)V

    goto/16 :goto_452

    :pswitch_88
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzi(II)V

    goto/16 :goto_452

    :pswitch_99
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzH(II)V

    goto/16 :goto_452

    :pswitch_aa
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzd(ILcom/google/android/gms/internal/play_billing/zzba;)V

    goto/16 :goto_452

    :pswitch_bd
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v10

    invoke-interface {v2, v9, v8, v10}, Lcom/google/android/gms/internal/play_billing/zzey;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_452

    :pswitch_d2
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_452

    :pswitch_e3
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzU(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzb(IZ)V

    goto/16 :goto_452

    :pswitch_f4
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzk(II)V

    goto/16 :goto_452

    :pswitch_105
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzm(IJ)V

    goto/16 :goto_452

    :pswitch_116
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzr(II)V

    goto/16 :goto_452

    :pswitch_127
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzJ(IJ)V

    goto/16 :goto_452

    :pswitch_138
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzt(IJ)V

    goto/16 :goto_452

    :pswitch_149
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzo(IF)V

    goto/16 :goto_452

    :pswitch_15a
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzf(ID)V

    goto/16 :goto_452

    :pswitch_16b
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v2, v9, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzN(Lcom/google/android/gms/internal/play_billing/zzey;ILjava/lang/Object;I)V

    goto/16 :goto_452

    :pswitch_176
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v10

    invoke-static {v9, v8, v2, v10}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_452

    :pswitch_187
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_194
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_1a1
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_1ae
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_1bb
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_1c8
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_1d5
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_1e2
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_1ef
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_1fc
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_209
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_216
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_223
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_230
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_23d
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_24a
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_257
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_264
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_271
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_27e
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_28b
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_452

    :pswitch_298
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v10

    invoke-static {v9, v8, v2, v10}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_452

    :pswitch_2a9
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_452

    :pswitch_2b6
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_2c3
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_2d0
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_2dd
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_2ea
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_2f7
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_304
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_311
    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_452

    :pswitch_31e
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v10

    invoke-interface {v2, v9, v8, v10}, Lcom/google/android/gms/internal/play_billing/zzey;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_452

    :pswitch_333
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzC(IJ)V

    goto/16 :goto_452

    :pswitch_344
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzA(II)V

    goto/16 :goto_452

    :pswitch_355
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzy(IJ)V

    goto/16 :goto_452

    :pswitch_366
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzw(II)V

    goto/16 :goto_452

    :pswitch_377
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzi(II)V

    goto/16 :goto_452

    :pswitch_388
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzH(II)V

    goto/16 :goto_452

    :pswitch_399
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzd(ILcom/google/android/gms/internal/play_billing/zzba;)V

    goto/16 :goto_452

    :pswitch_3ac
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v10

    invoke-interface {v2, v9, v8, v10}, Lcom/google/android/gms/internal/play_billing/zzey;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_452

    :pswitch_3c1
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_452

    :pswitch_3d2
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzb(IZ)V

    goto/16 :goto_452

    :pswitch_3e3
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzk(II)V

    goto :goto_452

    :pswitch_3f3
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzm(IJ)V

    goto :goto_452

    :pswitch_403
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzr(II)V

    goto :goto_452

    :pswitch_413
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzJ(IJ)V

    goto :goto_452

    :pswitch_423
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzt(IJ)V

    goto :goto_452

    :pswitch_433
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {v2, v9, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzo(IF)V

    goto :goto_452

    :pswitch_443
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzP(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_452

    and-int/2addr v8, v7

    int-to-long v10, v8

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzey;->zzf(ID)V

    :cond_452
    :goto_452
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_1c

    :cond_456
    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V

    return-void

    :cond_460
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    throw v4

    :cond_466
    iget-boolean v3, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez v3, :cond_8c0

    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v3, v3

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v10, 0x0

    :goto_474
    if-ge v8, v3, :cond_8b6

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v11

    iget-object v12, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v13, v12, v8

    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v14

    const/16 v15, 0x11

    if-gt v14, v15, :cond_499

    add-int/lit8 v15, v8, 0x2

    aget v12, v12, v15

    and-int v15, v12, v7

    if-eq v15, v9, :cond_494

    int-to-long v9, v15

    invoke-virtual {v4, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v10

    move v9, v15

    :cond_494
    ushr-int/lit8 v12, v12, 0x14

    shl-int v12, v5, v12

    goto :goto_49a

    :cond_499
    const/4 v12, 0x0

    :goto_49a
    and-int/2addr v11, v7

    int-to-long v6, v11

    packed-switch v14, :pswitch_data_954

    :cond_49f
    :goto_49f
    const/4 v14, 0x0

    goto/16 :goto_8ae

    :pswitch_4a2
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v7

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto :goto_49f

    :pswitch_4b4
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzC(IJ)V

    goto :goto_49f

    :pswitch_4c2
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzA(II)V

    goto :goto_49f

    :pswitch_4d0
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzy(IJ)V

    goto :goto_49f

    :pswitch_4de
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzw(II)V

    goto :goto_49f

    :pswitch_4ec
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzi(II)V

    goto :goto_49f

    :pswitch_4fa
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzH(II)V

    goto :goto_49f

    :pswitch_508
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzd(ILcom/google/android/gms/internal/play_billing/zzba;)V

    goto :goto_49f

    :pswitch_518
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v7

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_49f

    :pswitch_52b
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v13, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_49f

    :pswitch_53a
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzU(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzb(IZ)V

    goto/16 :goto_49f

    :pswitch_549
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzk(II)V

    goto/16 :goto_49f

    :pswitch_558
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzm(IJ)V

    goto/16 :goto_49f

    :pswitch_567
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzp(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzr(II)V

    goto/16 :goto_49f

    :pswitch_576
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzJ(IJ)V

    goto/16 :goto_49f

    :pswitch_585
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzz(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzt(IJ)V

    goto/16 :goto_49f

    :pswitch_594
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzo(IF)V

    goto/16 :goto_49f

    :pswitch_5a3
    invoke-direct {v0, v1, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_49f

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzf(ID)V

    goto/16 :goto_49f

    :pswitch_5b2
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v2, v13, v6, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzN(Lcom/google/android/gms/internal/play_billing/zzey;ILjava/lang/Object;I)V

    goto/16 :goto_49f

    :pswitch_5bb
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v7

    invoke-static {v11, v6, v2, v7}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_49f

    :pswitch_5ce
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_5dd
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_5ec
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_5fb
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_60a
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_619
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_628
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_637
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_646
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_655
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_664
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_673
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_682
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_691
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_6a0
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_6b0
    const/4 v12, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_6c0
    const/4 v12, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_6d0
    const/4 v12, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_6e0
    const/4 v12, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_6f0
    const/4 v12, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_49f

    :pswitch_700
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_49f

    :pswitch_70f
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v7

    invoke-static {v11, v6, v2, v7}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_49f

    :pswitch_722
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_49f

    :pswitch_731
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v14, 0x0

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_8ae

    :pswitch_741
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_8ae

    :pswitch_751
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_8ae

    :pswitch_761
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_8ae

    :pswitch_771
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_8ae

    :pswitch_781
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_8ae

    :pswitch_791
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_8ae

    :pswitch_7a1
    const/4 v14, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v11, v11, v8

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzey;Z)V

    goto/16 :goto_8ae

    :pswitch_7b1
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v7

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_8ae

    :pswitch_7c3
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzC(IJ)V

    goto/16 :goto_8ae

    :pswitch_7d1
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzA(II)V

    goto/16 :goto_8ae

    :pswitch_7df
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzy(IJ)V

    goto/16 :goto_8ae

    :pswitch_7ed
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzw(II)V

    goto/16 :goto_8ae

    :pswitch_7fb
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzi(II)V

    goto/16 :goto_8ae

    :pswitch_809
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzH(II)V

    goto/16 :goto_8ae

    :pswitch_817
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzd(ILcom/google/android/gms/internal/play_billing/zzba;)V

    goto/16 :goto_8ae

    :pswitch_827
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v7

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzdp;)V

    goto/16 :goto_8ae

    :pswitch_839
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v13, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V

    goto/16 :goto_8ae

    :pswitch_847
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzb(IZ)V

    goto :goto_8ae

    :pswitch_854
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzk(II)V

    goto :goto_8ae

    :pswitch_861
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzm(IJ)V

    goto :goto_8ae

    :pswitch_86e
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzr(II)V

    goto :goto_8ae

    :pswitch_87b
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzJ(IJ)V

    goto :goto_8ae

    :pswitch_888
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzt(IJ)V

    goto :goto_8ae

    :pswitch_895
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {v2, v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzo(IF)V

    goto :goto_8ae

    :pswitch_8a2
    const/4 v14, 0x0

    and-int v11, v10, v12

    if-eqz v11, :cond_8ae

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {v2, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzey;->zzf(ID)V

    :cond_8ae
    :goto_8ae
    add-int/lit8 v8, v8, 0x3

    const/4 v6, 0x0

    const v7, 0xfffff

    goto/16 :goto_474

    :cond_8b6
    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V

    return-void

    :cond_8c0
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    throw v4

    :pswitch_data_8c6
    .packed-switch 0x0
        :pswitch_443
        :pswitch_433
        :pswitch_423
        :pswitch_413
        :pswitch_403
        :pswitch_3f3
        :pswitch_3e3
        :pswitch_3d2
        :pswitch_3c1
        :pswitch_3ac
        :pswitch_399
        :pswitch_388
        :pswitch_377
        :pswitch_366
        :pswitch_355
        :pswitch_344
        :pswitch_333
        :pswitch_31e
        :pswitch_311
        :pswitch_304
        :pswitch_2f7
        :pswitch_2ea
        :pswitch_2dd
        :pswitch_2d0
        :pswitch_2c3
        :pswitch_2b6
        :pswitch_2a9
        :pswitch_298
        :pswitch_28b
        :pswitch_27e
        :pswitch_271
        :pswitch_264
        :pswitch_257
        :pswitch_24a
        :pswitch_23d
        :pswitch_230
        :pswitch_223
        :pswitch_216
        :pswitch_209
        :pswitch_1fc
        :pswitch_1ef
        :pswitch_1e2
        :pswitch_1d5
        :pswitch_1c8
        :pswitch_1bb
        :pswitch_1ae
        :pswitch_1a1
        :pswitch_194
        :pswitch_187
        :pswitch_176
        :pswitch_16b
        :pswitch_15a
        :pswitch_149
        :pswitch_138
        :pswitch_127
        :pswitch_116
        :pswitch_105
        :pswitch_f4
        :pswitch_e3
        :pswitch_d2
        :pswitch_bd
        :pswitch_aa
        :pswitch_99
        :pswitch_88
        :pswitch_77
        :pswitch_66
        :pswitch_55
        :pswitch_44
        :pswitch_2f
    .end packed-switch

    :pswitch_data_954
    .packed-switch 0x0
        :pswitch_8a2
        :pswitch_895
        :pswitch_888
        :pswitch_87b
        :pswitch_86e
        :pswitch_861
        :pswitch_854
        :pswitch_847
        :pswitch_839
        :pswitch_827
        :pswitch_817
        :pswitch_809
        :pswitch_7fb
        :pswitch_7ed
        :pswitch_7df
        :pswitch_7d1
        :pswitch_7c3
        :pswitch_7b1
        :pswitch_7a1
        :pswitch_791
        :pswitch_781
        :pswitch_771
        :pswitch_761
        :pswitch_751
        :pswitch_741
        :pswitch_731
        :pswitch_722
        :pswitch_70f
        :pswitch_700
        :pswitch_6f0
        :pswitch_6e0
        :pswitch_6d0
        :pswitch_6c0
        :pswitch_6b0
        :pswitch_6a0
        :pswitch_691
        :pswitch_682
        :pswitch_673
        :pswitch_664
        :pswitch_655
        :pswitch_646
        :pswitch_637
        :pswitch_628
        :pswitch_619
        :pswitch_60a
        :pswitch_5fb
        :pswitch_5ec
        :pswitch_5dd
        :pswitch_5ce
        :pswitch_5bb
        :pswitch_5b2
        :pswitch_5a3
        :pswitch_594
        :pswitch_585
        :pswitch_576
        :pswitch_567
        :pswitch_558
        :pswitch_549
        :pswitch_53a
        :pswitch_52b
        :pswitch_518
        :pswitch_508
        :pswitch_4fa
        :pswitch_4ec
        :pswitch_4de
        :pswitch_4d0
        :pswitch_4c2
        :pswitch_4b4
        :pswitch_4a2
    .end packed-switch
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_1c7

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v3

    int-to-long v5, v5

    packed-switch v3, :pswitch_data_1ec

    goto/16 :goto_1c3

    :pswitch_1a
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzv(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v7, v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c3

    goto/16 :goto_1c2

    :pswitch_3a
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_53

    :pswitch_47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_53
    if-nez v3, :cond_1c3

    goto/16 :goto_1c2

    :pswitch_57
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    :pswitch_6d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1c2

    goto/16 :goto_1c3

    :pswitch_81
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    :pswitch_93
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1c2

    goto/16 :goto_1c3

    :pswitch_a7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    :pswitch_b9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    :pswitch_cb
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    :pswitch_dd
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    :pswitch_f3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    :pswitch_109
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzV(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    :pswitch_11f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzw(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    :pswitch_131
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    :pswitch_143
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1c2

    goto/16 :goto_1c3

    :pswitch_157
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto :goto_1c3

    :pswitch_168
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1c2

    goto :goto_1c3

    :pswitch_17b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1c2

    goto :goto_1c3

    :pswitch_18e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto :goto_1c3

    :pswitch_1a7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1c2

    goto :goto_1c3

    :cond_1c2
    :goto_1c2
    return v1

    :cond_1c3
    :goto_1c3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    :cond_1c7
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzm:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1da

    return v1

    :cond_1da
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez v0, :cond_1e0

    const/4 p1, 0x1

    return p1

    :cond_1e0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 p1, 0x0

    throw p1

    :pswitch_data_1ec
    .packed-switch 0x0
        :pswitch_1a7
        :pswitch_18e
        :pswitch_17b
        :pswitch_168
        :pswitch_157
        :pswitch_143
        :pswitch_131
        :pswitch_11f
        :pswitch_109
        :pswitch_f3
        :pswitch_dd
        :pswitch_cb
        :pswitch_b9
        :pswitch_a7
        :pswitch_93
        :pswitch_81
        :pswitch_6d
        :pswitch_57
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_3a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .registers 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_d
    iget v2, v6, Lcom/google/android/gms/internal/play_billing/zzdi;->zzj:I

    const/4 v11, 0x0

    const/4 v3, 0x1

    if-ge v10, v2, :cond_eb

    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzdi;->zzi:[I

    aget v12, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    aget v13, v2, v12

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzy(I)I

    move-result v14

    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzdi;->zzc:[I

    add-int/lit8 v4, v12, 0x2

    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v3, v2

    if-eq v4, v0, :cond_3b

    if-eq v4, v8, :cond_36

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzdi;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_36
    move/from16 v17, v1

    move/from16 v16, v4

    goto :goto_3f

    :cond_3b
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_3f
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_56

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzQ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_56

    :cond_55
    return v9

    :cond_56
    :goto_56
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzx(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_c8

    const/16 v1, 0x11

    if-eq v0, v1, :cond_c8

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_a0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_8f

    const/16 v1, 0x44

    if-eq v0, v1, :cond_8f

    const/16 v1, 0x31

    if-eq v0, v1, :cond_a0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_78

    goto/16 :goto_e3

    :cond_78
    and-int v0, v14, v8

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcz;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_88

    goto :goto_e3

    :cond_88
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzC(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcy;

    throw v11

    :cond_8f
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzT(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_e3

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzR(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzdp;)Z

    move-result v0

    if-nez v0, :cond_e3

    return v9

    :cond_a0
    and-int v0, v14, v8

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e3

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v1

    const/4 v2, 0x0

    :goto_b4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzk(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c5

    return v9

    :cond_c5
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    :cond_c8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzQ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_e3

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzB(I)Lcom/google/android/gms/internal/play_billing/zzdp;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzR(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzdp;)Z

    move-result v0

    if-nez v0, :cond_e3

    return v9

    :cond_e3
    :goto_e3
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_d

    :cond_eb
    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/zzdi;->zzh:Z

    if-nez v0, :cond_f0

    return v3

    :cond_f0
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzdi;->zzn:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    throw v11
.end method
