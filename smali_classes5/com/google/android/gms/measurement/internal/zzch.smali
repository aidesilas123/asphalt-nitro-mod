###### Class com.google.android.gms.measurement.internal.zzch (com.google.android.gms.measurement.internal.zzch)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzch;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzeh;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/measurement/internal/zzch;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzch;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzch;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzch;->zza:Lcom/google/android/gms/measurement/internal/zzch;

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

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoo;->zzc()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
