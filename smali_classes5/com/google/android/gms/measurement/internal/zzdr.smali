###### Class com.google.android.gms.measurement.internal.zzdr (com.google.android.gms.measurement.internal.zzdr)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzdr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzeh;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/measurement/internal/zzdr;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzdr;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzdr;->zza:Lcom/google/android/gms/measurement/internal/zzdr;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzel;->zza:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zzn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
