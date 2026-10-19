###### Class com.google.android.gms.drive.TransferPreferencesBuilder (com.google.android.gms.drive.TransferPreferencesBuilder)
.class public Lcom/google/android/gms/drive/TransferPreferencesBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;
    }
.end annotation


# static fields
.field public static final DEFAULT_PREFERENCES:Lcom/google/android/gms/drive/TransferPreferences;


# instance fields
.field private zzbj:I

.field private zzbk:Z

.field private zzbl:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;-><init>(IZI)V

    sput-object v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->DEFAULT_PREFERENCES:Lcom/google/android/gms/drive/TransferPreferences;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->DEFAULT_PREFERENCES:Lcom/google/android/gms/drive/TransferPreferences;

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/TransferPreferencesBuilder;-><init>(Lcom/google/android/gms/drive/TransferPreferences;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/FileUploadPreferences;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/drive/FileUploadPreferences;->getNetworkTypePreference()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbj:I

    invoke-interface {p1}, Lcom/google/android/gms/drive/FileUploadPreferences;->isRoamingAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbk:Z

    invoke-interface {p1}, Lcom/google/android/gms/drive/FileUploadPreferences;->getBatteryUsagePreference()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbl:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/TransferPreferences;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/drive/TransferPreferences;->getNetworkPreference()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbj:I

    invoke-interface {p1}, Lcom/google/android/gms/drive/TransferPreferences;->isRoamingAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbk:Z

    invoke-interface {p1}, Lcom/google/android/gms/drive/TransferPreferences;->getBatteryUsagePreference()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbl:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/drive/TransferPreferences;
    .registers 5

    new-instance v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;

    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbj:I

    iget-boolean v2, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbk:Z

    iget v3, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbl:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;-><init>(IZI)V

    return-object v0
.end method

.method public setBatteryUsagePreference(I)Lcom/google/android/gms/drive/TransferPreferencesBuilder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbl:I

    return-object p0
.end method

.method public setIsRoamingAllowed(Z)Lcom/google/android/gms/drive/TransferPreferencesBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbk:Z

    return-object p0
.end method

.method public setNetworkPreference(I)Lcom/google/android/gms/drive/TransferPreferencesBuilder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->zzbj:I

    return-object p0
.end method

###### Class com.google.android.gms.drive.TransferPreferencesBuilder.zza (com.google.android.gms.drive.TransferPreferencesBuilder$zza)
.class final Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/TransferPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/TransferPreferencesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zzbj:I

.field private final zzbk:Z

.field private final zzbl:I


# direct methods
.method constructor <init>(IZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbj:I

    iput-boolean p2, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbk:Z

    iput p3, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbl:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    const-class v2, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_25

    :cond_10
    check-cast p1, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;

    iget v2, p1, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbj:I

    iget v3, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbj:I

    if-ne v2, v3, :cond_25

    iget-boolean v2, p1, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbk:Z

    iget-boolean v3, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbk:Z

    if-ne v2, v3, :cond_25

    iget p1, p1, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbl:I

    iget v2, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbl:I

    if-ne p1, v2, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public final getBatteryUsagePreference()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbl:I

    return v0
.end method

.method public final getNetworkPreference()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbj:I

    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isRoamingAllowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbk:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "NetworkPreference: %s, IsRoamingAllowed %s, BatteryUsagePreference %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
