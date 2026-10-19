###### Class com.google.android.gms.drive.query.internal.FilterHolder (com.google.android.gms.drive.query.internal.FilterHolder)
.class public Lcom/google/android/gms/drive/query/internal/FilterHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "FilterHolderCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x3e8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzba:Lcom/google/android/gms/drive/query/Filter;

.field private final zzln:Lcom/google/android/gms/drive/query/internal/zzb;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/query/internal/zzb<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzlo:Lcom/google/android/gms/drive/query/internal/zzd;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field private final zzlp:Lcom/google/android/gms/drive/query/internal/zzr;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field private final zzlq:Lcom/google/android/gms/drive/query/internal/zzv;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x4
    .end annotation
.end field

.field private final zzlr:Lcom/google/android/gms/drive/query/internal/zzp;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/query/internal/zzp<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzls:Lcom/google/android/gms/drive/query/internal/zzt;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x6
    .end annotation
.end field

.field private final zzlt:Lcom/google/android/gms/drive/query/internal/zzn;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x7
    .end annotation
.end field

.field private final zzlu:Lcom/google/android/gms/drive/query/internal/zzl;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x8
    .end annotation
.end field

.field private final zzlv:Lcom/google/android/gms/drive/query/internal/zzz;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/Filter;)V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const-string v0, "Null filter."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/zzb;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/zzb;

    goto :goto_12

    :cond_11
    move-object v0, v1

    :goto_12
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzln:Lcom/google/android/gms/drive/query/internal/zzb;

    instance-of v2, p1, Lcom/google/android/gms/drive/query/internal/zzd;

    if-eqz v2, :cond_1c

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/drive/query/internal/zzd;

    goto :goto_1d

    :cond_1c
    move-object v2, v1

    :goto_1d
    iput-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlo:Lcom/google/android/gms/drive/query/internal/zzd;

    instance-of v3, p1, Lcom/google/android/gms/drive/query/internal/zzr;

    if-eqz v3, :cond_27

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/drive/query/internal/zzr;

    goto :goto_28

    :cond_27
    move-object v3, v1

    :goto_28
    iput-object v3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlp:Lcom/google/android/gms/drive/query/internal/zzr;

    instance-of v4, p1, Lcom/google/android/gms/drive/query/internal/zzv;

    if-eqz v4, :cond_32

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/drive/query/internal/zzv;

    goto :goto_33

    :cond_32
    move-object v4, v1

    :goto_33
    iput-object v4, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlq:Lcom/google/android/gms/drive/query/internal/zzv;

    instance-of v5, p1, Lcom/google/android/gms/drive/query/internal/zzp;

    if-eqz v5, :cond_3d

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/drive/query/internal/zzp;

    goto :goto_3e

    :cond_3d
    move-object v5, v1

    :goto_3e
    iput-object v5, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlr:Lcom/google/android/gms/drive/query/internal/zzp;

    instance-of v6, p1, Lcom/google/android/gms/drive/query/internal/zzt;

    if-eqz v6, :cond_48

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/drive/query/internal/zzt;

    goto :goto_49

    :cond_48
    move-object v6, v1

    :goto_49
    iput-object v6, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzls:Lcom/google/android/gms/drive/query/internal/zzt;

    instance-of v7, p1, Lcom/google/android/gms/drive/query/internal/zzn;

    if-eqz v7, :cond_53

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/drive/query/internal/zzn;

    goto :goto_54

    :cond_53
    move-object v7, v1

    :goto_54
    iput-object v7, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlt:Lcom/google/android/gms/drive/query/internal/zzn;

    instance-of v8, p1, Lcom/google/android/gms/drive/query/internal/zzl;

    if-eqz v8, :cond_5e

    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/drive/query/internal/zzl;

    goto :goto_5f

    :cond_5e
    move-object v8, v1

    :goto_5f
    iput-object v8, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlu:Lcom/google/android/gms/drive/query/internal/zzl;

    instance-of v9, p1, Lcom/google/android/gms/drive/query/internal/zzz;

    if-eqz v9, :cond_68

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/drive/query/internal/zzz;

    :cond_68
    iput-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlv:Lcom/google/android/gms/drive/query/internal/zzz;

    if-nez v0, :cond_85

    if-nez v2, :cond_85

    if-nez v3, :cond_85

    if-nez v4, :cond_85

    if-nez v5, :cond_85

    if-nez v6, :cond_85

    if-nez v7, :cond_85

    if-nez v8, :cond_85

    if-eqz v1, :cond_7d

    goto :goto_85

    :cond_7d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid filter type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_85
    :goto_85
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/query/internal/zzb;Lcom/google/android/gms/drive/query/internal/zzd;Lcom/google/android/gms/drive/query/internal/zzr;Lcom/google/android/gms/drive/query/internal/zzv;Lcom/google/android/gms/drive/query/internal/zzp;Lcom/google/android/gms/drive/query/internal/zzt;Lcom/google/android/gms/drive/query/internal/zzn;Lcom/google/android/gms/drive/query/internal/zzl;Lcom/google/android/gms/drive/query/internal/zzz;)V
    .registers 10
    .param p1    # Lcom/google/android/gms/drive/query/internal/zzb;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/drive/query/internal/zzd;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/drive/query/internal/zzr;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/drive/query/internal/zzv;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/drive/query/internal/zzp;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/drive/query/internal/zzt;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/drive/query/internal/zzn;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/drive/query/internal/zzl;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p9    # Lcom/google/android/gms/drive/query/internal/zzz;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/query/internal/zzb<",
            "*>;",
            "Lcom/google/android/gms/drive/query/internal/zzd;",
            "Lcom/google/android/gms/drive/query/internal/zzr;",
            "Lcom/google/android/gms/drive/query/internal/zzv;",
            "Lcom/google/android/gms/drive/query/internal/zzp<",
            "*>;",
            "Lcom/google/android/gms/drive/query/internal/zzt;",
            "Lcom/google/android/gms/drive/query/internal/zzn<",
            "*>;",
            "Lcom/google/android/gms/drive/query/internal/zzl;",
            "Lcom/google/android/gms/drive/query/internal/zzz;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzln:Lcom/google/android/gms/drive/query/internal/zzb;

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlo:Lcom/google/android/gms/drive/query/internal/zzd;

    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlp:Lcom/google/android/gms/drive/query/internal/zzr;

    iput-object p4, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlq:Lcom/google/android/gms/drive/query/internal/zzv;

    iput-object p5, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlr:Lcom/google/android/gms/drive/query/internal/zzp;

    iput-object p6, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzls:Lcom/google/android/gms/drive/query/internal/zzt;

    iput-object p7, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlt:Lcom/google/android/gms/drive/query/internal/zzn;

    iput-object p8, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlu:Lcom/google/android/gms/drive/query/internal/zzl;

    iput-object p9, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlv:Lcom/google/android/gms/drive/query/internal/zzz;

    if-eqz p1, :cond_1a

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_1a
    if-eqz p2, :cond_1f

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_1f
    if-eqz p3, :cond_24

    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_24
    if-eqz p4, :cond_29

    iput-object p4, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_29
    if-eqz p5, :cond_2e

    iput-object p5, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_2e
    if-eqz p6, :cond_33

    iput-object p6, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_33
    if-eqz p7, :cond_38

    iput-object p7, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_38
    if-eqz p8, :cond_3d

    iput-object p8, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_3d
    if-eqz p9, :cond_42

    iput-object p9, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one filter must be set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getFilter()Lcom/google/android/gms/drive/query/Filter;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzba:Lcom/google/android/gms/drive/query/Filter;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzln:Lcom/google/android/gms/drive/query/internal/zzb;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlo:Lcom/google/android/gms/drive/query/internal/zzd;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlp:Lcom/google/android/gms/drive/query/internal/zzr;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlq:Lcom/google/android/gms/drive/query/internal/zzv;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlr:Lcom/google/android/gms/drive/query/internal/zzp;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzls:Lcom/google/android/gms/drive/query/internal/zzt;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlt:Lcom/google/android/gms/drive/query/internal/zzn;

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlu:Lcom/google/android/gms/drive/query/internal/zzl;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzlv:Lcom/google/android/gms/drive/query/internal/zzz;

    const/16 v2, 0x9

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
