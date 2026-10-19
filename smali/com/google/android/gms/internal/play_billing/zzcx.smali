###### Class com.google.android.gms.internal.play_billing.zzcx (com.google.android.gms.internal.play_billing.zzcx)
.class final Lcom/google/android/gms/internal/play_billing/zzcx;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdq;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzdd;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzdd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzcv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcx;->zza:Lcom/google/android/gms/internal/play_billing/zzdd;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcw;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/play_billing/zzdd;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->zza()Lcom/google/android/gms/internal/play_billing/zzbw;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_c
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzdd;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_23} :catch_24

    goto :goto_26

    :catch_24
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzcx;->zza:Lcom/google/android/gms/internal/play_billing/zzdd;

    :goto_26
    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcw;-><init>([Lcom/google/android/gms/internal/play_billing/zzdd;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcg;->zzd:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/play_billing/zzdc;)Z
    .registers 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzc()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzdp;
    .registers 11

    const-class v0, Lcom/google/android/gms/internal/play_billing/zzcb;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzC(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzcx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzdd;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzdc;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/play_billing/zzdc;->zzb()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzz()Lcom/google/android/gms/internal/play_billing/zzeg;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb()Lcom/google/android/gms/internal/play_billing/zzbo;

    move-result-object v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/play_billing/zzdc;->zza()Lcom/google/android/gms/internal/play_billing/zzdf;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc(Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzdf;)Lcom/google/android/gms/internal/play_billing/zzdj;

    move-result-object p1

    return-object p1

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzy()Lcom/google/android/gms/internal/play_billing/zzeg;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbq;->zza()Lcom/google/android/gms/internal/play_billing/zzbo;

    move-result-object v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/play_billing/zzdc;->zza()Lcom/google/android/gms/internal/play_billing/zzdf;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc(Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzdf;)Lcom/google/android/gms/internal/play_billing/zzdj;

    move-result-object p1

    return-object p1

    :cond_39
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzcx;->zzb(Lcom/google/android/gms/internal/play_billing/zzdc;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdl;->zzb()Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzct;->zzd()Lcom/google/android/gms/internal/play_billing/zzct;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzz()Lcom/google/android/gms/internal/play_billing/zzeg;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb()Lcom/google/android/gms/internal/play_billing/zzbo;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdb;->zzb()Lcom/google/android/gms/internal/play_billing/zzda;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzdc;Lcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzct;Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzda;)Lcom/google/android/gms/internal/play_billing/zzdi;

    move-result-object p1

    goto :goto_ac

    :cond_5f
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdl;->zzb()Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzct;->zzd()Lcom/google/android/gms/internal/play_billing/zzct;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzz()Lcom/google/android/gms/internal/play_billing/zzeg;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdb;->zzb()Lcom/google/android/gms/internal/play_billing/zzda;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzdc;Lcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzct;Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzda;)Lcom/google/android/gms/internal/play_billing/zzdi;

    move-result-object p1

    goto :goto_ac

    :cond_76
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzcx;->zzb(Lcom/google/android/gms/internal/play_billing/zzdc;)Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdl;->zza()Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzct;->zzc()Lcom/google/android/gms/internal/play_billing/zzct;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzy()Lcom/google/android/gms/internal/play_billing/zzeg;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbq;->zza()Lcom/google/android/gms/internal/play_billing/zzbo;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdb;->zza()Lcom/google/android/gms/internal/play_billing/zzda;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzdc;Lcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzct;Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzda;)Lcom/google/android/gms/internal/play_billing/zzdi;

    move-result-object p1

    goto :goto_ac

    :cond_96
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdl;->zza()Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzct;->zzc()Lcom/google/android/gms/internal/play_billing/zzct;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzy()Lcom/google/android/gms/internal/play_billing/zzeg;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdb;->zza()Lcom/google/android/gms/internal/play_billing/zzda;

    move-result-object v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzdi;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzdc;Lcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzct;Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzda;)Lcom/google/android/gms/internal/play_billing/zzdi;

    move-result-object p1

    :goto_ac
    return-object p1
.end method
